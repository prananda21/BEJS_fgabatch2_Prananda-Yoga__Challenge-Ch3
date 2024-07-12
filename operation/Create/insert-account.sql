INSERT INTO account_type (id, description) 
  VALUES
  ('AcT-CHECK', 'Checking Account'),
  ('AcT-SAVING', 'Saving Account'),
  ('AcT-MMA', 'Money Market Account'),
  ('AcT-CDA', 'Certified of Deposit Account');

INSERT INTO accounts (
  id, customer_id, number, type, balance, interest_rate, transaction
) VALUES (
  'ab953ffd-1857-498a-9f7b-b59132143b36',
  '1393714e-7af7-4c6c-bf51-1df8d97ddcc0',
  'MMA-12345567890-1234567890',
  'AcT-MMA',
  1000000000.00,
  10000000.00,
  'ae983721-99d3-4528-9cce-a44691d70434'
);
