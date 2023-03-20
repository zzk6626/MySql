# join 连接

INSERT INTO `branch` VALUES(4, '偷懒', NULL);  # 新增一个偷懒部门，没有经理

# 取得所有部门经理的名字
SELECT * FROM `employee` JOIN `branch`   
ON `emp_id` = `manager_id`;   # 连接两个表格的信息，必须属于同种对应属性

SELECT `emp_id`, `name`, `branch_name`  # 选取三个属性加入新的表格
FROM `employee` JOIN `branch`   
ON `emp_id` = `manager_id`; 


SELECT `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name` 
FROM `employee` JOIN `branch`   
ON `employee`.`emp_id` = `branch`.`manager_id`;    # `branch`. / `employee`. 避免部分属性名称相同，无法判别

SELECT `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name` 
FROM `employee` LEFT JOIN `branch`    # 回传左侧表格的所有资料，若右侧不存在该主键信息，那么回传NULL
ON `employee`.`emp_id` = `branch`.`manager_id`;

SELECT `employee`.`emp_id`, `employee`.`name`, `branch`.`branch_name` 
FROM `employee` RIGHT JOIN `branch`    # 回传右侧表格的所有资料，若右侧不存在该主键信息，那么回传NULL
ON `employee`.`emp_id` = `branch`.`manager_id`;