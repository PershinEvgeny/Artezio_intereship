/*Создайте БД для хранения информации о сотрудниках. Для каждого сотрудника будем хранить следующую 
информацию: 
  Имя 
  Фамилия 
  Должность 
  Зарплата 
Все поля обязательные и не могут быть пустыми. У каждого сотрудника может быть только одна должность, могут быть 
сотрудники с одинаковыми должностями. 
Добавьте 3-5 записей в каждую таблицу. 
*/
 CREATE DATABASE IF NOT EXISTS office;
  USE office;
   CREATE TABLE IF NOT EXISTS staff (
 id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
 first_name VARCHAR(30) NOT NULL,
 last_name varchar(30) NOT NULL,
 position_id INT UNSIGNED NOT NULL,
 sallary FLOAT NOT NULL
 );

INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('George', 'Lucas', '1', '500000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Luke', 'Skywalker', '7', '70000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Han', 'Solo', '4', '50000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Leia', 'Organa', '3', '40000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Obi-Wan', 'Kenobi', '2', '100000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('C', '3-PIO', '11', '25000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('R2', 'D2', '11', '35000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Chew', 'Bacca', '5', '50000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Darth', 'Vader', '2', '200000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Yo', 'Da', '5', '100000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Padme', 'Amidala', '6', '50000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Kwai-Gon', 'Gin', '10', '29000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Dart', 'Moll', '5', '60000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Dja-Dja', 'Binks', '9', '50000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Dart', 'Sirius', '7', '100000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Ouen', 'Lars', '8', '50000');
INSERT INTO `office`.`staff` (`first_name`, `last_name`, `position_id`, `sallary`) VALUES ('Kaylo', 'Ren', '11', '30000');

    CREATE TABLE IF NOT EXISTS positions (
 id INT UNSIGNED NOT NULL auto_increment PRIMARY KEY,
 title VARCHAR(30) NOT NULL
 );
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('1', 'Director');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('2', 'Head of department');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('3', 'HR');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('4', 'Project manager');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('5', 'Programmer');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('6', 'QA engineer');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('7', 'Team lead');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('8', 'Economist');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('9', 'Designer');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('10', 'Analyst');
INSERT INTO `office`.`positions` (`id`, `title`) VALUES ('11', 'Junior');

/*Задание 2. Составьте запросы на выборку данных (SELECT): 
  Все сотрудники с зарплатами меньше 30 000 рублей. 
  Всех сотрудники, занимающие определённую должность (например - дизайнеры), с зарплатой меньше 30 000 
рублей.*/
SELECT * FROM office.staff WHERE sallary <= 30000;

SELECT staff.first_name, staff.last_name, staff.sallary, positions.title
FROM office.staff INNER JOIN office.positions
ON staff.position_id=positions.id
WHERE title = "Junior" AND sallary <= 30000;
