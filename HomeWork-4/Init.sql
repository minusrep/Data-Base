USE `seschool_09`;

DROP TABLE IF EXISTS `SecondOrders`;
DROP TABLE IF EXISTS `Comments`;
DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255),
	`age` TINYINT UNSIGNED,
	`country` VARCHAR(255)
);

CREATE TABLE `SecondOrders`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`user_id` INT UNSIGNED,
	`total` FLOAT,
	`date` DATE,
	FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Comments`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`user_id` INT UNSIGNED,
	`grade` TINYINT UNSIGNED,
	`value` VARCHAR(255),
	FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`)
);


INSERT INTO `Users` (`name`,`age`,`country`) VALUES
('Иван', 25, 'Россия'),
('Ольга', 30, 'Украина'),
('Джон', 22, 'США'),
('Мария', 28, 'Беларусь'),
('Антон', 35, 'Россия');

INSERT INTO `SecondOrders` (`id`,`user_id`,`total`,`date`) VALUES
(101, 1, 1500, '2024-09-01'),
(102, 2, 3000, '2024-09-02'),
(103, 3, 500, '2024-09-03'),
(104, 4, 2000, '2024-09-04'),
(105, 5, 1000, '2024-09-05');

INSERT INTO `Comments` (`id`,`user_id`,`grade`,`value`) VALUES
(201, 1, 5, 'Отличный сервис!'),
(202, 2, 4, 'Все понравилось.'),
(203, 1, 3, 'Дорого, но качественно.'),
(204, 4, 2, 'Неудовлетворён сервисом.'),
(205, 5, 5, 'Супер обсуживание!');