DROP TABLE Fund_Portfolio 	CASCADE CONSTRAINTS ;

CREATE TABLE Fund_Portfolio
             (Tax_ID      VARCHAR(11)          NOT NULL,
	      M_TickerSymbol       VARCHAR(30)    NOT NULL,
	      M_NumOfShares    NUMBER    ,
CONSTRAINT CLIENT_PK PRIMARY KEY (Tax_ID, M_TickerSymbol),
CONSTRAINT CLIENT_FK1 FOREIGN KEY (Tax_ID) REFERENCES Client(Tax_ID),
CONSTRAINT CLIENT_FK2 FOREIGN KEY (M_TickerSymbol) REFERENCES Mutual_Fund(M_TickerSymbol));

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