---
tags:
  - Python
  - AI
  - LinearAlgebra
aliases: 
type: lecture-note
created: 2024-07-10
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python for ML]]
### **Week**:: 2

**이전 강의 노트**: [[Linear Algebra]]

### 강의자료: 
<br>

# 강의필기 (Lecture Notes)
<br>

## [[Numpy]]

### 특징

일반 리스트에 비해 빠르고, 효율적

반복문 없이 데이터 배열에 대한 처리를 지원

선형대수 관련된 다양한 기능 제공

다양한 언어와 통합 가능

### 시작

```python
import numpy as np
```

### [[Array]] Creation

```python
test_array = np.array([1, 4, 5, 8], float)
print(test_array)
```

numpy는 np.array함수를 활용하여 배열을 생성함 →np.array

numpy는 하나의 데이터 타입만 배열에 넣을 수 있다.

```python
test_array = np.array([1, 4, 5, "8"], float)
print(test_array)
#array([1., 4., 5., 8.])
print(type(test_array[3])) #Float type으로 자동 형 변환 실시
#numpy.float64
print(test_array.dtype) #Array 전체의 데이터 type을 반환
#dtype('float64')
print(test_array.shape) #Array의 shape을 반환
#(4,)
```

shape: numpy array의 object의 dimension 구성을 반환한다.

dtype: numpy array의 데이터 type을 반환한다.

### [[Array]] shape

Array의 크기, 형태 등에 대한 정보를 반환한다

**[[Vector]]**

```python
test_array = np.array([1, 4, 5, "8"], float)
print(test_array.shape)
```


**[[Matrix]]**

```python
matrix = [[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]]
np.array(matrix, int).shape
#(3, 4)
```

**3rd order tensor**

```python
tensor = [[[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]],
					[[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]],
					[[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]],
					[[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]]]
np,array(tensor, int).shape
#(4, 3, 4)		
```


**[[ndim]] -** number of dimension

```python
np.array(tensor, int).ndim
#3
```

**[[size]] -** data의 개수

```python
np.array(tensor, int).size
#48
```

#### [[Array]] dtype

Ndarray의 single element가 가지는 data type

각 element가 차지하는 memory의 크기가 결정됨

```python
np.array([1, 2, 3], [4.5, 5, 6]], dtype = int)
#array([[1, 2, 3], [4, 5, 6]])
```

```python
np.array([1, 2, 3], [4.5, "5", "6"]], dtype = float)
#array([[1., 2., 3.], [4.5, 5., 6.]], dtype = float32)
```

**Array dtype**

nbytes - ndarray object의 메모리 크기를 반환함

```python
np.array([[1, 2, 3], [4.5, "5", "6"]], dtype = np.float32).nbtyes
#24 (32bits = 4bits -> 6 * 4 bytes)

np.array([[1, 2, 3], [4.5, "5", "6"]], dtype = np.int8).nbtyes
#6 (8bits = 1 bytes -> 6 * 1 bytes)

np.array([[1, 2, 3], [4.5, "5", "6"]], dtype = np.float64).nbtyes
#48 (64bits = 8 bytes -> 6 * 48 bytes)
```

### Handling shape

#### [[reshape]]

-Array의 shape의 크기를 변경함 (element의 갯수는 동일)

```python
test_matrix = [[1, 2, 3, 4], [1, 2, 5, 8]]
np.array(test_matrix).shape
#(2, 4)
np.array(test_matrix).shape(8,)
#array([1, 2, 3, 4, 5, 6, 7, 8])
np.array(test_matrix).reshape(8,).shape
#(8,)
```

-Array의 size만 같다면 다차원으로 자유로이 변형가능

```python
np.array(test_matrix).reshape(2, 4).shape
#(2, 4)
np.array(test_matrix).reshape(-1, 2).shape
#(4, 2) (-1: size를 기반으로 row개수 선정)
np.array(test_matrix).reshape(2, 2, 2)
#array([[[1, 2], [3, 4]], [[1, 2], [5, 8]]])
np.array(test_matrix).reshape(2, 2, 2).shape
#(2, 2, 2)
```

#### flatten

-다차원 array를 1차원 array로 변환

```python
test_matrix = [[[1, 2, 3, 4], [1, 2, 5, 8]], 
							[[1, 2, 3, 4], [1, 2, 5, 8]]]
np.array(test_matrix).flatten()
#array([1, 2, 3, 4, 5, 1, 2, 5, 8, 1, 2, 3, 4, 1, 2, 5, 8])
```

### [[Indexing]]  & [[Slicing]]

리스트와 달리 이차원 배열에서 [0, 0]과 같은 표기법을 제공함

Matrix일 경우 앞은 row, 뒤는 column을 의미함

#### [[Indexing]]

```python
test_example = np.array([[1, 2, 3], [4.5, 5, 6]], int)
test_example #array([[1, 2, 3],
										#[4, 5, 6]])
test_example[0][0] #1
test_example[0, 0] #1

test_example[0, 0] = 12
test_example #array([[12, 2, 3],
										#[4, 5, 6]])
test_example[0][0] = 5
test_example[0, 0] #5
```

#### [[Slicing]]

list와 달리 행과 열 부분을 나눠서 slicing이 가능함

Matrix의 부분 집합을 추출할 때 유용함

```python
test_example = np.array([[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]], int)
test_example[:2, :] #array([[1, 2, 5, 8], [1, 2, 5, 8]])
```


```python
np.array([[1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8], [1, 2, 5, 8]], int)
a[:, 2:] #전체 row의 2열 이상
#array([[3, 4, 5], [8, 9, 10]])
a[1, 1:3] #1 row의 1열~2열
#array([7, 8])
a[1:3] #1row ~ 2row의 전체
#array([[6, 7, 8, 9, 10]])
```


### Creation [[function]]

#### [[arange]]

array의 범위를 지정하여, 값의 list를 생성하는 명령어

```python
np.arange(30) # list의 range와 같은 효과
#array([0, 1, 2, 3, ..., 29])
np.arange(0, 5, 0.5) #floating point도 표시 가능함
#array([0., 0.5, 1., 1.5, ..., 4.5])
np.arange(30).reshape(5, 6)
#array([[0, 1, 2, 3, 4, 5],
				#[6, 7, 8, 9, 10, 11],
				#...
				#[24, 25, 26, 27, 28, 29]])
```

#### [[ones]], [[zeros]] and [[empty]]

zeros - 0으로 가득 찬 ndarray 생성 (np.zeros(shape, dtype, order)

```python
np.zeros(shape = (10,), dtype = np.int8) #10 - zero vector 생성
#array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], dtype = int8)
np.zeros((2, 5)) #2 by 5 - zero matrix 생성
#array([[0., 0., 0., 0., 0.],
			#[0., 0., 0., 0., 0.]])
```

ones - 1로 가득 찬 ndarray 생성 (np.ones(shape, dtype, order)

```python
np.ones(shape = (10,), dtype = np.int8)
#array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype = int8)
np.ones((2, 5))
#array([[1., 1., 1., 1., 1.],
			#[1., 1., 1., 1., 1.]])
```

empty - shape만 주어지고 비어있는 ndarray생성 (memory initialization이 되지 않음)

```python
np.empty(shape = (10,), dtype = np.int8)
#array([ 0, 0, 0, 0, 0, 0, 0, 64, -74, 105], dtype = int8)
np.empty((3, 5))
#array[[1.80552437e-316, 0.00000000e+000, 0.00000000e+000, 0.00000000e+000, 0.00000000e+000]
			#[0.00000000e+000, 0.00000000e+000, 0.00000000e+000, 0.00000000e+000, 0.00000000e+000]
			#[0.00000000e+000, 0.00000000e+000, 0.00000000e+000, 0.00000000e+000, 4.11748240e-154]]
```

#### something_like

-기존 ndarray의 shape 크기만큼 1, 0 또는 empty array를 반환

```python
test_matrix = np.arange(30).reshape(5, 6)
np.ones_like(test_matrix)
#array([[1, 1, 1, 1, 1, 1],
			#[1, 1, 1, 1, 1, 1],
			#[1, 1, 1, 1, 1, 1],
			#[1, 1, 1, 1, 1, 1],
			#[1, 1, 1, 1, 1, 1]])
```

#### [[eye]]

-대각선이 1인 행렬, k 값의 시작 index의 변경이 가능

```python
np.eye(N = 3, M = 5, dtype = np.int8)
#array([[1, 0, 0, 0, 0],
			#[0, 1, 0, 0, 0],
			#[0, 0, 1, 0, 0], dtype = int8)
```

#### [[diag]]

-대각 행렬의 값을 추출함

```python
matrix = np.arange(9).reshape(3, 3)
np.diag(matrix)
#array([0, 4, 8])
np.diag(matrix, k = 1) #k->start index
#array([1, 5])
```

#### random [[sampling]]

-데이터 분포에 따른 sampling으로 array를 생성

```python
np.random.uniform(0,1,10).reshape(2, 5) #균등분포
np.random.normal(0,1,10).reshpae(2, 5) #정규분포
```

### Operation functions

#### [[sum]]

-ndarray의 element들 간의 합을 구함, list의 sum 기능과 동일

```python
test_array = np.arange(1,11)
#array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
test_array.sum(dtype=np.float)
#55.0
```

#### [[axis]]

-모든 operation function을 실행할 때, 기준이 되는 dimenstion 축

```python
test_array = np.arange(1, 13).reshape(3, 4)
#array([[1, 2, 3, 4],
			 #[5, 6, 7, 8],
			 #[9, 10, 11, 12]])
test_array.sum(axis = 1), test_array.sum(axis = 0)
#(array([10, 26, 42]), array([15, 18, 21, 24]))
```

#### [[mean]] & [[std]]

-ndarray의 element들 간의 평균 또는 표준 편차를 반환

```python
test_array = np.arange(1,13).reshape(3,4)
#array([[1, 2, 3, 4],
			 #[5, 6, 7, 8],
			 #[9, 10, 11, 12]])
test_array.mean(), test_array.mean(axis = 0)
#(6.5, array([5., 6., 7., 8.,])
test_array.std(), test_array.std(axis=0)
#(3.45205...,array([3.2659..., 3.2659..., 3.2659..., 3.2659...]))
```

#### [[concatenate]]

- Numpy array를 합치는 함수

```python
a = np.array([[1, 2], [3, 4]])
b = np.array([[5, 6]])

np.concatenate((a, b), axis=0)
# array([[1, 2], [3, 4], [5, 6]])

np.concatenate((a, b.T), axis=1)
# array([[1, 2, 5], [3, 4, 6]])

```

### [[Numpy]] Performance

```python
def scalar_vector_product(scalar, vector):
    result = []
    for value in vector:
        result.append(scalar * value)
    return result

iteration_max = 100000000

vector = list(range(iteration_max))
scalar = 2

%timeit scalar_vector_product(scalar, vector) # for loop을 이용한 성능
%timeit [scalar * value for value in range(iteration_max)] # list comprehension을 이용한 성능
%timeit np.arange(iteration_max) * scalar # numpy를 이용한 성능

```

- 일반적으로 속도는 for loop < list comprehension < numpy
- 100,000,000 번의 loop이 돌 때 약 4배 이상의 성능 차이를 보임
- Numpy는 C로 구현되어 있어, 성능을 확보하는 대신 dynamic typing을 포기함
- 대용량 계산에서는 가장 흔히 사용됨

### Comparisons

#### [[All]] & [[Any]]

- Array의 데이터 전부(and) 또는 일부(or)가 조건에 만족 여부 반환

```python
a = np.array([1, 2, 3, 4])
b = np.array([2, 2, 2, 2])

np.all(a == b)
# False
np.any(a == b)
# True
```

#### np.[[where]]

- 조건에 맞는 요소의 인덱스를 반환

```python
a = np.array([1, 2, 3, 4])
np.where(a > 2)
# (array([2, 3]),)
```

#### [[argmax]] & [[argmin]]

- array 내 최대값 또는 최소값의 index를 반환함

```python
a = np.array([1, 2, 3, 4])
np.argmax(a)
# 3
np.argmin(a)
# 0
```

#### [[boolean]] & [[fancy index]]

- 조건에 맞는 값 또는 특정 인덱스의 값을 추출함

```python
a = np.array([1, 2, 3, 4])
a[a > 2]
# array([3, 4])

a = np.array([1, 2, 3, 4])
index = [0, 2]
a[index]
# array([1, 3])
```

### numpy data I/O

#### loadtxt & savetxt

- Text type의 데이터를 읽고, 저장하는 기능

```python
data = np.loadtxt('data.txt')
np.savetxt('output.txt', data)
```

#### numpy object - npy

- Numpy object (pickle) 형태로 데이터를 저장하고 불러옴

```python
np.save('data.npy', data)
data = np.load('data.npy')
```

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]
[[Numpy]]


