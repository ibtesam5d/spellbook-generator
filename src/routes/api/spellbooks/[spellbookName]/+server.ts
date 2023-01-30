import prisma from '$lib/prisma';
import { json } from '@sveltejs/kit';

import type { RequestHandler } from '../$types';

export const GET: RequestHandler = async ({ url }) => {
	const spellbookName = url.pathname.split('/').pop()?.replaceAll('-', ' ');
	const spellbook = await prisma.spellbook.findFirst({
		where: {
			name: {
				equals: spellbookName,
				mode: 'insensitive'
			}
		},
		include: {
			spells: true
		}
	});

	return json(spellbook);
};
