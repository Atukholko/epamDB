SET TIME ON
SET TIMING ON

PROMPT Enter username
DEFINE USER_NAME = &&1
PROMPT Enter tablespacename
DEFINE TABLESPACE_NAME = &&2

SPOOL DROP_SCHEMA.LOG

SET SERVEROUTPUT ON
PROMPT Username caling to drop_user: &&USER_NAME
PROMPT

@drop_user.sql &&USER_NAME

PROMPT Username caling to drop_tablspace: &&TABLESPACE_NAME
PROMPT

@drop_tablespace.sql &&TABLESPACE_NAME

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

SPOOL OFF