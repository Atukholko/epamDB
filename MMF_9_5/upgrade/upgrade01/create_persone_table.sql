DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Person(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  nickname varchar(20 ) NOT NULL,
  first_name varchar(20 ) NOT NULL,
  last_name varchar(20 ) NOT NULL,
  email varchar(35 ) NOT NULL
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Person.ID IS 'unique user id'
/
COMMENT ON COLUMN Person.nickname IS 'user nickname'
/
COMMENT ON COLUMN Person.first_name IS 'user first name'
/
COMMENT ON COLUMN Person.last_name IS 'user last name'
/
COMMENT ON COLUMN Person.email IS 'user email'
/