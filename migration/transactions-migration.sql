CREATE TABLE transaction_type (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE transactions (
  id uuid NOT NULL PRIMARY KEY,
  account_id uuid NOT NULL,
  type VARCHAR(255) UNIQUE,
  amount INTEGER NOT NULL,
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES transactions (id),
  FOREIGN KEY (type) REFERENCES transaction_type (id)
);