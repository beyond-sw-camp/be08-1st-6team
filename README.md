<p>
<h1 align="center"> DB 설계 프로젝트 🖥️</h1>


<div align="center">

![Silver Town](https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/dddd.png?raw=true)

**한화시스템 BEYOND SW캠프 / 💥TEAM 최다이김조💥**
</div>
<br>

<h1 align="center">노인 건강 관리 플랫폼 : Silver Town </h1>
<br>

## 😄 팀원 소개
|<img src="https://avatars.githubusercontent.com/u/122086362?v=4" width="150" height="150"/>|<img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/80668325.png?raw=true" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/97294927?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/77917850?v=4" width="150" height="150"/>|<img src="https://avatars.githubusercontent.com/u/167883838?v=4" width="150" height="150"/>|
|:-:|:-:|:-:|:-:|:-:|
|👑최규범<br/>[@jason-gb](https://github.com/jason-gb)|김민지<br/>[@mims0214](https://github.com/mjms0214)|김태영<br/>[@tyeong1102](https://github.com/tyeong1102)|이유진<br/>[@uzz99](https://github.com/uzz99)|조혜인<br/>[@byHyen](https://github.com/byHyen)|

<br>

## 👀 프로젝트 배경

![프로젝트 배경](https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/%EB%B0%B0%EA%B2%BD.png?raw=true)

행정안전부가 발표한 '2023년 말 기준 주민등록 인구통계'에 따르면 70대 이상 인구는 631만 9천402명으로, 20대(619만 7천486명) 인구를 넘어섰습니다. <br>
전체 인구 대비 고령 인구 비율은 2015년 13.2%, 2020년 16.4%, 2022년 18.0% 등 매년 높아지는 추세입니다. 
유엔(UN)은 65세 이상 인구가 전체 인구에서 차지하는 비율이 7% 이상이면 고령화 사회, 14% 이상은 고령 사회, 20% 이상은 초고령 사회로 구분하고 있어, 우리나라는 내년에 노인 인구가 20%에 도달해 초고령 사회에 진입할 전망입니다.

<br>

## ✨ 프로젝트 소개

초고령 사회 진입 예측에 따라 **고령 인구의 통합 건강 관리 서비스의 필요**를 느끼게 되어, <span style="color:skyblue">**Silver Town 서비스**</span>를 제작하였습니다.<br>
병원, 돌봄 기관, 의료기록 등 별개의 서비스를 하나로 통합하여, 사용자(당사자와 보호자)의 **건강 관리 부담을 경감하는 것을 목표**로 합니다.
따라서 Silver Town은 다음과 같은 서비스를 제공합니다.

- 회원 가입 후 로그인을 통해 **돌봄 서비스, 진료 내역, 처방 기록** 등을 확인 할 수 있습니다.

- 보호자는 부양해야 할 가족의 **건강 상태를 주기적으로 확인**(체크리스트)할 수 있습니다.

- **의약품 복용 알림 기능**을 통해 의약품의 올바르고 적절한 복용을 돕습니다.

- SOS 기능을 통해 긴급 상황 시, 본인 혹은 보호자가 **근처 병원에 빠르게 연락**을 취할 수 있습니다.

<br>

## 🎯 프로젝트 목표

- 병원 및 돌봄 기관과의 연결을 통한 **체계적인 건강 관리**

- **효율적인 의료 서비스** 제공

- 돌봄 서비스로 어르신들의 **자립 생활 지원**

- 노인과 보호자 사이의 **양가 부담 심리 감소**

<br>

## 📚 기술 스택

&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white&color=black"></a></a>
&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white&color=ffa500"></a></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white"/></a>
&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/Notion-000000?style=flat&logo=Notion&logoColor=white"></a>
</a>
<br>

<br>

## 📮 WBS

[WBS](https://docs.google.com/spreadsheets/d/1AgOZ-a-valc_ev_iwm9kC4dJVVknQZIDjtG2SQFawY8/edit#gid=459449541)

<br>


## 📜 요구사항 명세서

[요구사항 명세서](https://docs.google.com/spreadsheets/d/12g32PA-Kqdr9WB8eWUsWttX2O-qLG1ktv0O_fiAiA68/edit?usp=sharing)

<br>

## 🎀 ERD 

![class diagram](https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/%ED%81%B4%EB%9E%98%EC%8A%A4%20%EB%8B%A4%EC%9D%B4%EC%96%B4%EA%B7%B8%EB%9E%A8.png?raw=true)

![ERD](https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/Silver%20Town.png?raw=true)

<br>

## 📝 DDL

```sql
[CREATE] 통합_최최종.sql
-- CREATE 통합
-- 회원 테이블
CREATE TABLE user (
    user_no INT PRIMARY KEY AUTO_INCREMENT ,
    user_name VARCHAR(10) NOT NULL ,
    user_phone VARCHAR(20) NOT NULL ,
    user_ssn VARCHAR(20) NOT NULL ,
    user_addr VARCHAR(100) NOT NULL ,
    user_disease VARCHAR(200) ,
    user_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    user_protector_no INT,
    user_id VARCHAR(20) NOT NULL ,
    user_pwd VARCHAR(100) NOT NULL ,
    FOREIGN KEY (user_protector_no) REFERENCES user(user_no) -- 보호자
);

-- 기관 테이블
CREATE TABLE institutions (
    inst_no INT PRIMARY KEY AUTO_INCREMENT,
    inst_name VARCHAR(20) NOT NULL ,
    inst_phone VARCHAR(20) NOT NULL ,
    inst_addr VARCHAR(100) NOT NULL
);

-- 병원 테이블
CREATE TABLE hospital(
    hospital_no INT PRIMARY KEY AUTO_INCREMENT,
    hospital_name VARCHAR(20) NOT NULL,
    hospital_type VARCHAR(20) NOT NULL,
    hospital_addr VARCHAR(200) NOT NULL,
    doc_cnt INT NOT NULL,
    beds_cnt INT NOT NULL,
    open_date DATE NOT NULL
);

-- 질병 코드 테이블
CREATE TABLE disease(
	disease_code VARCHAR(10) PRIMARY KEY, -- 질병코드
	disease_name VARCHAR(10) NOT NULL -- 질병명
);

-- 의약품 테이블
CREATE TABLE medicine(
    medi_no VARCHAR(10) PRIMARY KEY, -- 의약품번호
    medi_name VARCHAR(20) NOT NULL, -- 의약품이름
    medi_htt VARCHAR(100) NOT NULL, -- 복용방법
    medi_eff VARCHAR(100) NOT NULL --  효능
);

-- 긴급 호출 테이블
CREATE TABLE sos (
    sos_no INT AUTO_INCREMENT PRIMARY KEY,
    user_no INT NOT NULL ,
    hospital_no INT NOT NULL ,
    sos_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    FOREIGN KEY (user_no) REFERENCES user(user_no) , -- 신청하는 사람
    FOREIGN KEY (hospital_no) REFERENCES hospital(hospital_no)  -- 전달 될 병원
);

-- 진료 기록 테이블
CREATE TABLE diagnosis_record (
    diag_no INT AUTO_INCREMENT PRIMARY KEY,
    diag_date DATE NOT NULL DEFAULT CURDATE(),
    diag_type VARCHAR(20) NOT NULL,
    doctor VARCHAR(20) NOT NULL,
    comments VARCHAR(200),
    user_no INT NOT NULL,
    hospital_no INT NOT NULL,
    disease_code VARCHAR(10) NOT NULL,
    
    FOREIGN KEY (user_no) REFERENCES user(user_no),
    FOREIGN KEY (hospital_no) REFERENCES hospital(hospital_no),
    FOREIGN KEY (disease_code) REFERENCES disease(disease_code)
);


-- 처방 기록 테이블
CREATE TABLE prescription_record(
	pre_no VARCHAR(10) PRIMARY KEY, -- 처방기록 번호
	pre_date DATETIME DEFAULT CURDATE() NOT NULL, -- 처방일자
	dosage_cnt INT NOT NULL, -- 1일 투약횟수
	dosage_amount INT NOT NULL, -- 1일 복용량
	user_no int NOT NULL,
	diag_no int NOT NULL,
	disease_code VARCHAR(10) NOT NULL,
	hospital_no INT NOT NULL,
	medi_no VARCHAR(10) NOT NULL,

	FOREIGN KEY (user_no) REFERENCES user(user_no), -- 회원
	FOREIGN KEY (hospital_no) REFERENCES hospital(hospital_no), -- 병원 
	FOREIGN KEY (diag_no) REFERENCES diagnosis_record(diag_no), -- 진료기록
	FOREIGN KEY (disease_code) REFERENCES disease(disease_code), -- 질병코드
	FOREIGN KEY (medi_no) REFERENCES medicine(medi_no) -- 의약품코드
);

-- 서비스 신청 테이블
CREATE TABLE service_request (
	service_no INT AUTO_INCREMENT PRIMARY KEY,
	user_no INT NOT NULL REFERENCES `user`(user_no),
	inst_no INT NOT NULL REFERENCES institutions(inst_no),
	start_date DATE NOT NULL DEFAULT CURDATE(),
	end_date DATE,
	care_service CHAR(1) NOT NULL DEFAULT 'Y' CHECK(care_service IN ('N', 'Y')),
	alert_service CHAR(1) NOT NULL DEFAULT 'Y' CHECK(alert_service IN ('N', 'Y')),
	check_service CHAR(1) NOT NULL DEFAULT 'Y' CHECK(check_service IN ('N', 'Y'))
);

-- 체크리스트 테이블
CREATE TABLE checklist (
    check_id INT AUTO_INCREMENT PRIMARY KEY,
    service_no INT NOT NULL REFERENCES service_request(service_no),
    write_date DATE NOT NULL DEFAULT CURDATE(),
    medi_take CHAR(1) CHECK(medi_take IN ('N', 'Y')),
    normal_sleep_pattern CHAR(1) CHECK(normal_sleep_pattern IN ('N', 'Y')),
    normal_blood_pressure CHAR(1) CHECK(normal_blood_pressure IN ('N', 'Y')),
    normal_blood_sugar_level CHAR(1) CHECK(normal_blood_sugar_level IN ('N', 'Y')),
    consideration VARCHAR(100)
);

-- 게시판 테이블
CREATE TABLE post(
	post_no INT AUTO_INCREMENT PRIMARY KEY,
	user_no INT NOT NULL REFERENCES user(user_no),
	post_title VARCHAR(20) NOT NULL, 
	post_content VARCHAR(100) NOT NULL,
	post_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	post_like INT DEFAULT 0
);

-- 댓글 테이블
CREATE TABLE reply(
	reply_no INT AUTO_INCREMENT,
	post_no INT REFERENCES post(post_no) ON DELETE CASCADE,
	user_no INT NOT NULL REFERENCES user(user_no),
	reply_content VARCHAR(100) NOT NULL,
	reply_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	reply_like INT DEFAULT 0,
	CONSTRAINT PRIMARY KEY(reply_no, post_no)
);
```


## 👨‍💻 SQL 실행 결과 

<details>
<summary>서비스 신청 내역 수정</summary>
<div>
  <figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>서비스 종료 일자(end_date) 수정</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%EC%84%9C%EB%B9%84%EC%8A%A4%20%EC%A2%85%EB%A3%8C%20%EC%A0%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%EC%84%9C%EB%B9%84%EC%8A%A4%20%EC%A2%85%EB%A3%8C%20%ED%9B%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
    </p>
  </figure>
</div>
</details>

<br>

<details>
<summary>서비스 변경</summary>
<div>
  <figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>제공 서비스 변경(’Y’→’N’)</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%EC%9E%AC%EA%B3%B5%20%EC%84%9C%EB%B9%84%EC%8A%A4%20%EB%B3%80%EA%B2%BD%20%ED%9B%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%EC%A0%9C%EA%B3%B5%20%EC%84%9C%EB%B9%84%EC%8A%A4%20%EB%B3%80%EA%B2%BD%20%EC%A0%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
    </p>
  </figure>
</div>
</details>

<br>

<details>
<summary>특정 사용자의 서비스 이용 이력 조회</summary>
<div>
  <figure align="left"> 
    <p style="font-size: 14px;">
      <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%ED%8A%B9%EC%A0%95%20%EC%82%AC%EC%9A%A9%EC%9E%90%EC%9D%98%20%EC%9D%B4%EC%9A%A9%20%EC%9D%B4%EB%A0%A5%20%EC%A1%B0%ED%9A%8C.png?raw=true"/>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>뷰를 통한 정보 확인</summary>
<div>
<figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>진료 기록 확인</summary><br>
          <pre><code class="sql">
-- 진료 기록 확인
SELECT user_name, disease_name, diag_date, diag_type,comments,hospital_name
FROM medical_info_view
WHERE user_no = (
    SELECT user_no 
    FROM user 
    WHERE user_name = '이유진'
);
          </code></pre>
          <br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%A7%84%EB%A3%8C%20%EA%B8%B0%EB%A1%9D%20%ED%99%95%EC%9D%B8.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>처방 기록 확인</summary><br>
          <pre><code class="sql">
-- 처방 기록 확인
SELECT user_name, pre_date,dosage_cnt,dosage_amount,medi_name
FROM medical_info_view
WHERE user_no = (
    SELECT user_no 
    FROM user 
    WHERE user_name = '이유진'
);
          </code></pre>
          <br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%B2%98%EB%B0%A9%20%EA%B8%B0%EB%A1%9D%20%ED%99%95%EC%9D%B8.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
        <blockquote>
        <details>
          <summary>약 복용 정보 전달</summary><br>
          <pre><code class="sql">
-- 약 복용 정보 전달
SELECT *
FROM medical_info_view
WHERE user_no IN (
  SELECT u.user_no
  FROM service_request r
  INNER JOIN `user` u ON r.user_no = u.user_no
  WHERE u.user_protector_no IS NOT NULL
);
          </code></pre>
          <br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%9D%98%EC%95%BD%ED%92%88/%EC%95%BD%20%EB%B3%B5%EC%9A%A9%20%EC%A0%95%EB%B3%B4%20%EC%A0%84%EB%8B%AC.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
    </p>
</figure>
</div>
</details>

<br>

<details>
<summary>처방 정보 현재 날짜로 수정</summary>
<div>
<figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>처방 정보 조회 및 추가</summary><br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%B2%98%EB%B0%A9%20%EA%B8%B0%EB%A1%9D%20INSERT.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>처방 정보 수정</summary><br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%B2%98%EB%B0%A9%20%EA%B8%B0%EB%A1%9D%20UPDATE.png?raw=true"/><br>
        </details>
      </blockquote>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>의약품 정보</summary>
<div>
<figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>의약품 조회</summary><br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%9D%98%EC%95%BD%ED%92%88/%EC%9D%98%EC%95%BD%ED%92%88%20SELECT.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>의약품 추가</summary><br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%9D%98%EC%95%BD%ED%92%88/%EC%9D%98%EC%95%BD%ED%92%88%20INSERT.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>의약품 수정</summary><br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%9D%98%EC%95%BD%ED%92%88/%EC%9D%98%EC%95%BD%ED%92%88%20UPDATE.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>의약품 삭제</summary><br>
            <img src ="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%9D%98%EC%95%BD%ED%92%88/%EC%9D%98%EC%95%BD%ED%92%88%20DELETE.png?raw=true"/><br>
        </details>
      </blockquote>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>유저 이름으로 호출 내역 조회</summary>
<div>
  <figure align="left"> 
    <p style="font-size: 14px;">
      <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%84%9C%EB%B9%84%EC%8A%A4/%EC%9C%A0%EC%A0%80%20%EC%9D%B4%EB%A6%84%EC%9C%BC%EB%A1%9C%20%ED%98%B8%EC%B6%9C%20%EB%82%B4%EC%97%AD%20%EC%A1%B0%ED%9A%8C.png?raw=true"/>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>체크 리스트</summary>
<div>
  <figure align="left"> 
      <p style="font-size: 14px;">
        <blockquote>
          <details>
            <summary>체크 리스트 수정</summary>
            <div>
              <p style="font-size: 14px;">
              <li>전) <br>
                <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%B2%B4%ED%81%AC%EB%A6%AC%EC%8A%A4%ED%8A%B8%20%EC%88%98%EC%A0%95%20%EC%A0%84.png?raw=true"/> <br>
              </li>
              <li>후) <br>
                <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EC%A7%84%EB%A3%8C,%20%EC%B2%98%EB%B0%A9/%EC%B2%B4%ED%81%AC%EB%A6%AC%EC%8A%A4%ED%8A%B8%20%EC%88%98%EC%A0%95%20%ED%9B%84.png?raw=true"/> <br>
              </li>
            </p>
            </div>
          </details>
        </blockquote>
      </p>
  </figure>
</div>
</details>

<br>

<details>
<summary>기관 정보</summary>
<div>
  <figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>기관 정보 추가</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B8%B0%EA%B4%80/%EA%B8%B0%EA%B4%80%20%EC%A0%95%EB%B3%B4%20%EC%B6%94%EA%B0%80%20%EC%A0%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B8%B0%EA%B4%80/%EA%B8%B0%EA%B4%80%20%EC%A0%95%EB%B3%B4%20%EC%B6%94%EA%B0%80%20%ED%9B%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>기관 정보 수정</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B8%B0%EA%B4%80/%EA%B8%B0%EA%B4%80%20%EC%A0%95%EB%B3%B4%20%EC%88%98%EC%A0%95%20%EC%A0%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B8%B0%EA%B4%80/%EA%B8%B0%EA%B4%80%20%EC%A0%95%EB%B3%B4%20%EC%88%98%EC%A0%95%20%ED%9B%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>게시물 작성, 조회, 좋아요</summary>
<div>
<figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>게시물 작성</summary><br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EA%B2%8C%EC%8B%9C%EB%AC%BC%20%EC%9E%91%EC%84%B1.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>게시물 수정</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EA%B2%8C%EC%8B%9C%EB%AC%BC%20%EC%88%98%EC%A0%95%20%EC%A0%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EA%B2%8C%EC%8B%9C%EB%AC%BC%20%EC%88%98%EC%A0%95%20%ED%9B%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>게시물 좋아요</summary><br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EA%B2%8C%EC%8B%9C%EB%AC%BC%20%EC%A2%8B%EC%95%84%EC%9A%94%20%ED%9B%84.png?raw=true"/><br>
        </details>
      </blockquote>
    </p>
 </figure>
</div>
</details>

<br>

<details>
<summary>댓글 조회, 좋아요</summary>
<div>
<figure align="left"> 
    <p style="font-size: 14px;">
      <blockquote>
        <details>
          <summary>댓글 조회</summary><br>
            <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EB%8C%93%EA%B8%80%20%EC%A1%B0%ED%9A%8C.png?raw=true"/><br>
        </details>
      </blockquote>
      <br>
      <blockquote>
        <details>
          <summary>댓글 좋아요</summary>
          <div>
            <p style="font-size: 14px;">
            <li>전) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EB%8C%93%EA%B8%80%20%EC%A2%8B%EC%95%84%EC%9A%94%20%EC%A0%84.png?raw=true"/> <br>
            </li>
            <li>후) <br>
              <img src="https://github.com/beyond-sw-camp/be08-1st-CDLKJ-SilverTown/blob/main/img/QueryImg/%EA%B2%8C%EC%8B%9C%EB%AC%BC/%EB%8C%93%EA%B8%80%20%EC%A2%8B%EC%95%84%EC%9A%94%20%ED%9B%84.png?raw=true"/> <br>
            </li>
          </p>
          </div>
        </details>
      </blockquote>
    </p>
 </figure>
</div>
</details>



<br>

## 🍟팀 회고록

🐹**김민지**

🐐**김태영**
  
🐰**이유진**

🐢**조혜인**

🐻**최규범**