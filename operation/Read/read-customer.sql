SELECT 
  c2.id,
  c2.first_name ,
  c2.last_name ,
  c2.birth_place ,
  c2.birth_date ,
  c2.email ,
  c2.is_employeed ,
  c2.job ,
  c2.is_verified ,
  acc.id ,
  acc."number" ,
  a.id,
  a.district ,
  a.province ,
  a.country ,
  at2.description 
FROM customers c2 
JOIN accounts acc ON acc.customer_id = c2.id
JOIN addresses a ON a.customer_id = c2.id 
JOIN address_type at2 ON a.address_type = at2.id;