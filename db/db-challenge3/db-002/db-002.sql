INSERT INTO chat_rooms
  (
    name,
    description,
    is_send_file,
    is_direct_chat,
    is_deleted,
    created_at,
    created_user_id,
    updated_at,
    updated_user_id
  )
VALUES
  ('りんご','利用者の集まり',1,0,0,'2020/04/21 11:26:32',1,'2020/04/21 11:26:32',1),
  ('ごりら','sqlの集まり',1,0,0,'2020/04/23 15:42:05',2,'2020/04/23 15:42:05',2),
  ('らっぱ','言語の集まり',1,0,0,'2020/04/24 11:03:16',8,'2020/04/25 10:33:55',9),
  ('ぱんだ','フレームワークの集まり',0,0,0,'2020/04/23 18:14:28',5,'2020/04/24 20:33:06',7),
  ('ごま','adminとmysqlのダイレクトチャット',1,1,0,'2020/04/23 14:34:58',1,'2020/04/23 14:34:58',1),
  ('まり','adminとsqlserverのダイレクトチャット',0,1,0,'2020/04/23 14:45:22',1,'2020/04/23 14:45:22',1),
  ('りす','adminとjsのダイレクトチャット',1,1,0,'2020/04/24 10:55:21',1,'2020/04/24 10:55:21',1),
  ('かめ','adminとamazonのダイレクトチャット',1,1,1,'2020/04/24 11:02:20',1,'2020/04/27 15:41:33',1);
