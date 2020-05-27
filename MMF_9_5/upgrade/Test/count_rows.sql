set serveroutput on;

declare rowCount NUMBER;

begin
select count(*) into rowCount from PERSON;
DBMS_OUTPUT.PUT_LINE('PERSON - row count: '|| rowCount);
select count(*) into rowCount from TRACK;
DBMS_OUTPUT.PUT_LINE('TRACK - row count: '|| rowCount); 
select count(*) into rowCount from ALBUM;
DBMS_OUTPUT.PUT_LINE('ALBUM - row count: '|| rowCount); 
select count(*) into rowCount from PLAYLIST; 
DBMS_OUTPUT.PUT_LINE('PLAYLIST - row count: '|| rowCount); 
select count(*) into rowCount from TYPE;
DBMS_OUTPUT.PUT_LINE('TYPE - row count: '|| rowCount);
select count(*) into rowCount from COMMENTS;
DBMS_OUTPUT.PUT_LINE('COMMENTS - row count: '|| rowCount); 
select count(*) into rowCount from HISTORY;
DBMS_OUTPUT.PUT_LINE('HISTORY - row count: '|| rowCount); 
select count(*) into rowCount from ALBUM_PLAYLIST;
DBMS_OUTPUT.PUT_LINE('ALBUM_PLAYLIST - row count: '|| rowCount); 
select count(*) into rowCount from LIKES_ALBUM;
DBMS_OUTPUT.PUT_LINE('LIKES_ALBUM - row count: '|| rowCount);
select count(*) into rowCount from LIKES_TRACK; 
DBMS_OUTPUT.PUT_LINE('LIKES_TRACK - row count: '|| rowCount);
select count(*) into rowCount from SUBSCRIPTION;
DBMS_OUTPUT.PUT_LINE('SUBSCRIPTION - row count: '|| rowCount); 
select count(*) into rowCount from TRACK_ALBUM;
DBMS_OUTPUT.PUT_LINE('TRACK_ALBUM - row count: '|| rowCount); 
select count(*) into rowCount from TRACK_PLAYLIST;
DBMS_OUTPUT.PUT_LINE('TRACK_PLAYLIST - row count: '|| rowCount); 
select count(*) into rowCount from TYPE_PREFERENCES; 
DBMS_OUTPUT.PUT_LINE('TYPE_PREFERENCES - row count: '|| rowCount); 
end;
/