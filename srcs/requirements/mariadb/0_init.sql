CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT '' NOT NULL,
  PRIMARY KEY (`id`)
);

-- insert default data
INSERT INTO `users` (user_id, name) VALUES (0, "Finn");
INSERT INTO `users` (user_id, name) VALUES (1, "Jake");
INSERT INTO `users` (user_id, name) VALUES (2, "Bmd");
INSERT INTO `users` (user_id, name) VALUES (3, "Marceline");
INSERT INTO `users` (user_id, name) VALUES (4, "Princess Bubblegum");
INSERT INTO `users` (user_id, name) VALUES (5, "Lady Rainicorn");
INSERT INTO `users` (user_id, name) VALUES (6, "Ice King");
