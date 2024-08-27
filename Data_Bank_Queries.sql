
 
 
 
Select * from Customer_transactions;

Select * from customer_nodes;

Select * from regions;



1. How many unique nodes are there in the Data Bank system?
--select count(distinct node_id)
--from customer_nodes



2.  What is the number of nodes per region?
--Select count (c.Node_id ), r.region_name
--from customer_nodes as c
--Inner join regions as r
--on c.region_id = r.region_id
--Group by r.region_name


3.How many customers are allocated to each region?
--Select count (distinct c.customer_ID), r.region_Name
--From customer_nodes as c
--Inner join regions as r
--on c.region_ID = r.region_ID
--Group By R.region_Name;

4. How many days on average are customers reallocated to a different node? -- need to rework
--SELECT AVG(f) FROM 
--(select JULIANDAY(end_date) - JULIANDAY(start_date) AS f
--from customer_nodes
--where end_date != '99991231') AS T




II

1. What is the unique count and total amount for each transaction type? 
--Select txn_type, Count (txn_type), sum (txn_amount)
--From customer_Transactions 
--Group by txn_type;

2. What is the average total historical deposit counts and amounts for all customers?
--Select count (c.txn_type), avg (c.txn_amount)
--From customer_transactions as c
--Inner join customer_nodes as n
--On c.customer_id = n.customer_id
--inner join regions as r
--on r.region_id = n.region_id
--group by c.txn_type;

