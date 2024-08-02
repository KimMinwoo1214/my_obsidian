---
tags:
  - "#Python"
  - "#ROS"
  - "#Linux"
  - "#Arduino"
  - "#SLAM"
  - "#PointCloud"
  - "#Kicad"
  - "#CAD"
  - "#CV"
  - "#Kairos"
  - "#AI"
  - "#LinearAlgebra"
  - "#MATLAB"
  - "#Cpp"
  - "#Embedded"
aliases:
  - School
  - University
  - School Home
  - 대학교
---

> [!NOTE]- [필독] 대학생을 위한 Vault 사용 안내 (클릭하여 더보기) 
> ==**읽고 삭제해주세요!**==
> 
> 안녕하세요! **[브레인 트리니티의 브라이언](https://www.youtube.com/@brain.trinity)** 입니다.
> 옵시디언 Vault를 구매해주셔서 감사합니다!
> 
> 본 옵시디언 Vault는 대학(원)생을 대상으로 수업 / 강의 필기 및 공부를 위해 디자인 되었습니다.
> 기존의 옵시디언 Vault에 본 템플릿을 적용시키시거나 아니면 본 Vault를 새롭게 이용하셔도 됩니다. 
> 자세한 사용법은 [다음 영상](https://youtu.be/NrwTzzSNPK8)을 참고하시거나 [[대학교 올에이쁠을 위한 옵시디언 Vault 사용 설명서|이 문서]]를 참고해주세요
>
> Vault를 사용하시다가 질문이 있으시면 브라이언에게 메일을 보내주세요.
> [브라이언에게 메일 보내기](mailto:wassup_noonssup@outlook.com) 
> 
> **(c) 2024. 브라이언 브레인 트리니티. All Rights Reserved**
> 대학생 올에이쁠을 위한 옵시디언 Vault, version 1.0 - 2024-03-04

# School Home
#### [온라인 강의실 가기](웹사이트 링크)

## Map of Content


## 수강과목 목록 (List of Subjects)
```dataview
TABLE WITHOUT ID
	file.link AS "과목명",
	length(filter(file.inlinks.file.folder, (x) => contains(string(x), "Lecture") )) AS "노트 수",
	finished as "종강",
	semester AS "학기"
FROM "10. Subject"
```

## 할일과 과제 (Tasks and Assignments)
### 할일 (Tasks)
```tasks
path includes Lecture
not done
sort by done reverse
sort by tags
sort by due
```


### 과제 (Assignment)
```tasks
path includes Subject
tag includes #assignment
not done
sort by done reverse
sort by due
```
