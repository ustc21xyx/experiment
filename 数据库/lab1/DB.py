#encoding=utf-8
import MySQLdb

# 打开数据库连接 (url,username,password,database)
db = MySQLdb.connect("localhost","root","1234","db",charset='utf8')

# 获得操作游标
cursor = db.cursor()

# 执行SQL语句
cursor.execute("select * from classes;")

# 提取数据
data = cursor.fetchall()

for d in data:
    print(d)

# 关闭数据库连接
db.close()
