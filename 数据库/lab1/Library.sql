-- Active: 1713014072180@@127.0.0.1@3306@Library
# 创建数据库
CREATE DATABASE IF NOT EXISTS Library;

USE Library;

DROP TABLE IF EXISTS Reader;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Borrow;


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
    book_ID CHAR(8) NOT NULL,
    Reader_ID CHAR(8) NOT NULL,
    Borrow_Date DATE NOT NULL,
    Return_Date DATE,
    PRIMARY KEY(book_ID,Reader_ID),
    foreign key(Reader_ID) references Reader(ID),
    foreign key (Book_ID) references Book(ID)
) DEFAULT CHARSET=utf8;