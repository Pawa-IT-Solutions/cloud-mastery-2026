/*
  Warnings:

  - You are about to drop the column `name` on the `order_details` table. All the data in the column will be lost.
  - Added the required column `product_name` to the `order_details` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `order_details` DROP COLUMN `name`,
    ADD COLUMN `product_name` VARCHAR(255) NOT NULL;
