DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Track(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  Type_ID Number,
  name VARCHAR2(100),
  duration VARCHAR2(20) NOT NULL,
  likes Integer DEFAULT 0,
  reposts Integer DEFAULT 0,
  count_listening Integer DEFAULT 0,
  rating Integer,
  ID_Owner Number
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Track.ID IS 'unique track id'
/
COMMENT ON COLUMN Track.Type_ID IS 'type id'
/
COMMENT ON COLUMN Track.duration IS 'duration of track in milliseconds'
/
COMMENT ON COLUMN Track.likes IS 'number of likes'
/
COMMENT ON COLUMN Track.reposts IS 'number of reposts'
/
COMMENT ON COLUMN Track.count_listening IS 'number of listenigs'
/
COMMENT ON COLUMN Track.rating IS 'number in rating'
/
COMMENT ON COLUMN Track.ID_Owner IS 'owner id'
/