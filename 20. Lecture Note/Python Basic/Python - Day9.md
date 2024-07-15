---
tags:
  - Python
  - OpenCV
  - "#Kairos"
aliases: 
type: lecture-note
created: 2024-07-09
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python and CV]]
### **Week**:: 3
**이전 강의 노트**: [[Python - Day8]]


### 강의자료: 

# 강의필기 (Lecture Notes)

## ==CCTV==

```python
 # absdiff는 차 영상에 절대값
    diff = cv2.absdiff(gray, back)
    # 차이가 30이상 255(흰색), 30보다 작으면 0(검정색)
    _, diff = cv2.threshold(diff, 127, 255, cv2.THRESH_BINARY)
    
```

```python
 # 레이브링을 이용하여 바운딩 박스 표시
    cnt, _, stats, _ = cv2.connectedComponentsWithStats(diff)
```
## 공지사항


## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)


[[Python]]
[[ComputerVision]]