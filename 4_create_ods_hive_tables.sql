CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_customers(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/customers'
TBLPROPERTIES (
  'classification'='parquet');

CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_employees(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/employees/'
TBLPROPERTIES (
  'classification'='parquet');

CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_offices(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/offices'
TBLPROPERTIES (
  'classification'='parquet');

CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_orderdetails(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/orderdetails'
TBLPROPERTIES (
  'classification'='parquet');

CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_orders(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/orders'
TBLPROPERTIES (
  'classification'='parquet');

CREATE EXTERNAL TABLE IF NOT EXISTS ods.tmp_products(
  op string, 
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://datalake-2-silver-us-east-1-376129860122-sandbox-dlh/commercial/erp/tmp/products'
TBLPROPERTIES (
  'classification'='parquet');