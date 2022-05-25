Create database Maxi_az

use Maxi_az

create table Brands(
 ID int primary key,
 [Name] nvarchar(30)
)

create table Notebook(
 NotebookID int primary key,
 NotebookName nvarchar(20) not null,
 Price int
)

Alter table Brands
add constraint CK_Name Check(Len(Name)>3)

ALTER TABLE Notebook
add constraint DF_Price Default 200 for Price	

alter table Notebook
add ID int foreign key references Brands(ID)

INSERT INTO Brands(ID,Name)
VALUES (1,'Acer'),	
(2,'Lenovo'),
(3,'Dell'),
(4,'Asus'),
(5,'Samsung')

Insert Into Notebook(NotebookID,NotebookName,Price)
values (1, 'Aspire', 2200),
(2, 'ThinkPad', 2500),
(3, 'Latitude', 1200),
(4, 'VivoBook', 550),
(5, 'Intel', 800)


	select Name,NotebookName,Price from Notebook, Brands	

	SELECT CHARINDEX('a', Brands.Name) AS MatchPosition from Brands

	Select NotebookName, Price from Notebook where price >1000

	Select NotebookName, Price from Notebook where price > 100 and Price < 900





	



		 