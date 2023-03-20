# 初级资料库
DROP TABLE `student`;

CREATE TABLE `employee`(
	`emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `birth_date` DATE,
    `sex` VARCHAR(1),
    `salary` INT,
    `branch_id` INT,  # 外键
    `sup_id` INT   # 外键
);

DESCRIBE `employee`;   # 显示表格信息

CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY (`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL   # 设定branch表格的外键
);

ALTER TABLE `employee`
ADD FOREIGN KEY(`branch_id`)      # 添加由branch表格来的 外键 
REFERENCES `branch`(`branch_id`)
ON DELETE SET NULL;

ALTER TABLE `employee`
ADD FOREIGN KEY(`sup_id`)        # 添加由自身employee表格来的 外键 
REFERENCES `employee`(`emp_id`)
ON DELETE SET NULL;


CREATE TABLE `client`(
	`client_id` INT PRIMARY KEY,
    `client_name` VARCHAR(20),
    `phone` VARCHAR(20)
);

CREATE TABLE `works_with`(
	`emp_id` INT,
    `client_id` INT,
    `total_sales` INT,
    PRIMARY KEY(`emp_id`, `client_id`),
    FOREIGN KEY (`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
    FOREIGN KEY (`client_id`) REFERENCES `client`(`client_id`) ON DELETE CASCADE
);


INSERT INTO `branch` VALUES(1, '研發', NULL);  # 外键均设置为NULL，因为当前并未创建employee表格的主键（依赖关系），否则会报错。循环死锁。
INSERT INTO `branch` VALUES(2, '行政', NULL);
INSERT INTO `branch` VALUES(3, '資訊', NULL);


INSERT INTO `employee` VALUES(206, '小黃', '1998-10-08', 'F', 50000, 1, NULL); 
INSERT INTO `employee` VALUES(207, '小綠', '1985-09-16', 'M', 29000, 2, 206);
INSERT INTO `employee` VALUES(208, '小黑', '2000-12-19', 'M', 35000, 3, 206);
INSERT INTO `employee` VALUES(209, '小白', '1997-01-22', 'F', 39000, 3, 207);
INSERT INTO `employee` VALUES(210, '小蘭', '1925-11-10', 'F', 84000, 1, 207);

UPDATE `branch`
SET `manager_id` = 206
WHERE `branch_id` = 1;      # 重新设置外键，因为当前employee表格制作完毕

UPDATE `branch`
SET `manager_id` = 207
WHERE `branch_id` = 2;

UPDATE `branch`
SET `manager_id` = 208
WHERE `branch_id` = 3;


# 新增客户资料
INSERT INTO `client` VALUES(400, '阿狗', '254354335');
INSERT INTO `client` VALUES(401, '阿貓', '25633899');
INSERT INTO `client` VALUES(402, '旺來', '45354345');
INSERT INTO `client` VALUES(403, '露西', '54354365');
INSERT INTO `client` VALUES(404, '艾瑞克', '18783783');

# 新增账单资料
INSERT INTO `works_with` VALUES(206, 400, 70000);
INSERT INTO `works_with` VALUES(207, 401, 24000);
INSERT INTO `works_with` VALUES(208, 402, 9800);
INSERT INTO `works_with` VALUES(208, 403, 24000);
INSERT INTO `works_with` VALUES(210, 404, 87940);

# 按照薪水低到高取得员工资料
SELECT * FROM `employee`
ORDER BY `salary`;

# 按照薪水前三取得员工资料
SELECT * FROM `employee`
ORDER BY `salary` DESC
LIMIT 3;

# 取得所有员工名字
SELECT `name` FROM `employee`;

# 取得所有员工性别（不需要重复 + DISTINCT）
SELECT DISTINCT `sex` FROM `employee`;

