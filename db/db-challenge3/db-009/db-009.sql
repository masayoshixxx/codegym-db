SELECT
  COUNT(*) as 投稿数,
  c.name as チャットルーム名
FROM posts as p
  JOIN chat_rooms as c
  ON p.chat_room_id = c.id
  JOIN users as u
  ON p.created_user_id = u.id
WHERE p.is_deleted = 0
  AND u.is_deleted = 0
GROUP BY チャットルーム名
ORDER BY 投稿数 DESC;
