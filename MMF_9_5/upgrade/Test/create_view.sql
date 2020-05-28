CREATE view CREATED_DATA AS 
SELECT
    p.first_name,
    p.last_name,
    p.nickname,
    p.email,
    pl.name Playlist_name,
    pl.origin Playlist_Type,
    tp.style Music_Type,
    t.name Composition_name, 
    t.duration Length,
    owner.first_name Owner_first_name, 
    owner.last_name Owner_Last_name, 
    owner.nickname Owner_nickname,
    CASE WHEN p.id IN (SELECT lt.id_person FROM likes_track lt WHERE lt.id_track = t.id)
    THEN 'yes'
    ELSE 'no' END "Like",
    t.likes Composition_Likes,
    t.count_listening Listen,
    c.content Comments_Track,
    CASE WHEN h.paused_time IS NOT NULL
    THEN 'Y'
    ELSE '' END Current_listening,
    CASE WHEN h.paused_time IS NOT NULL
    THEN h.paused_time
    ELSE '' END Stopped_Time
from track t
LEFT JOIN person owner ON owner.id = t.id_owner
LEFT JOIN track_playlist t_p ON t_p.track_id = t.id
LEFT JOIN playlist pl ON pl.id = t_p.playlist_id
LEFT JOIN type tp ON tp.id = t.type_id
LEFT JOIN history h ON h.id_track = t.id
LEFT JOIN person p ON p.id = h.id_person
LEFT JOIN comments c ON c.user_id = p.id and c.item_id = t.id
ORDER BY p.first_name, pl.name;
COMMIT;