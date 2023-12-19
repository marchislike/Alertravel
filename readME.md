# Alertravel

# 1인의 만찬
#### 1인가구를 위한 마감음식 패키징 서비스

1인의 만찬은 자영업자와 1인 가우 소비자들을 위한 마감 음식 패키징 서비스입니다.

(메인 이미지)

---

## 개발 팀 정보
- 팀명 : Dinner41
- 팀장 : 김주성([@KINGJUSUNG](https://github.com/KINGJUSUNG))
- 부팀장 : 송무송([@moosongsong](https://github.com/moosongsong))
- 팀원 : 문효원([@moon-hw](https://github.com/moon-hw)), 안희주([@ahjheeju129](https://github.com/ahjheeju129)), 조계철([@gyetol](https://github.com/gyetol))

  (팀원이미지)

  ---

## 목차

<details markdown="1">
<summary>프로젝트 개요</summary>

[프로젝트 개요](#1)<br/>
    [1. 주제 선정 동기](#1.1)<br/>
    [2. 개발 환경 및 사용 기술](#1.2)<br/>
    [3. 프로젝트 진행 일정](#1.3)
</details>

<details markdown="1">
<summary>서비스 설계</summary>

[서비스 설계](#2)<br/>
    [1. 회원 이용 흐름](#2.1)<br/>
    [2. 설계 산출물](#2.2)<br/>
    [3. 서비스 별 기능](#2.3)
</details>

---
---

<span id="1"></span>
## 프로젝트개요
<img src="프로젝트_산출물/readmeImage/프로그램소개.png" style="width: 100%" alt="no pic">

<span id="1.1"></span>
## 1. 주제 선정 동기
<img src="프로젝트_산출물/readmeImage/주제선정동기1.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/주제선정동기2.png" style="width: 100%" alt="no pic">

### 벤치 마킹 사이트의 한계점
<img src="프로젝트_산출물/readmeImage/벤치마킹사이트.png" style="width: 100%" alt="no pic">


<span id="1.3"></span>
## 2. 개발 환경 및 사용 기술
<img src="프로젝트_산출물/readmeImage/개발환경.png" style="width: 100%" alt="no pic">

<span id="1.4"></span>
## 3. 프로젝트 진행 일정
<img src="프로젝트_산출물/readmeImage/프로젝트일정.png" style="width: 100%" alt="no pic">


---

<span id="2"></span>
## 서비스 설계

<span id="2.1"></span>
## 1. 회원 이용 흐름
### 일반회원
<img src="프로젝트_산출물/readmeImage/일반회원흐름.png" style="width: 100%" alt="no pic">

### 점주회원
<img src="프로젝트_산출물/readmeImage/점주회원.png" style="width: 100%" alt="no pic">

<span id="2.2"></span>
## 2. 설계 산출물
### E-R Diagram
<img src="프로젝트_산출물/readmeImage/ER_다이어그램.png" style="width: 100%" alt="no pic">

### 논리 스키마
<img src="프로젝트_산출물/readmeImage/DB스키마.png" style="width: 100%" alt="no pic">

### Class Diagram
<img src="프로젝트_산출물/readmeImage/전체클래스다이어그램.png" style="width: 100%" alt="no pic">

<span id="2.3"></span>
## 3. 서비스별 기능

### ✔ 회원관리 서비스
#### 📍회원가입
대상 : 일반회원, 점주회원
이메일, 비밀번호, 비밀번호 확인, 이름, 거주지, 전화번호, 회원유형 입력
#### 📍회원 탈퇴
대상 : 일반회원, 점주회원
비밀번호 입력을 통한 본인 확인 후 회원 탈퇴 가능
#### 📍회원정보 수정
대상 : 일반회원, 점주회원
비밀번호 인증 후 개인 정보 수정 가능 -> 이메일, 회원유형 수정 불가
#### 📍마이페이지
대상 : 일반회원, 점주회원
기존에 입력했던 정보 확인과 수정 가능
#### 📍로그인/로그아웃
대상 : 일반회원, 점주회원
기존에 가입했던 이메일과 비밀번호를 통해 로그인
#### 📍비밀번호 찾기
대상 : 일반회원, 점주회원
이메일로 임시 비밀번호 발급받기
<img src="프로젝트_산출물/readmeImage/회원관리클래스.png" style="width: 100%" alt="no pic">

---

### ✔ 위치기반 검색 서비스
#### 📍검색 기준위치 변경
대상 : 일반회원
사용자가 검색 기준을 변경하여 해당 위치에 대한 매장 검색 가능
##### 📍카테고리별 지도보기
대상 : 일반회원
매장 카테고리별로 원하는 카테고리 선택후 매장 검색 가능
<img src="프로젝트_산출물/readmeImage/위치기반검색클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/위치기반시퀀스.png" style="width: 100%" alt="no pic">

---

### ✔ 매장 서비스 (점주/일반)
<img src="프로젝트_산출물/readmeImage/매장서비스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/매장관리기능1.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/매장관리기능2.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/매장관리클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/매장검색시퀀스.png" style="width: 100%" alt="no pic">

---

### ✔ 메뉴 서비스 (점주/일반)
<img src="프로젝트_산출물/readmeImage/메뉴서비스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/메뉴관리기능1.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/메뉴관리기능2.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/메뉴관리기능3.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/메뉴관리클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/메뉴등록시퀀스.png" style="width: 100%" alt="no pic">

---

### ✔ 장바구니 주문 결제 서비스 (일반)
<img src="프로젝트_산출물/readmeImage/장바구니주문결제서비스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/장바구니기능.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/장바구니클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/주문기능.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/주문결제클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/주문관리시퀀스.png" style="width: 100%" alt="no pic">

---

### ✔ 리뷰 / 문의 / 관리자 서비스 
<img src="프로젝트_산출물/readmeImage/리뷰문의관리자서비스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/리뷰기능.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/리뷰클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/문의기능1.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/문의기능2.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/문의클래스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/문의시퀀스.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/관리자기능.png" style="width: 100%" alt="no pic">
<img src="프로젝트_산출물/readmeImage/관리자클래스.png" style="width: 100%" alt="no pic">

---




