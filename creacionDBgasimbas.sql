-- Crear la base de datos y usarla
DROP DATABASE IF EXISTS gaseos;

CREATE DATABASE IF NOT EXISTS gaseos;
USE gaseos;

-- Tabla branch
CREATE TABLE branch (
  id_branch VARCHAR(20) NOT NULL,
  branch_name VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  cellphone VARCHAR(20) NOT NULL,
  branch_type VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_branch)
);

-- Tabla providers
CREATE TABLE providers (
  nit_provider VARCHAR(20) NOT NULL,
  provider_name VARCHAR(100) NOT NULL,
  supply_type VARCHAR(50) NOT NULL,
  cellphone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_branch VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (nit_provider),
  FOREIGN KEY (id_branch) REFERENCES branch(id_branch)
    ON DELETE SET NULL
);

-- Tabla products
CREATE TABLE products (
  product_key VARCHAR(20) NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  product_description TEXT NOT NULL,
  size VARCHAR(20) NOT NULL,
  product_container VARCHAR(20) NOT NULL,
  package_per_unit INT NOT NULL,
  product_price DECIMAL(10,2) NOT NULL,
  nit_provider VARCHAR(20) NOT NULL,
  PRIMARY KEY (product_key),
  FOREIGN KEY (nit_provider) REFERENCES providers(nit_provider)
    ON DELETE CASCADE
);

-- Tabla inventory (Clave compuesta)
CREATE TABLE inventory (
  id_branch VARCHAR(20) NOT NULL,
  product_key VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  actualization_date DATE DEFAULT NULL,
  PRIMARY KEY (id_branch, product_key),
  FOREIGN KEY (id_branch) REFERENCES branch(id_branch)
    ON DELETE CASCADE,
  FOREIGN KEY (product_key) REFERENCES products(product_key)
    ON DELETE CASCADE
);

-- Tabla clients
CREATE TABLE clients (
  nit_client VARCHAR(20) NOT NULL,
  client_name VARCHAR(50) NOT NULL,
  client_type VARCHAR(20) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  cellphone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  client_user VARCHAR(50) NOT NULL,
  client_password VARCHAR(255) NOT NULL,
  id_branch VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (nit_client),
  FOREIGN KEY (id_branch) REFERENCES branch(id_branch)
    ON DELETE SET NULL
);

-- Tabla employees
CREATE TABLE employees (
  id_employee VARCHAR(20) NOT NULL,
  name_employee VARCHAR(100) NOT NULL,
  lastname_employee VARCHAR(100) NOT NULL,
  role_employee VARCHAR(50) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  hire_date DATE NOT NULL,
  id_branch VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (id_employee),
  FOREIGN KEY (id_branch) REFERENCES branch(id_branch)
    ON DELETE SET NULL
);

-- Tabla sells
CREATE TABLE sells (
  id_sell VARCHAR(20) NOT NULL,
  nit_client VARCHAR(20) NOT NULL,
  sell_date DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  payment_state VARCHAR(20) NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  id_employee VARCHAR(20) DEFAULT NULL,  -- Cambiado a DEFAULT NULL
  PRIMARY KEY (id_sell),
  FOREIGN KEY (nit_client) REFERENCES clients(nit_client)
    ON DELETE CASCADE,
  FOREIGN KEY (id_employee) REFERENCES employees(id_employee)
    ON DELETE SET NULL
);

-- Tabla sell_details (Clave compuesta)
CREATE TABLE sell_details (
  id_sell VARCHAR(20) NOT NULL,
  product_key VARCHAR(20) NOT NULL,
  package_quantity INT DEFAULT NULL,
  unit_price DECIMAL(10,2) DEFAULT NULL,
  subtotal DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (id_sell, product_key),
  FOREIGN KEY (id_sell) REFERENCES sells(id_sell)
    ON DELETE CASCADE,
  FOREIGN KEY (product_key) REFERENCES products(product_key)
    ON DELETE CASCADE
);

-- Tabla vehicles
CREATE TABLE vehicles (
  plate VARCHAR(10) NOT NULL,
  model VARCHAR(50) NOT NULL,
  capacity INT NOT NULL,
  state VARCHAR(20) NOT NULL,
  id_branch VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (plate),
  FOREIGN KEY (id_branch) REFERENCES branch(id_branch)
    ON DELETE SET NULL
);

-- Tabla routes
CREATE TABLE routes (
  id_route VARCHAR(20) NOT NULL,
  vehicle_plate VARCHAR(15) DEFAULT NULL,
  destiny_city VARCHAR(50) DEFAULT NULL,
  departure_date DATE DEFAULT NULL,
  id_employee VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (id_route),
  FOREIGN KEY (id_employee) REFERENCES employees(id_employee)
    ON DELETE SET NULL,
  FOREIGN KEY (vehicle_plate) REFERENCES vehicles(plate)
    ON DELETE SET NULL
);