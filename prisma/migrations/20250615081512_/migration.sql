-- CreateTable
CREATE TABLE "Items" (
    "id" SERIAL NOT NULL,
    "code_item" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,

    CONSTRAINT "Items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "itemsId" INTEGER NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Items_code_item_key" ON "Items"("code_item");

-- CreateIndex
CREATE UNIQUE INDEX "Category_itemsId_key" ON "Category"("itemsId");

-- AddForeignKey
ALTER TABLE "Category" ADD CONSTRAINT "Category_itemsId_fkey" FOREIGN KEY ("itemsId") REFERENCES "Items"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
