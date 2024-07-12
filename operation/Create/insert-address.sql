INSERT INTO address_type (id, description) VALUES ('AT-HOME', 'Home Address'), ('AT-OFFICE', 'Office Address');

INSERT INTO addresses (
  id,
  customer_id,
  street,
  district,
  regency,
  province,
  country,
  postal_code,
  address_type
) VALUES (
  '28a72df5-67a8-4c42-9b16-773792017550',
  '1393714e-7af7-4c6c-bf51-1df8d97ddcc0',
  'Jalan Gatot Subroto No.10',
  'Kuta',
  'Badung',
  'Bali',
  'Indonesia',
  '1234567',
  'AT-HOME'
);