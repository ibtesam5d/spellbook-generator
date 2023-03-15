import prisma from '$lib/server/prisma';
import { json } from '@sveltejs/kit';

export async function GET() {
	const spells = await prisma.spell.findMany();

	return json(spells);
}
