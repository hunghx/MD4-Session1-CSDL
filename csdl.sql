-- Tạo CSDL 
create database demodatabase;
create schema demodb02;
-- truy cập csdl
use demodatabase;
-- xóa CSDL;
drop database demodb02;
drop schema demodb02;
-- tạo bảng sản phẩm
create table ProduCt(
id int auto_increment primary key,
name varchar(100),
status bit ,
catalogid int
) ;
-- tạo bảng danh mục
create table Catalog(
id int,
name varchar(50),
description text,
status bit 
);
-- drop table catalog;
-- CRUD data
-- đọc dữ liệu
select * from catalog;
-- thêm mới dữ liệu 
insert into catalog(id, name, description, status) values(1,"Quần","Quần nam",1),(2,"Áo","",0);  
-- sửa 1 bản ghi 
update catalog set name = "Quân nam",description = "" where id = 1;
update catalog set status = 0  where id > 0;
-- xóa 1 bản ghi 
delete from Catalog where id = 1;
delete from Catalog ;
-- Thêm ít nhất 5 bản ghi của bảng product , thực hiện thêm sửa xóa dữ liệu trên bảng product

insert into product (name , status, catalogid) value("quần âu nam",1,2);