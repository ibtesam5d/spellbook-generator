import type { RequestHandler } from '@sveltejs/kit'
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient();

export type Spell = {
    id: number;
    level: number;
    name: string;
    list: string[];
}

// TODO: FIgure out where to put this and how to write it
export async function getAllSpells = (async () => {
    const allSpells = await prisma.spell.findMany()
})