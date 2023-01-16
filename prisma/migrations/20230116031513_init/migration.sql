-- CreateTable
CREATE TABLE "Spell" (
    "id" SERIAL NOT NULL,
    "level" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "list" TEXT[],

    CONSTRAINT "Spell_pkey" PRIMARY KEY ("id")
);
