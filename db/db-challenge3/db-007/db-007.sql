SELECT
  id,
  name,
  description,
  CASE is_send_file
    WHEN 0 THEN '許可'
    WHEN 1 THEN '禁止'
  END ファイル送信,
  is_direct_chat,
  is_deleted,
  created_at,
  created_user_id,
  updated_at,
  updated_user_id
FROM chat_rooms
WHERE description LIKE '%ダイレクトチャット'
      and is_deleted = 0
ORDER BY id;
