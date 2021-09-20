---
title: Git Commit Messages 분류
date: 2021-09-03 23:00
categories: CI-CD-SW_Testing
tags: Git
// toc: true  
comments : true
// author_profile: true
---

`git tag` 이야기가 아니라, Commit 메시지가 많을 때(수백, 수천개) 카테고리를 지정하여 분류하는 방법에 대한 것이다.  

신박한 방법이 있지 않을까 하여 많이 검색해봤지만, 특별한 것은 없었다.  
[Write Categorized Git Commit Messages](https://medium.com/@rcwestlake/write-categorized-git-commit-messages-c9f953ea6040) 을 보면 `[CATEGORY]: Commit 메시지` 식으로 Commit 메시지에 prefix를 붙이는 것을 제안하고 있는데, 직관적이고 간단해서 괜찮을 것 같다.  
Category 정보 몇가지를 아래 옮긴다.

* **[INITIAL]** - for the initial commit and set up
* **[ADD]** - broad category for code that's added
* **[UPDATE]**
* **[REFACTOR]**
* **[FIX]**
* **[REMOVE]** - when removing files or old, unnecessary code

현재 branch를 만들 때는 `commit-msg` hook을 사용하여 `branch name: ` prefix가 자동으로 붙게 하고 있기 때문에 상기 방법을 같이 사용하면 좀 메시지가 복잡해 보일 수 있겠다. 
