import prisma from '$lib/prisma';
import { json } from '@sveltejs/kit';

import type { RequestHandler } from '../$types';

export const GET: RequestHandler = async ({ url }) => {
	const spellName = url.pathname.split('/').pop()?.replace('-', ' ');
	const spell = await prisma.spell.findFirst({
		where: {
			name: {
				equals: spellName,
				mode: 'insensitive'
			}
		}
	});

	return json(spell);
};
