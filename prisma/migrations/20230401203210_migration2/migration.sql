/*
  Warnings:

  - The primary key for the `spellbook` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `spellbook` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Changed the type of `B` on the `_SpellToSpellbook` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "_SpellToSpellbook" DROP CONSTRAINT "_SpellToSpellbook_B_fkey";

-- DropIndex
DROP INDEX "spell_id_key";

-- DropIndex
DROP INDEX "spellbook_id_key";

-- AlterTable
ALTER TABLE "_SpellToSpellbook" DROP COLUMN "B",
ADD COLUMN     "B" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "spellbook" DROP CONSTRAINT "spellbook_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "spellbook_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "_SpellToSpellbook_AB_unique" ON "_SpellToSpellbook"("A", "B");

-- CreateIndex
CREATE INDEX "_SpellToSpellbook_B_index" ON "_SpellToSpellbook"("B");

-- AddForeignKey
ALTER TABLE "_SpellToSpellbook" ADD CONSTRAINT "_SpellToSpellbook_B_fkey" FOREIGN KEY ("B") REFERENCES "spellbook"("id") ON DELETE CASCADE ON UPDATE CASCADE;
