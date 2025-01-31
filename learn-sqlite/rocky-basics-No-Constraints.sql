/*
 * Create a rocky concrete database without any integrity constraints. 
 */  

 
/* Remove any existing tables
 * Customers, Products, Orders, Order_details
 * This steps is important if you had stale tables from a previous session
 */
 
PRAGMA foreign_keys = OFF;
drop table if exists order_details;
drop table if exists orders;
drop table if exists products;
drop table if exists customers; 
PRAGMA foreign_keys = ON;
/*  Data Definition */
 
CREATE TABLE CUSTOMERS
        (CUST_NO        INTEGER         ,
        CUST_NAME       VARCHAR(40)     ,
        STREET          VARCHAR(40)     ,
        TOWN            VARCHAR(40)     ,
        POSTCODE        INTEGER         ,
        CR_LIMIT        INTEGER         ,
        CURR_BALANCE    INTEGER         );
 
CREATE TABLE PRODUCTS
        (PROD_COD       VARCHAR(10)     ,
        DESCRIPTION     VARCHAR(50)     ,
        PROD_GROUP      CHAR(1)         , 
        LIST_PRICE      INTEGER         ,
        QTY_ON_HAND     INTEGER         ,
        REMAKE_LEVEL    INTEGER         ,
        REMAKE_QTY      INTEGER         );
 
CREATE TABLE ORDERS
        (ORDER_NO       INTEGER         ,
        ORDER_DATE      DATE            ,
        CUST_NO         INTEGER         );
 
CREATE TABLE ORDER_DETAILS
        (ORDER_NO       INTEGER         ,
        PROD_COD        VARCHAR(10)     ,
        ORDER_QTY       INTEGER         ,
        ORDER_PRICE     INTEGER         );




