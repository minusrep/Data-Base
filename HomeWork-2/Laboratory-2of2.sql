USE `seschool_09`;

-- Task 10
SELECT * FROM `students_table`
	ORDER BY `Grade` DESC
	LIMIT 5;
	
-- Task 11
SELECT * FROM `students_table`
	ORDER BY `Grade` ASC
	LIMIT 10;
	
-- Task 12
-- a)
SELECT COUNT(*) FROM `students_table`;
-- b)
SELECT COUNT(*) FROM `students_table`
	WHERE `Hobby` IS NULL;
-- c)
SELECT MAX(`Grade`) FROM `students_table`;
-- v)
SELECT MIN(`Grade`) FROM `students_table`;
-- g)
SELECT AVG(`Grade`) FROM `students_table`;

-- Task 13
SELECT `Course`, COUNT(*) FROM `students_table`
	GROUP BY "Course";

-- Task 14
SELECT `Sex`, AVG(`Grade`) FROM `students_table`
	GROUP BY `Sex`;

-- Task 15
SELECT MAX(`Grade`) FROM `students_table`
	WHERE `BirthDate` > '1994-01-01'
	GROUP BY `Course`
	HAVING `Course` = 3;
	
-- Task 16
SELECT 
	`Surname`, 
	`Grade`, 
	CASE
		WHEN `Grade` > 95 THEN 'Great'
		WHEN `Grade` > 75 THEN 'Good'
		WHEN `Grade` > 60 THEN 'Okay'
		ELSE 'Shit'
	END AS `g`
FROM `students_table`
ORDER BY `Grade` DESC;