DECLARE @sql NVARCHAR(max)=''

SELECT @sql += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql

CREATE TABLE Customer (
    CustomerID int,
    Customer_LastName varchar(255),
    Customer_FirstName varchar(255),
    Customer_Address varchar(255),
    Customer_City varchar(255),
    Customer_Country varchar(255),
    Customer_State varchar(255),
    Customer_Zipcode int,
    Customer_Number int,
    Customer_Email varchar(255)
);

CREATE TABLE Employee (
    EmployeeID int,
    Employee_LastName varchar(255),
    Employee_FirstName varchar(255),
    Employee_Address varchar(255),
    Employee_City varchar(255),
    Employee_Country varchar(255),
    Employee_State varchar(255),
    Employee_Zipcode int,
    Employee_Number int,
    Employee_Email varchar(255)
);

CREATE TABLE Transaction (
    TransactionID int,
    Transaction_Date date,
    Transaction_Time time,
    Transaction_ Value float,
    CustomerID int,
    EmployeeID int
);

