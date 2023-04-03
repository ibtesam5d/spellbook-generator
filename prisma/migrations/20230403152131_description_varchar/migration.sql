/*
  Warnings:

  - You are about to drop the column `primary` on the `key` table. All the data in the column will be lost.
  - You are about to alter the column `description_more` on the `spell` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10000)`.
  - Added the required column `primary_key` to the `key` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "key" DROP COLUMN "primary",
ADD COLUMN     "expires" BIGINT,
ADD COLUMN     "primary_key" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "spell" ALTER COLUMN "description_more" SET DATA TYPE VARCHAR(10000);
