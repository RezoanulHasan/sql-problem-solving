-- Create Order_Items table
CREATE TABLE `Order_Items` (
    `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    `order_id` bigint(20) UNSIGNED NOT NULL,
    `product_id` bigint(20) UNSIGNED NOT NULL,
    `quantity` INT NOT NULL ,
    `unit_price` DECIMAL(10, 2),
`created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE RESTRICT ON UPDATE CASCADE ,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE
);