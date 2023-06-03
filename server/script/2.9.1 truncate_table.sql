CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, c1 INT);
INSERT INTO ${TABLE_NAME} VALUE (1, 100), (2, 200), (3, 300);
TRUNCATE TABLE ${TABLE_NAME};
SELECT * FROM ${TABLE_NAME};
FLASHBACK TABLE ${TABLE_NAME} TO truncate_table_bak;
SELECT * FROM ${TABLE_NAME}_bak;