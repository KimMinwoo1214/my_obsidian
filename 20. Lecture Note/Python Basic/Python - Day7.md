---
tags:
  - Python
  - Kairos
  - OpenCV
aliases: 
type: lecture-note
created: 2024-07-10
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 2

**이전 강의 노트**: [[Python - Day6]]

### 강의자료: 
#### ==CV2==

##### ==cv2를 이용해서 camera 켜기==

```python
import cv2

cap = cv2.VideoCapture(0)

while True:
    _, frame =cap.read()   

    cv2.imshow("Video", frame )

    if cv2.waitKey(10) & 0xff ==ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
```

##### ==bgr → gray , bgr → rgb==

```python
import cv2

cap = cv2.VideoCapture(0)
cap.set(3, 200)
cap.set(4, 100)

while True:
    _, frame =cap.read()   

    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    cv2.imshow("Video", frame)
    cv2.imshow("Gray", gray_frame )
 
    if cv2.waitKey(10) & 0xff ==ord('q'):
        break

cap.release()
cv2.destroyAllWindows()

```

##### ==Canny & Blur==

```python
import cv2

cap = cv2.VideoCapture(0)
cap.set(3, 200)
cap.set(4, 100)
low = 50
high = 150 

while True:
    _, frame =cap.read()   
   
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    canny_frame = cv2.Canny(gray_frame, low, high )
    blur_frame = cv2.GaussianBlur(frame, (11,11), 10)
    cv2.imshow("Video", frame)
    cv2.imshow("Gray", gray_frame )
    cv2.imshow("Canny", canny_frame)
    cv2.imshow("Blur", blur_frame)
     
 
    if cv2.waitKey(10) & 0xff ==ord('q'):
        break

cap.release()
cv2.destroyAllWindows()

```

##### ==circle==

```python
import cv2
import numpy as np

path = 'cat.jpg'
 
image = cv2.imread(path)
print(image.shape)
print(image.shape[0])

cv2.circle(image, (image.shape[1] // 2, image.shape[0]//2), 5, (0,0,255),  -1)

cv2.imshow("Cat", image)

cv2.waitKey()
cv2.destroyAllWindows()

```

##### ==cv2.add()==

```python
import cv2
import numpy as np

path1 = 'cat.jpg'
path2 = 'dog.jpg'

img1 = cv2.imread(path1)
img2 = cv2.imread(path2)
# print(img1.shape)
print(img2.shape)
img1 = cv2.resize(img1, (img2.shape[1], img2.shape[0]))
print(img1.shape)
img3 = cv2.add(img1, img2)

cv2.imshow("Cat", img1)
cv2.imshow("Dog", img2)
cv2.imshow("Dog + Cat", img3)
 
cv2.waitKey()
cv2.destroyAllWindowsA()
```

```python
import cv2
import numpy as np

path1 = 'cat.jpg'
path2 = 'dog.jpg'

img1 = cv2.imread(path1)
img2 = cv2.imread(path2)
# print(img1.shape)
print(img2.shape)
img1 = cv2.resize(img1, (img2.shape[1], img2.shape[0]))
print(img1.shape)
img3 = cv2.add(img1, img2)

mask = np.ones((img2.shape[0], img2.shape[1], 3), dtype='uint8') * 50
print(mask.shape)
img1_b = cv2.add(img1, mask) 
img2_d = cv2.subtract(img2, mask)

cv2.imshow("Cat", img1)
cv2.imshow("Cat_b", img1_b)
cv2.imshow("Dog", img2)
cv2.imshow("Dog_d", img2_d)

# cv2.imshow("Dog + Cat", img3)
 
cv2.waitKey()
cv2.destroyAllWindows()
```

##### ==trackbar==

```python
import cv2
import numpy as np

def callBack(value):
    pass

img_path = 'cat.jpg' 

img = cv2.imread(img_path)
img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
img_blur = cv2.GaussianBlur(img_gray, (5,5), 1)

cv2.namedWindow("Slider")
cv2.createTrackbar("high_t", "Slider", 10, 255, callBack)

while True:

    high_t = cv2.getTrackbarPos("high_t", "Slider")
    img_canny = cv2.Canny(img_blur, 10, high_t )

    cv2.imshow("Cat", img_canny)

    if cv2.waitKey(10) & 0xff==ord('q'):
        break
cv2.destroyAllWindows()
```

###### ==bitwise==

```python
import cv2
import numpy as np
 
img1 = np.zeros((300,300), dtype ='uint8')
img2 = np.zeros((300,300), dtype ='uint8')
cv2.rectangle(img1, (25,25), (275, 275), 255, -1)
cv2.circle(img2, (150,150),150, 255, -1)

b_and = cv2.bitwise_and(img1, img2)
b_or = cv2.bitwise_or(img1, img2)
b_xor = cv2.bitwise_xor(img1, img2)
b_not_a = cv2.bitwise_not(img1)

cv2.imshow("Rectangle", img1)
cv2.imshow("Circle", img2)
cv2.imshow("B_and", b_and)
cv2.imshow("B_or", b_or)
cv2.imshow("B_xor", b_xor)
cv2.imshow("B_notA", b_not_a)

cv2.waitKey()
cv2.destroyAllWindows(C)
```

##### ==Color Detector==

```python

import cv2
import numpy as np

def nothing(x):
    pass

# 이미지 로드
image = cv2.imread('coca.jpg')

cv2.namedWindow('Color Detector', cv2.WINDOW_NORMAL)

# Trackbar를 생성하여 'Lower'와 'Upper' 범위 설정
cv2.createTrackbar('Low H', 'Color Detector', 0, 179, nothing)
cv2.createTrackbar('High H', 'Color Detector', 100, 179, nothing)
cv2.createTrackbar('Low S', 'Color Detector', 0, 250, nothing)
cv2.createTrackbar('High S', 'Color Detector', 200, 250, nothing)
cv2.createTrackbar('Low V', 'Color Detector', 0, 250, nothing)
cv2.createTrackbar('High V', 'Color Detector', 200, 250, nothing)

while True:
    # 복사본 이미지 생성
    img = image.copy()

    # 트랙바에서 현재 값 얻기
    low_h = cv2.getTrackbarPos('Low H', 'Color Detector')
    high_h = cv2.getTrackbarPos('High H', 'Color Detector')
    low_s = cv2.getTrackbarPos('Low S', 'Color Detector')
    high_s = cv2.getTrackbarPos('High S', 'Color Detector')
    low_v = cv2.getTrackbarPos('Low V', 'Color Detector')
    high_v = cv2.getTrackbarPos('High V', 'Color Detector')

    # HSV 색상 공간으로 이미지 변환
    img_hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

    # HSV에서의 lower/upper 임계값
    lower_color = np.array([low_h, low_s, low_v])
    upper_color= np.array([high_h, high_s, high_v])
    # print(lower_color, upper_color)

    # lower/upper 임계값을 이용하여 마스크 생성
    mask = cv2.inRange(img_hsv, lower_color, upper_color)

    # 원본 이미지에 마스크 적용
    result = cv2.bitwise_and(img, img, mask=mask)

    # 결과 표시
    cv2.imshow('Original Image', img)
    cv2.imshow('Color Detector', result)

    # 키 입력 대기 (ESC를 누르면 종료)
    
    if cv2.waitKey(10) & 0xff== ord('q'):
        break

cv2.destroyAllWindows()
```

```python
# 노이즈 제거를 위한 모폴로지 연산 적용
    kernel = np.ones((5, 5), np.uint8)
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
    mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)
```

```python
 # 윤곽선 검출
    contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

```

```python
if contours:
        max_contour = max(contours, key=cv2.contourArea)
        if cv2.contourArea(max_contour) > 1000:
            cv2.drawContours(frame, [max_contour], -1, (0, 255,0), 2)
		         # 윤곽선의 무게 중심 계산
            M = cv2.moments(max_contour)
            if M["m00"] != 0:
                cx = int(M["m10"] / M["m00"])
                cy = int(M["m01"] / M["m00"])

                # 추적된 위치에 원 그리기
                cv2.circle(frame, (cx, cy), 20, (0, 255, 0), -1)
```

##### ==Harr Cascade (얼굴 검출)==

[haar-cascades](https://medium.com/analytics-vidhya/haar-cascades-explained-38210e57970d)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/285829e1-17d8-447d-a081-d547c6e2d771/44da1d26-f4b0-49cf-8110-950c04e40198/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/285829e1-17d8-447d-a081-d547c6e2d771/a35ed672-6b86-437f-92d7-045d8390fc3e/Untitled.png)

```python
   # 얼굴 찾기
    faces = face_cascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5, minSize=(30, 30))

```

```python
import cv2

cap = cv2.VideoCapture(0) 

face_cascade = cv2.CascadeClassifier(r'C:\\Users\\AI04\\Desktop\\python_401\\haarcascade_frontalface_default.xml') 

while True:
    _, frame =cap.read()   
   
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
  
       # 얼굴 찾기
    faces = face_cascade.detectMultiScale(gray_frame, scaleFactor=1.1, minNeighbors=5, minSize=(30, 30))

    print(faces)

    cv2.imshow("Video", frame)
    cv2.imshow("Gray", gray_frame )    
     
 
    if cv2.waitKey(10) & 0xff ==ord('q'):
        break

cap.release()
cv2.destroyAllWindows()

```

##### ==Threshold 역할==

```python
# 각 임계값 유형에 대해 임계값 처리
_, thresh_binary = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY)
_, thresh_binary_inv = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY_INV)
_, thresh_trunc = cv2.threshold(img, 127, 255, cv2.THRESH_TRUNC)
_, thresh_tozero = cv2.threshold(img, 127, 255, cv2.THRESH_TOZERO)
_, thresh_tozero_inv = cv2.threshold(img, 127, 255, cv2.THRESH_TOZERO_INV)
```


#### ==Lambda==

[https://www.google.com/search?q=w3schools&oq=w3&gs_lcrp=EgZjaHJvbWUqDAgBEAAYQxiABBiKBTIGCAAQRRg5MgwIARAAGEMYgAQYigUyDAgCEAAYQxiABBiKBTIMCAMQABhDGIAEGIoFMgwIBBAAGEMYgAQYigUyDQgFEC4YxwEY0QMYgAQyDQgGEC4YxwEY0QMYgAQyBwgHEAAYgAQyBwgIEAAYgAQyBwgJEAAYgATSAQkyMDcwMGowajeoAgiwAgE&sourceid=chrome&ie=UTF-8](https://www.google.com/search?q=w3schools&oq=w3&gs_lcrp=EgZjaHJvbWUqDAgBEAAYQxiABBiKBTIGCAAQRRg5MgwIARAAGEMYgAQYigUyDAgCEAAYQxiABBiKBTIMCAMQABhDGIAEGIoFMgwIBBAAGEMYgAQYigUyDQgFEC4YxwEY0QMYgAQyDQgGEC4YxwEY0QMYgAQyBwgHEAAYgAQyBwgIEAAYgAQyBwgJEAAYgATSAQkyMDcwMGowajeoAgiwAgE&sourceid=chrome&ie=UTF-8)

**연습문제 1: 리스트의 각 요소에 2를 더한 새로운 리스트 생성**

```python
original_list = [1, 3, 5, 7, 9]

# [3, 5, 7, 9, 11]
```

**연습문제 2: 홀수인 경우에만 제곱한 리스트 생성**

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
#[1, 2, 9, 4, 25, 6, 49, 8, 81]
```

**연습문제 3: 문자열의 길이가 5보다 큰 경우만 필터링**

```python
words = ["apple", "banana", "kiwi", "orange", "grape"]

['banana', 'orange']
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

##### ==정답==

```python
#1
original_list = [1, 3, 5, 7, 9]
pul_function=list(map(lambda x:x+2,original_list))
print(pul_function)

#2
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
square_function=list(map(lambda y:y if y%2==0 else y*y, numbers))
print(square_function)

#3
words = ["apple", "banana", "kiwi", "orange", "grape"]
function_1=list(filter(lambda x:len(x)>5, words))
print(function_1)

#4
list1 = [1, 2, 3, 4]
list2 = [5, 6, 7, 8]

product_list=list(map(lambda x,y:x*y,list1,list2))
print(product_list)

#5
rand_function=lambda num:num*num if num%2==0 else num*num*num
print(rand_function(int(input("숫자입력"))))

#6
number=list(map(lambda x:"0" if x==0 else("홀수" if x%2==1 else "짝수") , range(11)))
print(number)
```

---

##### ==답안지== 
[https://colab.research.google.com/drive/1MlTgziBwmp0TRTvwhixaN243132DiDt6?authuser=0#scrollTo=HAkhk45gxxUj](https://colab.research.google.com/drive/1MlTgziBwmp0TRTvwhixaN243132DiDt6?authuser=0#scrollTo=HAkhk45gxxUj)

**문제 1: 딕셔너리에서 값이 특정 문자열과 일치하는 키-값 쌍 찾기**

```python
string_dict = {"apple": "red", "banana": "yellow", "kiwi": "brown", "orange": "orange", "grape": "purple"}
search_value = "brown"
 

#{'kiwi': 'brown'}
```

**문제 2: 딕셔너리의 값들을 모두 대문자로 변환 (word.upper())**

```python
string_dict = {"apple": "red", "banana": "yellow", "kiwi": "brown", "orange": "orange", "grape": "purple"}
 
#{'apple': 'RED', 'banana': 'YELLOW', 'kiwi': 'BROWN', 'orange': 'ORANGE', 'grape': 'PURPLE'}
```

**문제 3: 딕셔너리의 key value를 바꾸기**

```python
string_dict = {"apple": "red", "banana": "yellow", "kiwi": "brown", "orange": "orange", "grape": "purple"}

#{'red': 'apple', 'yellow': 'banana', 'brown': 'kiwi', 'orange': 'orange', 'purple': 'grape'}
```

**문제 4: 문자열 리스트의 각 문자열을 역순으로 변환**

```python
string_list = ["apple", "banana", "kiwi", "orange", "grape"]
 
#['orange', 'kiwi', 'grape', 'banana', 'apple']
```

**문제 5 문자열 딕셔너리를 value를 중심으로 sort하기**

```python
string_dict = {"apple": "red", "banana": "yellow", "kiwi": "brown", "orange": "orange", "grape": "purple"}
 
 #{'kiwi': 'brown', 'orange': 'orange', 'grape': 'purple', 'apple': 'red', 'banana': 'yellow'}
```

# 강의필기 (Lecture Notes)
<br>

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)
[[Python]]
[[ComputerVision]]


