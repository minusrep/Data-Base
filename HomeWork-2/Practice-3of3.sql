USE `seschool_09`;

-- Task 3.1
SELECT `genre`, AVG(`rating`) AS `avg` FROM `Movies`
	GROUP BY `genre`
	HAVING `avg` > 6.5 AND COUNT(*) > 10
	ORDER BY `avg` DESC;
	
-- Task 3.2
SELECT `release_year`, MIN(`rating`) FROM `Movies`
	GROUP BY `release_year`
	HAVING COUNT(*) > 3
	ORDER BY `release_year` DESC;

-- Task 3.3
SELECT `a`.`name`, COUNT(`actor_id`) AS `count` FROM `Movie_Actors` AS `connects`
	INNER JOIN `Movies` AS `m` ON `connects`.`movie_id` = `m`.id
	INNER JOIN `Actors` AS `a` ON `connects`.`actor_id` = `a`.id
	GROUP BY (`actor_id`)
	HAVING `count` > 5
	ORDER BY `count` DESC;

-- Task 3.4	
SELECT `genre`, AVG(`rating`) AS `avg`, `release_year` FROM `Movies`
	WHERE `release_year` < 2000
	GROUP BY `genre`
	HAVING COUNT(*) > 3
	ORDER BY `avg` DESC;	

-- Task 3.5
SELECT `genre`, MIN(`rating`) AS `min` FROM `Movies`
	GROUP BY `genre`
	HAVING COUNT(*) > 8
	ORDER BY `min` ASC; 