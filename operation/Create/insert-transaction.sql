INSERT INTO transaction_type (id, description)
  VALUES 
    ('TT', 'Transfer'),
    ('TD', 'Deposit'),
    ('TW', 'Withdraw'),
    ('TF', 'Acount Fee'),
    ('TI', 'Interest Payment');

INSERT INTO transactions (
  id,
  account_id,
  type,
  amount,
  description
) VALUES (
  '11e774a8-51f7-471a-9e53-271e181a1138',
  'ab953ffd-1857-498a-9f7b-b59132143b36',
  'TD',
  1000.00,
  'Nabung Gaji Pertama'
)