SELECT 
  a.id as address_id,
  a.customer_id,
  a.street,
  a.street,
  a.district,
  a.regency,
  a.province,
  a.country,
  a.postal_code,
  a.address_type ,
  at2.description 
FROM addresses a
JOIN address_type at2 ON at2.id = a.address_type ;