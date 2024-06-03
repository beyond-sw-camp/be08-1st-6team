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

-- 약_처방기록 연결테이블
/*
CREATE TABLE medicine_prescription(
	-- FK
	medi_no VARCHAR(10),
	pre_no VARCHAR(10),

	FOREIGN KEY (medi_no) REFERENCES medicine(medi_no), -- 의약품PK
	FOREIGN KEY (pre_no) REFERENCES prescription_record(pre_no) -- 처방기록 PK
);
*/


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