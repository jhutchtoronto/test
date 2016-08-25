# drop table persons; 
 
 
 CREATE TABLE Persons
(
P_ID int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (P_ID)
);

insert into persons values(1, 'Joe', 'Bloggs', '123 Castle Street', 'Dublin'), (null, 'Jane', 'Doe', '345 Main Street', 'Toronto'), (null, 'Fred', 'Smith', '297 Wall Lane', 'Belfast');

select * from persons; 


CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
FOREIGN KEY (P_Id) REFERENCES Persons(P_Id)
);


insert into orders values(1, 2034, 4);

insert into orders values(1, 2034, 1);

select * from orders; 

delete from persons where p_id = 1; 

describe persons; 