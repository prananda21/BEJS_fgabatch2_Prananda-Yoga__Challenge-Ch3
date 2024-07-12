CREATE TABLE address_type (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
)

CREATE TABLE addresses (
  id uuid NOT NULL PRIMARY KEY,
  customer_id uuid NOT NULL,
  street VARCHAR(255),
  district VARCHAR(255) NOT NULL,
  regency VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  address_type VARCHAR(255) UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (address_type) REFERENCES address_type (id)
)