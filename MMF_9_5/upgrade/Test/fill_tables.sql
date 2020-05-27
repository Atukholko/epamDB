@clear_tables.sql;
INSERT INTO PERSON(FIRST_NAME, LAST_NAME, NICKNAME, EMAIL) 
            SELECT FIRST_NAME, LAST_NAME, NICKNAME, EMAIL 
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
    SELECT p.id, t.id
    FROM DATA_T d
    LEFT JOIN PERSON p ON d.NICKNAME = p.NICKNAME
    INNER JOIN TRACK t ON d.COMPOSITION_NAME = t.NAME
    WHERE d."Like" = 'yes';

commit;