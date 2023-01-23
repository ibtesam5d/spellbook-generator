import prisma from '$lib/prisma';
import { json } from '@sveltejs/kit';

import type { RequestHandler } from '../$types';

export const GET: RequestHandler = async ({ url }) => {
	const spellName = url.pathname;
	const spell = await prisma.spell.findFirst({
		where: {
			name: 'AcidSplash'
		}
	});

	return json(spell);
};
