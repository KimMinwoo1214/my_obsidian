---
tags:
  - Python
aliases: 
type: subject
created: 2024-07-09
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
	[[Python Basic]] AND
	"20. Lecture Note"
WHERE type = "lecture-note"
SORT file.cday DESC
```

## 할일 (Tasks)
```dataview
TASK
FROM [[Untitled 1]]
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
	file.outlinks AS "[[파이썬 기초.pdf]]"
FROM "[[Python - Day1]]"
WHERE contains(file.outlinks.file.name, "Untitled 1")
SORT file.name
```

