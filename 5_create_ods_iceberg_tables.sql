CREATE TABLE IF NOT EXISTS ods.customers(
  customernumber bigint, 
  customername string, 
  contactlastname string, 
  contactfirstname string, 
  phone string, 
  addressline1 string, 
  addressline2 string, 
  city string, 
  `state` string, 
  postalcode string, 
  country string, 
  salesrepemployeenumber bigint, 
  creditlimit double, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/customers'
TBLPROPERTIES (
  'table_type' ='ICEBERG');

CREATE TABLE IF NOT EXISTS ods.employees(
  employeenumber bigint, 
  lastname string, 
  firstname string, 
  extension string, 
  email string, 
  officecode bigint, 
  reportsto bigint, 
  jobtitle string, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/employees'
TBLPROPERTIES (
  'table_type' ='ICEBERG');

CREATE TABLE IF NOT EXISTS ods.offices(
  officecode bigint, 
  city string, 
  phone string, 
  addressline1 string, 
  addressline2 string, 
  `state` string, 
  country string, 
  postalcode string, 
  territory string, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/offices'
TBLPROPERTIES (
  'table_type' ='ICEBERG');

CREATE TABLE IF NOT EXISTS ods.orderdetails(
  ordernumber bigint, 
  orderlinenumber bigint, 
  productcode bigint, 
  quantityordered bigint, 
  priceeach double, 
  amount double, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/orderdetails'
TBLPROPERTIES (
  'table_type' ='ICEBERG');

CREATE TABLE IF NOT EXISTS ods.orders(
  ordernumber bigint, 
  orderdate timestamp, 
  orderyearmonth bigint,
  customernumber bigint, 
  loadcount bigint, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/orders'
TBLPROPERTIES (
  'table_type' ='ICEBERG');

CREATE TABLE IF NOT EXISTS ods.products(
  productcode bigint, 
  productname string, 
  productline string, 
  productfamily string, 
  productscale string, 
  productvendor string, 
  productdescription string, 
  quantityinstock bigint, 
  buyprice double, 
  msrp double, 
  zone_area string, 
  business_area string, 
  source_system string, 
  dataset string, 
  extract_at timestamp)
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/products'
TBLPROPERTIES (
  'table_type' ='ICEBERG');