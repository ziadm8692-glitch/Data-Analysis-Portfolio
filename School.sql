Begin transaction;
select O.Order_Id, first_name,Last_name,required_date,shipped_date
from orders O, customers C
where O.customer_id=C.customer_id


select distinct first_name, Last_name, Email, Order_id
from staffs st left join orders o
on o.staff_id=st.staff_id



select first_name,last_name,store_name,street,city
from staffs st full join stores s
on s.store_id=st.store_id


select first_name , Last_name , store_name ,quantity,product_id
from staffs st inner join stores s
on s.store_id = st.store_id
inner join stocks ss
on ss.store_id=s.store_id
where quantity >20
order by quantity

select* 
from order_items ot inner join orders o
on o.order_id=ot.order_id
inner join products p 
on p.product_id =ot.product_id
where model_year =2017


select max(list_price) as Max_List_Price
from products

select category_name , product_name,p.list_price,model_year,quantity
from order_items ot inner join products p
on p.product_id=ot.product_id
inner join categories c
on c.category_id =p.category_id


select *
from customers


select c.customer_id, o.order_id,st.staff_id,c.first_name as first_name_customer,c.last_name as last_name_customer,st.first_name as first_name_staff,st.last_name as last_name_staff, city
from orders o inner join customers c
on c.customer_id=o.customer_id
inner join staffs st 
on st.staff_id= o.staff_id
where city='liverpool'

select Avg(list_price) as Avg_ist_price
from order_items


select count(quantity) as count_quantity_in_order_itmes
from order_items



select count(quantity) as count_quantity_in_stocks
from stocks

update products
set list_price =12000
where list_price=11999.990234375



select  count(quantity),product_id
from order_items
group by product_id
 having count (quantity) <100


 
select  sum(ot.quantity),p.product_name
from order_items ot inner join products p
on p.product_id=ot.product_id
group by p.product_name
 having sum (quantity) <100


  select 
    y.first_name as Employee_firstName,
    y.last_name as Employee_Last_name,
    x.first_name as Manager_Name
from staffs x 
inner join staffs y on x.staff_id = y.manager_id; -----------<<<<<<<<<<<<<<<<<<<<<<<


select p.product_name, 
case 
    when ot.quantity  = 2 then ' High'
    else 'Low'
end as quantity_level
from products p inner join order_items ot
on p.product_id = ot.product_id


select *
from staffs

commit
