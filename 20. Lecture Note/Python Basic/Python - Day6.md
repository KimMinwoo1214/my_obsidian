---
tags:
  - Python
  - Kairos
aliases: 
type: lecture-note
created: 2024-07-04
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 2

**이전 강의 노트**: [[Python - Day5]]

### 강의자료: 
#### Day5 복습문제

Day1 간단 퀴즈 중 8번 정답 (주사위 10000번 굴리기)

```python
import random
import matplotlib.pyplot as plt
import numpy as np

dice = [random.randint(1, 6) for i in range(10000)]

freq_dict = {i: dice.count(i) for i in range(1, 7)}

print(freq_dict)

x = np.arange(1, 7)
freq_list = [freq_dict[freq] for freq in x]

#plt.hist(dice, bins = 20)
plt.bar(x, freq_list)
plt.xticks(x)

plt.show()
```

[colab](https://colab.research.google.com/drive/1CPpvJqsdwBblw_AOjq8j_jawKeo-gR3I?hl=ko#scrollTo=C0uUP0CDMXRz)

```python
left_gloves = [2, 1, 2, 2, 4]
right_gloves = [1, 2, 2, 4, 4, 7]

# 숫자는 사이즈를 의미함
# 좌 우를 같은 사이즈로 했을때 최대 몇개가 나오나?

# 힌트1] dictionary 빈도 측정하는 방법으로 접근하기
# 힌트2] 같은 key가 있을때를 먼저 찾기 
```

```python
left_gloves = [2, 1, 2, 2, 4]
right_gloves = [1, 2, 2, 4, 7]
size_dict = {}

left_gloves.sort()
right_gloves.sort()

for size in left_gloves:
    if size in size_dict:
        size_dict[size][0] += 1
    else:
        size_dict[size] = [1, 0]

print(size_dict)

for size in right_gloves:
    if size in size_dict:
        size_dict[size][1] += 1
    else:
        size_dict[size] = [0, 1]

print(size_dict)

pair_count = {size: min(counts) for size, counts in size_dict.items()}
print(pair_count)
```
#### 정답

[colab](https://colab.research.google.com/drive/1Qel-MHTy3g38cQL_PO3sjt9TiN7sEp9F)

# 강의필기 (Lecture Notes)
<br>

## VScode & Venv

[Install VScode](https://code.visualstudio.com/docs/python/python-quick-start)

### 가상환경 만들기

```python
python -m venv 나의 가상환경이름
```

### 가상환경 실행

나의가상환경이름\Scripts\activate (가상환경 파일의 script 파일 경로로 이동) activate

### 가상환경 내에서 업데이트

python -m pip install --upgrade pip

### 라이브러리 다운 예제

pip install matplotlib pip install numpy pip install opencv-python

### 관리자 권한으로 변경 (필요 시)

Set-ExecutionPolicy RemoteSigned Set-ExecutionPolicy Bypass -Scope Process

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]

