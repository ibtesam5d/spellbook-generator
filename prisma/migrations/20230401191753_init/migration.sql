-- CreateEnum
CREATE TYPE "Role" AS ENUM ('USER', 'ADMIN');

-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "role" "Role" NOT NULL DEFAULT 'USER',

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "session" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "active_expires" BIGINT NOT NULL,
    "idle_expires" BIGINT NOT NULL,

    CONSTRAINT "session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "key" (
    "id" TEXT NOT NULL,
    "hashed_password" TEXT,
    "user_id" TEXT NOT NULL,
    "primary" BOOLEAN NOT NULL,

    CONSTRAINT "key_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "spell" (
    "id" SERIAL NOT NULL,
    "level" INTEGER NOT NULL,
    "spell_name" TEXT NOT NULL,
    "list" TEXT[],
    "components" TEXT[],
    "spell_description" TEXT NOT NULL,
    "description_list" TEXT[],
    "description_more" TEXT,
    "duration" TEXT NOT NULL,
    "range" TEXT NOT NULL,
    "school" TEXT NOT NULL,
    "source" TEXT NOT NULL,
    "subdescription" TEXT,
    "time" TEXT NOT NULL,

    CONSTRAINT "spell_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "spellbook" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "spellbook_name" TEXT NOT NULL,
    "character_name" TEXT NOT NULL,
    "spellbook_description" TEXT,
    "class" TEXT[],
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "spellbook_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_SpellToSpellbook" (
    "A" INTEGER NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "user_id_key" ON "user"("id");

-- CreateIndex
CREATE UNIQUE INDEX "user_username_key" ON "user"("username");

-- CreateIndex
CREATE UNIQUE INDEX "session_id_key" ON "session"("id");

-- CreateIndex
CREATE INDEX "session_user_id_idx" ON "session"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "key_id_key" ON "key"("id");

-- CreateIndex
CREATE INDEX "key_user_id_idx" ON "key"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "spell_id_key" ON "spell"("id");

-- CreateIndex
CREATE UNIQUE INDEX "spell_spell_name_key" ON "spell"("spell_name");

-- CreateIndex
CREATE UNIQUE INDEX "spellbook_id_key" ON "spellbook"("id");

-- CreateIndex
CREATE UNIQUE INDEX "spellbook_spellbook_name_key" ON "spellbook"("spellbook_name");

-- CreateIndex
CREATE INDEX "spellbook_user_id_idx" ON "spellbook"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "_SpellToSpellbook_AB_unique" ON "_SpellToSpellbook"("A", "B");

-- CreateIndex
CREATE INDEX "_SpellToSpellbook_B_index" ON "_SpellToSpellbook"("B");

-- AddForeignKey
ALTER TABLE "session" ADD CONSTRAINT "session_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "key" ADD CONSTRAINT "key_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "spellbook" ADD CONSTRAINT "spellbook_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SpellToSpellbook" ADD CONSTRAINT "_SpellToSpellbook_A_fkey" FOREIGN KEY ("A") REFERENCES "spell"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SpellToSpellbook" ADD CONSTRAINT "_SpellToSpellbook_B_fkey" FOREIGN KEY ("B") REFERENCES "spellbook"("id") ON DELETE CASCADE ON UPDATE CASCADE;
