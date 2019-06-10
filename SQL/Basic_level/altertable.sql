ALTER TABLE players ADD team_id INTEGER NOT NULL;
UPDATE players SET team_id=1 WHERE id IN (1,4); 
UPDATE players SET team_id=2 WHERE id=2; 
UPDATE players SET team_id=3 WHERE id=3); 