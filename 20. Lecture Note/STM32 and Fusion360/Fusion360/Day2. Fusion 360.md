---
tags:
  - CAD
  - Kairos
  - project
aliases: 
type: lecture-note
created: 2024-08-09
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[STM32 and Fusion360]]
### **Week**:: 1

**이전 강의 노트**: [[Day1. Fusion360]]

### 강의자료: 
![[Fusion360, STM32.pdf]]

# 강의필기 (Lecture Notes)
<br>

## [[Share]]
Share File Link를 눌러 링크를 통해 공유가 가능하다.
또한 Export를 통해서도 다양한 파일 형식으로 공유가 가능하다. Ex) STEP, STL 등등
또한 업로드를 한 후 다양한 MESH 등으로 바꿀 수도 있다.

## [[Shortcut]]
지정할 기능에 커서를 가져다대면 ...이 나온다. 그 버튼을 눌러 설정할 단축기를 누르면 설정이 가능하다. 
 
## [[Sketch]]2

### [[Line]]
단축키: L
선으로 할 수 있는 것들을 보면 먼저 원점에 가져다 댈 경우 네모 박스가 생기면서 지정이 쉽다. 그리고 수직, 수평의 경우 상당히 쉽고 Tab키를 눌러 각도도 잡아 줄 수 있다. 
시작점을 누르고 마우스를 누르고 있는 상태로 드래그를 할 경우, 호를 그릴 수가 있다. 

### [[Move]]/[[Copy]]
단축키: M
마우스 드래그를 통해 선택이 가능하다. 
화살표를 눌러 특정 방향으로 이동이 가능하다.
회전을 시킬 수 있으며 네모를 선택해 자유로운 이동이 가능하다. 

### [[Slot]]
단축키 없음
1. Center to Center Slot
	- 두 점을 찍어 Slot을 그린다. 이 때 두 점은 양 쪽 반 원의 중심으로 각도 설정이 가능하고 종속을 시키기 위해서는 반지름과 두 점 사이의 거리를 정의해야 한다.
2. Overall Slot
	- 끝의 두 점을 찍어 Slot을 그릴 수 있다.
3. Center Point Slot
	- 가운데 점과 한 쪽 점을 찍어 가운데 찍은 점을 기준으로 대칭으로 그리게 된다.
4. Three Point Arc Slot
	- 두 점을 찍고 마지막에 가운데 점을 찍는다. 세 점을 지나는 Arc Slot을 그리게 된다.
5. Center Point Arc Slot
	- 중심 점을 찍고 다른 점을 찍어 움직이며 그에 해당하는 Arc Slot을 그리게 된다.

### [[Symmetry]]
단축키: 없음
대칭을 시키는 방법은 중심 축을 잡아 거리를 두어도 되지만 굳이 그러지 않고 Symmetry라는 툴을 사용하여 마지막에 중심 축을 선택해주면 중심 축을 중심으로 대칭으로 만들어준다.

### [[Pattern]]
단축키: 없음
Circular Pattern과 Rectangular Pattern이 있다.
Circular Pattern의 사용법은 패턴화 시킬 Object를 고르고 중심을 골라 갯수를 선택하고 만든다.

### 만든 예시1
<!--⚠️Imgur upload failed, check dev console-->
![[Pattern과 Slot 예시.png]]

### [[Polygon]]
단축키: 없음
1. Circumscribed Polygon
	- 중심을 기준으로 원에 외접하는 다각형을 그린다. 이 때 몇 변의 Polygon을 만들지도 선택이 가능하다.
2. Inscribed Polygon
	- 중심을 기준으로 원에 내접하는 다각형을 그린다. 이 때 몇 변의 Polygon을 그릴지도 선택이 가능하다.
3. Edge Polygon
	- 두 점을 찍어 하나의 변을 그리고 그 변을 기준으로 Polygon을 그린다. 이 때 몇 변의 Polygon을 그릴도 선택이 가능하다.
### 만든 예시2
<!--⚠️Imgur upload failed, check dev console-->
![[Polygon 예시.png]]

### [[Text]]
단축키: 없음
[[Sketch]]에서 Text를 눌러 적어주면 된다. 크기 조정은 Height를 수정해서 하면 된다.

## 입체

### [[Revolve]]
단축키: 없음
한 쪽 면을 선택하고 한 축을 선택하여 선택한 면을 선택한 축을 기준으로 돌린다. 이 때 얼마나 돌릴지 각도도 선택이 가능하다.

### [[Chamber]]
단축키: 없음
도면을 볼 때 C1, C2 등으로 적혀진 것들을 구현할 때 사용한다. 일반적으로는 45도를 사용하여 그냥 같은 길이라고 설정하여 쓴다. 물론 다른 길이로 설정도 가능하고 하나의 길이와 각도도 설정하여 사용이 가능하다. 

### [[Coil]]
단축키: 없음
면을 선택하고 원의 지름을 입력한다. 이 때 사각형, 삼각형 등 다양한 모양을 선택할 수 있다. 그러나 잘 안 쓴다.

### [[Thread]]
단축키: 없음
나사산을 만드는 키워드로 원기둥 등을 골라 사용이 가능하다. 오른 나사, 왼 나사를 선택할 수 있고, 사이즈와 Designation을 선택하고 마지막에 modeled를 눌러 바로 적용할 수 있다.  그러나 실제에서는 적용시키지 않고 이미지로 하여 사용한다. 

### Change [[Material]]
단축키: 없음
Modify 안에 Change Material에 들어가서 바꾸면 가능하다. 이 때, A2-50에서 A2는 SUS304를 사용한 것이고 50은 500MPa까지 버틸 수 있다는 것이다.


## [[Sketch]] 실습 - 볼트 만들기

1. [[Polygon]] 만들기
2. [[Extrude]] 하기
3. 다른 [[Sketch]]에서 30도 설정한 면 그리고 [[Revolve]] 시키기
4. 후에 볼트의 끝 부분을 [[Chamber]]한다. (1 ~ 1.5)
5. 소재를 Stainless 304로 설정한다.
6. 볼트의 윗부분에 New [[Sketch]]를 누르고 [[Text]]를 삽입한다.
<!--⚠️Imgur upload failed, check dev console-->
![[육각 볼트.png]]

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)



