-- Create Customers table
CREATE TABLE `Customers` (
    `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `password` varchar(50) NOT NULL,
    `location` VARCHAR(100)NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
     `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);