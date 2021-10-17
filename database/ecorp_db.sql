-- Create Database
CREATE DATABASE `ecorp`;
USE `ecorp`;

-- Create a dedicated MySQL user
GRANT ALL PRIVILEGES ON ecorp.* TO 'ecorp_admin'@'localhost' IDENTIFIED BY 'passw0rd';

-- Insert a table for users
CREATE TABLE `ecorp`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(20) NOT NULL,
    `password` text(1024) NOT NULL,
	`salt` CHAR(44) NOT NULL
) ENGINE = InnoDB;

-- Insert the ecorp users
INSERT INTO `ecorp`.`users` VALUES (null, 'elliot_alderson', 'a63caa5f4cd34e01eb0665e943f480fc05dfb81701cea94db112493f50b6dabd'
                                    , 's8xQeIvtwpi+JVzZW0FwRwOufykg3BecI/pl+GLP5iw=');
INSERT INTO `ecorp`.`users` VALUES (null, 'tyrell_wellick', 'DF3157EB917DE58DA0D25EDF10A742C8', 'gimb8u2P8A8hRj2SKr3tplsuiGZfHRnUbbsNetZrGtM=');
INSERT INTO `ecorp`.`users` VALUES (null, 'terry_colby', '1EB9981602D76BEDEB3E12960E7E644A', 'TYeKH0R8+SPEOkbTewDdU4d9V6Uj3TkZfjlAbQ9d1mU=');
INSERT INTO `ecorp`.`users` VALUES (null, 'angela_moss', '03E8A72550A47B81D404033BF725D740', '81M82iqQqNY2ZyZb40DmZMdFS80WqrjuVHn7c5UFuww=');
INSERT INTO `ecorp`.`users` VALUES (null, 'scott_knowles', '55FD956D762FC614844E36BA3575E380', 'X7Zb+tNhXtB/B5y0l9lOAIzMWSarXpWNgYJyUnqt5ac=');
INSERT INTO `ecorp`.`users` VALUES (null, 'susan_jacobs', 'B85E2C017B6C7564287B3341B2FB16AA', 'u6C/2S0olcvPJ0Ms3lwt9nREQ8WYA8l+bEsD19NnTUU=');

-- Create table for employee lookup
CREATE TABLE `ecorp`.`employees` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(20) NOT NULL,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `position` VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- Insert ecorp employees
INSERT INTO `ecorp`.`employees` VALUES (null, 'elliot_alderson', 'Elliot', 'Alderson', 'Cybersecurity Engineer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'tyrell_wellick', 'Tyrell', 'Wellick', 'Senior VP of Technology');
INSERT INTO `ecorp`.`employees` VALUES (null, 'terry_colby', 'Terry', 'Colby', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'angela_moss', 'Angela', 'Moss', 'Risk Management Assessment');
INSERT INTO `ecorp`.`employees` VALUES (null, 'scott_knowles', 'Scott', 'Knowles', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'susan_jacobs', 'Susan', 'Jacobs', 'General Counsel');

-- Create table for noticeboard
CREATE TABLE `ecorp`.`noticeboard` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `comments` VARCHAR(300) NOT NULL
) ENGINE = InnoDB;

-- Insert records into noticeboard table
INSERT INTO `ecorp`.`noticeboard` VALUES (null, 'Terry Colby', 'This is an automated test post. I am a robot!');
INSERT INTO `ecorp`.`noticeboard` VALUES (null, 'D0loresH4ze', 'Test');
