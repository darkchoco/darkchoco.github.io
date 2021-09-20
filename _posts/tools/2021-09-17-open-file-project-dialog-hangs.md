---
title: IntelliJ 또는 PyCharm의 File or Project 선택 창이 응답이 없을 때
date: 2021-09-17 23:00
categories: Tools
tags: IntelliJ PyCharm
// toc: true  
comments: true
// author_profile: true
---

몇달전부터 IntelliJ나 PyCharm에서 File > 'Open File or Project'를 열면 Dialog 창이 무한 로딩 상태에 '빠지곤' 했다. (항상 이러진 않았는데 최근 더 심해졌다)  

이런 저런 방법들이 제기되고 있는데 아직 정확한 원인 또는 솔루션은 없는 것 같다.

현재까지는 [윈도우즈의 native file chooser를 이용](https://youtrack.jetbrains.com/issue/IDEA-101218) 하는 것이 제일 확실하다.  
즉 Help > 'Edit Custom Properties'로 가서 아래 두 라인을 추가하고 IDE를 restart 한다.

```
sun.awt.windows.useCommonItemDialog=true
ide.win.file.chooser.native=true
```
