CREATE DATABASE sql_tutorial;
SHOW DATABASES; 
USE `sql_tutorial`;   # 先选择要使用哪一个资料库
CREATE TABLE `student`(
	`student_id` INT PRIMARY KEY,    # 主键的第二种写法 PRIMARY KEY(`student_id`)
	`name` VARCHAR(20),
	`major` VARCHAR(20)
);

DESCRIBE `student`;   # 显示表格信息

ALTER TABLE `student` ADD gpa DECIMAL(3,2);  # 增加gpa属性，小数，保留小数点后1位 
ALTER TABLE `student` DROP COLUMN gpa;  # 删除gpa属性

