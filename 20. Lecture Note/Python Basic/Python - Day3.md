---
tags:
  - Python
  - "#Kairos"
aliases: 
type: lecture-note
created: 2024-07-01
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 2

**이전 강의 노트**: [[Python - Day2]]

### 강의자료: 
#### 복습퀴즈

<aside> 💯 1. 1~ 10 까지 숫자 출력하기

</aside>

```python
for i in range(1, 11):
	print(i)
```

<aside> 💯 2. 짝수 출력하기 (가능한 다양한 방법으로)

</aside>

```python
for i in rang(1, 11):
	if i % 2 == 0:
		print(i)
```

<aside> 💯 3. 1~100까지 합 구하기

</aside>

```python
sum1 = 0
for i in range(101):
	sum1 += i

print(sum1)
```

<aside> 💯 4. 구구단 출력하기

</aside>

```python
for i in range(1, 10):
	for j in range(1, 10):
		print(f"{i} x {j} = {i * j}")
```

<aside> 💯 5. 문자열 거꿀로 출력하기 word = ‘Python” (결과값: “nohtyP”)

</aside>

```python
word = "abcdef"
length1 = len(word) - 1

for i in range(len(word)):
    print(word[length1 - i], end = " ")
```

<aside> 💯 6, 사용자 입력 받아 숫자 맞추기 게임 (친절한 안내 & 몇번만에 맞추었는지 결과 보여주기)

</aside>

```python
import random

answer = random.randint(1, 100)
count = 0

while True:
    guess = int(input("Type your answer: "))
    count += 1
    
    if guess == answer:
        print("Congratulation! You win!")
        print(f"The answer is {answer}.")
        print(f"You tried {count} times.")
        break
    
    elif guess > answer:
        print("Guess number is bigger than answer.")
        
    elif guess < answer:
        print("Guess number is smaller than answer.")
```

<aside> 💯 7. 제곱승 계산 함수: 사용자가 넣은 수를 제곱하여 결과값을 돌려주는 함수 만들기

</aside>

```python
def cal_square():
    num1 = int(input("Type number: "))
    result = num1 ** 2
    return result

print(cal_square())
```

<aside> 💯 8, 소수 (Prime Number) 찾기 50미만의 숫자 중 소수 찾기 함수 만들기

</aside>

```python
def find_primes_in_range(start, end):
    def is_prime(n):
        if n <= 1:
            return False
        if n <= 3:
            return True
        if n % 2 == 0 or n % 3 == 0:
            return False
        i = 5
        while i * i <= n:
            if n % i == 0 or n % (i + 2) == 0:
                return False
            i += 6
        return True

    primes = [num for num in range(start, end + 1) if is_prime(num)]

    return primes

print(find_primes_in_range(1, 50))
```

<aside> 💯 9. 파보나치 수열 출력하기 (총 10개의 파보나치 수열)

</aside>

```python
a, b = 0, 1 

for i in range(10):
    print(a, end = " ")
    a, b = b, a + b

```
<br>

# 강의필기 (Lecture Notes)
<br>

## [[Numpy]]

### 넘파이 생성 & ndim & shape

```python
import numpy as np

list_1d = [1,2,3]
list_2d = [[1,2,3], [4,5,6], [7,8,9]]
list_3d = [[[1,2,3], [4,5,6], [7,8,9]],
           [[1,2,3], [4,5,6], [7,8,9]]] 

array_1d= np.array(list_1d) 
print(f'1d: {array_1d.ndim} 차원')
print(f'1 shape: {array_1d.shape}')

array_2d= np.array(list_2d) 
print(f'2d: {array_2d.ndim} 차원')
print(f'2 shape: {array_2d.shape}')

array_3d= np.array(list_3d)
d_3 = array_3d.ndim
print(f'3d: {d_3} 차원')
print(f'3 shape: {array_3d.shape}')

___________________________________________
결과값 
1d: 1 차원
1 shape: (3,)
2d: 2 차원
2 shape: (3, 3)
3d: 3 차원
3 shape: (2, 3, 3)
```

### 연습문제_ [[Indexing]] & [[Slicing]]

```python
data_list = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
# 1. 인덱스 2부터 6까지의 부분 리스트를 추출하세요.
# 2. 리스트의 마지막 3개 요소를 추출하세요.
# 3. 처음부터 끝까지 2씩 건너뛴 부분 리스트를 추출하세요.
# 4. 리스트를 역순으로 나열하세요.
# 5. 인덱스 3의 요소를 제외한 나머지 부분 리스트를 추출하세요.

```

```python
data_list = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

# 1. 인덱스 2부터 6까지의 부분 리스트를 추출하세요.
ans1 = data_list[2:7]

# 2. 리스트의 마지막 3개 요소를 추출하세요.
ans2 = data_list[-3:]

# 3. 처음부터 끝까지 2씩 건너뛴 부분 리스트를 추출하세요.
ans3 = data_list[::2]

# 4. 리스트를 역순으로 나열하세요.
ans4 = data_list[::-1]
print(ans4)

ans4_4 = data_list[-1::-1]
print(ans4_4)

# 5. 인덱스 3의 요소를 제외한 나머지 부분 리스트를 추출하세요.
ans5 = data_list[:3] + data_list[4:]
```

```python
data_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# 1. 첫 번째 서브 리스트를 추출하세요.
# 2. 리스트의 각 서브 리스트의 마지막 요소를 추출하세요.
# 3. 리스트의 각 서브 리스트에서 인덱스 1의 요소를 추출하세요.
# 4. 리스트를 수직으로 합쳐서 1차원 리스트로 만드세요.
# 5. 리스트의 각 서브 리스트의 합을 구하세요.

___________

2. result
[1, 2, 3]
[3, 6, 9]
[2, 5, 8]
[1, 2, 3, 4, 5, 6, 7, 8, 9]
[6, 15, 24] 
```

```python
list1 = [1,2,3]
for num in list1:
    print(num)

list1_1 = [num+1 for num in list1]
# [2,3,4]

#________________

list2 = [[1,2],[2,3],[3,3]]
for num in list2:
    print(num[0])
#[1]
#[2]
#[3]
    
list2_2 = [num[0] for num in list2]
# _____________________

data_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for data in data_list:
    print(data[2])
 
print( [ data[2] for data in data_list] )  
print(sub_list)

```

```python

data_list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for data in data_list:
    #print(data)
    for item in data:
        print(item)
 
sub_list2= [ item for data in data_list for item in data ]
print(f'sub_list2 : {sub_list2}')
```

### numpy slicing 연습문제

#### numpy 1차 배열 슬라이싱 (5번 제외)

```python
import numpy as np

data_1d = np.array([10, 20, 30, 40, 50])
# 1. 인덱스 1부터 3까지의 부분 배열을 추출하세요.
# 2. 배열의 마지막 요소를 추출하세요.
# 3. 처음부터 끝까지 2씩 건너뛴 부분 배열을 추출하세요.
# 4. 배열을 역순으로 나열하세요.
 

____________
1. 결과
[20 30 40]
[50]
[10 30 50]
[50 40 30 20 10]

```

##### numpy 2차 배열 _ 슬라이싱

```python
import numpy as np

data_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
# 1. 인덱스 0번쨰 을 추출하세요.
# 2. 배열의 각 행의 마지막 요소를 추출하세요.
# 3. 배열의 각 에서 인덱스 1의 요소를 추출하세요.
# 4. 배열을 수직으로 합쳐서 1차원 배열로 만드세요.
# 5. 배열의 각 행의 합을 구하세요.

___________
2. 결과
[1 2 3]
[3 6 9]
[2 5 8]
[1 2 3 4 5 6 7 8 9]
[ 6 15 24]
```

## Numpy Image slicing

[https://colab.research.google.com/drive/1rThPDAMAmQC0E0eUSTBTUa3luwNAxovI?usp=sharing](https://colab.research.google.com/drive/1rThPDAMAmQC0E0eUSTBTUa3luwNAxovI?usp=sharing)

Numpy를 이용한 이미지 슬라이싱 → 이미지를 올려 가져온 이미지를 matplot과 numpy를 사용해 이미지를 슬라이싱하였다.
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]
[[Numpy]]


