---
tags:
  - Python
  - "#Kairos"
aliases: 
type: lecture-note
created: 2024-06-28
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 1

**이전 강의 노트**: [[Python - Day1]]

### 강의자료: 
#### Day1복습

```python
def make_list(start, end, step):
    my_list = []
    for i in range(start, end, step):
        #3,6,9검사
        if i % 3 == 0:
            my_list.append(i)
    
    print(my_list)
    
make_list(20, 30, 2)

my_list2 = [j for j in range(10) if j % 2 != 0]
print(f'my_list2: {my_list2}')

def make_list(num1, num2):
    my_list2 = [j for j in range(num) if j % num2 != 0]
    print(f'my_list2: {my_list2}')

make_list(20, 3)
```

```python
# random.randint()
# random.random()
import random

results = []
for i in range(10):
    #result = random.randint(1,6)
    #result = random.random()
    result = random.randrange(1,20,5)
    results.append(result)
print(results)
```
# 강의필기 (Lecture Notes)
<br>

## tuple

```python
t = (1) vs t=(1,) 차이점은?
```

```python
 [(0, 1), (2, 3), (4, 5), (6, 7), (8, 9)] 을 출력하세요
```

```python
my_tuple = ((1,2), (3,4), (5,6))
tuple2 = ((7,8),)
print(tuple2)
#print(my_tuple[0])
#print(my_tuple[1][1])
tuple3 = my_tuple + tuple2
print(tuple3)

#(7)  vs (7,)

print(f'type((7)) : {type((7))}')
print(f'type((7,)) : {type((7,))}')
```

## set

```python
my_list = [i for i in range(6)]
print(my_list)
# list [a,b,c,d]
# set {a,b,c,d}
list_3=[2,3,3,3,2,3,3,3,2,3,3,3]
set_3 = set(list_3)
print(f'set_3: {set_3}')
list_3_3 = list(set_3)
print(f'list_3_3 : {list_3_3}')
# tuple (a,b,c,d)
tuple_3 = tuple(list_3)
print(f'tuple_3: {tuple_3}')
# dictionary {a:b, c:d}

```

```python
th = str(13)
print(th)
print(len(th))
for i in th:
    print(i)
삼육구 = ['3','6','9']
print(th[1] in 삼육구)
```

## dictionary

```python
team = ["손석구", "손흥민", "김어준"]
menu = ["떡볶이", "돼지국밥 ", "삼겹살"]
size = [1, 2, 3]

result = menu[1]
print(result)

dict1 = {"손석구": "떡볶이",
        "손흥민": "돼지국밥"}
print(dict["손흥민"])

my_dict = dict(zip(team, menu))
my_dict['장도연'] ="연어초밥"
my_dict['손흥민'] = "소고기국밥"
del my_dict['김어준']
print(my_dict)

for key, value in my_dict.items():
    print(f'{key}: {value}') 

```

```python
my_dict = {"손석구": {"떡볶이":"맵게",
                    "오뎅": "곱배기"},
        "손흥민": "돼지국밥"}
print(my_dict["손석구"]["떡볶이"])

for value in my_dict:
    print(value)
```

```python
# list enumerate

my_list = [i *2 for i in range(1,10,2)]
print(my_list)

my_dict = {}
for i, num in enumerate(my_list):
    my_dict[i] = num
    #print(f'{i}번째 숫자: {num}')
print(my_dict)  
```

```python
ice = {"메로나": [1000, 3, "매진임박"], "폴라포": [1200, 10], "빵빠레": 1800}
print(ice["메로나"][1])

ice = ["메로나", "브라보콘"]
price = [500, 1000]

my_dict = dict(zip(ice, price))
print(my_dict)
```

## While

```python
import random
 
num = random.randint(1, 10)
print(num)

count = 0

while True:      
    guess_num = int(input('숫자를 입력하세요: '))
    #count = count +1   
    
    if guess_num == num:
        print('빙고')
        break
    else:
        print('꽝')
        count += 1
        
print(f'당신은 {count}틀리셨어요. ')
```

```python
# 1에서 50까지 짝수만 출력하기
num = 1
while num <= 50:
    if num % 2 == 0:
        print(num)
    num += 1
    
```

```python
# 1에서 50까지 짝수만 출력하기
num = 1
sum_num = 0
while num <= 50:
    if num % 2 == 0:
        print(num)
        sum_num += num
    num += 1

print(sum_num)
```
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[기초 개념/Python|Python]]


