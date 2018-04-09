DROP TABLE Mutual_Fund 	CASCADE CONSTRAINTS ;

CREATE TABLE Mutual_Fund
             (M_TickerSymbol       VARCHAR(5)          NOT NULL,
	      Fund_Name       	   VARCHAR(10)      ,
	      Fund_Type       	   VARCHAR(15)      ,            
              Current_FundPrice    Decimal(6,2)     ,
              Low_FundPrice        Decimal(6,2)     ,
	      High_FundPrice       Decimal(6,2)     ,
	      Fund_Yield	   Decimal(2,2)	    ,
	      Fund_ID		   VARCHAR(5)	    ,
CONSTRAINT MUTUAL_FUND_PK PRIMARY KEY (M_TickerSymbol),
CONSTRAINT MUTUAL_FUND_FK1 FOREIGN KEY (Fund_ID) REFERENCES Fund_Family(Fund_ID));

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