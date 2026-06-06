---
draft: false
title: About Me
params:
  commentsEnabled: false
---
{{< figure src="seoul.jpg#center" caption="The city of Seoul is my hometown. Photo by [Ethan Brooke](https://unsplash.com/@seoulinspired)/[Unsplash](https://unsplash.com)" >}}

## Who is this weirdo?

My name is Sidney Jeong (I do have a native name in Korean but [I don't really like it](https://en.wikipedia.org/wiki/Deadnaming)), a [neurodivergent](https://en.wikipedia.org/wiki/Neurodiversity) [amab](https://en.wikipedia.org/wiki/Sex_assignment) "genderfluid in principle, demiboy in practice" [non-binary](https://en.wikipedia.org/wiki/Non-binary_gender) person based in [Seoul](https://en.wikipedia.org/wiki/Seoul), [Republic of Korea (South)](https://en.wikipedia.org/wiki/South_Korea). My pronouns are they/them but he/him is acceptable for me.

I am very much a weird nerd, who tries to be considerate, kind, bright, and fun (and yes, I might freak you out). I do not bite unless you ask to do so and if and only if I'm keen on it, so feel free to reach out to me if you have something to tell me.

I used to study sociology in university and grad school. But I have always been interested in tech. After becoming unable to continue my study owing to financial challenges (and tbf the grad school life was not for me) and a lot of trial and error, I decided to start a career in tech. And I'd say I'm satisfied with it so far.

I am also a great fan of [Dreamcatcher](https://en.wikipedia.org/wiki/Dreamcatcher_(group)) and [NMIXX](https://en.wikipedia.org/wiki/Nmixx), the K-Pop girl groups. Maybe we can talk about them when we have chance!

### Professional summary

* **A cloud/system operations engineer** with focus on IT infrastructure (both cloud-native and on-prem), especially on but not limited to Linux-based servers and serverless environments
* **AWS (full-time) & Google (via a contractor agency) experienced engineer** with 5+ years of IT infrastructure, cloud, technical support, and consulting experience, skilled in Linux administration on cloud environment, hybrid cloud migration (AWS MGN&DRS), on-prem infrastructure, and financial trading environments (Murex MX.3)
* **A natural fast learner and problem solver** with international communication skills and systemic perspective for assessing structural risks preventively and in post-mortem
* **Open to** full-time positions in Australia, with 482 Skills in Demand visa or relevant visa sponsorship options. Relocation support is not needed.

### Education

* [**Sungkyunkwan University**](https://www.skku.edu/eng/), Seoul, South Korea
  * 2007-2012, Bachelor of Arts in Sociology/Confucian and Oriental Studies
* [**Seoul National University**](https://en.snu.ac.kr/), Seoul, South Korea
  * 2012-2018, Master of Arts in Sociology (_Incomplete -- owing to financial challenges_)
* [**Busan IT Training Centre**](https://www.busanit.ac.kr/), Busan, South Korea
  * 2019, Completed an IT Vocational training course on Systems and Network Administration

### Experience (after I started in tech)

* [**Amazon Web Services**](https://aws.amazon.com/), Seoul, South Korea
  * Oct 2023 - Jul 2025, Cloud Support Associate (Linux, L4)
  * Diagnosed systemic and structural issues for diverse range of AWS customers (Individual developers, SMBs, and major corporations)
  * Engineered technical solutions for complex use cases on AWS services such as Amazon EC2, Amazon Linux, AWS VM Import/Export, AWS MGN, or AWS DRS.
  * Managed high-severity incidents as part of the Language Support Engineering team, handling broad ranges of infrastructure failures.
* [**DXC Luxoft**](https://www.luxoft.com/), Seoul, South Korea
  * Feb 2022 - April 2023, Consultant (Murex CEM Engineer)
  * Engineered new infrastructures for development/staging/production-to-be environments for new implementation or upgrade projects of Murex MX.3 trading software
  * Managed configuration consistency and maintained manual CI/CD management with complex cases automatic deployments can’t cover
  * Diagnosed issues and provided technical solutions for Murex MX.3 environment, both on server and client sides.
* [**PersolKelly Korea (now Persol Korea)**](https://www.persolkr.com/), Seoul, South Korea
  * Jul 2020 - Dec 2021, Data Centre Operations Technician
  * Google extended workforce for infrastructure maintenance and deployment
  * Troubleshooted and maintained early to take-off stage colo data centre for Google Cloud Platform
  * Diagnosed and Intervened on hardware problems of proprietary servers, network infrastructure with high-availability
* [**EB Tech Net**](http://ebtechnet.co.kr/), Seoul, South Korea
  * Oct 2019 - May 2020, Systems Engineer
  * Deployed and maintained Fujitsu, HPE, and Dell servers for mission-critical infrastructures of big Korean corporations like Samsung SDS, LG U+, Hyundai Maritime Insurance, and Korea Environment Corporation, as an engineer for a server reseller
  * Technical and onboarding support for enquiries of reseller program of Penguin Computing Platform, an HPC cloud service


## My configuration manifest (if you are my fellow nerd)

```yaml {linenos=false}
apiVersion: sidlibrary.org/v1beta3
kind: Person                # or at least I believe so
metadata:
  annotations:
    sidlibrary.org/generation: millenial
    sidlibrary.org/status: struggling
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
      variant: [ "au", "esl" ]
      level: C2
      certification:
        - name: "IELTS General Training"
          score: 8.0
    - code: ja
      variant: [ "jp", "slight-influence-of-kansai" ]
      level: B1
    - code: zh
      variant: [ "tw", "mandarin" ]
      level: A1
  philosophy:
    - category: metaphysics
      value: does-not-matter-if-this-world-is-real-enough
    - category: philosophy-of-mind
      value: supervenience-physicalism
    - category: philosophy-of-science
      value: unrepresentative-realism
    - category: political-view
      values:
        - democratic-socialism
        - anarchism
        - multiculturalism
        - intersectionality
    - category: religious-view
      value: agnostic-atheist
  culturalPreferences:
    - category: music
      values:
        - dreamcatcher
        - nmixx
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
