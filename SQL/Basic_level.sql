 CREATE DATABASE IF NOT EXISTS footballers;
 USE footballers;
 CREATE TABLE IF NOT EXISTS players (
 id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
 first_name VARCHAR(30) NOT NULL,
 last_name varchar(30) NOT NULL,
 year_of_birth YEAR 
 );