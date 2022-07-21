select e4.educ_code
       ,substr(e4.educ_code,1,1) 			  "field"
 	   ,SJIHR.is_func.codenm('T101',substr(e4.educ_code,1,1))		"역량별"
       ,substr(e4.educ_code,2,1) 			  "charact"
       ,SJIHR.is_func.codenm('T102',substr(e4.educ_code,2,1)) 	"계층별"
       ,substr(e4.educ_code,3)                "method"
       ,SJIHR.is_func.codenm('T103',substr(e4.educ_code,3)) 		"직무별"
       ,e4.degrees                            "차수"
       ,e4.text                               "과정명"

       ,e4.days                               "days"
       ,e4.days_check                         "days_check"
       ,e4.mon_flag                           "chk_mon"
       ,e4.tue_flag                           "chk_tue"
       ,e4.wed_flag                           "chk_wed"
       ,e4.thu_flag                           "chk_thu"
       ,e4.fri_flag                           "chk_fri"
       ,e4.sat_flag                           "chk_sat"
       ,e4.sun_flag                           "chk_sun"     
       ,e4.requirement                        "requirement"
       ,e4.vendor_id                          "vendor_id"
       ,e4.vendor_name                        "vendor_name"
       ,nvl(e4.unit,0)						  "unit"
       ,e4.times                              "times"
       ,e4.start_date                         "start_date"
       ,e4.end_date                           "end_date"
       ,e4.busitrip_expns_crt                 "busitrip_expns_crt"
       ,e4.edu_amt                            "edu_amt"
       ,e4.refund                             "refund"
       ,e4.ceriatt                            "ceriatt"
       ,e4.return_amount                      "return_amount"
       ,e4.section                            "section"    
       ,e4.edu_gubun                          "edu_gubun"
       ,e4.edu_status                         "edu_status"
       ,e4.dutycrt                            "dutycrt"
       ,e4.plan_year                          "plan_year"
       ,e4.description						  "description"
       ,e4.lect_name						  "lect_name"
       ,e4.edu_id							  "edu_id"
       ,e4.oper_apply_yn					  "oper_apply_yn"
 from SJIHR.is_ed04 e4
 where 1=1
   and e4.text is not null

   order by e4.text desc

-- 1 교육과정 관리 안함
SELECT* FROM SJIHR.is_ed01 ORDER BY LAST_UPDATE_DATE DESC

--
SELECT* FROM SJIHR.is_ed02 ORDER BY PLAN_YEAR DESC, LAST_UPDATE_DATE DESC


-- 3. 강사 없음 ,
--SELECT* FROM SJIHR.is_ed03 ORDER BY START_DATE DESC

--4 교육계획
SELECT* FROM SJIHR.is_ed04 ORDER BY START_DATE DESC

--5 교육실적 없음
--SELECT* FROM SJIHR.is_ed05 ORDER BY START_DATE DESC




select  substr(e4.educ_code,1,1) 						"field"
       ,SJIHR.is_func.codenm('T101',substr(e4.educ_code,1,1)) "field_disp"
       ,substr(e4.educ_code,2,1) 						"charact"
       ,SJIHR.is_func.codenm('T102',substr(e4.educ_code,2,1)) "charact_disp"
       ,substr(e4.educ_code,3) 							"method"
       ,SJIHR.is_func.codenm('T103',substr(e4.educ_code,3)) 	"method_disp"
       ,e4.degrees										"degrees"
       ,e4.text                                         "process_disp"
       ,e4.vendor_name                                  "vendor_name"
       ,e4.vendor_id                                  	"vendor_id"
       ,e4.vendor_site_id                               "vendor_site_id"
       ,e4.vendor_number                                "vendor_number"
       ,nvl(e4.unit,0)									"unit"
       ,e4.times                                        "times"
       ,e4.edu_gubun									"edu_gubun"
       ,e4.section										"section"
       ,e4.start_date                                   "start_date"
       ,e4.end_date                                     "end_date"
       ,e4.edu_status                                   "edu_status"
       ,e4.plan_year									"plan_year"
       ,e4.edu_id										"edu_id"
  from SJIHR.is_ed04 e4
 where 1=1
   and e4.spvproc_flag = 'Y'
and e4.plan_year = 2022

SELECT* FROM  SJIHR.is_ed04


--교육과정
SELECT* FROM SJIHR.is_ed01 ORDER BY START_DATE DESC

SELECT* FROM SJIHR.is_ed02 ORDER BY LAST_UPDATE_DATE DESC

--SELECT* FROM SJIHR.is_ed03 ORDER BY START_DATE DESC

SELECT* FROM SJIHR.is_ed04 ORDER BY START_DATE DESC

--SELECT* FROM SJIHR.is_ed05 ORDER BY START_DATE DESC

SELECT* FROM SJIHR.is_ed06 ORDER BY LAST_UPDATE_DATE DESC

--SELECT* FROM SJIHR.is_ed07 ORDER BY START_DATE DESC



-- 교육신청 내역인거같음
SELECT* FROM SJIHR.is_ed04_personal WHERE EMP_id=2174 AND plan_year = 2019
