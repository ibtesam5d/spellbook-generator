import prisma from '$lib/server/prisma';
import type { RequestHandler } from '@sveltejs/kit';

export const GET: RequestHandler = async ({ params }) => {
	const spellbookName = params.spellbookName?.replaceAll('-', ' ');
	const spellbook = await prisma.spellbook.findFirst({
		where: {
			spellbook_name: {
				equals: spellbookName,
				mode: 'insensitive'
			}
		},
		include: {
			spells: true
		}
	});

	if (!spellbook) {
		return new Response(JSON.stringify({ message: `Spellbook '${spellbookName}' not found` }), {
			status: 404
		});
	}

	return new Response(JSON.stringify(spellbook), { status: 200 });
};
