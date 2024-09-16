USE `seschool_09`;


DROP TABLE IF EXISTS `Orders_Dishes`;
DROP TABLE IF EXISTS `Orders`;
DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `Dishes`;


CREATE TABLE `Dishes`
 (
 	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 	`name` VARCHAR(255),
 	`price` DECIMAL(5,2),
 	`category` VARCHAR(255)
 );
 
CREATE TABLE `Customers`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255),
	`gender` VARCHAR(255),
	`age` INT
);

CREATE TABLE `Orders`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`customer_id` INT UNSIGNED, 
	`order_date` DATE,
	FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`id`)
 );

CREATE TABLE `Orders_Dishes`
 (
 	`order_id` INT UNSIGNED,
 	`dish_id` INT UNSIGNED,
 	
 	FOREIGN KEY(`order_id`) REFERENCES `Orders`(`id`),
 	FOREIGN KEY(`dish_id`) REFERENCES `Dishes`(`id`)
 );
 
INSERT INTO `Dishes` (`name`, `price`, `category`) VALUES
('Салат Цезарь', 12.50, 'Салаты'),
('Борщ', 8.75, 'Супы'),
('Стейк', 25.00, 'Горячие блюда'),
('Пицца Маргарита', 15.00, 'Пицца'),
('Мороженое', 5.50, 'Десерты'),
('Салат Оливье', 10.00, 'Салаты'),
('Солянка', 9.50, 'Супы'),
('Котлета по-киевски', 18.00, 'Горячие блюда'),
('Пицца Пепперони', 17.00, 'Пицца'),
('Тирамису', 6.00, 'Десерты'),
('Салат Греческий', 11.00, 'Салаты'),
('Уха', 10.00, 'Супы'),
('Свинина с яблоками', 20.00, 'Горячие блюда'),
('Пицца 4 Сыра', 16.00, 'Пицца'),
('Чизкейк', 7.00, 'Десерты');

INSERT INTO `Customers` (`name`, `gender`, `age`) VALUES
('Иван Иванов', 'Мужской', 30),
('Мария Петрова', 'Женский', 25),
('Алексей Сидоров', 'Мужской', 40),
('Елена Козлова', 'Женский', 28),
('Дмитрий Николаев', 'Мужской', 35),
('Ольга Михайлова', 'Женский', 32),
('Сергей Васильев', 'Мужской', 29),
('Анна Смирнова', 'Женский', 27),
('Павел Ковалев', 'Мужской', 38),
('Юлия Федорова', 'Женский', 31);

INSERT INTO `Orders` (`customer_id`, `order_date`) VALUES
(1, '2023-10-01'),
(2, '2023-10-02'),
(3, '2023-10-03'),
(4, '2023-10-04'),
(5, '2023-10-05'),
(6, '2023-10-06'),
(7, '2023-10-07'),
(8, '2023-10-08'),
(9, '2023-10-09'),
(10, '2023-10-10'),
(1, '2023-10-11'),
(2, '2023-10-12'),
(3, '2023-10-13'),
(4, '2023-10-14'),
(5, '2023-10-15');

INSERT INTO `Orders_Dishes` (`order_id`, `dish_id`) VALUES
(1, 1), (1, 3), (1, 5),
(2, 2), (2, 4),
(3, 3), (3, 6),
(4, 1), (4, 7),
(5, 2), (5, 8),
(6, 3), (6, 9),
(7, 4), (7, 10),
(8, 5), (8, 11),
(9, 6), (9, 12),
(10, 7), (10, 13),
(11, 8), (11, 14),
(12, 9), (12, 15),
(13, 10), (13, 1),
(14, 11), (14, 2),
(15, 12), (15, 3);
