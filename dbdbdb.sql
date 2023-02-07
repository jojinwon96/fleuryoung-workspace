/*
--비회원_주문_상세
CREATE TABLE TB_NON_MEMBER_ORDER_DETAIL (
	OD_ID	NUMBER	DEFAULT 0	NOT NULL,
	OD_COUNT	NUMBER	DEFAULT 0	NOT NULL,
	OD_STATUS	NUMBER	DEFAULT 1	NOT NULL CHECK(OD_STATUS IN(1,2,3)),
	P_ID	VARCHAR2(20)	DEFAULT ''	NOT NULL,
	ORD_ID	NUMBER	DEFAULT 0	NOT NULL
);
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_ID IS '주문상세정보';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_COUNT IS '상품수량';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_STATUS IS '1.준비중/2.배송중/3.배송완료';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.P_ID IS '상품번호';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.ORD_ID IS '주문번호';
------------------------------------------------------------------
(PRICE removed)상품가격 뺐음
*/
----------------------<TB_NON_MEMBER_ORDER>----------------------
INSERT INTO TB_NON_MEMBER_ORDER(ORD_ID,
                         ORD_DATE,
                         ORD_POSTAL,
                         ORD_STREET,
                         ORD_ADDRESS,
                         ORD_REQUEST,
                         ORD_RECEIVER_NAME,
                         ORD_RECEIVER_PHONE)
VALUES (SEQ_NON_ORDER.NEXTVAL,
        '2023-02-06',
        10251,
        '경기도 고양시 일산동구 고봉로702번길',
        '87-43(설문동)',
        NULL,
        '최수현',
        '01083731234');
        
INSERT INTO TB_NON_MEMBER_ORDER(ORD_ID,
                         ORD_DATE,
                         ORD_POSTAL,
                         ORD_STREET,
                         ORD_ADDRESS,
                         ORD_REQUEST,
                         ORD_RECEIVER_NAME,
                         ORD_RECEIVER_PHONE)
VALUES (SEQ_NON_ORDER.NEXTVAL,
        '2023-02-06',
        17797,
        '경기도 평택시 청북읍 토진3길',
        '15-6',
        '빨리 보내주세요',
        '박시우',
        '01001992837');
        
INSERT INTO TB_NON_MEMBER_ORDER(ORD_ID,
                         ORD_DATE,
                         ORD_POSTAL,
                         ORD_STREET,
                         ORD_ADDRESS,
                         ORD_REQUEST,
                         ORD_RECEIVER_NAME,
                         ORD_RECEIVER_PHONE)
VALUES (SEQ_NON_ORDER.NEXTVAL,
        '2023-02-06',
        46927,
        '부산광역시 사상구 백양대로950번나길',
        '76(모라동)',
        '없음',
        '김신애',
        '01010984536');
        
INSERT INTO TB_NON_MEMBER_ORDER(ORD_ID,
                         ORD_DATE,
                         ORD_POSTAL,
                         ORD_STREET,
                         ORD_ADDRESS,
                         ORD_REQUEST,
                         ORD_RECEIVER_NAME,
                         ORD_RECEIVER_PHONE)
VALUES (SEQ_NON_ORDER.NEXTVAL,
        '2023-02-06',
        02465,
        '서울특별시 동대문구 고산자로62길',
        '8(제기동)',
        '예쁘게 포장해주세요',
        '이사라',
        '0105647980');
        
INSERT INTO TB_NON_MEMBER_ORDER(ORD_ID,
                         ORD_DATE,
                         ORD_POSTAL,
                         ORD_STREET,
                         ORD_ADDRESS,
                         ORD_REQUEST,
                         ORD_RECEIVER_NAME,
                         ORD_RECEIVER_PHONE)
VALUES (SEQ_NON_ORDER.NEXTVAL,
        '2023-02-06',
        23049,
        '인천광역시 강화군 길상면 신촌로146번길',
        '12',
        NULL,
        '장기우',
        '01056372889');
----------------------<TB_NON_MEMBER_ORDER_DETAIL>----------------------
INSERT INTO TB_NON_MEMBER_ORDER_DETAIL(OD_ID,
                                OD_COUNT,
                                OD_STATUS,
                                ORD_ID,
                                P_ID)
VALUES (SEQ_NON_MEMBER_ORDER_DETAIL.NEXTVAL,
        1,
        3,
        1,
        1);
        
INSERT INTO TB_NON_MEMBER_ORDER_DETAIL(OD_ID,
                                OD_COUNT,
                                OD_STATUS,
                                ORD_ID,
                                P_ID)
VALUES (SEQ_NON_MEMBER_ORDER_DETAIL.NEXTVAL,
        1,
        3,
        2,
        2);
        
INSERT INTO TB_NON_MEMBER_ORDER_DETAIL(OD_ID,
                                OD_COUNT,
                                OD_STATUS,
                                ORD_ID,
                                P_ID)
VALUES (SEQ_NON_MEMBER_ORDER_DETAIL.NEXTVAL,
        3,
        2,
        3,
        3);
        
INSERT INTO TB_NON_MEMBER_ORDER_DETAIL(OD_ID,
                                OD_COUNT,
                                OD_STATUS,
                                ORD_ID,
                                P_ID)
VALUES (SEQ_NON_MEMBER_ORDER_DETAIL.NEXTVAL,
        5,
        2,
        4,
        4);
        
INSERT INTO TB_NON_MEMBER_ORDER_DETAIL(OD_ID,
                                OD_COUNT,
                                OD_STATUS,
                                ORD_ID,
                                P_ID)
VALUES (SEQ_NON_MEMBER_ORDER_DETAIL.NEXTVAL,
        1,
        1,
        5,
        5);
----------------------<TB_NON_CARD>----------------------
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (1,
        NULL,
        NULL,
        '사랑해요~');
        
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (2,
        '',
        '',
        '생신축하드려요');
        
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (3,
        '',
        '',
        NULL);
        
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (4,
        NULL,
        NULL,
        '');
        
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (5,
        '최강',
        '지존',
        '파이팅');
----------------------<TB_NON_REFUND>----------------------
INSERT INTO TB_NON_REFUND(OD_ID,
                        REFUND_TYPE,
                        REFUND_TITLE,
                        REFUND_COMMENT,
                        REFUND_PHONE,
                        REFUND_EMAIL,
                        REFUND_IMG,
                        REFUND_APPROVAL_STATUS,
                        REFUND_STATUS)
VALUES (1,
        2,
        '무제',
        '잘못 구매해서 환불 부탁드립니다',
        '01083731234',
        'sooh0199@naver.com',
        NULL,
        1,
        3);
        
INSERT INTO TB_NON_REFUND(OD_ID,
                        REFUND_TYPE,
                        REFUND_TITLE,
                        REFUND_COMMENT,
                        REFUND_PHONE,
                        REFUND_EMAIL,
                        REFUND_IMG,
                        REFUND_APPROVAL_STATUS,
                        REFUND_STATUS)
VALUES (2,
        3,
        '시들었네요',
        '일주일만에 시들었네요',
        '01001992837',
        'szy_woo1@naver.com',
        'resources/img/non_refund/non_refund_02.png',
        2,
        3);
        
INSERT INTO TB_NON_REFUND(OD_ID,
                        REFUND_TYPE,
                        REFUND_TITLE,
                        REFUND_COMMENT,
                        REFUND_PHONE,
                        REFUND_EMAIL,
                        REFUND_IMG,
                        REFUND_APPROVAL_STATUS,
                        REFUND_STATUS)
VALUES (3,
        1,
        '색상이 잘못왔어요',
        '제가 고른 색상이 아니네요. 교환해주세요',
        '01010984536',
        'sinae_die@naver.com',
        'resources/img/non_refund/non_refund_03.png',
        1,
        2);
        
INSERT INTO TB_NON_REFUND(OD_ID,
                        REFUND_TYPE,
                        REFUND_TITLE,
                        REFUND_COMMENT,
                        REFUND_PHONE,
                        REFUND_EMAIL,
                        REFUND_IMG,
                        REFUND_APPROVAL_STATUS,
                        REFUND_STATUS)
VALUES (4,
        2,
        '꽃이 필요 없어졋어요',
        '환불좀 부탁할게요',
        '0105647980',
        'saraitnae@naver.com',
        NULL,
        2,
        2);
        
INSERT INTO TB_NON_REFUND(OD_ID,
                        REFUND_TYPE,
                        REFUND_TITLE,
                        REFUND_COMMENT,
                        REFUND_PHONE,
                        REFUND_EMAIL,
                        REFUND_IMG,
                        REFUND_APPROVAL_STATUS,
                        REFUND_STATUS)
VALUES (5,
        3,
        '너무 늦게 배송됐어요',
        '생일 다 지나서 배송하시면 곤란해요',
        '01056372889',
        'leon_098@naver.com',
        'resources/img/non_refund/non_refund_05.png',
        1,
        1);

----------------------<TB_NON_PAYMENT>----------------------
INSERT INTO TB_NON_PAYMENT(PAY_ID,
                           OD_ID,
                           TOTAL_PAY,
                           PAY_DATE)
VALUES (SEQ_NON_PAYMENT.NEXTVAL,
        1,
        50000,
        '2023-02-06');
        
INSERT INTO TB_NON_PAYMENT(PAY_ID,
                           OD_ID,
                           TOTAL_PAY,
                           PAY_DATE)
VALUES (SEQ_NON_PAYMENT.NEXTVAL,
        2,
        50000,
        '2023-02-06');
        
INSERT INTO TB_NON_PAYMENT(PAY_ID,
                           OD_ID,
                           TOTAL_PAY,
                           PAY_DATE)
VALUES (SEQ_NON_PAYMENT.NEXTVAL,
        3,
        50000,
        '2023-02-06');
        
INSERT INTO TB_NON_PAYMENT(PAY_ID,
                           OD_ID,
                           TOTAL_PAY,
                           PAY_DATE)
VALUES (SEQ_NON_PAYMENT.NEXTVAL,
        4,
        50000,
        '2023-02-07');
        
INSERT INTO TB_NON_PAYMENT(PAY_ID,
                           OD_ID,
                           TOTAL_PAY,
                           PAY_DATE)
VALUES (SEQ_NON_PAYMENT.NEXTVAL,
        5,
        50000,
        '2023-02-07');