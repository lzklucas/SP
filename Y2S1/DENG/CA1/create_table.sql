use [GroceryStore2222770];

-- Create a new Database
-- create database [GroceryStore2222770]

-- Foreign keys addition examaple:
/*
Create Table Staff_Dependent_Relation
( Staff_No Char(4) ,
  Dependent_Name Varchar(30),
  Relationship Varchar(20) not null,
  primary key ( Staff_No, Dependent_Name),
  foreign Key ( Staff_No) References Staff_Relation (Staff_No) )
*/

/*
Create Table Pre_Requisite_Relation
( Mod_Cd varchar(10) ,
  Pre_Requisite varchar(10) ,
  primary key ( Mod_Cd, Pre_Requisite ) ,
  foreign key ( Mod_Cd ) References Module_Relation ( Mod_Cd  ),
  foreign key ( Pre_Requisite ) References Module_Relation ( Mod_Cd ))
*/

-- TABLES NOT CREATED YET

create table employee(
	Emp_ID Int,
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
	pay Decimal(7,2) Not Null,
	primary key (Emp_ID));


create table customer(
	Cust_ID Int,
	CustName VarChar(100) Not Null,
	Phone Int Null,
	Email VarChar(100) Null,
	Date_joined Date Not Null,
	primary key(Cust_ID)
);

create table item(
	ItemID Int,
	Brand VarChar(100) Not Null,
	Description VarChar(100) Not Null,
	Price Decimal(7,2) Not Null,
	Cost Decimal(7,2) Not Null,
	Shape VarChar(100) Not Null,
	Size VarChar(100) Not Null,
	UPC Int Not Null,
	Weight Decimal(7,2) Not Null,
	Taxable Int Not Null,
	primary key(ItemID)
);

create table store(
	Store_ID int, --ref store ref id in employee table
	Store_Address VarChar(100) Not Null,
	Store_Manager VarChar(100) Not Null,
);

create table purchase_item(
	Purchase_ID Int,
	Item_ID Int,
	Quantity Int,
	Date_of_Purchase Date,
	Customer_ID Int,
	primary key(Purchase_ID, Item_ID),
	foreign key (Item_ID) References item(ItemID),
	foreign key (Customer_ID) References customer(Cust_ID)
);





