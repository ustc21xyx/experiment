# 插入书籍
insert into Book value('b1', '数据库系统实现', 'Ullman', 59.0, 1, 8);
insert into Book value('b2', '数据库系统概念', 'Abraham', 59.0, 1, 5);
insert into Book value('b3', 'C++ Primer', 'Stanley', 78.6, 1, 6);
insert into Book value('b4', 'Redis设计与实现', '黄建宏', 79.0, 1, 4);
insert into Book value('b5', '人类简史', 'Yuval', 68.00, 1, 6);
insert into Book value('b6', '史记(公版)', '司马迁', 220.2, 1, 5);
insert into Book value('b7', 'Oracle编程艺术', 'Thomas', 43.1, 0, 4);
insert into Book value('b8', '分布式系统及其应用', '邵佩英', 30.0, 0, 2);
insert into Book value('b9', 'Oracle管理', '张立杰', 51.9, 0, 5);
insert into Book value('b10', '数理逻辑', '汪芳庭', 22.0, 0, 6);
insert into Book value('b11', '三体', '刘慈欣', 23.0, 1, 8);
insert into Book value('b12', 'Fun python', 'Luciano', 354.2, 0, 3);
insert into Book value('b13', 'Learn SQL', 'Seyed', 23.0, 1, 3);
insert into Book value('b14', 'Perl&MySQL', '徐泽平', 23.0, 1, 3);
insert into Book value('b15', '司马迁的故事', '黄永年', 34.80, 0, 2);
insert into Book value('b16', '中国2185', '刘慈欣', 218.5, 1, 7);
insert into Book value('b17', '高性能MySQL', 'Botros', 20.00, 0, 0);  
insert into Book value('b18', '深度学习', 'John', 111.5, 0, 3);
insert into Book value('b19', 'HowWeThink', 'John', 79.8, 1, 5);
insert into Book value('00b00001', '红框里的中国', 'VME50', 88.8, 0, 0);
insert into Book value('00b00002', '红框里的美国', 'Trump', 88.8, 0, 0);

# 插入读者
insert into Reader value('r1', '王林', 18, '中国科学技术大学东校区');
insert into Reader value('r2', 'Rose', 22, '中国科学技术大学北校区');
insert into Reader value('r3', '罗永平', 23, '中国科学技术大学西校区');
insert into Reader value('r4', 'Mora', 26, '中国科学技术大学北校区');
insert into Reader value('r5', '汤晨', 22, '先进科学技术研究院');
insert into Reader value('r6', '李一一', 18, '中国科学技术大学东校区');
insert into Reader value('r7', '王二狗', 22, '中国科学技术大学北校区');
insert into Reader value('r8', '赵四', 23, '中国科学技术大学西校区');
insert into Reader value('r9', '魏心', 26, '中国科学技术大学北校区');
insert into Reader value('r10', '汤大晨', 22, '先进科学技术研究院');
insert into Reader value('r11', '李平', 18, '中国科学技术大学东校区');
insert into Reader value('r12', 'Lee', 22, '中国科学技术大学北校区');
insert into Reader value('r13', 'Jack', 23, '中国科学技术大学西校区');
insert into Reader value('r14', 'Bob', 26, '中国科学技术大学北校区');
insert into Reader value('r15', '李林', 22, '先进科学技术研究院');
insert into Reader value('r16', '王林', 18, '中国科学技术大学东校区');
insert into Reader value('r17', 'Mike', 22, '中国科学技术大学北校区');
insert into Reader value('r18', '范维', 23, '中国科学技术大学西校区');
insert into Reader value('r19', 'David', 26, '中国科学技术大学北校区');
insert into Reader value('r20', 'Vipin', 22, '先进科学技术研究院');
insert into Reader value('r21', '林立', 18, '中国科学技术大学东校区');
insert into Reader value('r22', '张悟', 22, '中国科学技术大学北校区');
insert into Reader value('r23', '袁平', 23, '中国科学技术大学西校区');

# 插入借书记录
insert into Borrow value('b1','r1',  '2023-03-12', '2023-04-07');
insert into Borrow value('b2','r1',  '2023-04-14', '2023-06-19');
insert into Borrow value('b3','r1',  '2019-01-01', '2019-01-02');
insert into Borrow value('b4','r1',  '2019-01-03', '2019-01-04');
insert into Borrow value('b5','r1',  '2019-01-05', '2019-01-06');
insert into Borrow value('b6','r1',  '2019-01-07', '2019-01-08');
insert into Borrow value('b7','r1',  '2019-01-09', '2019-01-10');
insert into Borrow value('b8','r1',  '2019-01-11', '2019-01-12');
insert into Borrow value('b9','r1',  '2019-01-13', '2019-01-14');
insert into Borrow value('b10','r1',  '2019-01-15', '2019-01-16');
insert into Borrow value('b14','r1',  '2023-01-12', '2023-03-01');

insert into Borrow value('b1', 'r2', '2023-02-22', '2023-03-10');
insert into Borrow value('b2', 'r2', '2023-02-22', '2023-04-10');
insert into Borrow value('b11', 'r2', '2023-01-11', '2023-02-10');
insert into Borrow value('b16', 'r2', '2023-01-11', '2023-02-13');
insert into Borrow value('b19', 'r2', '2024-04-8', NULL);

insert into Borrow value('b1', 'r3', '2023-04-14', '2023-06-19');
insert into Borrow value('b4', 'r3', '2023-01-14', '2023-04-09');
insert into Borrow value('b7', 'r3', '2023-04-02', '2023-04-09');
insert into Borrow value('b18', 'r3', '2023-01-14', '2023-04-09');

insert into Borrow value('b6', 'r4', '2024-03-31', NULL);
insert into Borrow value('b12', 'r4', '2023-03-31', '2023-06-19');
insert into Borrow value('b15', 'r4', '2023-02-02', '2023-03-02');

insert into Borrow value('b4', 'r5', '2024-04-10', NULL);
insert into Borrow value('b16','r5',  '2023-06-15', '2023-06-30');
insert into Borrow value('b19', 'r5', '2023-06-15', '2023-06-16');

insert into Borrow value('b3', 'r6', '2024-01-10', NULL);
insert into Borrow value('b13', 'r6', '2023-01-10', '2023-2-10');
insert into Borrow value('b14', 'r6', '2024-01-10', '2024-02-28');

insert into Borrow value('b1', 'r7', '2023-01-01', '2023-01-20');
insert into Borrow value('b16', 'r7', '2023-01-01', '2023-01-09');
insert into Borrow value('b19', 'r7', '2023-01-01', '2023-02-14');

insert into Borrow value('b8', 'r8', '2023-01-10', '2023-02-19');
insert into Borrow value('b9','r8',  '2023-01-10', '2023-02-19');
insert into Borrow value('b10', 'r8', '2023-01-10', '2023-02-19');

insert into Borrow value('b1', 'r9', '2023-06-20', '2023-06-30');
insert into Borrow value('b2', 'r9', '2023-06-20', '2023-06-30');
insert into Borrow value('b19', 'r9', '2023-03-01', '2023-03-22');

insert into Borrow value('b1', 'r11', '2023-07-01', '2023-07-05');
insert into Borrow value('b3', 'r11',  '2023-07-01', '2023-07-05');
insert into Borrow value('b5', 'r11', '2023-07-01', '2023-07-07');
insert into Borrow value('b7', 'r11', '2023-07-07', '2023-07-31');
insert into Borrow value('b11','r11',  '2022-01-12', '2022-01-31');
insert into Borrow value('b16', 'r11', '2022-01-31', '2022-02-26');

insert into Borrow value('b3', 'r12', '2023-07-10', '2023-07-31');
insert into Borrow value('b11', 'r12', '2022-02-01', '2022-02-26');
insert into Borrow value('b16', 'r12', '2022-02-26', '2022-03-31');

insert into Borrow value('b18', 'r13', '2023-07-01', '2023-08-01');
insert into Borrow value('b19', 'r13', '2023-07-01', '2023-08-01');

insert into Borrow value('b5', 'r14', '2024-01-10', NULL);
insert into Borrow value('b1', 'r14', '2024-01-10', NULL);

insert into Borrow value('b9', 'r15', '2022-04-19', '2022-08-19');
insert into Borrow value('b2', 'r15', '2023-12-01', NULL);

insert into Borrow value('b1', 'r16', '2020-09-11', '2020-11-09');
insert into Borrow value('b2', 'r16', '2021-01-08', '2021-02-08');
insert into Borrow value('b3', 'r16', '2021-01-08', '2021-02-08');
insert into Borrow value('b4', 'r16', '2021-01-08', '2021-02-08');
insert into Borrow value('b5', 'r16', '2021-03-08', '2021-04-08');
insert into Borrow value('b7', 'r16', '2021-03-08', '2021-04-08');
insert into Borrow value('b9', 'r16', '2022-10-10', '2022-12-19');
insert into Borrow value('b10', 'r16', '2023-07-24', '2023-09-21');
insert into Borrow value('b11', 'r16', '2021-05-08', '2021-09-08');
insert into Borrow value('b12', 'r16', '2020-09-01', '2020-09-10');
insert into Borrow value('b15', 'r16', '2020-09-11', '2020-11-09');
insert into Borrow value('b16', 'r16', '2020-09-11', '2020-11-09');
insert into Borrow value('b18', 'r16', '2020-09-11', '2020-11-09');

insert into Borrow value('b9', 'r17', '2023-07-10', '2023-08-22');
insert into Borrow value('b11','r17',  '2022-12-12', '2023-01-01');

insert into Borrow value('b12', 'r18', '2022-10-10', '2022-12-19');
insert into Borrow value('b13', 'r18', '2022-10-10', '2022-12-19');

insert into Borrow value('b5','r19',  '2020-02-12', '2020-03-07');
insert into Borrow value('b6','r19',  '2020-07-12', '2020-09-07');
insert into Borrow value('b10','r19',  '2020-09-12', '2020-11-07');
insert into Borrow value('b11','r19',  '2020-02-12', '2023-03-07');
insert into Borrow value('b13', 'r19', '2023-12-10', NULL);

insert into Borrow value('b11', 'r23', '2023-12-17', NULL);
insert into Borrow value('b14', 'r23', '2023-12-17', NULL);
insert into Borrow value('b16', 'r23', '2023-12-17', NULL);
