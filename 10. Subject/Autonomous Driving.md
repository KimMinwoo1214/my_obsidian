---
tags:
  - AI
  - CV
  - Linux
  - Python
  - ROS
  - SLAM
aliases: 
type: subject
created: 2024-08-29
finished: 
semester: 
grade:
---
### UP: [[Robotics and AI]]

## 강의노트 (Lecture Notes)
```dataview
TABLE WITHOUT ID
	file.link AS "제목",
	week as "주차",
	notices AS "공지",
	reviewed AS "복습여부"
FROM 
	[[Untitled]] AND
	"20. Lecture Note"
WHERE type = "lecture-note"
SORT file.cday DESC
```

## 할일 (Tasks)
```dataview
TASK
FROM [[Untitled]]
WHERE contains(text, "#school")
```

## 과제 (Assignment)
- [ ] 

## 정리 (Summaries)
- 

## 강의 자료 (Lecture Files)
```dataview
TABLE WITHOUT ID
	week AS "Week",
	file.outlinks AS "파일 링크"
FROM "20. Lecture Note"
WHERE contains(file.outlinks.file.name, "Untitled")
SORT file.name
```

