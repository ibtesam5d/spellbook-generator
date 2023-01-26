-- CreateEnum
CREATE TYPE "Role" AS ENUM ('USER', 'ADMIN');

-- AlterTable
ALTER TABLE "Spell" ALTER COLUMN "level" DROP DEFAULT,
ALTER COLUMN "name" DROP DEFAULT,
ALTER COLUMN "list" DROP DEFAULT,
ALTER COLUMN "components" DROP DEFAULT,
ALTER COLUMN "description" DROP DEFAULT,
ALTER COLUMN "duration" DROP DEFAULT,
ALTER COLUMN "range" DROP DEFAULT,
ALTER COLUMN "school" DROP DEFAULT,
ALTER COLUMN "source" DROP DEFAULT,
ALTER COLUMN "subdescription" DROP DEFAULT,
ALTER COLUMN "time" DROP DEFAULT;

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT,
    "role" "Role" NOT NULL DEFAULT 'USER',

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Spellbook" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER,
    "name" TEXT NOT NULL,
    "characterName" TEXT NOT NULL,
    "description" TEXT,
    "class" TEXT[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Spellbook_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_SpellToSpellbook" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Spellbook_name_key" ON "Spellbook"("name");

-- CreateIndex
CREATE UNIQUE INDEX "_SpellToSpellbook_AB_unique" ON "_SpellToSpellbook"("A", "B");

-- CreateIndex
CREATE INDEX "_SpellToSpellbook_B_index" ON "_SpellToSpellbook"("B");

-- AddForeignKey
ALTER TABLE "Spellbook" ADD CONSTRAINT "Spellbook_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SpellToSpellbook" ADD CONSTRAINT "_SpellToSpellbook_A_fkey" FOREIGN KEY ("A") REFERENCES "Spell"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SpellToSpellbook" ADD CONSTRAINT "_SpellToSpellbook_B_fkey" FOREIGN KEY ("B") REFERENCES "Spellbook"("id") ON DELETE CASCADE ON UPDATE CASCADE;
