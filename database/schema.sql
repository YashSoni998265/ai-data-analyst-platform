/*Products → What is sold
Customers → Who buys
Orders → Transactions*/

create table products(
    product_id serial primary key,
    product_name varchar(255),
    category varchar(50),
    price numeric
);

create table customers(
    customer_id serial primary key,
    name varchar(50),
    city varchar(50),
    age int
);

create table orders(
    order_id serial primary KEY,
    customer_id int,
    product_id int,
    quantity int,
    order_date date,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);