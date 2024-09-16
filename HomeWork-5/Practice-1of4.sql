USE `seschool_09`;

-- Task 1
SELECT `Players`.`player_name`, `Players`.`level` FROM `Players`;

-- Task 2
SELECT * FROM `Players`
	WHERE `Players`.`guild_id` = 3;

-- Task 3
SELECT * FROM `Players`
	WHERE `Players`.`level` >= 10;
	
-- Task 4
SELECT `Items`.`item_name` FROM `Players`
	JOIN `Items` ON `Players`.`player_id` = `Items`.`player_id` AND `Players`.`player_name` = 'Алекс';

-- Task 5
SELECT * FROM `Items`
	WHERE `Items`.`rarity` = 'Редкий';

-- Task 6
SELECT `Items`.`item_name` FROM `Items`
	WHERE `Items`.`item_type` = 'Оружие';

-- Task 7
SELECT `Guilds`.`guild_name`, COUNT(*) FROM `Guilds`
	JOIN `Players` ON `Guilds`.`guild_id` = `Players`.`guild_id`
GROUP BY `Guilds`.`guild_id`;

-- Task 8
SELECT DISTINCT `Players`.`player_name` FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id` AND `Items`.`item_type` = 'Броня';
	
-- Task 9
SELECT * FROM `Players`
	JOIN `Guilds` ON `Guilds`.`guild_id` = `Players`.`player_id` AND `Guilds`.`guild_level` >= 2
WHERE `Players`.`level` > 5;

-- Task 10
SELECT * FROM `Players`
	JOIN `Items` ON `Items`.`player_id` = `Players`.`player_id`
WHERE `Items`.`rarity` = 'Эпический';
	

