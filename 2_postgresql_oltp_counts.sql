--Validacao dos totais carregados depois do full-load
select count(*) as "7_offices" from public.offices;
select count(*) as "2969_orderdetails" from public.orderdetails;
select count(*) as "122_customers" from public.customers;
select count(*) as "23_employees" from public.employees;
select count(*) as "326_orders" from public.orders;
select count(*) as "110_products" from public.products;