
-- 의료정보 통합 뷰
-- 회원, 병원, 질병, 의약품, 처방+진료기록
CREATE OR REPLACE view medical_info_view
AS 
-- SELECT u.user_id, h.hospital_no, dis.disease_code,medi.medi_no,pr.pre_no
-- h.*, dr.*, dis.*,medi.*,pr.*
 
SELECT u.user_no,u.user_name,dis.disease_name,dr.diag_date,
dr.diag_type,dr.comments,h.hospital_name,pr.pre_date,pr.dosage_cnt,pr.dosage_amount,medi.medi_name
FROM user u
LEFT JOIN diagnosis_record dr on u.user_no=dr.user_no-- 회원+진료기록 ook
LEFT JOIN hospital h on h.hospital_no=dr.hospital_no-- 병원+진료기록ook
LEFT JOIN disease dis on dis.disease_code=dr.disease_code-- 진료기록+질병 dok
LEFT join prescription_record pr ON u.user_no=pr.user_no-- 회원+처방기록ok
LEFT join medicine medi on medi.medi_no=pr.medi_no-- 처방기록+의약품

;

SELECT * FROM medical_info_view;