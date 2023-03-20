# --constrain

USE `sql_tutorial`;   # 选择要使用哪一个资料库，一个连接下的database都是通用的

CREATE TABLE `student`(
	`student_id` INT AUTO_INCREMENT KEY,    # 主键的第二种写法 PRIMARY KEY(`student_id`)    AUTO_INCREMENT 主键序号自动新增，但是若错误插入（不符合其他属性输入要求），主键序号也会增加
	`name` VARCHAR(20) NOT NULL,     # 该属性不容许为空
	`major` VARCHAR(20) UNIQUE       # 该属性的值不容许重新
    # `major` DEFAULT '历史'
);



DESCRIBE `student`;
DROP TABLE `student`;
SELECT * FROM `student`;  # 搜索student表中所有数据，并显示

INSERT INTO `student` VALUES(1, '小白', '历史');
INSERT INTO `student`(`name`, `major`) VALUES('小黑', '英语');

INSERT INTO `student` VALUES(3, '小绿',  NULL);
INSERT INTO `student` (`student_id`, `name`, `major`) VALUES(4, '小兰',  NULL);
INSERT INTO `student` ( `major`, `student_id`) VALUES('语文', 5);  # 可以更改顺序
