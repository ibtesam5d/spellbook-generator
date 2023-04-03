import { fail, redirect } from '@sveltejs/kit';
import type { Actions } from './$types';
import { prisma } from '$lib/server/prisma';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ locals }) => {
	const session = await locals.auth.validate();
	if (!session) throw redirect(302, '/login');
};

export const actions: Actions = {
	create: async ({ request }) => {
		const data = await request.formData();

		const name = data.get('name') as string;
		const characterName = data.get('characterName') as string;
		const description = data.get('description') as string;
		const characterClass = data.get('class') as string;

		if (!name) {
			return fail(400, {
				error: true,
				message: 'Please enter a name for your spellbook',
				characterName,
				description,
				characterClass
			});
		}

		if (!characterName) {
			return fail(400, {
				error: true,
				message: 'Please enter a name for your character',
				name,
				description,
				characterClass
			});
		}

		if (!characterClass) {
			return fail(400, {
				error: true,
				message: 'Please select at least one class',
				name,
				characterName,
				description
			});
		}

		await prisma.spellbook.create({
			data: {
				user_id: '',
				spellbook_name: name,
				character_name: characterName,
				spellbook_description: description,
				class: characterClass
			}
		});

		throw redirect(303, '/spellbooks');
	}
} satisfies Actions;
