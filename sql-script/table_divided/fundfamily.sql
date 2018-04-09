DROP TABLE Fund_Family 	CASCADE CONSTRAINTS ;

CREATE TABLE Fund_Family
             (Fund_ID      	 VARCHAR(5)	  NOT NULL,
	      Company_Name       VARCHAR(30)    ,
	      Company_Address    VARCHAR(30)    ,
	      Company_City	 VARCHAR(10)	,
	      Company_State	 VARCHAR(2)	,
	      Company_Zip	 VARCHAR(5)	,
CONSTRAINT FUND_FAMILY_PK PRIMARY KEY (Fund_ID));

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