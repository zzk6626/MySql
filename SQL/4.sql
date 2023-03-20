# 修改，删除资料
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE `student`(
	`student_id` INT AUTO_INCREMENT PRIMARY KEY,    # 主键的第二种写法 PRIMARY KEY(`student_id`)
	`name` VARCHAR(20),
	`major` VARCHAR(20),
    `score` INT
);

DROP TABLE `student`;

INSERT INTO `student` VALUE(1, '小白', '英语', 50);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小黄', '生物', 60);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小绿', '历史', 70);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小蓝', '英语', 80);
INSERT INTO `student`  (`name`, `major`, `score`) VALUE('小黑', '化学', 20);

SELECT * FROM `student`;

UPDATE `student`  # 表格当中major属性为英语的，全部改为英语文学
SET `major` = '英语文学'
WHERE `major` = '英语'; 

UPDATE `student`  
SET `major` = '生化'
WHERE `major` = '生物' OR  `major` = '化学'; 

UPDATE `student`  
SET `major` = '物理';  # 没有where限制条件，所有major全部便成为物理ALTER

DELETE FROM `student`
WHERE `name` = '小黄' AND `major` = '物理';  # 筛选信息不对，就不会删除，可以正常运行ALTER

DELETE FROM `student`
WHERE `score` < 60;  

DELETE FROM `student`; # 删除表格内所有内容