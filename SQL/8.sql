# wildcards万用字元  %代表多个字元  _代表一个字元

# 取得手机电话号码尾数为335的客户
SELECT * FROM `client`
WHERE `phone` LIKE '%335';

# 取得姓 艾 的客户
SELECT * FROM `client`
WHERE `client_name` LIKE '艾%';

# 取得生日在12月的员工
SELECT * FROM `employee`
WHERE `birth_date` LIKE '_____12%';  # 日期中'-'算作一个字符
