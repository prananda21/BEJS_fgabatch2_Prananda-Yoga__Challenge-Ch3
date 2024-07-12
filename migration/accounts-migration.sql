CREATE TABLE account_type (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE accounts (
  id uuid NOT NULL PRIMARY KEY,
  customer_id uuid NOT NULL,
  number VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  balance INTEGER NOT NULL,
  interest_rate INTEGER NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (type) REFERENCES account_type (id)
);