CREATE DATABASE chat;

USE chat;

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
--
-- ---

CREATE DATABASE chatrooom;

USE chat;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `text` VARCHAR(140) NULL DEFAULT NULL,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  `date` VARCHAR(255) NULL DEFAULT NULL,
  `room` VARCHAR(255) NULL DEFAULT NULL,
  `id_rooms` TINYINT NULL DEFAULT NULL,
  `id_users` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'rooms'
--
-- ---

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`text`,`username`,`date`,`room`,`id_rooms`,`id_users`) VALUES
-- ('','','','','','','');
-- INSERT INTO `rooms` (`id`,`name`) VALUES
-- ('','');











-- CREATE DATABASE pleaseChat;

-- USE pleaseChat;

-- CREATE TABLE users (
--   id int unsigned NOT ` auto_increment,
--   name varchar(255) NOT NULL,

--   primary key(id)
-- );

-- CREATE TABLE rooms (
--   id int unsigned NOT NULL auto_increment,
--   name varchar(255) NOT NULL,

--   primary key(id)
-- );

-- CREATE TABLE messages (
--   id int unsigned NOT NULL auto_increment,
--   text varchar(140) NOT NULL,
--   username varchar(100) NOT NULL,
--   date varchar(255) NOT NULL,
--   room varchar(255) NOT NULL,
--   users_id int NOT NULL,
--   rooms_id int NOT NULL,
--   primary key(id),
--   foreign key (users_id) references users(id),
--   foreign key (rooms_id) references rooms(id)
-- );

-- /* You can also create more tables, if you need them... */

-- /*  Execute this file from the command line by typing:
--  *    mysql < schema.sql
--  *  to create the database and the tables.*/