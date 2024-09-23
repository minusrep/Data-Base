USE `seschool_09`;

-- Task 31
SELECT * FROM 
	(SELECT * FROM `Guilds`
		WHERE `Guilds`.`guild_level` >
			(SELECT AVG(`guild_level`) FROM `Guilds`))
	AS `gds`
JOIN `Players` ON `Players`.`guild_id` = `gds`.`guild_id`
JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`;

-- Task 32
SELECT * FROM 
	(SELECT * FROM `Items`
		WHERE `Items`.`rarity` = 'Редкий'
		GROUP BY `Items`.`player_id`) AS `its`
JOIN `Players` ON `Players`.`player_id` = `its`.`player_id`
WHERE `Players`.`exp` > 
	(SELECT `Players`.`exp` FROM `Players`
		WHERE `Players`.`player_name` = 'Дмитрий');
		
-- Task 33
SELECT * FROM 
	(SELECT DISTINCT * FROM `Items`
	WHERE `Items`.`item_type` != 'Броня'
	GROUP BY `Items`.`player_id`) AS `its`
JOIN `Players` ON `Players`.`player_id` = `its`.`player_id`
JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`guild_id`;

-- Task 34
SELECT * FROM 
	(SELECT * FROM `Guilds`
		WHERE `Guilds`.`guild_level` > 
			(SELECT `Guilds`.`guild_level` FROM `Guilds`
				WHERE `Guilds`.`guild_name` = 'Легион')) AS `gds`
JOIN `Players` ON `Players`.`guild_id` = `gds`.`guild_id`;

-- Task 35
SELECT * FROM 
(SELECT * FROM `Items`
	GROUP BY `Items`.`player_id`
	HAVING COUNT(*) >
	(SELECT AVG(`item_count`) фы  FROM 
		(SELECT COUNT(*) AS `item_count` FROM `Items`
		GROUP BY `Items`.`player_id`) AS `cnt`)) AS `avg`
JOIN `Players` ON `avg`.`player_id` = `Players`.`player_id`;

-- Task 36
SELECT * FROM `Players`
	WHERE `Players`.`exp` >
	(SELECT SUM(`Players`.`exp`) FROM `Players`
		JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`guild_id`
		WHERE `Guilds`.`guild_name` = 'Темный Братство');
		
-- Task 37
SELECT * FROM `Items`
	JOIN `Players` ON `Players`.`player_id` = `Items`.`player_id`
WHERE `Players`.`exp`
	> (SELECT SUM(`Players`.`exp`) FROM `Players`
		JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`guild_id`
		WHERE `Guilds`.`guild_name` = 'Львы');
		
-- Task 38
SELECT * FROM `Players` AS `p`
	JOIN 
	(SELECT `Players`.`guild_id`, AVG(`Players`.`exp`) AS `avg` FROM `Players`
	GROUP BY `guild_id`) AS `g`
	ON `p`.`guild_id` = `g`.`guild_id`
WHERE `p`.`exp` > `g`.`avg`;

-- Task 39
SELECT * FROM 
	(SELECT * FROM `Players`
	WHERE `Players`.`exp` > 1000
	AND `Players`.`guild_id` IS NULL) AS `pls`
JOIN `Items` ON `Items`.`player_id` = `pls`.`player_id`
WHERE `Items`.`rarity` = 'Редкий'
GROUP BY `Items`.`player_id`;

-- Task 40
SELECT * FROM `Players`
	WHERE `Players`.`exp` > 
	(SELECT SUM(`Players`.`exp`) FROM `Players`
		JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
		WHERE `Items`.`rarity` = 'Эпический');
