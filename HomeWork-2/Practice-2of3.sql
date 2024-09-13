USE `seschool_09`;

-- Task 2.1
SELECT `genre`, AVG(`rating`) FROM `Movies`
	GROUP BY `genre`
	ORDER BY `rating` DESC;

-- Task 2.2
SELECT `release_year`, COUNT(*) FROM `Movies`
	GROUP BY `release_year`
	ORDER BY `release_year` DESC;
	
-- Task 2.3
SELECT `genre`, COUNT(*) AS `count` FROM `Movies`
	GROUP BY `genre`
	HAVING `count` > 5
	ORDER BY `count` DESC;

-- Task 2.4
SELECT `genre`, SUM(`rating`) AS `sum` FROM `Movies`
	GROUP BY `genre`
	HAVING `sum` > 50
	ORDER BY `sum` DESC;
	
-- Task 2.5
SELECT `release_year`, COUNT(*) AS `count` FROM `Movies`
	WHERE `rating` > 7.0
	GROUP BY `release_year`
	HAVING `count` > 5
	ORDER BY `count` DESC;
