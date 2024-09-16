USE `seschool_09`;

-- Task 1
SELECT * FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id`
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id` AND `Comments`.`grade` > 4;

-- Task 2
SELECT `Users`.`name`, `Users`.`age` FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id` AND `SecondOrders`.`total` > 1000;

-- Task 3
SELECT * FROM `SecondOrders`
	JOIN `Users` ON `SecondOrders`.`user_id` = `Users`.`id`;
	
-- Task 4
SELECT * FROM `Users`
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id`
GROUP BY `Comments`.`user_id`
HAVING COUNT(*) > 1;

-- Task 5
SELECT * FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id`
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id` AND `Comments`.`grade` < 3
GROUP BY `Users`.`id`;

-- Task 6
SELECT * FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id` AND `SecondOrders`.`date` > '2024-09-01'
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id`;
	
-- Task 7
SELECT `Users`.`name`, AVG(`SecondOrders`.`total`) FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id`
GROUP BY `Users`.`id`;

-- Task 8
SELECT * FROM `Users`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id`
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id` AND `Comments`.`grade` > 3
WHERE `Users`.`country` = 'Россия'; 

-- Task 9
SELECT * FROM `Users`
	LEFT JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id`
WHERE `Comments`.`user_id` IS NULL;

-- Task 10
SELECT * FROM `Users`
	JOIN `Comments` ON `Comments`.`user_id` = `Users`.`id`
	JOIN `SecondOrders` ON `SecondOrders`.`user_id` = `Users`.`id` AND `SecondOrders`.`total` < 2000
GROUP BY `Users`.`id`;
	