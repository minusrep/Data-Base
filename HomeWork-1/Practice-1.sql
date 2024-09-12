USE `seschool_09`

DROP TABLE IF EXISTS `Employees`;

DROP TABLE IF EXISTS `MonstersIncEmployees`;

CREATE TABLE IF NOT EXISTS `MonstersIncEmployees`
(
	`EmployeeID`  INT UNSIGNED AUTO_INCREMENT,
	`MonsterName` VARCHAR(75),
	`Type` VARCHAR(255) NOT NULL DEFAULT 'Монстр',
	`Department` VARCHAR(100) NOT NULL DEFAULT 'Нулевой отдел',
	`MonsterColor` VARCHAR(50),
	PRIMARY KEY(`EmployeeID`)
);

CREATE TABLE `Employees`
(
	`EmployeeID` INT UNSIGNED AUTO_INCREMENT,
	`FirstName` VARCHAR(50) NOT NULL,
	`LastName` VARCHAR(50) NOT NULL,
	`DateOfBirth` DATE NOT NULL,
	`HireDate` DATE NOT NULL,
	`MiddleName` VARCHAR(50) NOT NULL,
	`Salary` DECIMAL,
	PRIMARY KEY (`EmployeeID`)
)

ALTER TABLE `MonstersIncEmployees`
	DROP COLUMN `MonsterColor`,
	ADD COLUMN `ScareLevel` TINYINT CHECK ( `ScareLevel` >= 1 AND `ScareLevel` <= 10);

ALTER TABLE `Employees` 
	DROP COLUMN `MiddleName`,
	ADD COLUMN `Position` VARCHAR(100) NOT NULL;


INSERT INTO	`MonstersIncEmployees` (`MonsterName`,`Type` ,`Department`,`ScareLevel`) VALUES
('Mike Wazowski', 'Пугало', 'Отдел пуганий', 7),
('James P. Sullivan', 'Пугало', 'Отдел пуганий', 10),
('Randall Boggs', 'Пугало', 'Отдел пуганий', 8),
('Celia Mae', 'Администратор', 'Отдел поддержки', 3),
('Roz', 'Администратор', 'Отдел документации', 2),
('George Sanderson', 'Пугало', 'Отдел пуганий', 5),
('Henry J. Waternoose', 'Администратор', 'Управление', 4),
('Fungus', 'Помощник', 'Отдел пуганий', 6),
('Needleman', 'Помощник', 'Отдел документации', 4),
('Smitty', 'Помощник', 'Отдел поддержки', 5	);

INSERT INTO	`Employees` (`FirstName`,`LastName` ,`DateOfBirth`,`HireDate`, `Position`, `Salary`) VALUES
('Иван', 'Иванов', '1980-01-15', '2010-06-01', 'Менеджер', 75000.00)
('Анна', 'Петрова', '1985-07-23', '2012-08-15', 'Инженер', 68000.00)
('Михаил', 'Смирнов', '1990-03-12', '2015-01-30', 'Программист', 72000.00)
('Елена', 'Сидорова', '1992-05-14', '2016-09-21', 'Аналитик', 70000.00)
('Алексей', 'Кузнецов', '1975-11-02', '2005-10-10', 'Руководитель отдела', 90000.00)
('Ольга', 'Васильева', '1988-04-22', '2014-03-05', 'Маркетолог', 65000.00)
('Дмитрий', 'Попов', '1993-08-19', '2017-11-11', 'Программист', 71000.00)
('Мария', 'Козлова', '1983-02-10', '2010-04-07', 'HR-менеджер', 66000.00)
('Сергей', 'Лебедев', '1979-12-01', '2008-07-01', 'Менеджер проектов', 80000.00)
('Наталья', 'Морозова', '1986-09-09', '2013-12-18', 'Дизайнер', 69000.00);

	
