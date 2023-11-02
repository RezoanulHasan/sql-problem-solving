
-- Create Orders table
CREATE TABLE `Orders` (
    `order_id`bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    `customer_id`bigint(20) UNSIGNED NOT NULL,
    `order_date` DATE NOT NULL ,
    `total_amount` DECIMAL(10, 2),
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)ON DELETE RESTRICT ON UPDATE CASCADE
);
