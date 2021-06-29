SELECT
  u.name as ユーザー名,
  c.name as チャットルーム名,
  DATE_FORMAT(user_joined_at,'%Y-%m-%d') as 参加日時
FROM chat_room_users as cu
  JOIN users as u
  ON cu.user_id = u.id
  JOIN chat_rooms as c
  ON cu.chat_room_id = c.id
WHERE u.is_deleted = 0
  AND c.is_deleted = 0
ORDER BY user_joined_at;
