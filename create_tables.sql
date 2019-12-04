
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_first_name VARCHAR(50) NOT NULL,
    customer_last_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(50),
    customer_phone VARCHAR(20),
    customer_address1 VARCHAR(50),
    customer_address2 VARCHAR(50),
    customer_city VARCHAR(50),
    customer_zip VARCHAR(9)
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_first_name VARCHAR(50) NOT NULL, 
    employee_last_name VARCHAR(50)NOT NULL,
    employee_email VARCHAR(50),
    employee_phone VARCHAR(20),
    employee_address_1 VARCHAR(50),
    employee_address_2 VARCHAR(50),
    employee_city VARCHAR(50),
    employee_zip VARCHAR(9),
    employee_hire_date VARCHAR(15),
    employee_role VARCHAR(50),
    employee_supervisor_employee_id INT,
    employee_currently_employed BOOLEAN
);

CREATE TABLE account (
    account_id INT PRIMARY KEY,
    customer_id INT  NOT NULL, 
    employee_id INT  NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    account_name VARCHAR(50) NOT NULL,
    account_creation_date TIMESTAMP
);

CREATE TABLE position (
    position_id INT PRIMARY KEY,
    asset_id INT,
    position_shares INT
);

CREATE TABLE transaction (
    transaction_id int PRIMARY KEY,
    account_id INT,
    security_id INT,
    transaction_type VARCHAR(1),
    transaction_shares FLOAT(3),
    transaction_price FLOAT(3),
    transaction_execution_date_time TIMESTAMP,
    transaction_status VARCHAR(1)
);

CREATE TABLE security (
    secutiry_id INT PRIMARY KEY,
    secutity_symbol VARCHAR(10) NOT NULL,
    security_name VARCHAR(50),
    security_sector VARCHAR(50)
);

