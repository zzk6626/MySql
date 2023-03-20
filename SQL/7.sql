# aggregate function 聚合函数

# 取得员工人数
SELECT COUNT(*) FROM `employee`;   # COUNT()提取资料的个数

# 取得所有出生于1970-01-01之后的女性员工人数
SELECT COUNT(*) FROM `employee`
WHERE `birth_date` > '1970-01-01' AND `sex` = 'F';

# 取得所有员工的平均薪水 
SELECT AVG(`salary`) FROM `employee`;  # AVG()提取属性值的平均数

# 取得所有员工的最高薪水
SELECT MAX(`salary`) FROM `employee`;  # MAX()提取属性值的最大数

# 取得所有员工的最低薪水
SELECT MIN(`salary`) FROM `employee`;

