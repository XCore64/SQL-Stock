DROP TABLE Stock 	CASCADE CONSTRAINTS ;

CREATE TABLE Stock
             (Ticker_Symbol	VARCHAR(4)          NOT NULL,
	      Company_Name       	VARCHAR(30)   ,
	      Stock_Rating    		VARCHAR(1)    ,
              Stock_Business       	VARCHAR(25)   ,              
              Current_StockPrice      	Decimal(6,2)  ,
              Low_StockPrice        	Decimal(6,2)  ,
	      High_StockPrice       	Decimal(6,2)  ,
	      One_Yr_Return		Decimal(6,2)  ,
	      Five_Yr_Return		Decimal(6,2)  ,
CONSTRAINT STOCK_PK PRIMARY KEY (Ticker_Symbol));

INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('AAPL', 'Apple Inc.', 'B', 'Consumer Electronics', 167.88, 164.47, 168.94, 160.68, 112.44);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('CSCO', 'Cisco Systems Inc.', 'C', 'Network Equipment', 41.34, 40.72, 41.50, 35.63, 28.47);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('VZ', 'Verizon Communications Inc.', 'C', 'Mobile Telecommunications', 47.22, 46.72, 47.62, 48.24, 49.05);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('MSI', 'Motorola Solutions Inc.', 'B', 'Network Equipment', 105.27, 104.40, 106.42, 91.32, 71.97);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('TMUS', 'T-Mobile US Inc.', 'C', 'Mobile Telecommunications', 60.06, 59.29, 60.18, 62.86, 41.60);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('GOOG', 'Alphabet Inc.', 'A', 'Systems Software', 1013.91, 990.37, 1020.99, 991.53, 739.75);
INSERT INTO Stock (Ticker_Symbol, Company_Name, Stock_Rating, Stock_Business, Current_StockPrice, Low_StockPrice, High_StockPrice, One_Yr_Return, Five_Yr_Return)
VALUES ('MSFT', 'Microsoft Corp.', 'C', 'Systems Software', 89.58, 87.89, 90.05, 78.63, 53.22);

COMMIT;