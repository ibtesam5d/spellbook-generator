import type { Spellbook } from '@prisma/client';
import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch, params, locals }) => {
	const session = await locals.auth.validate();
	if (!session) throw redirect(302, '/login');

	const resp = await fetch(`/api/spellbooks/${params.spellbookName}`);
	return { spellbook: (await resp.json()) as Spellbook };
};
