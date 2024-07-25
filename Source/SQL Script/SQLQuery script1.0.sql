CREATE TABLE orders
(
    order_id INT ,
    Name NVARCHAR(128) ,
    LastName NVARCHAR(128) NOT NULL,
 inserttime datetime default getdate()
)

insert into orders(order_id,FirstName,LastName) values(1,'manish','tiwari')
insert into orders(order_id,FirstName,LastName) values(2,'rani','sharma')
insert into orders(order_id,FirstName,LastName) values(3,'yuvraj','verma')


CREATE TABLE orders_final
(
    order_id INT ,
    Name NVARCHAR(128) ,
 inserttime datetime default getdate()
)
