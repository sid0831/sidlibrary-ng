---
draft: false
title: About Me
params:
  commentsEnabled: false
  isCJKLanguage: true
---
{{< figure src="/about-me/seoul.jpg#center" caption="The city of Seoul is my hometown. Photo by [Ethan Brooke](https://unsplash.com/@seoulinspired)/[Unsplash](https://unsplash.com)" >}}

## 이 괴짜는 누구인가요?

안녕하세요, 제 이름은 Sidney Jeong입니다(한국 이름이 있지만 [별로 좋아하지 않아요](https://en.wikipedia.org/wiki/Deadnaming)). 저는 [신경다양인](https://en.wikipedia.org/wiki/Neurodiversity) [지정 남성](https://en.wikipedia.org/wiki/Sex_assignment)이자 "원칙적 젠더플루이드, 사실상 데미보이" 인 [논바이너리](https://en.wikipedia.org/wiki/Non-binary_gender) 사람이고, 한국 서울에 살고 있습니다. 영어 맥락에서 저의 인칭대명사는 they/them이지만 he/him으로 부르셔도 괜찮습니다.

저는 꽤나 이상한 너드이고, 사려깊고, 친절하고, 밝고, 재밌는 사람이기 위해 노력합니다 (이 말은 제가 지금 안 그렇다는 뜻일지도 모릅니다). 요청해 주시고 제가 내키지 않는 한 저는 물지 않으니, 말씀해 주실 것이 있다면 편하게 저에게 다가와 주세요.

저는 학부와 대학원에서 사회학을 전공했습니다. 하지만 기술에 항상 관심이 있었죠. 재정적 문제 때문에 (그리고 대학원 생활이 저랑 안 맞아서) 공부를 더이상 할 수 없게 된 이후, 많은 시행착오와 방황을 거쳐 IT 커리어를 시작하기로 결정했답니다. 그리고 지금까지는 아주 만족하고 있어요.

저는 또한 K-Pop 그룹 [드림캐쳐](https://en.wikipedia.org/wiki/Dreamcatcher_(group))의 찐팬입니다. 기회가 있다면 드캐 얘기를 함께 할 수도 있을 거예요.

### Education

* [**Sungkyunkwan University**](https://www.skku.edu/eng/), Seoul, South Korea
  * 2007-2012, Bachelor of Arts in Sociology and Oriental Studies
* [**Seoul National University**](https://en.snu.ac.kr/), Seoul, South Korea
  * 2012-2018, Master of Arts in Sociology (_Incomplete -- owing to financial challenges_)
* [**Busan IT Training Centre**](https://www.busanit.ac.kr/), Busan, South Korea
  * Completed an IT Job training course

### Experience (after I started in tech)

* [**EB Tech Net**](http://ebtechnet.co.kr/), Seoul, South Korea
  * Oct 2019 - May 2020, Systems Engineer
  * Did a technical support / pre-sales concerning early contact of reselling an HPC cloud service based in the US while also doing the technical support for customers needing it for installing and maintaining the servers. Customers included: Samsung SDS, LG U+, Hyundai Maritime Insurance, Korea Environment Corporation.
* [**PersolKelly Korea (now Persol Korea)**](https://www.persolkr.com/), Seoul, South Korea
  * Jul 2020 - Dec 2021, Data Centre Operations Technician
  * As a Temp Operations Technician on-site at Google, I did builds, deployments, repairs, and ticket-based problem solving independent to full-time employees, in overlapping but smaller scope.
* [**DXC Luxoft**](https://www.luxoft.com/), Seoul, South Korea
  * Feb 2022 - April 2023, Technical Consultant (Configuration and Environmental Management)
  * As a regular configuration and environment management consultant, I performed setting up, managing configurations, and troubleshooting issues regarding development, staging, and rehearsal environments for Murex and related third-party software.
* [**Amazon Web Services**](https://aws.amazon.com/), Seoul, South Korea
  * Oct 2023 - Present, Cloud Support Associate (Linux)
  * As a Linux profile Cloud Support Associate in Language Support - Korean team, I'm resolving customer cases of EC2 - Linux, EBS, and other related services in Korean and English languages.
  * _This blog is by no means affilliated with Amazon, Inc., Amazon Web Services, Inc., or their affilliates._

## My configuration manifest (if you are my fellow nerd)

```yaml {linenos=false}
apiVersion: sidlibrary.org/v1beta3
kind: Person                # or at least I believe so
metadata:
  annotations:
    sidlibrary.org/generation: millenial
    sidlibrary.org/status: unstable
  labels:
    sidlibrary.org/headlines:
      - The Discouraged Revolutionary
      - Beyond Point of no Return
spec:
  gender:
    - genderfluid           # in principle
    - demiboy               # in practice
  neurotype: neurodivergent
  pronouns:
    - they/them             # preferred
    - he/him                # acceptable
  traits:
    nerd: true
    weird: true
  ethnicity: Korean
  ethnicIdentity: null
  quotes:
    - from: Karl Marx
      quote: Segui il tuo corso, e lascia dir le genti
      englishTranslation: Follow your own course, and let them talk
      context:
        nestedQuoteFrom: Dante Alighieri
        exactQuote: false
    - from: Confucius
      quote: 知之爲知之，不知爲不知，是知也。
      englishTranslation: |
        Saying you know what you know, and you don't know what you don't know, is the knowledge.
  supportedLocales:
    - code: ko
      variant: [ "kr", "standard" ]
      native: true
    - code: en
      variant: [ "nz|au|ca", "esl" ]
      level: C2
    - code: ja
      variant: [ "jp", "slight-influence-of-kansai" ]
      level: B1
    - code: zh
      variant: [ "tw", "mandarin" ]
      level: A1
  philosophy:
    - category: metaphysics
      value: simulation-hypothesis
    - category: philosophy-of-mind
      value: supervenience-physicalism
    - category: philosophy-of-science
      value: unrepresentative-realism
    - category: political-view
      values:
        - democratic-socialism
        - anarcho-socialism
        - identity-politics
        - multiculturalism
        - intersectionality
    - category: religious-view
      value: agnostic-atheist
  culturalPreferences:
    - category: music
      values:
        - dreamcatcher
        - k-pop
        - pop-rock
        - classical
        - world-music
    - category: books
      value: non-fiction
    - category: travel
      values:
        - cities
        - sociological-observation
        - transportation
  antiAffinityRules:        # do not interact with me if you are in this category
    - name: age-gap
      values:
        - self.age / 2      # lower limit
        - self.age * 2      # upper limit
      hardLimit: false      # I might make contingent exceptions
    - name: character
      values:
        - narcissist
        - avoidant
        - antisocial
      hardLimit: false      # just personal - society should not exclude them
    - name: philosophy
      values:
        - fascist           # this is family resemblence category of all below
        - authoritarian     # any type of
        - stalinist         # tankies included
        - maoist            # tankies included here as well
        - xenophobic        # against any foreign ethnicity
        - homophobic        # gay-in-denials included
        - transphobic       # terfs included
        - racist            # especially white supremacists
        - altright          # absolutely no exception
        - autism-speaks     # there is no room for ableism in disguise here
        - ableist-by-choice # in any cateogry of disability.
        - chauvinist        # in any identity
        - religious-zealot  # in any religion
      hardLimit: true
```

## To do

* [ ] Improve GitHub profile and repositories.
* [ ] Revive [this blog](/) and fill with more contents.
* [x] Survive in this world.
