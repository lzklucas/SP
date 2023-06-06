use [GroceryStore2222770]

-- (b)(i)

select 
	c.CustName 'custName',
	e.StoreRef_ID 'Store_ID',
	s.Store_Address 'Store Address',
	e1.EmpName 'Manager of the Store',
	Date_of_Purchase 'Transaction Date',
	i.Brand 'Brand',
	i.Description 'Description',
	p.Quantity 'Quantity Purchased',
	e.EmpName 'Served By'
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


-- (b)(ii)

select 
	s.Manager_ID 'Store Manage ID',
	e.EmpName 'Name of Manager',
	s.Store_ID 'Store Managed',
	iv.Item_ID 'Item',
	iv.Quantity 'Quantity on inventory'
from
	store as s
inner join 
	employee as e on e.Emp_ID = s.Manager_ID
inner join 
	inventory as iv on iv.Store_ID = s.Store_ID
order by
	'Store Managed' asc


--(b)(iii)

select
    c.CustName,
     count(p.Item_ID) as "No. of Items"
from
    purchase_item as p
inner join
    customer as c on c.Cust_ID = p.Customer_ID
group by
    c.CustName, Purchase_ID
HAVING
    count(p.Item_ID) <= 2;


--(b)(iv)

select 
    i.ItemID 'Item ID', 
    i.Description 'Item Description',
    sum(i.Price * iv.Quantity) as TotalRetail,
    sum(i.Cost * iv.Quantity) as Wholesale
from 
    item as i
inner join 
    inventory as iv on iv.Item_ID = i.ItemID
group by 
    i.ItemID, i.Description
having 
    count(distinct iv.Store_ID) >= 2;


--(b)(v) 

select 
	e.Emp_ID 'Employee ID',
	e.EmpName 'Employee Name',
	e1.Emp_ID 'Manager ID',
	e1.EmpName 'Manager Name'
from 
	employee as e
inner join
	employee as e1 on e1.Emp_ID = e.Manager


--(b)(vi)

select 
	e.Emp_ID,
	e.EmpName,
	e1.Emp_ID,
	e1.EmpName
from 
	employee e --Manager
inner join 
	employee e1 on e1.Emp_ID = e.Manager --Manager's Employee ID (Manager of manager i.e. boss)(e1.Emp_ID) =  Employee's Manager (manager managed by a manager)(e.Manager)
inner join 
	store s on s.Store_ID = e.StoreRef_ID
where 
	e.PayType = 1 and e1.PayType = 1 and e.StoreRef_ID = e1.StoreRef_ID --Both have same paytype (managers have same paytype) & work at same store



	



