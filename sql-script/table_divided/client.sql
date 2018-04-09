DROP TABLE Client 	CASCADE CONSTRAINTS ;

CREATE TABLE Client
             (Tax_ID            VARCHAR(11)          NOT NULL,
	      Client_Name       VARCHAR(30)    ,
	      Client_Address    VARCHAR(26)    ,
              Client_City       VARCHAR(13)    ,              
              Client_State      VARCHAR(2)     ,
              Client_Zip        NUMBER     ,
CONSTRAINT CLIENT_PK PRIMARY KEY (Tax_ID));

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