/*
  Warnings:

  - Added the required column `paymentMethod` to the `order_details` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `order_details` ADD COLUMN `order_date` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
    ADD COLUMN `paymentMethod` VARCHAR(255) NOT NULL,
    ADD COLUMN `status` VARCHAR(255) NOT NULL DEFAULT 'pending';
