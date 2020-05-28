DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Playlist(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  ID_Persone Number,
  name VARCHAR2(50),
  Listen_access varchar(10 ) DEFAULT 'public',
  origin varchar(10 ) NOT NULL
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Playlist.ID IS 'unique playlist id'
/
COMMENT ON COLUMN Playlist.ID_Persone IS 'owner id
'
/
COMMENT ON COLUMN Playlist.Listen_access IS 'public or private'
/
COMMENT ON COLUMN Playlist.origin IS 'created by system of user'
/