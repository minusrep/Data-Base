USE `seschool_09`;

DROP TABLE IF EXISTS`Movie_Actors`;
DROP TABLE IF EXISTS`Actors`;
DROP TABLE IF EXISTS`Movies`;

CREATE TABLE `Movies`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`title` VARCHAR(255),
	`release_year` YEAR,
	`genre` VARCHAR(255),
	`rating` DECIMAL(3,1)
);

CREATE TABLE `Actors`
(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255),
	`birth_year` YEAR,
	`nationality` VARCHAR(255)
);

CREATE TABLE `Movie_Actors`
(
	`movie_id` INT UNSIGNED,
	`actor_id` INT UNSIGNED,
	`role` VARCHAR(255),
	FOREIGN KEY (`movie_id`) REFERENCES `Movies`(`id`),
	FOREIGN KEY (`actor_id`) REFERENCES `Actors`(`id`)
);

INSERT INTO `Movies` (`title`, `release_year`, `genre`, `rating`) VALUES
('The Shawshank Redemption', 1994, 'Drama', 9.3),
('The Godfather', 1972, 'Crime', 9.2),
('The Dark Knight', 2008, 'Action', 9.0),
('Pulp Fiction', 1994, 'Crime', 8.9),
('Fight Club', 1999, 'Drama', 8.8),
('Inception', 2010, 'Sci-Fi', 8.8),
('The Matrix', 1999, 'Sci-Fi', 8.7),
('Forrest Gump', 1994, 'Drama', 8.8),
('The Lord of the Rings: The Return of the King', 2003, 'Fantasy', 8.9),
('Interstellar', 2014, 'Sci-Fi', 8.6),
('Gladiator', 2000, 'Action', 8.5),
('The Silence of the Lambs', 1991, 'Thriller', 8.6),
('The Departed', 2006, 'Crime', 8.5),
('The Green Mile', 1999, 'Drama', 8.6),
('Saving Private Ryan', 1998, 'War', 8.6);

INSERT INTO `Actors` (`name`, `birth_year`, `nationality`) VALUES
('Tim Robbins', 1958, 'American'),
('Morgan Freeman', 1937, 'American'),
('Marlon Brando', 1924, 'American'),
('Al Pacino', 1940, 'American'),
('Christian Bale', 1974, 'British'),
('Heath Ledger', 1979, 'Australian'),
('John Travolta', 1954, 'American'),
('Uma Thurman', 1970, 'American'),
('Brad Pitt', 1963, 'American'),
('Leonardo DiCaprio', 1974, 'American'),
('Keanu Reeves', 1964, 'Canadian'),
('Tom Hanks', 1956, 'American'),
('Elijah Wood', 1981, 'American'),
('Russell Crowe', 1964, 'New Zealander'),
('Jodie Foster', 1962, 'American'),
('Matt Damon', 1970, 'American'),
('Tom Hanks', 1956, 'American'),
('Matt Damon', 1970, 'American');

INSERT INTO `Movie_Actors` (`movie_id`, `actor_id`, `role`) VALUES
(1, 1, 'Andy Dufresne'),
(1, 2, 'Ellis Boyd "Red" Redding'),
(2, 3, 'Vito Corleone'),
(2, 4, 'Michael Corleone'),
(3, 5, 'Bruce Wayne'),
(3, 6, 'The Joker'),
(4, 7, 'Vincent Vega'),
(4, 8, 'Mia Wallace'),
(5, 9, 'Tyler Durden'),
(6, 10, 'Dom Cobb'),
(7, 11, 'Neo'),
(8, 12, 'Forrest Gump'),
(9, 13, 'Frodo Baggins'),
(10, 10, 'Joseph Cooper'),
(11, 14, 'Maximus Decimus Meridius'),
(12, 15, 'Clarice Starling'),
(13, 16, 'William M. "Billy" Costigan Jr.'),
(14, 2, 'Paul Edgecomb'),
(15, 17, 'Captain John H. Miller');

-- Task 1.1.
SELECT * FROM `Movies`
	WHERE `rating` > 8.0 AND `release_year` > 2010;

-- Task 1.2.
SELECT `genre` FROM `Movies`
	GROUP BY `genre`;

-- Task 1.3
SELECT * FROM `Movies`
	ORDER BY `rating` DESC
	LIMIT 10
	OFFSET 11;

-- Task 1.4
SELECT * FROM `Actors`
WHERE `birth_year` < 1980
ORDER BY `birth_year` ASC;

-- Task 1.5
SELECT * FROM `Movies`
	WHERE `genre` = 'Sci-Fi'
	ORDER BY `title` ASC;

-- Task 1.6
SELECT `nationality` FROM `Actors`
	GROUP BY `nationality`
	ORDER BY `nationality` DESC;	
	
-- Task 1.7
SELECT `title`, `rating` FROM `Movies`
	WHERE `rating` < 5.0
	ORDER BY `rating` ASC;

-- Task 1.8
SELECT * FROM `Movies`
	ORDER BY `release_year` DESC
	LIMIT 5;
	
-- Task 1.9	
SELECT * FROM `Actors`
	ORDER BY `birth_year` ASC
	LIMIT 3;