SELECT 
  acc.id AS account_id,
  acc.customer_id,
  acc.number,
  acc.type,
  acc.balance,
  acc.interest_rate,
  at2.description ,
  t.description AS transaction_desc,
  tt.description AS transaction_type
FROM accounts acc
JOIN account_type at2 ON at2.id = acc."type"
JOIN transactions t ON t.account_id = acc.id
JOIN transaction_type tt ON tt.id = t."type" ;