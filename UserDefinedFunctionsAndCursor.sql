-------------------Scalar functions-------------------------

drop function CalculateTax
CREATE FUNCTION CalculateTax(
@Price decimal(10,2),

@Tax decimal(5,2)
)
RETURNS decimal(10,2)
AS 
BEGIN 
	RETURN @Price+(@Price*@Tax/100)
END;
--EXECUTION
SELECT product_name,Price,dbo.calculateTax(Price,10) as PriceWithTax from Products

SELECT dbo.CalculateTax(Price,10) from Products

CREATE FUNCTION GetMostPriceProduct
(@minPrice decimal(10,2))
RETURNS TABLE
AS 
RETURN
(SELECT product_id,product_name,Price from Products where Price>@minPrice);

----Execution
SELECT * FROM GetMostPriceProduct(600);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    tax DECIMAL(5, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    category VARCHAR(50),
    
);


INSERT INTO Products (product_id, product_name, description, price, tax, stock_quantity, category)
VALUES
    (1, 'Wireless Mouse', 'Ergonomic wireless mouse with a sleek design', 29.99, 2.50, 150, 'Electronics'),
    (2, 'Bluetooth Headphones', 'Noise-cancelling headphones with Bluetooth', 99.99, 8.00, 80, 'Electronics'),
    (3, 'Gaming Keyboard', 'RGB mechanical gaming keyboard', 79.99, 6.00, 120, 'Accessories'),
    (4, 'Water Bottle', 'Stainless steel water bottle', 19.99, 1.50, 200, 'Home & Kitchen'),
    (5, 'Coffee Maker', 'Programmable coffee maker with auto-shutoff', 49.99, 4.00, 50, 'Appliances');


DROP TABLE Products;
	SELECT  * FROM Products;

	
	----------------------TABLE VALUED FUNCTIONS---------------------
	CREATE FUNCTION GetMostPricePruct
	(@minPrice decimal(10,2))
	RETURNS TABLE
	AS
	RETURN
	(SELECT product_id,product_name WHERE PRICE>@minPrice);

	---Execution
	Select * from GetMostPriceProduct(600);

	----CURSOR----
	DECLARE @product_name nvarchar(50) ,@price dec(10,2)

	DECLARE CursorDemo Cursor
	FOR SELECT product_name,price from Products;

	OPEN CursorDemo;

	FETCH NEXT FROM CursorDemo INTO @product_name,@price
	WHILE @@fetch_status=0
	BEGIN
		Print @product_name+cast(@Price as varchar)
		FETCH NEXT FROM CursorDemo into @product_name,@price
	END;
	CLOSE CursorDemo;
	DEALLOCATE CursorDemo;

