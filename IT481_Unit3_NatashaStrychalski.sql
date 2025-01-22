use Northwind;

create role SalesRole;
create role HRRole;
create role CEORole;

Grant select on Customers to SalesRole;
Grant select on Orders to SalesRole;
Grant select on Employee to HRRole;
Grant select on Orders to CEORole;
Grant select on Customers to CEORole;
Grant select on Employee to CEORole;

Create login User_CEO with password = 'mypassword';
Create login User_HR with password = 'mypassword';
Create login User_Sales with password = 'mypassword';

Create user User_CEO for login User_CEO;
Create user User_HR for login User_HR;
Create user User_Sales for login User_Sales;

alter role CEORole add member User_CEO;
alter role HRRole add member User_HR;
alter role SalesRole add member User_Sales;