USE `seschool_09`;

-- Task 1
SELECT * FROM `students_table`
	WHERE `Sex` = 'ж';

-- Task 2
SELECT * FROM `students_table`
	WHERE `Course` = 3;
	
-- Task 3
SELECT * FROM `students_table`
	WHERE `BirthDate` > '1994-02-03';

-- Task 4
SELECT * FROM `students_table`
	WHERE `Grade` BETWEEN 70 AND 85;
	
-- Task 5.1
SELECT * FROM `students_table`
	WHERE `Course` = 2 OR `Course` = 3;
	
-- Task 5.2
SELECT * FROM `students_table`
	WHERE `Course` IN (2, 3);
	
-- Task 6
SELECT * FROM `students_table`
	WHERE `Surname` LIKE 'К%' OR 'С%';

-- Task 7
SELECT * FROM `students_table`
	WHERE `Sex` = 'ж' AND `Group` LIKE '%АУС%';
	
-- Task 8
SELECT * FROM `students_table`
	WHERE `Hobby` IS NULL;
	
-- Task 9
SELECT `Course` FROM `students_table`
	GROUP BY `Course`;
	
	