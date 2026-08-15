select Book_Titel
from Book

select Book_Titel , Aut_Nam
from Aut_Book Ab inner join Book b
on b.Book_ID= Ab.Book_ID
inner join Author A
on A.Aut_Id=Ab.Aut_ID
-------------------------------------
select F_Nam, L_Nam ,  Total_Order 
from Order_Coustmer  OC inner join Order_2 O
on O.Order_num =OC.Order_num
inner join Coustmer C
on C.CU_ID = OC.CU_ID

select Book_Titel , sum(Total_Order) as Total_Order
from Book_Order BO inner join Book B
on B.Book_ID=Bo.Book_ID
inner join Order_2 O on O.Order_num=Bo.Order_Num
Group By Book_Titel

select F_Nam , count(O.Order_num)
from Order_COUSTMER OC inner join Coustmer C
on C.CU_ID =OC.CU_ID
inner join Order_2 O on O.Order_num=OC.Order_num
group by F_Nam

SELECT AVG(Total_Order) AS Average_Order_Value
FROM Order_2;

    -- الترتيب من الأكثر مبيعاً للأقل

select Book_Titel, count( O.Order_num) As Sales_Count
from Book_Order BO inner join Book B
on B.Book_ID=Bo.Book_ID
inner join  Order_2 O on O.Order_num=BO.Order_Num
Group by Book_Titel
ORDER BY Sales_Count DESC;


select F_Nam , L_Nam, COUNT(O.Order_num)
from Order_COUSTMER OC inner join Coustmer C 
on C.CU_ID =OC.CU_ID
inner join Order_2 O on O.Order_num =OC.Order_num
group By F_Nam , L_Nam
having COUNT(O.Order_num)>1

select Aut_Nam , Sum(O.Total_Order)
from Aut_Book AB inner join Author A
on A.Aut_ID=AB.Aut_ID
inner join Book_Order BO ON BO.Book_ID = AB.Book_ID
INNER JOIN Order_2 O ON O.Order_num=BO.Order_Num
where Aut_Nam='Agatha Christie'
group by Aut_Nam

select Order_num 
from Order_2
where Total_Order >(SELECT Avg(Total_Order) from Order_2);

select Book_Titel
from Book
where Book_ID not in (select Book_ID from Book_Order);

SELECT A.Aut_Nam, COUNT(AB.Book_ID) AS Number_of_Books
FROM Author A
INNER JOIN Aut_Book AB ON A.Aut_ID = AB.Aut_ID
GROUP BY A.Aut_Nam
HAVING COUNT(AB.Book_ID) > 1;