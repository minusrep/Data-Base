USE `seschool_09`;

-- Task 21
SELECT * FROM `Players`
	WHERE `Players`.`exp` > (SELECT `Players`.`exp` FROM `Players`
		WHERE `Players`.`player_name` = 'Марк');
		
-- Task 22
SELECT * FROM `Players`
	JOIN `Items` ON `Players`.`player_id` = `Items`.`player_id`
	AND `Items`.`item_type` = 'Броня';

-- Task 23
SELECT * FROM `Items`
	JOIN `Players` ON `Items`.`player_id` = `Players`.`player_id`
	JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`guild_id`
WHERE `Guilds`.`guild_level` = 
	(SELECT MAX(`Guilds`.`guild_level`) FROM `Guilds`);

-- Task 24
SELECT * FROM `Players`
	JOIN `Items` ON `Players`.`player_id` = `Items`.`player_id`
WHERE `Items`.`rarity` = 'Редкий';

-- Task 25
SELECT * FROM `Players`
	JOIN `Items` ON `Players`.`player_id` = `Items`.`player_id`
GROUP BY `Items`.`player_id`
HAVING COUNT(*) > 
(SELECT COUNT(*) FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
WHERE `Players`.`player_name` = 'Евгений'
GROUP BY `Items`.`player_id`);

-- Task 26
SELECT `Guilds`.`guild_name` FROM 
	(SELECT * FROM `Players`
		WHERE `Players`.`level` > 20) AS `p`
	JOIN `Guilds` ON `p`.`guild_id` = `Guilds`.`guild_id`
GROUP BY `Guilds`.`guild_name`;

-- Task 27
SELECT * FROM 
	(SELECT * FROM  `Items`
		WHERE `Items`.`item_type` != 'Зелье') AS `a`
JOIN `Players` ON `Players`.`player_id` = `a`.`player_id`
	WHERE `a`.`item_type` = 'Оружие'
	GROUP BY `Players`.`player_id`;

-- Task 28
SELECT * FROM
	(SELECT * FROM `Guilds`
		WHERE `Guilds`.`guild_name` = 'Стражи Севера') AS `g`
JOIN `Players` ON `Players`.`guild_id` = `g`.`guild_id`;

-- Task 29
SELECT * FROM
	(SELECT * FROM `Items`
		GROUP BY `Items`.`player_id`
		HAVING COUNT(*) > 1) AS `its`
	JOIN `Items` ON `Items`.`player_id` = `its`.`player_id`
	JOIN `Players` ON `Items`.`player_id` = `Players`.`player_id`
WHERE `Items`.`rarity` = 'Эпический';

-- Task 30
SELECT * FROM `Players`
	WHERE `Players`.`exp` >
		(SELECT AVG(`Players`.`exp`) FROM `Players`);
		
	
	