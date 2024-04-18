# 这是一个简单的Python测试代码
def add_numbers(a, b):
    """
    将两个数字相加并返回结果
    """
    return a + b

# 测试代码
num1 = 5
num2 = 10
result = add_numbers(num1, num2)
print(f"结果：{result}")
# 计算两个数字的乘积
def multiply_numbers(a, b):
    """
    将两个数字相乘并返回结果
    """
    return a * b

# 测试代码
num3 = 3
num4 = 7
product = multiply_numbers(num3, num4)
print(f"乘积：{product}")
# 创建一个简单的类
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        print(f"我叫{self.name}，今年{self.age}岁。")

# 创建一个Person对象并调用方法
person = Person("张三", 25)
person.introduce()
# 创建一个简单的子类
class Student(Person):
    
    def __init__(self, name, age, grade):
        super().__init__(name, age)
        self.grade = grade

    def introduce(self):
        super().introduce()
        print(f"我在{self.grade}年级。")

# 创建一个Student对象并调用方法
student = Student("李四", 18, 12)
student.introduce()
