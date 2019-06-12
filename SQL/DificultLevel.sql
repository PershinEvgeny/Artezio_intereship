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

/*Задание 3 (повышенной сложности). Доработайте схему БД таким образом, чтобы можно было хранить информацию о 
подчинённых. Без каких-либо ограничений: каждый сотрудник может иметь несколько подчинённых (либо не иметь их 
вовсе), и сам может иметь несколько начальников (либо вовсе начальников не иметь). Составьте запрос на выборку всех 
подчинённых определённого сотрудника. (Подсказка: гуглить отношение  “many-to-many”). 
*/
    CREATE TABLE IF NOT EXISTS dependence (
 id_boss INT UNSIGNED NOT NULL ,
 id_slave INT UNSIGNED NOT NULL
 );
 
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 2);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 3);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 4);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 5);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 6);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 7);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 8);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 9);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 10);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 11);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 12);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 13);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 14);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 15);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 16);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (1, 17);

INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 4);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 3);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 8);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 10);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 11);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 2);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 4);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 12);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 6);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (5, 7);

INSERT INTO office.dependence (id_boss, id_slave) VALUES (9, 13);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (9, 15);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (9, 17);

INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 6);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 7);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 14);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 12);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 8);
INSERT INTO office.dependence (id_boss, id_slave) VALUES (2, 10);

 SELECT staff.first_name, staff.last_name FROM office.dependence 
 INNER JOIN office.staff
 ON dependence.id_slave=staff.id
 WHERE dependence.id_boss = 2; 