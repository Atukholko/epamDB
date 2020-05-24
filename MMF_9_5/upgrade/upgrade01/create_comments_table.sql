DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Comments(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  User_ID Number,
  content varchar(200 ) NOT NULL,
  Item_ID Number
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Comments.ID IS 'unique comment id'
/
COMMENT ON COLUMN Comments.User_ID IS 'user who comment'
/
COMMENT ON COLUMN Comments.content IS 'text of comment'
/
COMMENT ON COLUMN Comments.Item_ID IS 'id of track, playlist or album'
/