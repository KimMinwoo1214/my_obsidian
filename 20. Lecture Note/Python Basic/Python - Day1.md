---
tags:
  - Python
  - "#Kairos"
aliases: 
type: lecture-note
created: 2024-06-27
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 1

**이전 강의 노트**: [[]]

### 강의자료: 


# 강의필기 (Lecture Notes)
<br>

## Data Types

- **Data Types**
    
    
    <aside> 💡 python의 데이터 타입을 구별해야 하는 이유는 무엇일까?
    
    </aside>
    
- **Data Type 1: Strings**
    
    - join()
        
        ```python
        #짝꿍의 이름을 입력받아 우영우 인사법으로 출력하세요 (우 to the 영 to the 우)
        
        name = input("Type your name(3words)")
	    
        result = ""
        
        for i in range(len(name)):
            result += name[i]
            if i != 2:
                result += " to the "
            
        print(result)
        ```
        
- **Data Type 2 : Numbers**
    
    - Operators ****
        
        |Operator|Name|Description|String|
        |---|---|---|---|
        |a + b|Addition|Sum of a and b||
        |a - b|Subtraction|Difference of a and b||
        |a * b|Multiplication|Product of a and b||
        |a / b|True division|Quotient of a and b||
        |a // b|Floor division|Quotient of a and b, removing fractional parts||
        |a % b|Modulus|Integer remainder after division of a by b||
        |a ** b|Exponentiation|a raised to the power of b||
        |-a|Negation|The negative of a||
        
        ```python
        # [Task1] 화씨 100도를 섭씨로 바꾸기
        celsius = (fahrenheit - 32) * 5/9
        
        ```
        
        - 정답
            
            ```python
             
            fahrenheit_temp = 100
            celsius_temp = (fahrenheit - 32) * 5/9
            celsius_temp
            
            #37.77777778
            
            celsius_temp_2f = round(celsius_temp, 2)
            # 프린트만 변경할 경우
            print(f'temp = {celsius_temp:.2f}')
            ```
            
    - string & operators : 위의 도표에서 사용가능한 operators를 찾아보세요
        
        <aside> 💡 {Task] 짝구의 태어난 년도를 입렵받고 나와의 나이차이를 계산하는 코드
        
        </aside>
        

```jsx
name = input("성함")
age = input("나이")
height = input("키")

#print("이름: ", name)
print(f"이름:  {name}")     #format
print(f"나이:  {age}세")
#print("키: ", height, "cm")
print(f'키: {height}cm')
```

```python
num1 = float(input("숫자1"))
num2 = float(input("숫자2"))
result = num1 + num2
print(f"{num1} + {num2} = {result}")
```
<br>


## 공지사항
<br>



## 수업 내용
### [[List]]

#### 리스트 생성 & 추가 방법 (append(), insert(), extend())

<aside> 💡 생각해보기

lmy_list = my_list.append(3) vs my_list.append(3) 차이점

</aside>

##### 연습문제

```python
nums = [1, 2, 3, 4, 5, 6, 7]

1. 리스트에서 최댓값과 최솟값을 출력하세요

2. 리스트의 합을 출력하세요

3. 리스트에 저장된 데이터의 개수를 출력하세요

4. 리스트의 평균을 출력하세요
```

Slicing 연 문제

```python
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

1. 훌수만 출력하세요 ([1, 3, 5, 7, 9])

2. 짝수만 출려하세요 

3. 1~5까지만 역방향으로 출력하세요 (5, 4, 3, 2, 1]
```

##### Sort 하는 2가지 방법

```python
data = [2, 4, 3, 1, 5, 10, 9]
data.sort()
print(data)
```

```python
data = [2, 4, 3, 1, 5, 10, 9]
data2 = sorted(data)
print(data2)
```

```python
data = [2, 4, 3, 1, 5, 10, 9]
data3 = data.sorted(reverse = True)
print(data3)
```


<br>

### [[For]]

```python
 for fruit in ["사과", "귤", "수박"]:
    print(fruit)
    
 * 'fruits'이라는 변수를 만들어서 다시 작성하세요
 
 fruits = ["사과", "귤", "수박"]
 for fruit in fruits:
	 print(fruit)
```

```python
변수 = 10
print(변수)

변수 = 20
print(변수)

변수 = 30
print(변수)

위의 코드를 for loop으로 작성하기

결과값:
10
20
30
```

```python
리스트 = ["ROS1", 'ROS2", "Python", "SLAM", "ESP32", "Fusion360", "Deep Learning"]

저장된 문자열의 길이를 출력하세요
답
for i in my_list:
    print(len(i))
```

```python
my_pets = ['dog', 'cat', 'parrot']

출력 예: 
dog 3
cat 3
parrot 6
답
for i in my_pets:
    #result = i + f" {len(i)}"
    print(i, len(i))
```

[코드 예제]

```python
my_list = []

for i in range(1,13,2):
    my_list.append(i * 2)
    
print(my_list)

results = []
for num in my_list:
    result = num-1
    results.append(result)
    
print(results)  

```

```python
#my_list = []
#for i in range(10):
#   my_list.append(i*i)

my_list = [i*i for i in range(10)]
print(my_list)

my_list.sort(reverse = True)
print(my_list)
```

<br>

###  [[Function]]

```python
def make_list(num):
    my_list = []

    for i in range(num):
        my_list.append(i)
    
    print(my_list)
 

make_list(11)
```

```python
def make_list(start, end, type):
    my_list = []
    
    if type == "e":
        q = 0
    else:
        q = 1        
    for i in range(start, end):
        if i % 2 == q:
            my_list.append(i)
    
    print(my_list)
 

make_list(20, 35, "a")
```

```python
def make_list(start, end, divide_number, modulo):
    my_list = []
    for i in range(start, end):
        if i % divide_number == modulo:
            my_list.append(i)
    print(my_list)

make_list(20, 35, 2, 0)
```
<br>


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[기초 개념/Python|Python]]



```p
print("Hello World!")
```