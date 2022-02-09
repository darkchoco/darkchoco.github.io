---
title: 코드 리뷰 체크리스트 (SW 개발/테스트/배포를 모두 고려한)
date: 2022-02-01 23:00
categories: Agile
tags: CodeReview PR
// toc: true  
comments: true
// author_profile: true
---

원문:  
["Effective Code Review Checklist"](https://engineerchirag.medium.com/effective-code-review-checklist-c735abbcd613).

<br/>

원문 제목은 '코드 리뷰 체크리스트'지만 PR이 아닌 SW 개발에 있어 필요한 대부분의 것들을 언급하고 있다.  
즉 코드 리뷰 보다는 SW 개발 - 테스트 - 배포 과정의 체크리스트로 보는 것이 좋겠다.

코드 리뷰시 체크사항으로,

### 기능
* 예상대로 잘 동작하나?
* 새로 추가된 부분이 필요한 것인가, 아니면 'feature creep'?

### 코드
* clear & concise?
* Project conventions, Style guide, Naming conventions 준수 여부
* self-documenting 또는 well-documented?
* Test cases 여부

### PR
* atomic?
* single concern principle 을 따르고 있는지?
* Commit 메시지가 잘 작성되었는지 확인

<br/>

그밖의 체크리스트는 Performance Test, Security Test, Integration Test 등의 필요에 따라 활용할 수 있다.  
PR 리뷰시 고려할 수는 있겠다. 
