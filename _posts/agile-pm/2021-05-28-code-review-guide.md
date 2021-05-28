---
title:  "PR 리뷰시 유념할 점"
date:   2021-05-27 23:00
categories: Agile
tags: CodeReview PR
comments : true
---

원문은 ["I've code reviewed over 750 pull requests at Amazon. Here's my exact thought process."](https://curtiseinsmann.medium.com/ive-code-reviewed-over-750-pull-requests-at-amazon-here-s-my-exact-thought-process-cec7c942a3a4).

잊고 싶지 않은 것들이 몇개 있어서 따로 옮긴다.

* 코드 리뷰는 작성자나 리뷰어 모두에게 새로운 것을 배울 기회다.   
  다양한 문제풀이 방식을 접할 수 있고 이는 나중에 본인이 코드 작성시 큰 도움이 된다.


* SOLID, DRY, KISS 같은 원칙도 좋고 'Clean Code'에서 언급하는 내용도 다 좋다.  
  하지만 가장 중요한 질문은 다음과 같다.
  * Does it work?
  * Is it easy to maintain? 
  * Will we be able to understand it 2 years from now?  
<br/>

* 코멘트는 친절하고 명확하게 한다.
  * 강경한 어조는 피하고 질문을 던지거나 제안하는 식으로 한다.
  * 적어도 하나 이상의 긍정적인 코멘트를 잊지 않는다.  
<br/>

* 완벽한 PR은 없다. 잘 동작하고 코드 가독성이 나쁘지 않다면 승인한다.
