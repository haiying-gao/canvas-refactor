CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT, c2 INT);
ALTER TABLE ${TABLE_NAME} ADD INDEX k(`c1`,`c2`);
INSERT INTO ${TABLE_NAME} VALUE (1, 100, 1000), (2, 200, 2000);
ANALYZE TABLE ${TABLE_NAME};
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c1 = 100;
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c1 = 100 and c2 = 1000;
EXPLAIN SELECT * FROM ${TABLE_NAME} WHERE c2 = 2000;

