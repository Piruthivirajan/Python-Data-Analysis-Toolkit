CREATE TABLE wool_market_data(
   Date            DATE  NOT NULL PRIMARY KEY
  ,Weight          NUMERIC(3,1) NOT NULL
  ,Quality         VARCHAR(1) NOT NULL
  ,Type            VARCHAR(8) NOT NULL
  ,Region          VARCHAR(10) NOT NULL
  ,Production_Year INTEGER  NOT NULL
  ,Price           INTEGER  NOT NULL
);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-01',2.5,'A','Merino','India',2021,50);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-02',3.0,'B','Pashmina','India',2021,120);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-03',1.5,'A','Angora','India',2019,70);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-04',2.0,'C','Karakul','India',2020,40);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-05',3.5,'B','Deccani','India',2021,45);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-06',2.5,'C','Merino','India',2022,42);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-07',3.0,'A','Pashmina','India',2020,130);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-08',1.5,'B','Angora','India',2021,75);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-09',2.0,'A','Karakul','India',2022,47);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-10',3.5,'C','Deccani','India',2019,43);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-11',2.5,'B','Merino','India',2020,51);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-12',3.0,'C','Pashmina','India',2021,125);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-13',1.5,'A','Angora','India',2022,72);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-14',2.0,'B','Karakul','India',2019,48);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-15',3.5,'C','Deccani','India',2020,46);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-16',2.5,'A','Merino','India',2021,53);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-17',3.0,'B','Pashmina','India',2022,128);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-18',1.5,'C','Angora','India',2019,73);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-19',2.0,'A','Karakul','India',2020,49);
INSERT INTO wool_market_data(Date,Weight,Quality,Type,Region,Production_Year,Price) VALUES ('2022-01-20',3.5,'B','Deccani','India',2021,44);
