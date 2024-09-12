ALTER DATABASE `seschool_09` CHARACTER SET utf8 COLLATE utf8_general_ci;
	
USE `seschool_09`;

DROP TABLE IF EXISTS `books_table`; 

CREATE TABLE `books_table`
(
	`Name` VARCHAR(64) NOT NULL PRIMARY KEY,
	`Author` VARCHAR(64),
	`Year` INT UNSIGNED,
	`Reader` VARCHAR(64)
);

SHOW TABLES;

DESC `books_table`;

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`) VALUES
('Война и мир', 'Толстой Л.Н.', 1990, 'Сидоров И.Д.');

SELECT * FROM `books_table`;

INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`) VALUES
('Капитанская дочка', 'Пушкин А.С.', 2004, 'Дмитриев С.Л.');

INSERT INTO `books_table` (`Name`, `Author`, `Year`) VALUES
('Горе от ума', 'Грибоедов А.С.', 2012);

ALTER TABLE `books_table` 
	ADD COLUMN `Publisher` VARCHAR(64);
	
DESC `books_table`;

ALTER TABLE `books_table`
	MODIFY `Publisher` VARCHAR(64) DEFAULT 'Художественная литература';

INSERT INTO `books_table` (`Name`,`Author`, `Year`, `Reader`) VALUES
('Три сестры', 'Чехов А.П.', 2000, 'Малинин Д.С.');

SELECT * FROM `books_table`;

UPDATE `books_table`
	SET 
		`Reader` = 'Иванов А.В.',
		`Publisher` = 'Русская литература'
		WHERE `Name` = 'Горе от ума';

DELETE FROM `books_table`
	WHERE `Name` = 'Война и мир';
/*
INSERT INTO `books_table` (`Name`, `Author`, `Year`, `Reader`) VALUES
(NULL, 'Некрасов Н.А.', 1998, 'Петров О.Д.');

#Запрос не выполняется т.к. аттрибут является базовым индифекаторором.*/

DELETE FROM `books_table`;

DROP TABLE `books_table`;

DROP DATABASE `books_database`;

SELECT * FROM `books_table`;



