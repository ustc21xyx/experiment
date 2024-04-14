-- Active: 1713014072180@@127.0.0.1@3306@DB
# 如果DB数据库不存在，就创建数据库DB：
CREATE DATABASE IF NOT EXISTS DB;

# 切换到DB数据库
USE DB;

# 删除classes表（如果存在）：
DROP TABLE IF EXISTS classes;

-- 创建classes表：
CREATE TABLE classes (
id BIGINT NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

-- 插入classes记录：
INSERT INTO classes(name) VALUES ('一班');
INSERT INTO classes(name) VALUES ('二班');
INSERT INTO classes(name) VALUES ('三班');

select * from classes;