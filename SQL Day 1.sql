--The case of ITC
--create the data table for distributors to supply products across different city and regions ( ID, Name, City, Region, Phone )
CREATE TABLE distributors (
  distributor_id Integer primary KEY,
  name Text not null,
  city text,
  region text,
  phone text
  );
  
 DROP TABLE distributors
 
 --create a table name products with the column, product_id, product_name, brand, category, price, stock ( product unique integor , brand text , category text and not null , name text and not null , price real value and greator than zero , stock whole number and if missing then zero ) 
 
 CREATE TABLE products (
   product_id integer PRIMARY KEY,
   product_name text NOT NULL UNIQUE,
   brand text,
   category text NOT NULL,
   price real CHECK (price > 0),
   stock integer DEFAULT 0
);

--create table name sales containing sales_id, product_id, distributor_id, sale date, quantity

CREATE TABLE sales (
  sales_id integer PRIMARY KEY, 
  product_id integer,
  distributor_id integer,
  sale_date text,
  quantity integer CHECK(quantity > 0),
  amount real,
  
  FOREIGN KEY (product_id) REFERENCES products(product_id)
  FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
);

--ckecking the column of all the three tables 

PRAGMA table_info (distributors);
PRAGMA table_info (products);
PRAGMA table_info (sales);

--inserting the data according to varaiables 

INSERT INTO products VALUES (1, 'aashirvaad aata', 'aashirvaad', 'staples', 265, 120);
INSERT INTO products VALUES (2, 'aashirvaad salt', 'aashirvaad', 'staples', 28, 300);
INSERT INTO products VALUES (3, 'sunfeast dark fantasy', 'sunfeast', 'biscuits', 265, 120);


