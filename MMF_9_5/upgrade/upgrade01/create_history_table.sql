DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE History(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  ID_Track Number NOT NULL,
  ID_Person Number NOT NULL,
  Listen_date Timestamp(6) NOT NULL,
  Paused_time VARCHAR2(20)
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN History.ID IS 'unique id of history record'
/
COMMENT ON COLUMN History.ID_Track IS 'track id'
/
COMMENT ON COLUMN History.ID_Person IS 'user id'
/
COMMENT ON COLUMN History.Listen_date IS 'date of listening'
/
COMMENT ON COLUMN History.Paused_time IS 'pauset time in milliseconds'
/