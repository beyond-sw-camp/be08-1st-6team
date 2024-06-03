
/*******************************생성 전***************************************/
SELECT sr.*,c.medi_take,(
		SELECT CONCAT(ROUND(AVG(DATEDIFF(ssr.end_date, ssr.start_date))),'일')
		FROM service_request ssr
		WHERE ssr.inst_no = sr.inst_no
	) AS '평균 서비스 기간'
FROM service_request sr
LEFT JOIN checklist c 
ON sr.service_no=c.service_no
WHERE sr.start_date>'2023-01-01' OR c.medi_take='Y'
GROUP BY sr.inst_no
ORDER BY sr.service_no ASC, sr.start_date DESC;

/*******************************인덱스 생성***************************************/

CREATE INDEX idx_inst_no ON service_request(inst_no);

SHOW INDEX FROM service_request;

-- ALTER TABLE service_request DROP INDEX idx_inst_no;


/*******************************인덱스 적용 확인***************************************/

EXPLAIN 
	SELECT sr.*,c.medi_take,(
		SELECT CONCAT(ROUND(AVG(DATEDIFF(ssr.end_date, ssr.start_date))),'일')
		FROM service_request ssr
		WHERE ssr.inst_no = sr.inst_no
	) AS '평균 서비스 기간'
FROM service_request sr
LEFT JOIN checklist c 
ON sr.service_no=c.service_no
WHERE sr.start_date>'2023-01-01' OR c.medi_take='Y'
GROUP BY sr.inst_no
ORDER BY sr.service_no ASC, sr.start_date DESC;


/*******************************인덱스 적용 후***************************************/

-- 인덱스 테스트 용 조회 쿼리문
-- 기관별 정보를 조회하는 쿼리라고 가정
-- 기관별 서비스 평균 제공 시간,'2023-01-01'이후에 서비스를 제공하거나, 약 복용을 제공하거나
-- 
SELECT sr.*,c.medi_take,(
		SELECT CONCAT(ROUND(AVG(DATEDIFF(ssr.end_date, ssr.start_date))),'일')
		FROM service_request ssr
		WHERE ssr.inst_no = sr.inst_no
	) AS '평균 서비스 기간'
FROM service_request sr
LEFT JOIN checklist c 
ON sr.service_no=c.service_no
WHERE sr.start_date>'2023-01-01' OR c.medi_take='Y'
GROUP BY sr.inst_no
ORDER BY sr.service_no ASC, sr.start_date DESC;
