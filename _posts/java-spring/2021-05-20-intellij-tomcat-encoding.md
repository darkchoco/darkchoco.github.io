---
title:  "IntelliJ의 Tomcat output 내 한글 출력"
date:   2021-05-20 23:00
categories: Java-Spring
tags: Java IntelliJ
comments : true
---

IntelliJ에서 Tomcat output을 보면 한글이 다 깨질 때가 있다.  
아래 내용을 하나씩 체크하면서 문제가 해결되었는지 확인한다.

* IntelliJ 내 Settings > Editor > File Encodings 의 Encoding 항목들이 `UTF-8`으로 되어 있는지 확인.
* `C:\Program Files\JetBrains\IntelliJ IDEA 2021.1\bin\idea64.exe.vmoptions` 파일을 에디터로 열어서 맨 마지막 라인에 `-Dfile.encoding=UTF-8` 추가.
* Tomcat 실행 환경에 `-Dfile.encoding=UTF-8` VM option 추가. (아래 그림 참조)

![IntelliJ - Tomcat config](/assets/images/20210520_intellij_tomcat_vmoptions.jpg){: .align-center}
