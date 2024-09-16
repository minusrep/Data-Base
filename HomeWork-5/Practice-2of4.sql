USE `seschool_09`;

-- Task 11
SELECT `Items`.`item_name` FROM `Items`
	JOIN `Players` ON `Items`.`player_id` = `Players`.`player_id` 
	AND `Players`.`level` > 15;
	
-- Task 12
SELECT * FROM `Items`
	JOIN `Players` ON `Items`.`player_id` = `Players`.`player_id`
	JOIN `Guilds` ON `Guilds`.`guild_id`= `Players`.`guild_id`
	AND `Guilds`.`guild_name` = 'Клан Дракона';
	
-- Task 13
SELECT * FROM `Players`
	LEFT JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
WHERE `Items`.`player_id` IS NULL;

-- Task 14
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	AND `Items`.`item_type` = 'Зелье'
WHERE `Players`.`level` > 8;

-- Task 15
SELECT `Items`.`item_name` FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`guild_id`
	AND `Guilds`.`guild_level` > 3;
	
-- Task 16
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	AND `Items`.`item_type` = 'Оружие'
WHERE `Players`.`exp` > 500;

-- Task 17
SELECT * FROM `Guilds`
	LEFT JOIN `Players` ON `Players`.`guild_id` = `Guilds`.`guild_id`
WHERE `Players`.`player_id` IS NULL;

-- Task 18
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	AND `Items`.`rarity` = 'Редкий';
	
-- Task 19
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	AND `Items`.`item_type` != 'Зелье';
	
-- Task 20
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
	AND `Items`.`rarity` = 'Эпический'
WHERE `Players`.`level` = 20;
