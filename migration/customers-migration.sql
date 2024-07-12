CREATE TABLE customers (
  id uuid NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  birth_place VARCHAR(255) NOT NULL,
  birth_date DATE NOT NULL,
  phone_number VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password TEXT NOT NULL,
  pin TEXT NOT NULL,
  national_id TEXT NOT NULL,
  is_employeed BOOLEAN NOT NULL,
  job VARCHAR(255),
  mother_name VARCHAR(255) NOT NULL,
  is_verified BOOLEAN NOT NULL,
  address VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

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
  transaction uuid UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (type) REFERENCES account_type (id)
);

CREATE TABLE address_type (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE addresses (
  id uuid NOT NULL PRIMARY KEY,
  customer_id uuid NOT NULL,
  street VARCHAR(255),
  district VARCHAR(255) NOT NULL,
  regency VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  postal_code VARCHAR(10) NOT NULL,
  address_type VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (address_type) REFERENCES address_type (id)
);

CREATE TABLE transaction_type (
  id VARCHAR(255) NOT NULL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE transactions (
  id uuid NOT NULL PRIMARY KEY,
  account_id uuid NOT NULL,
  type VARCHAR(255) NOT NULL,
  amount INTEGER NOT NULL,
  date TIMESTAMP NOT NULL,
  description TEXT,
  FOREIGN KEY (id) REFERENCES accounts (transaction),
  FOREIGN KEY (type) REFERENCES transaction_type (id)
);