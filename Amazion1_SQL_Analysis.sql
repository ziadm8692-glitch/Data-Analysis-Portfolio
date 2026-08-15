select*
from Coustmer


select*
from Product

select Order_ID,Statue 
from Order_1


SELECT 
    p.Product_Nam AS [Product Name],
    s.Seller_Nam AS [Seller Name],
    c.Cat_Nam AS [Category Name],
    p.Product_Price AS [Price]
FROM Product p
JOIN Pro_Sell ps ON p.Product_Id = ps.Product_ID
JOIN Seller s ON ps.Seller_ID = s.Seller_ID
JOIN Pro_Cat pc ON p.Product_Id = pc.Proudct_ID
JOIN Category c ON pc.Category_ID = c.Cat_ID;



select o.*,s.*
from Order_1 o , Shipping s
where o.Order_ID=s.Order_ID


select o.*, Statues_Pay
from Order_1 o , Payment p
where p.Order_ID=o.Order_ID


select sum(Oder_Total) As Total_Revenue 
from Order_1


select CU_ID,F_Nam, Count(O.Order_Id) AS count_Order
from order_Coustmer  oc inner join Order_1 O
on o.Order_ID=oc.Order_ID
inner join Coustmer c on c.CU_ID=oc.Coustmer_ID
group by F_Nam,CU_ID


select Seller_Nam , Sum(Total_Price) AS Total_Sales 
from Pro_Sell ps inner join Seller s
on s.Seller_ID=ps.Seller_ID
inner join Product p on p.Product_Id=ps.Product_ID
group by Seller_Nam


select Product_Nam, AVg(Rev_Values) AS Avg_Rev_Values
from Review_Product rp inner join Review r
on r.Rev_Id=rp.Review_ID
inner join product p on p.Product_Id=rp.Product_ID
group by Product_Nam


select CU_Id, F_Nam, M_Nam, L_Nam, count(O.Order_Id) AS Count_Order_By_9
from order_Coustmer oc inner join  Order_1 O
on O.Order_ID=oc.Order_ID
inner join Coustmer c on c.CU_ID = oc.Coustmer_ID
group by CU_Id, F_Nam, M_Nam, L_Nam
having count(O.Order_ID)>9




WITH SellerSales AS (
    SELECT 
        s.Seller_ID, 
        s.Seller_Nam, 
        SUM(p.Product_Price * p.Product_quantity) AS TotalSales 
    FROM Seller s
    JOIN Pro_Sell ps ON s.Seller_ID = ps.Seller_ID
    JOIN Product p ON ps.Product_ID = p.Product_Id
    GROUP BY s.Seller_ID, s.Seller_Nam
)
SELECT * FROM SellerSales
WHERE TotalSales > (SELECT AVG(TotalSales) FROM SellerSales);



select product_Nam,Total_Price
from Product
where Total_Price >(Select AVG(Total_Price) from Product)



SELECT TOP 1
    c.F_Nam + ' ' + c.L_Nam AS [Customer Name], 
    SUM(p.Product_Price * p.Product_quantity) AS TotalSpent
FROM Coustmer c
JOIN order_Coustmer oc ON c.CU_ID = oc.Coustmer_ID
JOIN Order_1 o ON oc.Order_ID = o.Order_ID
JOIN Product_Order po ON o.Order_ID = po.Order_ID
JOIN Product p ON po.Porduct_ID = p.Product_Id
GROUP BY c.CU_ID, c.F_Nam, c.L_Nam
ORDER BY TotalSpent DESC;


select MONTH(Order_Date) AS Month_Order ,sum( Total_Price) AS Total_Sales
from Product_Order PO inner join Order_1 o
ON o.Order_ID =PO.Order_ID
inner join Product p ON p.Product_Id=PO.Porduct_ID
Group By MONTH(Order_Date)


 SELECT *
FROM Order_1
WHERE Order_Date >= DATEADD(day, -30, GETDATE());

create view order_details AS 
select*
from Order_1

select * from order_details


 SELECT Order_ID,Country,city,Street
FROM Shipping
WHERE DATEDIFF(day, Ship_Date, Delivery_Date) > 3; -------رقم 21



ADD view order_details as 
select
C.F_Nam +' '+C.L_Nam AS Coustmer_Name,

O.Oder_Total AS Total_Order, S.ship_statues AS Ship_Statues,

pa.Statues_pay as Pay_Statues

from order_Coustmer oc inner join Coustmer C
on C.CU_ID=oc.Coustmer_ID
 inner join Order_1 O on O.Order_ID=oc.Order_ID
 inner join Payment pa on pa.Order_ID=O.Order_ID
 inner join Shipping S on S.Order_ID=O.Order_ID

 select Top 5*
 from order_details