/*
  Warnings:

  - The `descriptionList` column on the `Spell` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Spell" DROP COLUMN "descriptionList",
ADD COLUMN     "descriptionList" TEXT[];
