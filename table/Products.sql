-- Create Products table
CREATE TABLE `Products` (
    `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `description`  VARCHAR(100) NOT NULL,
    `price DECIMAL`(10, 2),
    `category_id`  bigint(20) UNSIGNED NOT NULL,
     `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
