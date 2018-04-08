DROP TABLE Client 		CASCADE CONSTRAINTS ;
DROP TABLE Stock 		CASCADE CONSTRAINTS ;
DROP TABLE Fund_Family 		CASCADE CONSTRAINTS ;
DROP TABLE Mutual_Fund		CASCADE CONSTRAINTS ;
DROP TABLE Fund_Portfolio 	CASCADE CONSTRAINTS ;
DROP TABLE Stock_Portfolio 	CASCADE CONSTRAINTS ;

CREATE TABLE Client
             (Tax_ID            VARCHAR(11)          NOT NULL,
	      Client_Name       VARCHAR(30)    ,
	      Client_Address    VARCHAR(26)    ,
              Client_City       VARCHAR(13)    ,              
              Client_State      VARCHAR(2)     ,
              Client_Zip        NUMBER     ,
CONSTRAINT CLIENT_PK PRIMARY KEY (Tax_ID));

CREATE TABLE Stock
             (Ticker_Symbol		VARCHAR(4)          NOT NULL,
	      Company_Name       	VARCHAR(30)   ,
	      Stock_Rating    		VARCHAR(1)    ,
              Stock_Business       	VARCHAR(25)   ,              
              Current_StockPrice      	DECIMAL(6,2)  ,
              Low_StockPrice        	DECIMAL(6,2)  ,
	      High_StockPrice       	DECIMAL(6,2)  ,
	      One_Yr_Return		DECIMAL(6,2)  ,
	      Five_Yr_Return		DECIMAL(6,2)  ,
CONSTRAINT STOCK_PK PRIMARY KEY (Ticker_Symbol));

CREATE TABLE Fund_Family
             (Fund_ID      	 VARCHAR(5)	  NOT NULL,
	      Company_Name       VARCHAR(30)    ,
	      Company_Address    VARCHAR(30)    ,
	      Company_City	 VARCHAR(10)	,
	      Company_State	 VARCHAR(2)	,
	      Company_Zip	 VARCHAR(5)	,
CONSTRAINT FUND_FAMILY_PK PRIMARY KEY (Fund_ID));

CREATE TABLE Mutual_Fund
             (M_TickerSymbol       VARCHAR(5)          NOT NULL,
	      Fund_Name       	   VARCHAR(10)      ,
	      Fund_Type       	   VARCHAR(15)      ,            
              Current_FundPrice    DECIMAL(6,2)     ,
              Low_FundPrice        DECIMAL(6,2)     ,
	      High_FundPrice       DECIMAL(6,2)     ,
	      Fund_Yield	   DECIMAL(4,2)	    ,
	      Fund_ID		   VARCHAR(5)	    ,
CONSTRAINT MUTUAL_FUND_PK PRIMARY KEY (M_TickerSymbol),
CONSTRAINT MUTUAL_FUND_FK1 FOREIGN KEY (Fund_ID) REFERENCES Fund_Family(Fund_ID));

CREATE TABLE Fund_Portfolio
             (Tax_ID      	VARCHAR(11)     NOT NULL,
	      M_TickerSymbol    VARCHAR(30)    	NOT NULL,
	      M_NumOfShares    	NUMBER    ,
CONSTRAINT FUND_PORTFOLIO_PK PRIMARY KEY (Tax_ID, M_TickerSymbol),
CONSTRAINT FUND_PORTFOLIO_FK1 FOREIGN KEY (Tax_ID) REFERENCES Client(Tax_ID),
CONSTRAINT FUND_PORTFOLIO_FK2 FOREIGN KEY (M_TickerSymbol) REFERENCES Mutual_Fund(M_TickerSymbol));

CREATE TABLE Stock_Portfolio
             (Tax_ID      	VARCHAR(11)          NOT NULL,
	      Ticker_Symbol     VARCHAR(30)          NOT NULL,
	      NumOfShares    	NUMBER    		     ,
CONSTRAINT STOCK_PORTFOLIO_PK PRIMARY KEY (Tax_ID, Ticker_Symbol),
CONSTRAINT STOCK_PORTFOLIO_FK1 FOREIGN KEY (Tax_ID) REFERENCES Client(Tax_ID),
CONSTRAINT STOCK_PORTFOLIO_FK2 FOREIGN KEY (Ticker_Symbol) REFERENCES Stock(Ticker_Symbol));

INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('000-00-0001', 'Selina Wong', '1355 S Hines Blvd', 'Gainesville', 'FL', 32601);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('000-40-4040', 'Christian Serna', '650 E Rosemead Blvd', 'Rosemead', 'CA', 91770);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('404-69-5522', 'Kevin Smith', '400 S 4th St NW', 'Washington', 'DC', 20591);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('500-50-5000', 'Victoria Hong', '1333 1/2 E Frontier Ave', 'Manhattan', 'NY', 10004);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('999-69-5000', 'Frank Zuniga', '450 E New Ave', 'Monterey Park', 'CA', 91754);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('777-11-8799', 'Scott Jones', '550 S Grand Ave', 'Los Angeles', 'CA', 90013);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('282-62-5799', 'Zion Wu', '11121 E Freemark Circle Dr', 'Seattle', 'WA', 97954);
INSERT INTO Client  (Tax_ID, Client_Name, Client_Address, Client_City, Client_State, Client_Zip)
VALUES  ('322-33-3221', 'Kaho Akiya', '550 N Ivory Coast Ave', 'Bellevue', 'WA', 98004);

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

INSERT INTO Fund_Family (Fund_ID, Company_Name, Company_Address, Company_City, Company_State, Company_Zip)
VALUES ('JAN11' , 'Janus' , '3773 Cherry Creek North Dr.', 'Denver', 'CO', 80209);
INSERT INTO Fund_Family (Fund_ID, Company_Name, Company_Address, Company_City, Company_State, Company_Zip)
VALUES ('FIE22' , 'Fidelity' , '2300 Litton Ln.' , 'Herbron' , 'KY' , 41048);
INSERT INTO Fund_Family (Fund_ID, Company_Name, Company_Address, Company_City, Company_State, Company_Zip)
VALUES ('TRW55' , 'T Rowe Price' , '100 East Pratt St.' , 'Baltimore' , 'MD', 21202);
INSERT INTO Fund_Family (Fund_ID, Company_Name, Company_Address, Company_City, Company_State, Company_Zip)
VALUES ('ABN97' , 'ABN AMRO' , '208 S. LaSalle St., 4th Floor', 'Chicago', 'IL', 60604);
INSERT INTO Fund_Family (Fund_ID, Company_Name, Company_Address, Company_City, Company_State, Company_Zip)
VALUES ('GE777' , 'GE' , '3003 Summer St.', 'Stamford', 'CT', 06912);

INSERT INTO Mutual_Fund (M_TickerSymbol, Fund_Name, Fund_Type, Current_FundPrice, Low_FundPrice, High_FundPrice, Fund_Yield, Fund_ID)
VALUES ('JAGIX' , 'Janus' , 'Growth Fund' , 28.15 , 30.42 , 27.84 , -.23 , 'JAN11');
INSERT INTO Mutual_Fund (M_TickerSymbol, Fund_Name, Fund_Type, Current_FundPrice, Low_FundPrice, High_FundPrice, Fund_Yield, Fund_ID)
VALUES ('FEQIX' , 'Fidelity' , 'Equity_Income' , 48.07 , 55.11 , 42.46 , -1.53 , 'FIE22');
INSERT INTO Mutual_Fund (M_TickerSymbol, Fund_Name, Fund_Type, Current_FundPrice, Low_FundPrice, High_FundPrice, Fund_Yield, Fund_ID)
VALUES ('RPMGX' , 'T Rowe' , 'Mid-Gap Growth' , 37.84 , 40.06 , 36.18 , -1.18 , 'TRW55');
INSERT INTO Mutual_Fund (M_TickerSymbol, Fund_Name, Fund_Type, Current_FundPrice, Low_FundPrice, High_FundPrice, Fund_Yield, Fund_ID)
VALUES ('VERDX' , 'Veredus' , 'Growth Fund' , 15.74 , 19.88 , 15.74 , -13.91 , 'ABN97');
INSERT INTO Mutual_Fund (M_TickerSymbol, Fund_Name, Fund_Type, Current_FundPrice, Low_FundPrice, High_FundPrice, Fund_Yield, Fund_ID)
VALUES ('GEEQX' , 'GE US' , 'Equity Fund' , 26.02 , 28.12 , 25.92 , -3.24 , 'GE777');

INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('000-00-0001' , 'JAGIX' , 640);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('000-00-0001' , 'RPMGX' , 40);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('000-40-4040' , 'VERDX' , 83);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('000-40-4040' , 'RPMGX' , 100);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('000-40-4040' , 'GEEQX' , 162);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('404-69-5522' , 'FEQIX' , 200);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('500-50-5000' , 'VERDX' , 10);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('500-50-5000' , 'RPMGX' , 302);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('999-69-5000' , 'JAGIX' , 116);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('999-69-5000' , 'VERDX' , 5);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('777-11-8799' , 'FEQIX' , 90);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('777-11-8799' , 'RPMGX' , 140);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('282-62-5799' , 'VERDX' , 640);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('322-33-3221' , 'JAGIX' , 660);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('322-33-3221' , 'RPMGX' , 860);
INSERT INTO Fund_Portfolio (Tax_ID, M_TickerSymbol, M_NumOfShares)
VALUES ('322-33-3221' , 'GEEQX' , 160);

INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('000-00-0001' , 'AAPL' , 200);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('000-00-0001' , 'VZ' , 9);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('000-40-4040' , 'MSI' , 20);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('404-69-5522' , 'MSI' , 29);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('404-69-5522' , 'TMUS' , 60);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('404-69-5522' , 'CSCO' , 80);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('404-69-5522' , 'MSFT' , 100);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('500-50-5000' , 'MSFT' , 10);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('500-50-5000' , 'TMUS' , 10);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('999-69-5000' , 'MSFT' , 3);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('999-69-5000' , 'GOOG' , 209);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('777-11-8799' , 'GOOG' , 192);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('282-62-5799' , 'AAPL' , 69);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('282-62-5799' , 'VZ' , 269);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('322-33-3221' , 'VZ' , 99);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('322-33-3221' , 'MSFT' , 35);
INSERT INTO Stock_Portfolio (Tax_ID, Ticker_Symbol, NumOfShares)
VALUES ('322-33-3221' , 'GOOG' , 49);

COMMIT;