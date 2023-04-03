import type { Spell } from '@prisma/client';
import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch, locals }) => {
	const session = await locals.auth.validate();
	if (!session) throw redirect(302, '/login');

	const resp = await fetch('/api/spells');
	return { spells: (await resp.json()) as Spell[] };
};
