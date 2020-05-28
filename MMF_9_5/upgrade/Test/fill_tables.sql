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

INSERT INTO TRACK(NAME, DURATION, LIKES, COUNT_LISTENING, ID_OWNER) 
    SELECT DISTINCT COMPOSITION_NAME, d."Length" l, COMPOSITION_LIKES, LISTEN, p.id 
    FROM DATA_T d 
    left join person p on d.OWNER_NICKNAME = p.NICKNAME;

INSERT INTO LIKES_TRACK(ID_PERSON, ID_TRACK)
    SELECT DISTINCT p.id, t.id
    FROM data_t d
    LEFT JOIN person p ON p.nickname = d.nickname
    LEFT JOIN track t ON t.name = d.composition_name
    WHERE d."Like" = 'yes';

INSERT INTO COMMENTS(CONTENT, ITEM_ID, USER_ID)
    select distinct
    dt.comments_track,
    t.id,
    p.id
    from data_t dt
    left join track t
    on dt.composition_name = t.name
    left join person p
    on p.nickname = dt.nickname
    where not dt.comments_track is null;

INSERT INTO HISTORY(ID_TRACK, ID_PERSON, PAUSED_TIME)
    SELECT t.id, p.id, d.Stopped_Time st
    FROM DATA_T d
    left join track t
    on d.composition_name = t.name
    left join person p
    on p.nickname = d.nickname;
commit;