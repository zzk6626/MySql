# union 联集

# 需要注意，每个表格都拿一个 / n个属性做合并，不能一个属性和两个属性做合并 
# 需要注意，做合并的形态（INT/VARCHAR）形态需要一致

# 员工名字 union 客户名字
SELECT `name` FROM `employee` 
UNION 
SELECT `client_name` FROM `client`
UNION
SELECT `branch_name` FROM `branch`;

# 员工id + 员工名字 union 客户id + 客户名字
SELECT `emp_id` AS `total_id`, `name` AS `total_name` FROM `employee`   # AS 将原始（多种）属性名修改为 统一属性名
UNION
SELECT `client_id`, `client_name` FROM `client`;

# 员工薪水 union 销售金额
SELECT `salary` FROM `employee` AS `total_money`
UNION
SELECT `total_sales` FROM `works_with`;