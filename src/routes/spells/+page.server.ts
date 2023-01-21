import type { Spell } from '@prisma/client';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch }) => {
	const resp = await fetch('/api/spells');

	return { spells: (await resp.json()) as Spell[] };
};
