CREATE SEQUENCE table1_seq;

CREATE TABLE table1 (
  id int NOT NULL DEFAULT NEXTVAL ('table1_seq'),
  val int DEFAULT NULL,
  txt varchar(200) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

ALTER SEQUENCE table1_seq RESTART WITH 22;

CREATE TABLE table2 (id int NOT NULL,  fullname  varchar(200), comment varchar(200));

INSERT INTO table1 (val,txt) VALUES(200, 'test1');

INSERT INTO table2 (id, val,txt) VALUES (5, 200,'test2');

INSERT INTO table1 (val,txt) VALUES(200, 'test1');

INSERT INTO table2 (id, val,txt) VALUES (5, 200,'test2');
