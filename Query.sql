--Delete FK
USE N6_SalesManagementDW;
ALTER TABLE FactSales
DROP CONSTRAINT FK_Product_Key;
Go
ALTER TABLE FactSales
DROP CONSTRAINT FK_Store_Key;
Go
ALTER TABLE FactSales
DROP CONSTRAINT FK_Time_Key;
Go
ALTER TABLE FactSales
DROP CONSTRAINT FK_Employee_Key;
Go
ALTER TABLE FactSales
DROP CONSTRAINT FK_Sales_Type_Key;


--Delete Table
USE N6_SalesManagementDW;
DELETE FROM DimProduct;
DELETE FROM DimEmployee;
DELETE FROM DimSalesType;
DELETE FROM DimTime;
DELETE FROM DimStore;
DELETE FROM FactSales;


--Create FK
USE N6_SalesManagementDW;
Alter table FactSales
add constraint FK_Store_Key
foreign key (Store_Key)
references DimStore (Store_Key);

Alter table FactSales
add constraint FK_Product_Key
foreign key (Product_Key)
references DimProduct (Product_Key);

Alter table FactSales
add constraint FK_Employee_Key
foreign key (Employee_Key)
references DimEmployee (Employee_Key);

Alter table FactSales
add constraint FK_Time_Key
foreign key (Time_Key)
references DimTime (Time_Key);

Alter table FactSales
add constraint FK_Sales_Type_Key
foreign key (Sales_Type_Key)
references DimSalesType (Sales_Type_Key);