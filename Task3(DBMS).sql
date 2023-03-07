CREATE DATABASE  IF NOT EXISTS Market;
USE Market;


CREATE TABLE IF NOT EXISTS  Customers (
  Customer_ID INT NOT NULL PRIMARY KEY,
  Customer_name VARCHAR(255) default NULL,
  Phone INT NOT NULL
  );
  
CREATE Table IF NOT EXISTS products(
  product_ID INT NOT NULL PRIMARY KEY,
  category varchar(255) NOT NULL default 'food',
  product_name varchar(255)
 
  );
  CREATE Table IF NOT EXISTS  orders(
  order_ID int NOT NULL PRIMARY KEY,
  order_date date   NOT NULL,
  order_name DATE NOT NULL,
  CONSTRAINT FK_orders FOREIGN KEY (order_ID) REFERENCES products(product_ID)
      );
  