DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Track_Album(
  Track_ID Number NOT NULL,
  Album_ID Number NOT NULL
) TABLESPACE &&DATA_TABLESPACE_NAME
/