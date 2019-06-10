 /*Создайте новую базу данных*/
 CREATE DATABASE IF NOT EXISTS footballers;
 /*Для начала при помощи команды USE начнём работу с базой данных*/
 USE footballers;
 /*Добавим новую таблицу*/
 CREATE TABLE IF NOT EXISTS players (
 id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
 first_name VARCHAR(30) NOT NULL,
 last_name varchar(30) NOT NULL,
 year_of_birth YEAR 
 );
 /*добавим в неё несколько игроков*/
INSERT INTO players ( id, first_name, last_name) VALUES ( null, 'Artem', 'Dzyuba'); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor', 'Akinfeev', 1986); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Denis', 'Cheryshev', 1990); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor', 'Smolnikov', 1988);
/*Попробуйте модифицировать запрос*/
SELECT first_name, last_name FROM footballers.players;
/*Запросите данные по футболистам, год рождения которых мы знаем*/
SELECT * FROM footballers.players WHERE year_of_birth IS NOT NULL;
/*Изменим информацию об Артёме, добавив год его рождения при помощи команды UPDATE*/
UPDATE players SET year_of_birth=1988 WHERE id=1; 
/*получить имена и фамилии футболистов, которые родились после 1987 года*/
SELECT first_name, last_name FROM players WHERE year_of_birth > 1987;
/*создать таблицу teams и добавить связь между записями в этой таблице и футболистами*/
CREATE TABLE IF NOT EXISTS teams ( 
  id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,  
  team_name VARCHAR(20) 
);
/*Добавим клубы*/
INSERT INTO teams (id, team_name) VALUES (null, 'Zenit'); 
INSERT INTO teams (id, team_name) VALUES (null, 'CSKA'); 
INSERT INTO teams (id, team_name) VALUES (null, 'Villarreal');
/*Добавим новое поле в таблицу players при помощи команды ALTER TABLE*/
ALTER TABLE players ADD team_id INTEGER NOT NULL;
/*Установим связь между футболистами и их клубами*/
UPDATE players SET team_id=1 WHERE id IN (1,4); 
UPDATE players SET team_id=2 WHERE id=2; 
UPDATE players SET team_id=3 WHERE id=3);
/*Выведем всех футболистов вместе с их клубами. Для этого воспользуемся таким инструментов, как присоединение (JOIN)*/
SELECT player.first_name, player.last_name, team.team_name 
FROM players player 
INNER JOIN teams team ON player.team_id=team.id;