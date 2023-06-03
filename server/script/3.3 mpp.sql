CREATE TABLE ${TABLE_NAME} (id INT PRIMARY KEY, name VARCHAR(11));
INSERT INTO ${TABLE_NAME} VALUES (1, 'Jim'), (2, 'Green');
ALTER TABLE ${TABLE_NAME} SET TIFLASH REPLICA 1;
ANALYZE TABLE ${TABLE_NAME};
SELECT SLEEP(3);
SET TIDB_ALLOW_MPP = 0;
EXPLAIN SELECT /*+ READ_FROM_STORAGE(TIFLASH[${TABLE_NAME}]) */ * FROM ${TABLE_NAME};
SET TIDB_ALLOW_MPP = 1;
EXPLAIN SELECT /*+ READ_FROM_STORAGE(TIFLASH[${TABLE_NAME}]) */ * FROM ${TABLE_NAME};