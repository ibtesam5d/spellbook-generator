import prisma from '$lib/server/prisma';
import { json } from '@sveltejs/kit';

export async function GET() {
	const spellbooks = await prisma.spellbook.findMany();

	return json(spellbooks);
}
