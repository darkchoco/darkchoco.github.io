---
title: Jekyll로 블로그 만들기  
date : 2021-03-15 23:00  
categories: Jekyll  
tags: Jekyll AsciiDoc 
toc: true  
comments : true  
---

Jekyll을 사용하여 웹사이트 작업을 마무리한 후 든 생각은, 생각처럼 쉽게 되지 않는다는 것이었다.  
손도 많이 가고.  
전반적인 구조도 생소하고, 테마를 취향대로 구성하는 것도 꽤 시간이 걸렸다.  
단순히 [Quickstart](https://jekyllrb.com/docs/) 내용만 믿고 가면 낭패감을 느낄 수 있다. (참 쉽죠?)  

작업시 참조한 문서가 많지만 의외로 필요한 내용은 찾기 쉽지 않았다.  
Stack Overflow가 이렇게 도움 안 된 적이 있었나 싶기도 하고.

주요 레퍼런스와 까다로웠던 부분을 아래 정리한다.


## 주요 참조
* [Jekyll 공식 사이트 (한글)](https://jekyllrb-ko.com/).  
  [테마](http://jekyllrb-ko.github.io/docs/themes/) 쪽을 주로 참조했다.
* [Jekyll - Static Site Generator - Tutorial (동영상)](https://www.youtube.com/playlist?list=PLLAZ4kZ9dFpOPV5C5Ay0pHaa0RJFhcmcB)  
  Jekyll의 전반적인 이해에 많은 도움이 되었다.
* [Jekyll을 이용한 무료 블로그 만들기](https://wepplication.github.io/programming/jekyll/)  
  꼭 필요한 내용들이 한 페이지에 잘 정리되어 있다.
* [GitHub Pages 블로그 따라하기](https://devinlife.com/howto/#1-github-pages-%EB%B8%94%EB%A1%9C%EA%B7%B8-%EB%94%B0%EB%9D%BC%ED%95%98%EA%B8%B0)  
  말 그대로 '따라하면' 쉽게 만들 수 있다.


## 환경 구성

### WSL2
Windows 환경에서의 Ruby는 맞지 않는 옷을 억지로 입힌 것처럼 보인다. (아직까지도!)  
Docker를 사용할까 했지만 사용 중인 WSL2에 Ruby를 설치하여 쓰기로 했다.  
아주 잘 된다.

### dev & prd 구성
시작시 시도한 것들이 너무 많아서 매번 `git`로 환경을 옮겨다니기 번거로왔다.  
그래서 `dev`와 `prd` 디렉토리를 각각 구성하고 사이트를 통째로 한벌씩 만들어 놓았다.  
`dev`에서 수차례 테스트 진행 후, 통과한 것만 `prd`로 옮겨 push 한다. (push = release 라서 어쩔 수 없다)  
`dev`와 `prd` 사이의 관리는 `WinMerge`를 쓰면 아주 편하다.

post 작성 외에 별 변화가 없다면 `dev`는 나중에 없애도 괜찮을 듯.

### 로컬에서 실행하기
Disqus 사용시, 아래와 같이 사이트 구동 명령에 `JEKYLL_ENV=production`을 추가하면 Disqus 블록을 로컬환경에서도 불러올 수 있다.

```
JEKYLL_ENV=production bundle exec jekyll serve
```
<br/>
`_config.yml` 같은 Jekyll 주요 구성요소의 변경은 사이트를 리스타트해야 반영된다. 하지만 posting 내역은 실시간 반영이 가능한데, 아쉽게도 WSL 환경에서는 잘 되지 않는다.  
[5년 전에 유사한 이슈가 제기](https://github.com/microsoft/WSL/issues/216)되었고  `--force_polling` 옵션을 쓰면 해결은 되지만 (`bundle exec jekyll serve --force_polling` 실행), 대신 CPU 리소스가 비정상적으로 높게 사용되는 문제가 발생했다. 즉 해결되었다고 보긴 어렵다.    
크게 불편한 것도 아니라서 그냥 리스타트 하면서 사용 중이다. (차후 posting이 많아져서 빌드 시간이 상당히 소요되면 생각이 바뀔지도)


## Customization
일반 사용자 입장에서는 적절한 테마를 선택하고 취향에 맞게 변경하는 것이 훨씬 많은 시간을 요구한다.  
워드프레스의 테마와는 달리 Jekyll에서의 테마는 사이트의 전반적인 사항을 결정하는 중요한 요소기 때문에 잘 선택하는 것이 중요하다. 모양도 중요하지만 문서화가 잘 되어있는 것을 고르는 것이 향후 관리에 편하다.  

[Just the docs](https://pmarsceill.github.io/just-the-docs/)과 [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) 중 고민하다가 MM으로 갔지만 나중에 바꿀지도 모르겠다.

아래 변경은 모두 MM 기준이다.

### Font
사이트 전체의 Font 변경시,
* Font 종류를 바꾸려면 `_sass/minimal-mistakes/_variables.scss` 내 `$global-font-family` 수정
* Font 크기를 바꾸려면 `_sass/minimal-mistakes/_reset.scss` 내 `@include breakpoint` 항목 수정

세부사항은 [539940b](https://github.com/darkchoco/darkchoco.github.io/commit/539940b9a7808ebf37c4957c67cfd9a305bc20e6)을 참조한다.

<br/>
일부 항목의 Font 수정시,
* post의 Font 크기를 바꾸려면 `_sass/minimal-mistakes/_page.scss` 내 `.page__content` 수정.
* code의 Font 크기를 바꾸려면 `_sass/minimal-mistakes/_base.scss` 내 `td > code` 부분 수정. (아래 참조)

```css
td > code {
  padding-top: 0.1rem;
  padding-bottom: 0.1rem;
  font-size: 1.05em;
  background: $code-background-color;
  border-radius: $border-radius;
}
```

세부사항은 [2fabdbf](https://github.com/darkchoco/darkchoco.github.io/commit/2fabdbfaab618e75da9e3321c774c503e9c52fe8) 내 `_sass/minimal-mistakes/` 디렉토리 밑의 변경된 파일을 참조한다.

### Header Image
Header image의 사이즈나 모양이 생각대로 안 나타날 수 있다.  
[Header image aspect ratio depends on excerpt length](https://github.com/mmistakes/minimal-mistakes/issues/542)을 참조한다.


## 그밖에...
개인적으로 AsciiDoc을 선호하기 때문에 Redmine, Trello 등에서 Markdown을 쓸 때 늘 아쉬움을 느꼈다.  
그런데 개인 블로그에서도 Markdown을 써야한다는 것이 가장 큰 단점이었다.

당장은 어쩔 수 없지만 [https://github.com/asciidoctor/jekyll-asciidoc-quickstart](https://github.com/asciidoctor/jekyll-asciidoc-quickstart) 을 주시하면서 GitHub 쪽에서 지원이 있기를 기대하고 있다.
