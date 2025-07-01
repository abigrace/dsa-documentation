Create database KMS_DSA_db

----------IMPORT CSV TO CREATE TABLE---------

Select * from [KMS SQL 2.csv]

---------------CASE SCENARIO I--------------

---------Highest Sales in the Product category---------

Select Top 1 * from 
              (select Row_ID,Order_ID,Product_Category,Sales from [KMS SQL 2.csv]) AS Sales
			  order by sales desc
		Answer=Technology

------Top 3 Regions with Highest Sales---------

Select Top 3 * from
                  (select Row_ID,Order_ID,Region, Sales from [KMS SQL 2.csv]) AS  Sales
				  order by sales desc
       Answer= Atlantic,Quebec,Prarie

-------Bottom 3 Regions with Lowest Sales---------

Select Top 5 * from
                  (select Row_ID,Order_ID,Region, Sales from [KMS SQL 2.csv]) AS  Sales
				  order by sales asc
		Answer= West,Yukon,Quebec

----------Total sales in Ontario---------
   
   Select count(sales) AS Total_Sales
      from [KMS SQL 2.csv] 
    where region='ontario'
	Answer=1826

-------------Most Shipping Cost------------
	
	Select Top 1 * from 
              (select Row_ID,Ship_Mode,Shipping_Cost from [KMS SQL 2.csv]) AS Shipping_Cost
			  order by Shipping_Cost desc
		Answer= Delivery Truck

-------------Ways to increase revenue for the bottom 10 Customers includes--------------------------
1. Carrying out some research to find out the constraint and setbacks affecting sales e.g bad roads or very bad weather conditions could affect sales
2.Providing a cheaper shipping mode or if the store has one already,tell  the bottom 10 customers about the cheaper shipping mode so as to boost sales for these customers
3.Discount prices of office supplies and furniture can be given to these 10 bottom customers so as to increase sales


----------------------CASE SCENARIO II--------------------

----------Most valuable Customers & Most Profitable Customers--------

Select Top 3* from
               (Select Row_ID,Customer_Name,Product_Category,Sales from [KMS SQL 2.csv]) AS Customer_Name
			   order by Customer_Name desc
		Answer=Joseph Carroll

------------Most Valuable Small Biz Customer-------------

	Select Top 5 * from 
              (select Row_ID,Customer_Name,Customer_Segment,Sales from [KMS SQL 2.csv]) AS Customer_Name
			  order by Customer_Segment desc
		Amswer=Sonia Sunley

-----------Corporate Customer with The Highest Orders------------------

Select  * from 
           (Select Row_ID,Order_Quantity,Customer_Segment,Customer_Name from [KMS SQL 2.csv]) AS Customer_Segment
           Where Customer_Segment = 'Corporate'
	Answer= Janet Martin	
	
------------Returned Items-----------
The customers under the Order Priority column indicating not specified are the customers that returned items to the store

---------Customer_segment they belong to---------------
They belong to 
1. Consumer  2. Small Business 3. Home Office  4. Corporate

-------------Appropriation of Shipping Costs-----------------
According to the Column of the order priority given on the CSV file, the high and the low are almost in the same range while the 
critical and the not specified indicates a small ratio on the file given.
Since the high is the expensive Air Express and the low economical shipping rate is the Delivery truck, looking at these findings, 
i think and i can say that the Kultra Mega Store(KMS) has appropriately spent money on the shipping cost.
Thus this appropriation has led to enhancement and generation of revenue for the Kulta Mega Store.


     
