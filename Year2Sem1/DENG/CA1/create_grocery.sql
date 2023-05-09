use [GroceryStore2222770];

-- Create a new Database
-- create database [GroceryStore2222770]

-- TABLES NOT CREATED YET

create table employee(
	Emp_ID Int primary key,
	EmpName Varchar(100) Not Null,
	SSN Int Not Null,
	Phone Int Not Null,
	StoreRef_ID Int Not Null,
	Address VarChar(50) Not Null,
	PayType Int Not Null,
	Password VarChar(40) Null,
	Manager Int Null,
	Email VarChar(100) Null,
	Date_hired Date Null,
	Date_Start Date Not Null,
	Date_end Date Null,
	pay Decimal(7,2) Not Null);


create table customer(
	Cust_ID Int primary key,
	CustName VarChar(100) Not Null,
	Phone Int Null,
	Email VarChar(100) Null,
	Date_joined Date Not Null);



create table item(
	ItemID Int primary key,
	Brand VarChar(100) Not Null,
	Description VarChar(100) Not Null,
	Price Decimal(7,2) Not Null,
	Cost Decimal(7,2) Not Null,
	Shape VarChar(100) Not Null,
	Size VarChar(100) Not Null,
	UPC Int Not Null,
	Weight Decimal(7,2) Not Null,
	Taxable Int Not Null);




