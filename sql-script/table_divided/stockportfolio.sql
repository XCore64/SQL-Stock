DROP TABLE Stock_Portfolio 	CASCADE CONSTRAINTS ;

CREATE TABLE Stock_Portfolio
             (Tax_ID      	VARCHAR(11)          NOT NULL,
	      Ticker_Symbol     VARCHAR(30)          NOT NULL,
	      NumOfShares    	NUMBER    		     ,
CONSTRAINT STOCK_PORTFOLIO_PK PRIMARY KEY (Tax_ID, Ticker_Symbol);
CONSTRAINT STOCK_PORTFOLIO_FK1 FOREIGN KEY (Tax_ID) REFERENCES Client(Tax_ID);
CONSTRAINT STOCK_PORTFOLIO_FK2 FOREIGN KEY (Ticker_Symbol) REFERENCES Stock(Ticker_Symbol));

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