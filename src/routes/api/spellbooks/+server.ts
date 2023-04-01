import prisma from '$lib/server/prisma';
import type { RequestHandler } from '@sveltejs/kit';

export const GET: RequestHandler = async () => {
	const spellbooks = await prisma.spellbook.findMany();

	if (spellbooks.length === 0) {
		return new Response(JSON.stringify({ message: 'Could not find any spellbooks' }), {
			status: 404
		});
	}

	return new Response(JSON.stringify(spellbooks), { status: 200 });
};
