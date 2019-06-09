CREATE TABLE IF NOT EXISTS teams ( 
  id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,  
  team_name VARCHAR(20) 
); 
INSERT INTO teams (id, team_name) VALUES (null, 'Zenit'); 
INSERT INTO teams (id, team_name) VALUES (null, 'CSKA'); 
INSERT INTO teams (id, team_name) VALUES (null, 'Villarreal'); 