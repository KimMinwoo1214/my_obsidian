---
title: Autonomous AGV and Robot arm
created: 2024-07-21 19:28
tags:
  - project
  - AI
  - Python
  - CV
  - Arduino
  - Kairos
---

# Side Project before starting main project
## 🏆 Goal
> 최대한 간단하고, 빠른 방식으로 프로토타입을 완성하자

## 📅  Schedule
> Start: 7/17
> End: 8/31

##  💎Milestones
> Step 1. AGV 개발
> Step 2. Robot arm and gripper
> Step 3. CV and entire walking simulation

## ✅Tasks
- 7/17 ~ 7/24 -> 제작 비용 논의, 프로젝트 구체화, 구성부품 주문
- 7/25 ~ 7/31 -> 하드웨어 설계, 서버 구축, 소프트웨어 구축
- 8/1 ~ 8/9 -> 시운전, 카메라 인식 소프트웨어 구축, 학습
- 8/12 ~ 8/16 -> 하드웨어 설계, 제작 및 테스트
- 8/19 ~ 8/23 -> 결합 및 수정 설계, 하드웨어 및 소프트웨어 

## 📊 Gantt
> 스케쥴을 바탕으로 Gantt 차트를 작성한다.
```mermaid
gantt
    dateFormat  YYYY-MM-DD
	title  Gantt
	
    section A section
    Completed task            :done,    des1, 2021-09-06,2021-09-08
    Active task               :active,  des2, 2021-09-09, 3d
    Future task               :         des3, after des2, 5d
    Future task2              :         des4, after des3, 5d

    section Critical tasks
    Completed task in the critical line :crit, done, 2021-09-06,24h
    Implement parser and jison          :crit, done, after des1, 2d
    Create tests for parser             :crit, active, 3d
    Future task in critical line        :crit, 5d
    Create tests for renderer           :2d
    Add to mermaid                      :1d

    section Documentation
    Describe gantt syntax               :active, a1, after des1, 3d
    Add gantt diagram to demo page      :after a1  , 20h
    Add another diagram to demo page    :doc1, after a1  , 48h

    section Last section
    Describe gantt syntax               :after doc1, 3d
    Add gantt diagram to demo page      :20h
    Add another diagram to demo page    :48h
	
	section test
	Active task 			: doc1, 2021-09-02, 2021-09-04
	
```
---
## Reference

출처: [https://olait.tistory.com/10](https://olait.tistory.com/10) [이토록 쉬운 옵시디언:티스토리]