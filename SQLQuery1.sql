create database School 
go

use School
go 

Create table School

(
	Schoolid int identity primary key,
	SchoolName varchar(50) not null,
	Description varchar(1000) not null,
	Adress varchar(50) not null,
	Phone varchar(50) not null,
	PostCode varchar(50) not null,
	PostAdress varchar(50) not null
	)

	Create table Class
	(
		Classid int identity primary key,
		Schoolid int foreign key references School(Schoolid) not null,
		ClassName varchar (50) not null,
		description varchar (1000)

		)

Create procedure consultSchool

		as
			begin
			select * from School
		end

create procedure ingresarEquipo
	@SchoolName varchar(50),
	@Description varchar(50),
	@Adress varchar(50),
	@Phone varchar(50),
	@PostCode varchar(50),
	@PostAdress varchar(50)
	as
			begin
			insert into School(SchoolName,Description,Adress,Phone,PostCode,PostAdress) values (@SchoolName,@Description, @Adress, @Phone, @PostCode, @PostAdress) 
		end

create procedure DeleteSchool
@id int

 as
	begin
	delete School where Schoolid= @id
	end

create procedure EditSchool
 @id int,
 @name varchar(50),
 @description varchar(1000),
 @Adress varchar(50),
 @Phone varchar(50),
 @PostCode varchar(50),
 @PostAdress varchar(50)
 
 as
	begin
	update School set SchoolName =@name, Description =@description, Adress =@Adress, Phone =@Phone, PostCode =@PostCode, PostAdress =@PostAdress where Schoolid = @id
	end


Create procedure consultClass

		as
			begin
			select * from Class
		end

create procedure AddClass
	@Classname varchar(50),
	@Description varchar(50)

	as
			begin
			insert into Class(ClassName,Description) values (@Classname,@Description) 
		end

create procedure DeleteClass
@id int

 as
	begin
	delete Class where Classid= @id
	end


create procedure EditClass
 @id int,
 @name varchar(50),
 @description varchar(1000)
 
 as
	begin
	update Class set ClassName =@name, Description =@description where Classid = @id
	end