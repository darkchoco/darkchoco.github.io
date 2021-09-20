---
title: "IntelliJ 내 'Local Changes' 탭이 사라졌을 때"
date: 2021-05-15 23:00
categories: Tools
tags: IntelliJ
// toc: true  
comments: true
// author_profile: true
---

JetBrains 툴을 업데이트 하면 Git의 'Local Changes' 탭이 사라질 때가 있다.  
Settings > Version Control > Commit 의 첫번째 항목인 'Use non-modal commit interface'를 **check 하지 않으면** 해결되는데, 당최 왜 이런 '개악'을 했는지 의문이다.

[Version control local changes tab missing in 2020.1](https://intellij-support.jetbrains.com/hc/en-us/community/posts/360008229959-Version-control-local-changes-tab-missing-in-2020-1) 을 보면 나만 그런 생각을 가진 것이 아니라 대부분이 비슷한 생각인 듯 하다.  
이런 것을 보면 어떤 의사결정 경로로 이런 일이 일어나는지 궁금해지곤 한다.
