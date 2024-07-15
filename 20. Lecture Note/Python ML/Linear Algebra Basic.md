---
tags:
  - Python
  - AI
  - LinearAlgebra
aliases: 
type: lecture-note
created: 2024-07-04
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python for ML]]
### **Week**:: 2

**이전 강의 노트**: [[20. Lecture Note/Python ML/Pythonic Code|Pythonic Code]]

### 강의자료: 
[[ch1_linear_algebra_code.pdf]]
<br>


# 강의필기 (Lecture Notes)
<br>

## Vector representation of python

다양한 방법이 존재, 하지만 이 부분에서는 리스트로 나타내는 것만 할 예정

### Vector addition

```python
u = [2, 2]
v = [2, 3]
z = [3, 5]

result = [sum(t) for t in zip(u,v,z)]
print(result)

'''
결과
[7, 10]
'''
```

### Scalar-Vector product

```python
u = [1, 2, 3]
v = [4, 4, 4]
alpha = 2

result = [alpha * sum(t) for t in zip(u, v)]
print(result)

'''
결과
[10, 12, 14]
'''
```

## Matrix representation of python

표현하는 방법은 다양함, 특히 Dict의 경우 무궁무진하다. 하지만 여기서는 리스트만 다룰 예정

### Matrix addition

```python
matrix_a = [[3, 6], [4, 5]]
matrix_b = [[5, 8], [6, 7]]

result = [[sum(row) for row in zip(*t)] for t in zip(matrix_a, matrix_b)]
print(result)

'''
결과
[[8, 14], [10, 12]]
'''
```

### Scalar-Matrix product

```python
matrix_a = [[1, 2, 3], [4, 5, 6]]
alpha = 4

result = [[alpha * element for element in t] for t in matrix_a]

print(result)

'''
결과
[[4, 8, 12], [16, 20, 24]]
'''
```

### Matrix transpose

```python
matrix_a = [[1, 2, 3], [4, 5, 6]]

result = [[element for element in t] for t in zip(*matrix_a)]

print(result)

'''
결과
[[1, 4], [2, 5], [3, 6]]
'''
```

### Matrix product

```python
matrix_a = [[1, 1, 2], [2, 1, 1]]
matrix_b = [[1, 1], [2, 1], [1, 3]]

result = [[sum(a * b for a, b in zip(row_a, column_b)) for column_b in zip(*matrix_b)] for row_a in matrix_a]

print(result)

'''
결과
[[5, 8], [5, 6]]
'''
```
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)

# 프로젝트 제안서 작성

## 정리 (Summary)
[[Linear Algebra]]
[[Python]]


