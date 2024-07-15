---
tags:
  - Python
  - Kairos
aliases: 
type: lecture-note
created: 2024-07-03
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 2

**이전 강의 노트**: [[Python - Day4]]

### 강의자료: 
#### 4일차 복습

##### 1)

모든 속도위반 차량이 낼 벌금이 총 몇만 원인지 알아내려 합니다. 벌금을 매기는 기준은 다음과 같습니다.

|기준|벌금|
|---|---|
|규정 속도 10% 이상 20% 미만 위반|3만 원|
|규정 속도 20% 이상 30% 미만 위반|5만 원|
|규정 속도 30% 이상 위반|7만 원|

예를 들어 규정 속도가 100인 도로를 112로 달렸다면 규정 속도를 12% 위반하였습니다. 따라서 규정 속도를 10% 이상 20% 미만 위반하였으므로 벌금 3만 원을 부과합니다.

규정 속도 speed와 도로를 달리는 모든 차의 속도가 담긴 리스트 cars가 매개변수로 주어질 때, 총벌금은 몇만 원인지 return 하도록 solution 함수를 작성하려 합니다. 빈칸을 채워 전체 코드를 완성해주세요.

---

**매개변수 설명**

규정 속도 speed와 도로를 달리는 모든 차의 속도가 담긴 리스트 cars가 solution 함수의 매개변수로 주어집니다.

- 규정 속도는 30 이상 140 이하이며, 10으로 나누어 떨어지는 숫자입니다.
- 도로를 달리는 차의 수는 1대 이상 40대 이하입니다.
- 모든 차는 0km/h 이상 200km/h 이하로 달립니다.

---

**return 값 설명**

도로를 달리는 모든 차의 벌금은 총 몇만 원인지 return 해주세요.

---

**예시**

|speed|cars|return|
|---|---|---|
|100|[110, 98, 125, 148, 120, 112, 89]|23|

**예시 설명**

|기준|위반 차량|총벌금|
|---|---|---|
|규정 속도 10% 이상 20% 미만 위반|2대|6만원|
|규정 속도 20% 이상 30% 미만 위반|2대|10만원|
|규정 속도 30% 이상 위반|1대|7만원|

---

```python
def solution(speed, cars):

answer = 0

for x in cars:

if x >= speed * 11 / 10 and x < speed * 12 / 10:

answer += 3

elif x >= @@@ and x < @@@:

answer += 5

elif x >= @@@:

answer += 7

return answer

#아래는 테스트케이스 출력을 해보기 위한 코드입니다.

speed = 100

cars = [110, 98, 125, 148, 120, 112, 89]

ret = solution(speed, cars)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.

print("solution 함수의 반환 값은", ret, "입니다.")
```

###### 2)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/285829e1-17d8-447d-a081-d547c6e2d771/01550c38-871c-487f-95e2-5b581f1bf606/Untitled.png)

```python
def func_a(time_table):    
    answer = 0
    for i, t in reversed(list(enumerate(time_table))):
        if t == 1:
            answer = i
            break
    return answer

```

```python

def func_b(time_table, class1, class2):
    answer = 0
    for i in range(class1, class2):
        if time_table[i] == 0:
            answer += 1
    return answer
```

```python

def func_c(time_table):    
    answer = 0
    for i, t in enumerate(time_table):
        if t == 1:
            answer = i
            break
    return answer
```

위의 함수들을 이용하여 완성하세요

```python
def solution(time_table):    
    ###############
    return answer
```

#### 정답
[https://colab.research.google.com/drive/15_-WJbFbrZwvzUlsrIpmPKR6TFM0imjJ](https://colab.research.google.com/drive/15_-WJbFbrZwvzUlsrIpmPKR6TFM0imjJ)

# 강의필기 (Lecture Notes)
<br>

## Threading

Image Download using Threading

[https://colab.research.google.com/drive/1lSXKHDg6pULs_QgGi5dfmJI0air-ux61#scrollTo=q3dmzNLvUf-0](https://colab.research.google.com/drive/1lSXKHDg6pULs_QgGi5dfmJI0air-ux61#scrollTo=q3dmzNLvUf-0)

## Pandas

[https://colab.research.google.com/drive/139TlDYQ8C7mWCgmDgVI3qgwLbq4VIGvc](https://colab.research.google.com/drive/139TlDYQ8C7mWCgmDgVI3qgwLbq4VIGvc)

---

pandas csv 파일

**url = '[https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv](https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv)'**

## matplotlib example _ 다양한 그래프

[https://matplotlib.org/stable/gallery/lines_bars_and_markers/errorbar_limits_simple.html#sphx-glr-gallery-lines-bars-and-markers-errorbar-limits-simple-py](https://matplotlib.org/stable/gallery/lines_bars_and_markers/errorbar_limits_simple.html#sphx-glr-gallery-lines-bars-and-markers-errorbar-limits-simple-py)

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]


