CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY , c1 INT);
BEGIN;
INSERT INTO ${TABLE_NAME} VALUE (1, 100), (2, 200), (3, 300);
SELECT * FROM ${TABLE_NAME};
ROLLBACK;
SELECT * FROM ${TABLE_NAME};