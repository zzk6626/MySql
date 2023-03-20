# ON_DELETE
# ON DELETE SET NULL  （加入在Foreign Key属性说明中） 对应不到了，就设定为NULL
# ON DELETE CASCADE   （加入在Foreign Key属性说明中） 对应不到了，就直接删掉
# 当works_with表格存在不仅是内键还是外键的情况，删掉后不能设置为NULL，因为此时有位客户和他对应，客户并未删除

DELETE FROM `employee`
WHERE `emp_id` = 207;  

SELECT * FROM `branch`;

SELECT * FROM `works_with`;