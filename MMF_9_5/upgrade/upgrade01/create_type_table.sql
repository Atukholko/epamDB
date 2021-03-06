DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&SCHEMA_NAME._DATA'

CREATE TABLE Type(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  genre varchar(20 ),
  style varchar(20 ),
  trend varchar(20 )
) TABLESPACE &&DATA_TABLESPACE_NAME
/
COMMENT ON COLUMN Type.ID IS 'unique style id'
/
COMMENT ON COLUMN Type.genre IS 'genre'
/
COMMENT ON COLUMN Type.style IS 'style'
/
COMMENT ON COLUMN Type.trend IS 'trend'
/