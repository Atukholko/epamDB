SET TIMING ON

SPOOL UPGRADE01_LOG.LOG
SET SERVEROUTPUT ON

DEFINE SCHEMA_NAME = &&1

PROMPT Connecting to schema &&SCHEMA_NAME

connect &&SCHEMA_NAME/oracle 

PROMPT Creating tables
PROMPT ---------------

PROMPT Call to @create_history_table.sql
@create_history_table.sql &&SCHEMA_NAME

PROMPT Call to @create_persone_table.sql
@create_persone_table.sql &&SCHEMA_NAME

PROMPT Call to @create_playlist_table.sql
@create_playlist_table.sql &&SCHEMA_NAME

PROMPT Call to @create_preferences_table.sql
@create_preferences_table.sql &&SCHEMA_NAME

PROMPT Call to @create_subscription_table.sql
@create_subscription_table.sql &&SCHEMA_NAME

PROMPT Call to @create_track_table.sql
@create_track_table.sql &&SCHEMA_NAME

PROMPT Call to @create_type_table.sql
@create_type_table.sql &&SCHEMA_NAME

PROMPT Call to @create_album_table.sql
@create_album_table.sql &&SCHEMA_NAME

PROMPT Call to @create_comments_table.sql
@create_comments_table.sql &&SCHEMA_NAME
PROMPT ---------------

PROMPT Creating relational tables
PROMPT ---------------

PROMPT Call to @create_albumToPlaylist_table.sql
@create_albumToPlaylist_table.sql &&SCHEMA_NAME

PROMPT Call to @create_trackToPlaylist_table.sql
@create_trackToPlaylist_table.sql &&SCHEMA_NAME

PROMPT Call to @create_trackToAlbum_table.sql
@create_trackToAlbum_table.sql &&SCHEMA_NAME

PROMPT Call to @create_likesToTrack_table.sql
@create_likesToTrack_table.sql &&SCHEMA_NAME

PROMPT Call to @create_likesToAlbum_table.sql
@create_likesToAlbum_table.sql &&SCHEMA_NAME
PROMPT ---------------

PROMPT Creating indexes
PROMPT ---------------

PROMPT Call to @create_indexes.sql
@create_indexes.sql &&SCHEMA_NAME
PROMPT ---------------

PROMPT Creating constraints
PROMPT ---------------
PROMPT Call to @create_constraints.sql
@create_constraints.sql &&SCHEMA_NAME
PROMPT ---------------

PROMPT Modify
PROMPT ---------------
PROMPT Call to @modify.sql
@modify.sql
PROMPT ---------------

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE SCHEMA_NAME