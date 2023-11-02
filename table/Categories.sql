-- Create Categories table
CREATE TABLE `Categories` (
    `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
     `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
     `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);
