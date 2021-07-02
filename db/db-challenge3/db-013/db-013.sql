BEGIN;
UPDATE users
SET
  is_deleted = 1,
  updated_at = NOW()
WHERE
  (business_phone_number IS NULL OR business_phone_number = '')
AND
  (mobile_phone_number IS NULL OR mobile_phone_number = '');
COMMIT;
