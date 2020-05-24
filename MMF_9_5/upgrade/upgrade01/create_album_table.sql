DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Album(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  Type_ID Number,
  likes Integer DEFAULT 0 NOT NULL,
  reposts Integer DEFAULT 0 NOT NULL,
  count_listening Integer DEFAULT 0 NOT NULL,
  rating Integer,
  Id_Owner Number
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Album.ID IS 'unique album id'
/
COMMENT ON COLUMN Album.Type_ID IS 'type id'
/
COMMENT ON COLUMN Album.likes IS 'number of likes'
/
COMMENT ON COLUMN Album.reposts IS 'number of reposts'
/
COMMENT ON COLUMN Album.count_listening IS 'number of listenings'
/
COMMENT ON COLUMN Album.rating IS 'number in rating'
/
COMMENT ON COLUMN Album.Id_Owner IS 'owner id'
/