CREATE TABLE sup(
	Unnamed	INT,
	sno  SERIAL PRIMARY KEY,
	brandname VARCHAR(500),
	productid VARCHAR (500),
	productname VARCHAR(500),
	BrandDesc VARCHAR( 1000),
	ProductSize VARCHAR( 100),
	Currency VARCHAR(100),
	MRP NUMERIC,
	SellPrice NUMERIC,
	Discount VARCHAR(100),
	Category VARCHAR(100)
);

drop table if exists sup

COPY sup FROM 'C:\Users\godwi\Data_Science_ML\Exploratory_Analysis_Pandas\Super_market_products\supermarket.csv'DELIMITER ','
HEADER CSV ;

SELECT * FROM sup;

--- group category by total selling price and total mrp, and the delta
SELECT category, sum(sellprice) as total_sp, sum(mrp) as total_mrp,(sum(sellprice) - sum(mrp)) as delta   from sup
group by category
ORDER BY sum(sellprice) DESC;


-- group categories by 10-30% starter, 30 -50 gold 50 and above premium
SELECT category, (substring(discount,1,2))from sup
where (substring(discount,1,2)) = '5%'


regexp_replace

SELECT category, (substring(discount,1,2))::integer from sup