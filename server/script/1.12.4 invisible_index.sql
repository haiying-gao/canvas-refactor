USE poc;
CREATE TABLE ${TABLE_NAME} (c1 INT, c2 INT, UNIQUE(c2));
INSERT INTO ${TABLE_NAME} VALUE (1, 100),(2, 200);
ANALYZE TABLE ${TABLE_NAME};
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c2 = 100;
ALTER TABLE ${TABLE_NAME} ALTER INDEX c2 INVISIBLE;
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c2 = 200;
