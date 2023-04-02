import { Prisma } from '@prisma/client';
import { fail, redirect } from '@sveltejs/kit';
import { LuciaError } from 'lucia-auth';
import { auth } from '$lib/server/lucia';
import type { Actions, PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ locals }) => {
	const session = await locals.auth.validate();
	if (session) throw redirect(302, '/');
	return {};
};

export const actions: Actions = {
	default: async ({ request }) => {
		const form = await request.formData();
		const username = form.get('username');
		const password = form.get('password');
		if (!username || !password || typeof username !== 'string' || typeof password !== 'string') {
			return fail(400, { message: 'Invalid input' });
		}

		try {
			await auth.createUser({
				primaryKey: {
					providerId: 'username',
					providerUserId: username,
					password
				},
				attributes: {
					username
				}
			});
		} catch (error) {
			if (
				error instanceof Prisma.PrismaClientKnownRequestError &&
				error.code === 'P2002' &&
				error.message?.includes('username')
			) {
				return fail(400, { message: 'Username already in use' });
			}

			if (error instanceof LuciaError && error.message === 'AUTH_DUPLICATE_KEY_ID') {
				return fail(400, { message: 'Username already in use' });
			}

			console.log(error);
			return fail(400, { message: 'Could not register user' });
		}
		throw redirect(302, '/login');
	}
};
