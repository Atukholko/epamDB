DEFINE SCHEMA_NAME = &&1
DEFINE IDX_TABLESPACE_NAME = '&&SCHEMA_NAME._IDX'

CREATE INDEX IX_Comments_item_id ON Comments (Item_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Comments_user_id ON Comments (User_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Track_type_id ON Track (Type_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Track_owner_id ON Track (ID_Owner) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Album_type_id ON Album (Type_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Album_owner_id ON Album (Id_Owner) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_Playlist_persone_id ON Playlist (ID_Persone) TABLESPACE &&IDX_TABLESPACE_NAME
/