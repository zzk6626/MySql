# subquery 子查询
# IN 子查询符合元素超过1个就用 'IN'，只有一个用 '='

SELECT * FROM `employee`;
SELECT * FROM `branch`;

# 找出研发部门的经理名字
SELECT `name` FROM `employee`
WHERE `emp_id` = (
	SELECT `manager_id` FROM `branch`
	WHERE `branch_name` = '研發'
);

# 找出对一个客户销售金额超过50000员工的名字
SELECT `name` FROM `employee`
WHERE `emp_id` IN (     
	SELECT `emp_id` FROM `works_with`
    WHERE `total_sales` > 50000
);