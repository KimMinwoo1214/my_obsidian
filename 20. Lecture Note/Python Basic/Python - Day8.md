---
tags: 
aliases: 
type: lecture-note
created: 2024-07-08
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 3

**이전 강의 노트**: [[Python - Day7]]

### 강의자료: 
#### Day7 복습

**연습문제 1: 리스트의 각 요소에 2를 더한 새로운 리스트 생성**

```python
original_list = [1, 3, 5, 7, 9]

print(list(map(lambda x: x + 2, original_list)))
# [3, 5, 7, 9, 11]
```

**연습문제 2: 홀수인 경우에만 제곱한 리스트 생성**

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

print(list(map(lambda x: x ** 2 if x % 2 != 0 else x, numbers)))
#[1, 2, 9, 4, 25, 6, 49, 8, 81]
```

**연습문제 3: 문자열의 길이가 5보다 큰 경우만 필터링**

```python
words = ["apple", "banana", "kiwi", "orange", "grape"]

#['banana', 'orange']
```

**연습문제 4: 두 리스트의 각 요소를 곱한 리스트 생성**

```python
list1 = [1, 2, 3, 4]
list2 = [5, 6, 7, 8]

 
```

**연습문제 5: 주어진 숫자의 제곱 또는 세제곱 계산**

```python
number = 7

# 343
```

**연습문제 6: 리스트의 평균보다 크고 작고 같은 숫자로 구별하여 ‘평균이상’, ‘평균’ ‘평균이하’로 구별하기**

```python
list6 = [ 18, 12, 11, 19, 17, 13, 15]
```

**연습문제 7: 문자열 리스트의 각 문자열에 접두사 추가**

```python
string_list = ["apple", "banana", "kiwi", "orange", "grape"]
prefix = "fruit_"
 
# ["fruit_apple", "fruit_banana".....]
```

# 강의필기 (Lecture Notes)
<br>

## Class

```python
class MyClass:
    def __init__(self, name, id_num, sex, group):
        self.name = name
        self.id_num = id_num
        self.sex = sex
        self.group = group

    def __str__(self):
        msg = "Our class " + f"{self.id_num}" + "rd student is " + self.name
        return msg
    
    def print_name(self, nick_name):
        print(f"우리반 {self.id_num}학생이 {self.name}입니다. His nickname is {nick_name}")
    
    def print_sex(self):
        print(f"His sex is {self.sex}")
    
    def change_num(self):
        if self.id_num == 2:
            self.id_num = self.group

stu1 = MyClass("김민우", 2, "male", 3)

print("Student name is ", stu1.name)
print("Number is ", stu1.id_num)

stu1.change_num()
stu1.print_name("minu")
# print(stu1)
# stu1.print_name("Minu")
# stu1.print_sex()

class Calculator:
    def __init__(self):
        pass
    
    def add(self, num1, num2):
        return num1 + num2
    
    def subtract(self, num1, num2):
        return num1 - num2
    
    def multiply(self, num1, num2):
        return num1 * num2
    
    def divide(self, num1, num2):
        return num1 / num2
    
cal = Calculator()
print(cal.add(3, 5))         
print(cal.subtract(5, 3)) 
print(cal.multiply(3, 5))
print(cal.divide(6, 3))

class Robot:
    def __init__(self, name, robo_type):
        self.name = name
        self.robo_type = robo_type
        self.result = 0
    
    def get_description(self):
        print(f"{self.name}: {self.robo_type}")
    
    def increase(self, dist):
        self.result += dist
        print(f"Drive distance is {self.result} km")
    
    

my_robot = Robot("Robbi", "agv")
my_robot.get_description()
my_robot.increase(10)
my_robot.increase(5)

class Father:
    def __init__(self, surname, given_name):
        self.surname = surname
        self.given_name = given_name
    
    def get_marry(self, ox):
        if ox:
            print("Married Man")
        else:
            print("Not Married Man")
    
    def __str__(self):
        msg = "His name is " + self.surname + self.given_name
        return msg

class Son(Father):
    def __init__(self, surname, given_name, mother):
        self.mother = mother
        super().__init__(surname, given_name)
        
father = Father("Kim", "Minwoo")
father.get_marry(True)
print(father)

myson = Son("Kim", "Lee", "Suzy")
myson.get_marry(False) 
print(myson)
print(myson.mother)

class Employee:
    def __init__(self, name, age, Salary):
        self.name  = name
        self.age = age
        self.Salary = Salary
    
    def increase_pay(self, num1):
        self.Salary = self.Salary * num1

class Developer(Employee):
    def __init__(self, name, age, Salary, strong):
        super().__init__(name, age, Salary)
        self.strong = strong
    
emp1 = Employee("KMW", 24, 5000)
emp2 = Employee("KMH", 26, 8000)
print(emp1.Salary)
print(emp2.Salary)
emp1.increase_pay(1.2)
emp2.increase_pay(1.3)
print(emp1.Salary)
print(emp2.Salary)
dev1 = Developer("JYW", 30, 10000, ["Design", "Python"])
dev1.increase_pay(1.5)
print(dev1.Salary)
```

## PyQt5

### Button

```python
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QWidget
import sys

class MainWindow(QMainWindow):
    def __init__(self):  
        super().__init__()
        self.setWindowTitle("Kairos")

        button = QPushButton("누름")
        self.setCentralWidget(button)
        self.show()

app = QApplication(sys.argv)
win = MainWindow() 
app.exec()
```

### 버튼 누름

```python
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QWidget
import sys

class MainWindow(QMainWindow):
    def __init__(self):  
        super().__init__()
        self.button_state = False
        self.setWindowTitle("Kairos")

        button = QPushButton("누름")
        button.clicked.connect(self.button_is_clicked)
        self.setCentralWidget(button)
        self.show()

    def button_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            print("버튼이 눌렸습니다")

app = QApplication(sys.argv)
win = MainWindow() 
app.exec()
```

### Stylesheet

```python
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QWidget
import sys

class MainWindow(QMainWindow):
    def __init__(self):  
        super().__init__()
        self.button_state = False
        self.setWindowTitle("Kairos")

        button = QPushButton("누름")
        button.clicked.connect(self.button_is_clicked)
        self.setCentralWidget(button)
        self.show()

    def button_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            self.setStyleSheet("background-color : yellow ;")
            print("버튼이 눌렸습니다")  
        else:
            self.setStyleSheet("background-color:none ;")

app = QApplication(sys.argv)
win = MainWindow() 
app.exec()
```

```python
        self.button.setStyleSheet("""
            QPushButton {
                background-color: #4CAF50; /* Green background */
                border: none; /* Remove borders */
                color: white; /* White text */
                padding: 15px 32px; /* Some padding */
                text-align: center; /* Centered text */
                text-decoration: none; /* No underline */
                display: inline-block; /* Make the button inline */
                font-size: 16px; /* Increase font size */
                margin: 4px 2px; /* Add some margin */
                border-radius: 12px; /* Rounded corners */
            }
            QPushButton:hover {
                background-color: #45a049; /* Darker green on hover */
            }
            QPushButton:pressed {
                background-color: #3e8e41; /* Even darker green on press */
            }
        """)
```

### Layout

```python
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QHBoxLayout, QPushButton, QWidget
import sys

class MainWindow(QMainWindow):
    def __init__(self):  
        super().__init__()
        self.button_state = False
        self.setWindowTitle("Kairos")

        container = QWidget()
        self.setCentralWidget(container)

        h_layout = QHBoxLayout()  
        container.setLayout(h_layout)      
        
        button1 = QPushButton("BUTTON1")
        button1.clicked.connect(self.button1_is_clicked)
        button2 = QPushButton("BUTTON1")
        button2.clicked.connect(self.button2_is_clicked)

        h_layout.addWidget(button1)
        h_layout.addWidget(button2)
        

        self.show()

    def button1_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            #self.setStyleSheet("background-color : yellow ;")
            print("버튼이 눌렸습니다")  
        else:
            self.setStyleSheet("background-color:none ;")

    def button2_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            self.setStyleSheet("background-color : yellow ;")
            print("버튼이 눌렸습니다")  
        else:
            self.setStyleSheet("background-color:none ;")

app = QApplication(sys.argv)
win = MainWindow() 
app.exec()
```

### [연습문제]

```python
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout, QPushButton, QWidget
import sys

candidates = ["김무현", "조권희", "심승환", "김민우", "김동희",]

class MainWindow(QMainWindow):
    def __init__(self):  
        super().__init__()
        self.button_state = False
        self.setWindowTitle("Kairos")

        container = QWidget()
        self.setCentralWidget(container)

        v_layout = QVBoxLayout()  
        container.setLayout(v_layout)      
        
        button1 = QPushButton("대표")
        button1.clicked.connect(self.button1_is_clicked)
        button2 = QPushButton("부대표")
        button2.clicked.connect(self.button2_is_clicked)

        v_layout.addWidget(button1)
        v_layout.addWidget(button2)
        

        self.show()

    def button1_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            #self.setStyleSheet("background-color : yellow ;")
            print("버튼이 눌렸습니다")  
        else:
            self.setStyleSheet("background-color:none ;")

    def button2_is_clicked(self):
        self.button_state = not self.button_state
        if self.button_state:
            self.setStyleSheet("background-color : yellow ;")
            print("버튼이 눌렸습니다")  
        else:
            self.setStyleSheet("background-color:none ;")

app = QApplication(sys.argv)
win = MainWindow() 
app.exec()
```

### 다양한 widgets

```python
 widgets = [
            QCheckBox,
            QComboBox,
            QDateEdit,
            QDateTimeEdit,
            QDial,
            QDoubleSpinBox,
            QFontComboBox,
            QLCDNumber,
            QLabel,
            QLineEdit,
            QProgressBar,
            QPushButton,
            QRadioButton,
            QSlider,
            QSpinBox,
            QTimeEdit,
        ]
```

```python
import sys

from PyQt5.QtWidgets import (
    QApplication,
    QCheckBox,
    QComboBox,
    QDateEdit,
    QDateTimeEdit,
    QDial,
    QDoubleSpinBox,
    QFontComboBox,
    QLabel,
    QLCDNumber,
    QLineEdit,
    QMainWindow,
    QProgressBar,
    QPushButton,
    QRadioButton,
    QSlider,
    QSpinBox,
    QTimeEdit,
    QVBoxLayout,
    QWidget,
)

# Subclass QMainWindow to customize your application's main window
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Widgets App")

        layout = QVBoxLayout()
        widgets = [
            QCheckBox,
            QComboBox,
            QDateEdit,
            QDateTimeEdit,
            QDial,
            QDoubleSpinBox,
            QFontComboBox,
            QLCDNumber,
            QLabel,
            QLineEdit,
            QProgressBar,
            QPushButton,
            QRadioButton,
            QSlider,
            QSpinBox,
            QTimeEdit,
        ]

        for w in widgets:
            layout.addWidget(w())

        widget = QWidget()
        widget.setLayout(layout)

        # Set the central widget of the Window. Widget will expand
        # to take up all the space in the window by default.
        self.setCentralWidget(widget)

app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exChec()
```

### Slider *3 & label

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/285829e1-17d8-447d-a081-d547c6e2d771/88f7d56b-a9e2-4ac5-a94d-2adf57184e48/Untitled.png)
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]


