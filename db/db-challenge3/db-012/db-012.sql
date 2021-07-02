BEGIN;
UPDATE chat_rooms as c
JOIN chat_room_users as cu
  ON c.id = cu.chat_room_id
 SET c.is_send_file = 0,
     c.updated_user_id = 1,
     c.updated_at = NOW()
WHERE cu.user_id != 1
  AND c.is_deleted = 0;
COMMIT;
