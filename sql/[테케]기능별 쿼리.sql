-- 1. 사용자 또는 보호자가 돌봄 서비스를 신청한다.
-- 2. 등록 시 서비스ID, 서비스명, 신청자명, 서비스 일자 등을 포함한다.
-- insert 서비스
INSERT INTO service_request (user_no, inst_no, start_date, end_date, care_service, alert_service, check_service)
VALUES 
(1, 1, '2023-01-01', '2023-06-01', 'Y', 'Y', 'Y'),
(2, 2, '2023-02-01', '2023-07-01', 'Y', 'N', 'Y'),
(3, 3, '2023-03-01', '2023-08-01', 'Y', 'Y', 'N'),
(4, 4, '2023-04-01', '2023-09-01', DEFAULT, DEFAULT, DEFAULT),
(5, 5, '2023-05-01', NULL, 'Y', 'N', 'N');

-- 데이터 확인용
SELECT * FROM service_request;

-- 1. 사용자가 기존에 등록한 서비스 신청 내역을 수정하는 기능이다.
-- 2. 서비스명, 서비스 일자 등을 수정할 수 있도록 한다.
-- update 서비스
-- 서비스 종료
UPDATE service_request
SET end_date = CURDATE()
WHERE service_no = 5;

-- 제공 서비스 변경
UPDATE service_request
SET care_service = 'N'
WHERE service_no = 1;
-- 데이터 확인용
SELECT * FROM service_request;

-- 1. 과거이력을 모두 포함한 서비스 이력을 조회하는 기능이다.
-- 특정 사용자의 서비스 이용 이력 조회
SELECT *
FROM service_request
WHERE user_no = 1;

-- 1. 의약품 복용 시간에 맞춰 사용자에게 알림으로 복용 시간을 안내해주어야 한다.
-- 2. 안내 시에는 의약품명을 같이 알려주어야 한다.
-- 서비스 등록자가 보호자면 그 사람이 보호자인 사람에게 -> 굳이..?
-- 서비스 등록자가 당사자라면 당사자에 대한 약 복용 정보 전달

-- 당사자
SELECT *
FROM medical_info_view
WHERE user_no IN (
	SELECT u.user_no
	FROM service_request r
	INNER JOIN `user` u ON r.user_no = u.user_no
	WHERE u.user_protector_no IS NOT NULL
);

-- 보호자
SELECT *
FROM service_request r
INNER JOIN `user` u ON r.user_no = u.user_no
WHERE u.user_protector_no IS NULL;



-- 1. 회원이 뷰를 통해 진료일자, 진료 유형을 확인할 수 있어야 한다.
SELECT diag_date,diag_type FROM medical_info_view;
-- 2. 회원이 뷰를 통해 처방일자, 의약품이름, 병원 이름 1회 투약량, 1일 투약횟수 등을 확인할 수 있어야 한다.
SELECT pre_date,medi_name, hospital_name,dosage_cnt, dosage_amount FROM medical_info_view ;

-- 긴급 호출 내역 조회
-- 고유 유져 넘버로 조회
SELECT u.user_no,
         u.user_name,
         u.user_phone,
         s.sos_no,
         s.sos_time 
FROM user u
INNER JOIN sos s ON u.user_no = s.user_no
WHERE u.user_no = 2;

-- 유저 이름으로 호출 내역 조회
SELECT u.user_no,
         u.user_name,
         u.user_phone,
         s.sos_no,
         s.sos_time 
FROM user u
INNER JOIN sos s ON u.user_no = s.user_no
WHERE u.user_name = '김태영';


/************************************************************************************/

-- 체크리스트 insert
/*
INSERT INTO checklist (inst_no, write_date, medi_take, normal_sleep_pattern, normal_blood_pressure, normal_blood_sugar_level, consideration)
VALUES();
*/

-- 체크리스트 임의 값 
INSERT INTO checklist (service_no, write_date, medi_take, normal_sleep_pattern, normal_blood_pressure, normal_blood_sugar_level, consideration)
VALUES(2, '2024-05-30', 'Y', 'N', 'N', 'Y', 'so bad');


-- 실패 케이스 :  약복용,수면,혈압, 혈당 수치 Y/N이외에 다른 값 입력.
INSERT INTO checklist (service_no, write_date, medi_take, normal_sleep_pattern, normal_blood_pressure, normal_blood_sugar_level, consideration)
VALUES(2, '2024-05-30', 'Y', 'K', 'J', 'Y', 'so bad');

-- 기관 전체 정보 조회
SELECT *
FROM institutions i;

-- 기관 정보 등록
INSERT INTO institutions ( inst_name, inst_phone, inst_addr)
VALUES ('젊음의 행진 기관','054-823-2233','경상북도 안동시 용상로 28-9');

SELECT * FROM institutions;

-- 기관 정보 수정
UPDATE institutions
SET inst_name = '이건 바뀌어 버린 기관',
     inst_phone = '031-123-1234',
     inst_addr = '경상북도 영주시 휴천1동 27-17'
WHERE inst_no = 3;

SELECT * FROM institutions;

-- 기관 정보 삭제
DELETE FROM institutions
WHERE inst_no = 3;

-- DML 

-- SELECT
-- 호출 내역 조회
SELECT *
FROM sos
WHERE user_no = 1; 



-- 게시물 조회
SELECT u.user_id, p.post_no, p.post_title, p.post_content, p.post_date, p.post_like
FROM user u
INNER JOIN post p ON u.user_no = p.user_no
WHERE u.user_no = 2;



-- 댓글 조회
SELECT u.user_id, p.post_no, r.reply_no, r.reply_content , r.reply_date, r.reply_like
FROM user u
INNER JOIN post p ON u.user_no = p.user_no
INNER JOIN reply r ON p.post_no =  r.post_no 
WHERE u.user_no = 3;

SELECT * FROM sos;

-- 호출 내역 수정
UPDATE sos 
SET hospital_no = 1 -- 병원 정보 오토라서 300n번대에서 1번으로 수정
WHERE sos_no = 1;

SELECT * FROM post;

-- 게시물 수정
UPDATE post SET post_title = '찐 만족 후기' WHERE user_no = 1;


-- 좋아요 추가
UPDATE post SET post_like = post_like + 1 WHERE user_no = 2;
UPDATE post SET post_like = post_like + 1 WHERE user_no = 4;
UPDATE post SET post_like = post_like + 1 WHERE user_no = 2;


SELECT * FROM reply;
-- 댓글 수정
UPDATE reply
SET reply_content = '다들 똑같은 마음이시군요! ㅎㅎ'
WHERE reply_no = 2;


-- DELETE
SELECT * FROM sos;
-- 호출 내역 삭제
DELETE
FROM sos 
WHERE sos_no = 1;

-- 게시물 삭제
DELETE FROM post WHERE user_no = 5;
DELETE FROM post WHERE user_no = 4;
DELETE FROM post WHERE user_no = 2;


-- 댓글 삭제
DELETE FROM reply WHERE reply_no = 1;
DELETE FROM reply WHERE reply_no = 2;
DELETE FROM reply WHERE reply_no = 3;


-- 회원 정보 확인
SELECT *
FROM user
WHERE user_name = '이유진';

-- 진료 기록 확인
SELECT *
FROM medical_info_view
WHERE user_no = (
    SELECT user_no 
    FROM user 
    WHERE user_name = '이유진'
);

-- 처방 기록 확인
SELECT *
FROM medical_info_view
WHERE user_no = (
    SELECT user_no 
    FROM user 
    WHERE user_name = '이유진'
);

SELECT * FROM `user`;

-- 회원 탈퇴
DELETE 
FROM user
WHERE user_name = '이유진';


/************************* 의료 서비스 테케 *************************/
-- 의약품 테이블
-- 수정, 삭제 시연을 위한 의약품 샘플 데이터 INSERT
INSERT INTO medicine VALUES
('medi_no10', '9번 의약품', 'TEST10-복용방법', 'TEST10-효능');

SELECT * FROM medicine;

-- 의약품 정보 수정
UPDATE medicine
SET medi_name='10번 의약품'
WHERE medi_no='medi_no10';

SELECT * FROM medicine;

-- 의약품 정보 삭제
DELETE 
FROM medicine
WHERE medi_no='medi_no10';

SELECT * FROM medicine;


-- 처방 기록
-- 수정, 삭제 시연을 위한 처방 샘플 데이터 INSERT
INSERT INTO prescription_record VALUES
('P016', '2023-11-15', 3, 200, 15, 3, 'disease01', 25, 'medi_no01');
SELECT * FROM prescription_record;

-- 처방 정보 수정(현재 날짜로)
UPDATE prescription_record
SET pre_date=CURDATE()
WHERE pre_no='P016';
SELECT * FROM prescription_record;

/*
-- 처방 정보 삭제
DELETE 
FROM prescription_record
WHERE pre_no='P016';
SELECT * FROM prescription_record;
*/