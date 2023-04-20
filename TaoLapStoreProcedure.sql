-- Tạo Mysql Stored Procedure đầu tiên

DELIMITER //
create procedure findAllCustomers()
begin
select * from customers;
end //

-- Cách gọi procedure
call findAllCustomers();

-- Sửa procedure
-- Trong Mysql không cung cấp lệnh sửa Stored nên thông thường chúng ta sẽ chạy lệnh tạo mới.

-- Lệnh Drop để xóa đi Procedure đó và tạo lại:

delimiter //
drop procedure if exists `findAllCustomers`//
create procedure findAllCustomers()
begin
select * from customers where customerNumber = 175;
end //

call findAllCustomers();



