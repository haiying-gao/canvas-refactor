CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY , c1 INT);
INSERT INTO ${TABLE_NAME} VALUE (1, 100), (2, 200), (3, 300);
DROP TABLE ${TABLE_NAME};
FLASHBACK TABLE ${TABLE_NAME};
SELECT * FROM ${TABLE_NAME};