-- 판매자 로그인 조회
SELECT
        SEL_NO
        ,SEL_ID
        , SEL_PW
        , SEL_BUSINESS_NO
        , SEL_STORE_NAME
        , SEL_NAME
        , SEL_EMAIL
        , SEL_PHONE
        , SEL_TEL
        , SEL_FAX
        , SEL_POSTAL
        , SEL_STREET
        , SEL_ADDRESS
        , SEL_IMG
        , SEL_STATUS
        , SEL_ENROLL_DATE
  FROM  TB_SELLER
 WHERE  SEL_ID = ?
   AND  SEL_PW = ?
   AND  SEL_STATUS = 'Y'
;

-- 판매자 회원가입
INSERT 
  INTO  TB_SELLER 
       (
            SEL_NO
          ,SEL_ID 
          ,SEL_PW
          ,SEL_BUSINESS_NO
          ,SEL_STORE_NAME
          ,SEL_NAME
          ,SEL_EMAIL
          ,SEL_PHONE
          ,SEL_TEL
          ,SEL_FAX
          ,SEL_POSTAL
          ,SEL_STREET
          ,SEL_ADDRESS
          ,SEL_IMG
          ,SEL_STATUS
          ,SEL_ENROLL_DATE
       )
   VALUES
       (
       SEQ_SELLER.NEXTVAL
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,?
       ,'Y'
       ,SYSDATE
       )
;
-- 판매자 마이페이지 수정
UPDATE    TB_SELLER
   SET    SEL_BUSINESS_NO = ?
        , SEL_STORE_NAME = ?
        , SEL_NAME = ?
        , SEL_EMAIL = ?
        , SEL_PHONE = ?
        , SEL_TEL = ?
        , SEL_FAX = ?
        , SEL_POSTAL = ?
        , SEL_STREET = ?
        , SEL_ADDRESS = ?
        , SEL_IMG = ?
 WHERE    SEL_NO = ?
;

-- 판매자 마이페이지 조회
SELECT
        SEL_NO
        , SEL_ID
        , SEL_PW
        , SEL_BUSINESS_NO
        , SEL_STORE_NAME
        , SEL_NAME
        , SEL_EMAIL
        , SEL_PHONE
        , SEL_TEL
        , SEL_FAX
        , SEL_POSTAL
        , SEL_STREET
        , SEL_ADDRESS
        , SEL_IMG
        , SEL_STATUS
        , SEL_ENROLL_DATE
  FROM  TB_SELLER
 WHERE  SEL_NO = ?
   AND  SEL_STATUS = 'Y';
   SELECT * FROM TB_PRODUCT;

SELECT
      (SELECT P_IMG1 FROM TB_PRODUCT_IMG I WHERE I.P_ID = P.P_ID) "P_PICTURE"
    , P_NAME
    , P_NETPRICE
    , P_STOCK
    , P_ENROLL_DATE
    , P_SALES
    , (SELECT CATEGORY_NAME FROM TB_CATEGORY WHERE CATEGORY_NO = P.P_ID) "CATEGORY_NAME"
  FROM TB_PRODUCT P
 WHERE P_ID = 4;
   