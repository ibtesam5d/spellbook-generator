-- AlterTable
ALTER TABLE "Spell" ADD COLUMN     "components" TEXT[] DEFAULT ARRAY['']::TEXT[],
ADD COLUMN     "description" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "duration" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "range" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "school" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "source" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "subdescription" TEXT NOT NULL DEFAULT '',
ADD COLUMN     "time" TEXT NOT NULL DEFAULT '',
ALTER COLUMN "level" SET DEFAULT 0,
ALTER COLUMN "name" SET DEFAULT '',
ALTER COLUMN "list" SET DEFAULT ARRAY['']::TEXT[];
