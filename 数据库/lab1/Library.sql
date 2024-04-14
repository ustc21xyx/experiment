-- Active: 1713014072180@@127.0.0.1@3306@Library
# 创建数据库
CREATE DATABASE IF NOT EXISTS Library;

USE Library;

DROP TABLE IF EXISTS Reader;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Borrow;

```
Book（ID: char(8)，name:varchar(10)，author:varchar(10)，price:float， status: int, 
times: int） ID 为主键，书名不能为空。status 为 1 表示书被借出，0 表示在馆，默
认值为 0。times 是累计借阅次数，默认值为 0

Reader（ID:char(8)，name:varchar(10)，age:int，address:varchar(20)）ID 为主键。

Borrow（book_ID:char(8)，Reader_ID:char(8)，Borrow_Date:date，
Return_Date:date） 其中：还期 Return_Date 为 NULL 表示该书未还。主键为（图
书号，读者号），图书号为外键，引用图书表的图书号，读者号为外键，引用读者
表的读者号
```

CREATE TABLE Book(
ID CHAR(8) NOT NULL ,
name VARCHAR(10) NOT NULL,
author VARCHAR(10) ,
price FLOAT ,
status INT DEFAULT 0,
times INT DEFAULT 0,
PRIMARY KEY(ID)
) DEFAULT CHARSET=utf8;

CREATE TABLE Reader(
ID CHAR(8) NOT NULL,
name VARCHAR(10),
age INT,
address VARCHAR(20),
PRIMARY KEY(ID)
) DEFAULT CHARSET=utf8;

CREATE TABLE Borrow(
    
)