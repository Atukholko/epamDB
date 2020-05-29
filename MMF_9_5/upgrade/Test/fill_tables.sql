@clear_tables.sql;

INSERT INTO PERSON(FIRST_NAME, LAST_NAME, NICKNAME, EMAIL) 
            SELECT DISTINCT FIRST_NAME, LAST_NAME, NICKNAME, EMAIL 
            FROM DATA_T;

INSERT INTO PERSON(FIRST_NAME, LAST_NAME, NICKNAME) 
    SELECT DISTINCT OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME 
    FROM DATA_T;

INSERT INTO TYPE(STYLE) 
    SELECT DISTINCT MUSIC_TYPE 
    FROM DATA_T;

INSERT INTO PLAYLIST(ORIGIN, NAME) 
    SELECT DISTINCT PLAYLIST_TYPE, PLAYLIST_NAME 
    FROM DATA_T;

INSERT INTO TRACK(NAME, DURATION, LIKES, COUNT_LISTENING, ID_OWNER, TYPE_ID) 
    SELECT DISTINCT COMPOSITION_NAME, d."Length" l, COMPOSITION_LIKES, LISTEN, p.id, t.id typeid
    FROM DATA_T d 
    left join person p on d.OWNER_NICKNAME = p.NICKNAME
    left join TYPE t on t.style = d.music_type;

INSERT INTO TRACK_PLAYLIST(PLAYLIST_ID, TRACK_ID)
    select distinct
        p.id,
        t.id
        from data_t d
        left join track t on t.name = d.composition_name
        left join playlist p on p.name = d.playlist_name;

INSERT INTO LIKES_TRACK(ID_PERSON, ID_TRACK)
    SELECT DISTINCT p.id, t.id
    FROM data_t d
    LEFT JOIN person p ON p.nickname = d.nickname
    LEFT JOIN track t ON t.name = d.composition_name
    WHERE d."Like" = 'yes';

INSERT INTO COMMENTS(CONTENT, ITEM_ID, USER_ID)
    SELECT DISTINCT
    d.comments_track,
    t.id,
    p.id
    FROM DATA_T d
    LEFT JOIN track t ON d.composition_name = t.name
    LEFT JOIN person p ON p.nickname = d.nickname
    WHERE d.comments_track IS NOT NULL;

INSERT INTO HISTORY(ID_TRACK, ID_PERSON, PAUSED_TIME)
    SELECT t.id, p.id, d.Stopped_Time st
    FROM DATA_T d
    LEFT JOIN track t ON d.composition_name = t.name
    LEFT JOIN person p ON p.nickname = d.nickname;
commit;