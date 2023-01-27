import type { Spellbook } from '@prisma/client';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch, params }) => {
	const resp = await fetch(`/api/spellbooks/${params.spellbookName}`);

	return { spellbook: (await resp.json()) as Spellbook };
};
