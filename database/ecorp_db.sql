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
INSERT INTO `ecorp`.`users` VALUES (null, 'elliot_alderson', 'a63caa5f4cd34e01eb0665e943f480fc
05dfb81701cea94db112493f50b6dabd560504e967316085d309eeca5b85f169bb9a9ed2d6522d815273253dba75a0b8a388481535d9cd6914ea20886ee78ed264bc888201ffe90f1f7481871d30cc1394a7c79d4640a246589c70ee46d09ec770e059b02d35fe7e7dd7c7f704975d3ee2868cce9648ab3b7374b99a9203ddf64ebe8457a0745d810d819ad7d7b124c0153c526821b48f17498019dd200e8ed2b562e5ef3ca92e6e92d8a1e6750ad7996e058e0cb6d643ac5df93885f3f0db38586d85392936faa59a49c3c061bc6fb5041742fac659cd37e0f3aa1bc2ba096f741d4fc35a11cba3e31aefab2eebe9b433b0c871ed32ab4a368bdcc7a12db975b6f67129e82ea7bb69f62ece42bf1a771b0a08055881a13f40ff8ff2288f24d7c192d0c25f31893faec024430b662b4526d84970e47201e29b03c68796b78df46a54c9920e5b9a7936c25f2a8e4b34d2b44d6fb627a1ca12f432cc496e11709e384071ebbf4f7512e073136ff22ae1fe7b0c02359e7aca415c536b632728873d4eec757142e91fba731c5b6d73adf6f2fd5e80e92c331db55315068dbaf91da250a901263ed71b33cf7ce723162c8f58df7b5b5a1d181cb33dcc3c737a26d692a9ce510dac0523da06d659d27f10f8c63bea3c4561ac9c1acb381ca204d96a25296fccc3931a51d10a22adbef2648481'
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
