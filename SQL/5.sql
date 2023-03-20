# 取得资料

CREATE TABLE `student`(
	`student_id` INT AUTO_INCREMENT PRIMARY KEY,    # 主键的第二种写法 PRIMARY KEY(`student_id`)
	`name` VARCHAR(20),
	`major` VARCHAR(20),
    `score` INT
);


INSERT INTO `student` VALUE(1, '小白', '英语', 50);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小黄', '生物', 60);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小绿', '历史', 20);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小蓝', '英语', 80);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小黑', '化学', 20);

DROP TABLE `student`;

SELECT * FROM `student`;  # *指的是取得所有属性

SELECT `major` FROM `student`;  # 取得major属性

SELECT * FROM `student`
ORDER BY `score`;  # 选择所有信息，按照score进行从低到高排序（升序）

SELECT * FROM `student`
ORDER BY `score`, `student_id`;  # 如果score一样，就按照student_id从低到高排序

SELECT * FROM `student`
ORDER BY `score` DESC   # 降序排列
LIMIT 3;    # 按照score进行从低到高排序限制回传的数量为3 

SELECT * FROM `student`
WHERE `major` = '英语' OR `score` <> 20
LIMIT 2;   # `score` 不等于20   <>  不等于

SELECT * FROM `student`
WHERE `major` IN ('历史', '生物', '化学');   # IN 相当于 包含 







