import prisma from '$lib/server/prisma';
import type { RequestHandler } from '@sveltejs/kit';

export const GET: RequestHandler = async () => {
	const spells = await prisma.spell.findMany();

	if (spells.length === 0) {
		return new Response(JSON.stringify({ message: 'Could not find any spells' }), {
			status: 404
		});
	}

	return new Response(JSON.stringify(spells), { status: 200 });
};
