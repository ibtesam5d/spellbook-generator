import type { Spell } from '@prisma/client';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ fetch, params }) => {
	const resp = await fetch(`/api/spells/${params.spellName}`);

	return { spell: (await resp.json()) as Spell };
};
