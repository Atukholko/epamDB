DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Type_Preferences(
  ID_Person Number NOT NULL,
  ID_Type Number NOT NULL
) TABLESPACE &&DATA_TABLESPACE_NAME
/