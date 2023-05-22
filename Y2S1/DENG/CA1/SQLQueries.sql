use [GroceryStore2222770]
/*
select * from customer;
select * from employee;
select * from inventory;
select * from item;
select * from purchase_item;
select * from store;
*/

/*
select 
	c.CustName, e.StoreRef_ID, s.Store_Address, s.Manager_ID, p.Date_of_Purchase, i.Brand, p.Quantity, p.Server_ID
from 
	customer as c
inner join
	purchase_item as p on c.Cust_ID = p.Customer_ID
inner join 
	item as i on i.ItemID = p.Item_ID
inner join 
	inventory as iv on iv.Item_ID = i.ItemID
inner join 
	store as s on s.Store_ID = iv.Store_ID
inner join
	employee as e on e.StoreRef_ID = s.Store_Address
*/

select 
	c.CustName, e.StoreRef_ID, s.Store_Address, e1.EmpName, Date_of_Purchase, i.Brand, i.Description, Quantity, e.EmpName 
from 
	purchase_item as p
inner join
	customer as c on c.Cust_ID = p.Customer_ID
inner join
	employee as e on e.Emp_ID = p.Server_ID
inner join 
	item as i on i.ItemID = p.Item_ID
inner join
	store as s on s.Store_ID = e.StoreRef_ID
inner join 
	employee as e1 on e1.Emp_ID = s.Manager_ID

