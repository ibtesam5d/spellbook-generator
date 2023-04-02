const globalForPrisma = global as unknown as {
	prisma: PrismaClient | undefined;
};

import { PrismaClient } from '@prisma/client';

const prisma = globalForPrisma.prisma || new PrismaClient();

if (process.env.NODE_ENV === 'development') {
	globalForPrisma.prisma = prisma;
}

export { prisma };
