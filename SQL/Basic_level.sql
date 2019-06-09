 CREATE DATABASE IF NOT EXISTS footballers;
 USE footballers;
 CREATE TABLE IF NOT EXISTS players (
 id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
 first_name VARCHAR(30) NOT NULL,
 last_name varchar(30) NOT NULL,
 year_of_birth YEAR 
 );
INSERT INTO players ( id, first_name, last_name) VALUES ( null, 'Artem', 'Dzyuba'); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor', 'Akinfeev', 1986); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Denis', 'Cheryshev', 1990); 
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor', 'Smolnikov', 1988);