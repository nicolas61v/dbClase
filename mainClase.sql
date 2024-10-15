CREATE TABLE branch (
  id_branch varchar(20) NOT NULL,
  branch_name varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  address varchar(100) NOT NULL,
  cellphone varchar(20) NOT NULL,
  branch_type varchar(20) NOT NULL,
  PRIMARY KEY (id_branch)
);

CREATE TABLE clients (
  nit_client varchar(20) NOT NULL,
  client_name varchar(10) NOT NULL,
  client_type varchar(20) NOT NULL,
  address varchar(20) NOT NULL,
  city varchar(50) NOT NULL,
  cellphone varchar(20) NOT NULL,
  email varchar(50) NOT NULL,
  client_user varchar(50) NOT NULL,
  client_password varchar(255) NOT NULL,
  id_branch varchar(20) DEFAULT NULL,
  PRIMARY KEY (nit_client)
);

CREATE TABLE employees (
  id_employee varchar(20) NOT NULL,
  name_employee varchar(100) NOT NULL,
  lastname_employee varchar(100) NOT NULL,
  role_employee varchar(50) NOT NULL,
  salary decimal(10,2) NOT NULL,
  hire_date date NOT NULL,
  id_branch varchar(20) DEFAULT NULL,
  PRIMARY KEY (id_employee)
);

CREATE TABLE inventory (
  id_branch varchar(20) NOT NULL,
  product_key varchar(20) NOT NULL,
  qunatity int NOT NULL,
  actualization_date date DEFAULT NULL,
  PRIMARY KEY (id_branch,product_key)
);

CREATE TABLE products (
  product_key varchar(20) NOT NULL,
  product_name varchar(50) NOT NULL,
  product_description text NOT NULL,
  size varchar(20) NOT NULL,
  product_container varchar(20) NOT NULL,
  package_per_unit int NOT NULL,
  product_price decimal(10,2) NOT NULL,
  nit_provider varchar(20) NOT NULL,
  PRIMARY KEY (product_key)
);

CREATE TABLE providers (
  nit_provider varchar(20) NOT NULL,
  provider_name varchar(100) NOT NULL,
  supply_type varchar(50) NOT NULL,
  cellphone varchar(20) NOT NULL,
  email varchar(20) NOT NULL,
  id_branch varchar(20) DEFAULT NULL,
  PRIMARY KEY (nit_provider)
);

CREATE TABLE routes (
  id_route varchar(20) NOT NULL,
  vehicle_plate varchar(15) DEFAULT NULL,
  destiny_city varchar(50) DEFAULT NULL,
  departure_date varchar(20) DEFAULT NULL,
  id_employee varchar(20) DEFAULT NULL,
  PRIMARY KEY (id_route)
);

CREATE TABLE sell_details (
  id_sell varchar(20) NOT NULL,
  product_key varchar(20) NOT NULL,
  package_quantity int DEFAULT NULL,
  unit_price decimal(10,2) DEFAULT NULL,
  subtotal decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (id_sell,product_key)
);

CREATE TABLE sells (
  id_sell varchar(20) NOT NULL,
  nit_client varchar(20) NOT NULL,
  sell_date date NOT NULL,
  total decimal(10,2) NOT NULL,
  payment_state varchar(20) NOT NULL,
  payment_method varchar(50) NOT NULL,
  id_employee varchar(50) NOT NULL,
  PRIMARY KEY (id_sell)
);

CREATE TABLE vehicles (
  plate varchar(10) NOT NULL,
  model varchar(50) NOT NULL,
  capacity int NOT NULL,
  state varchar(20) NOT NULL,
  id_branch varchar(20) DEFAULT NULL,
  PRIMARY KEY (plate)
);
