USE `seschool_09`;

-- Task 1
SELECT `Customers`.`name`, `Orders`.`order_date` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`;

-- Task 2
SELECT `Customers`.`name`, `Dishes`.`name` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id`
ORDER BY `Customers`.`name`;

-- Task 3
SELECT `Customers`.`name`, SUM(`price`) AS `total` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id`
GROUP BY `Customers`.`id`
ORDER BY `total` DESC;

-- Task 4
SELECT `Customers`.`name`, COUNT(*) AS `cnt` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id`
GROUP BY `Customers`.`id`
ORDER BY `cnt` DESC;

-- Task 5
SELECT `Dishes`.`name`, COUNT(*) AS `cnt` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id`
GROUP BY `Dishes`.`id`
ORDER BY `cnt` DESC;	

-- Task 6
SELECT `Customers`.`name` FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id` AND `Dishes`.`price` > 50
GROUP BY `Customers`.`id`;

-- Task 7
SELECT `Customers`.`name`, `Orders`.`order_date`, COUNT(*) FROM `Customers`
	JOIN `Orders` ON `Orders`.`customer_id` = `Customers`.`id`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id`
GROUP BY `Orders`.`id`
ORDER BY `Customers`.`name`;

-- Task 8
SELECT `Dishes`.`category`, COUNT(`category`) AS `cnt` FROM `Orders`
	JOIN `Orders_Dishes` AS `cts` ON `cts`.`order_id` = `Orders`.`id`
	JOIN `Dishes` ON `cts`.`dish_id` = `Dishes`.`id` AND `Orders`.`id` = `cts`.`order_id`
GROUP BY `Dishes`.`category`
ORDER BY `cnt`;