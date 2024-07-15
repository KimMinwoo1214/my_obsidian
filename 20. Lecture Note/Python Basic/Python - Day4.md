---
tags:
  - Python
  - Kairos
aliases: 
type: lecture-note
created: 2024-07-02
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 2

**이전 강의 노트**: [[Python - Day3]]

### 강의자료: 
#### Day3 복습

<aside> 💯 1)

학생별로 원하는 사이즈를 조사한 결과가 들어있는 리스트 shirt_size가 solution 함수의 매개변수로 주어집니다.

- shirt_size 에는 치수를 나타내는 문자열 "XS", "S", "M", "L", "XL", "XXL" 이 들어있습니다.

**예시**

|size|shirt_size|return|
|---|---|---|
|["XS", "S", "M", "L", "XL", “XXL”]|["XS", "S", "L", "L", "XL", "S"]|[1, 2, 0, 2, 1, 0]|

</aside>

```python
#1 - 리스트로 풀기
def solution(shirt_size):
    #여기에 코드를 작성하세요 
    sizes = ["XS", "S", "M", "L", "XL", "XXL"]
    size_count = [0] * len(sizes)

    for size in shirt_size:
      if size in sizes:
        index = sizes.index(size)
        size_count[index] += 1

    return size_count

#다음은 테스트 케이스를 출력하는 코드입니다.
shirt_size = ["XS", "S", "L", "L", "XL", "S"]
ret = solution(shirt_size);

#실행 버튼을 눌러 출력을 받습니다.
print("Solution: return value of the function is ", ret, " .")

#1 - 딕셔너리로 풀기
def solution(shirt_size):
    #여기에 코드를 작성하세요 
    sizes = {"XS": 0, "S": 0, "M": 0, "L": 0, "XL": 0, "XXL": 0}

    for size in shirt_size:
      if size in sizes:
        sizes[size] += 1

    size_list = [sizes[i] for i in sizes]
    return size_list

#다음은 테스트 케이스를 출력하는 코드입니다.
shirt_size = ["XS", "S", "L", "L", "XL", "S"]
ret = solution(shirt_size)

#실행 버튼을 눌러 출력을 받습니다.
print("Solution: return value of the function is ", ret, " .")
```

<aside> 💯 2)

게임 캐릭터가 몬스터와 1:1 전투를 하려 합니다. 몬스터는 처음에 일정 수치의 체력(HP)을 가지고 있습니다. 캐릭터가 전투에서 이기려면 몬스터를 공격해 몬스터의 체력을 0이하로 만들어야합니다. 캐릭터는 공격 마법만 사용하며, 공격 마법은 항상 같은 데미지를 입힙니다. 몬스터는 힐링 마법만을 사용하며, 힐링 마법은 항상 같은 수치로 체력을 회복합니다. 둘은 항상 번갈아 가며 마법을 사용하고, 처음에는 항상 캐릭터가 먼저 공격을 시작합니다.

캐릭터의 공격력 attack과 몬스터가 자신의 차례에 회복하는 체력 recovery, 몬스터의 초기 체력 hp가 매개변수로 주어질 때, 몬스터를 잡기 위해서 최소 몇 번 공격해야 하는지 return 하도록 solution 함수를 작성하려 합니다. 빈칸을 채워 전체 코드를 완성해주세요.

---

#### 매개변수 설명

캐릭터의 공격력 attack과 몬스터가 자신의 차례에 회복하는 체력 recovery, 몬스터의 초기 체력 hp가 solution 함수의 매개변수로 주어집니다.

- attack은 1 이상 100 이하의 자연수입니다.
- recovery는 1 이상 100 이하의 자연수입니다.
- 캐릭터의 공격력은 항상 몬스터의 회복력보다 큽니다(recovery < attack )
- hp는 200 이상 1,000 이하의 자연수입니다.

---

#### return 값 설명

몬스터를 잡기 위해서 최소 몇 번 공격해야 하는지 return 해주세요.

---

#### 예시

|attack|recovery|hp|return|
|---|---|---|---|
|30|10|60|3|

#### 예시 설명

몬스터의 체력 변화는 아래와 같습니다.

|차례|hp 변화|남은 hp|
|---|---|---|
|캐릭터|없음|60|
|몬스터|공격 -30|30|
|캐릭터|회복 +10|40|
|몬스터|공격 -30|10|
|캐릭터|회복 +10|20|
|몬스터|공격 -30|-10|

따라서 최소 3번 공격해야 몬스터를 잡을 수 있습니다

</aside>

```python
def solution(attack, recovery, hp):
    count = 0
    while(True):
        count += 1
        hp -= attack
        if hp <= 0:
            break
        hp += recovery
    return count

#아래는 테스트케이스 출력을 해보기 위한 코드입니다.
attack = 30
recovery = 10
hp = 200
ret = solution(attack, recovery, hp)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret, "입니다.")
```

# 강의필기 (Lecture Notes)
<br>

## numpy vs list operation

[https://colab.research.google.com/drive/1QhakB3JmvLJyGEiS4-Hzj_zKChFuAR4K?hl=ko](https://colab.research.google.com/drive/1QhakB3JmvLJyGEiS4-Hzj_zKChFuAR4K?hl=ko)

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

result ⇒ [5,7,9]
```

```python
array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

result ⇒ np.array([5,7,9])
```

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

list1 * list2 ⇒ [4, 10, 18]
```

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

list1 * list2 ⇒ [4, 10, 18]
```

## File I/O

## Image download with url

```python
from pathlib import Path
import requests

img_urls = [
    '<https://images.unsplash.com/photo-1516117172878-fd2c41f4a759>',
    '<https://images.unsplash.com/photo-1532009324734-20a7a5813719>',
    '<https://images.unsplash.com/photo-1524429656589-6633a470097c>',
    '<https://images.unsplash.com/photo-1530224264768-7ff8c1789d79>',
    '<https://images.unsplash.com/photo-1564135624576-c5c88640f235>',
    '<https://images.unsplash.com/photo-1541698444083-023c97d3f4b6>',
    '<https://images.unsplash.com/photo-1522364723953-452d3431c267>'
]

path = Path('/content/test_images')

image_data = [requests.get(data).content for data in img_urls]

img_names = [url.split('/')[-1] + '.jpg' for url in img_urls]

image_name =[path / name for name in img_names]

for i in range(len(image_name)):
  with image_name[i].open(mode = 'wb') as file:
    file.write(image_data[i])
```
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]
[[Numpy]]


