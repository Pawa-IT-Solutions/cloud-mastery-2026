/*
Warnings:

- You are about to drop the column `customer_id` on the `order_details` table. All the data in the column will be lost.
- Added the required column `category` to the `order_details` table without a default value. This is not possible if the table is not empty.
- Added the required column `city` to the `order_details` table without a default value. This is not possible if the table is not empty.
- Added the required column `full_name` to the `order_details` table without a default value. This is not possible if the table is not empty.
- Added the required column `name` to the `order_details` table without a default value. This is not possible if the table is not empty.
- Added the required column `phone` to the `order_details` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable: add new denormalized columns with temporary DEFAULT '' to allow migration on non-empty table
ALTER TABLE `order_details`
DROP COLUMN `customer_id`,
ADD COLUMN `category` VARCHAR(255) NOT NULL DEFAULT '',
ADD COLUMN `city` VARCHAR(255) NOT NULL DEFAULT '',
ADD COLUMN `full_name` VARCHAR(511) NOT NULL DEFAULT '',
ADD COLUMN `product_name` VARCHAR(255) NOT NULL DEFAULT '',
ADD COLUMN `phone` VARCHAR(255) NOT NULL DEFAULT '';

-- Remove defaults so future writes must provide explicit values
ALTER TABLE `order_details`
ALTER COLUMN `category`
DROP DEFAULT,
ALTER COLUMN `city`
DROP DEFAULT,
ALTER COLUMN `full_name`
DROP DEFAULT,
ALTER COLUMN `product_name`
DROP DEFAULT,
ALTER COLUMN `phone`
DROP DEFAULT;