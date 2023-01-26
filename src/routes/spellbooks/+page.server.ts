import type { Spellbook } from '@prisma/client';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch }) => {
	const resp = await fetch('/api/spellbooks');

	return { spellbooks: (await resp.json()) as Spellbook[] };
};
