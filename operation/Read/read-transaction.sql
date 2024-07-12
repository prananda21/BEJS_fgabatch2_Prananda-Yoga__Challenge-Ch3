SELECT 
	t.id AS transaction_id,
	t.amount ,
	t.description AS transaction_desc,
	tt.description AS transaction_type 
FROM transactions t 
JOIN transaction_type tt ON tt.id = t."type" ;