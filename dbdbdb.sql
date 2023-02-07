/*
--��ȸ��_�ֹ�_��
CREATE TABLE TB_NON_MEMBER_ORDER_DETAIL (
	OD_ID	NUMBER	DEFAULT 0	NOT NULL,
	OD_COUNT	NUMBER	DEFAULT 0	NOT NULL,
	OD_STATUS	NUMBER	DEFAULT 1	NOT NULL CHECK(OD_STATUS IN(1,2,3)),
	P_ID	VARCHAR2(20)	DEFAULT ''	NOT NULL,
	ORD_ID	NUMBER	DEFAULT 0	NOT NULL
);
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_ID IS '�ֹ�������';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_COUNT IS '��ǰ����';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.OD_STATUS IS '1.�غ���/2.�����/3.��ۿϷ�';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.P_ID IS '��ǰ��ȣ';
COMMENT ON COLUMN TB_NON_MEMBER_ORDER_DETAIL.ORD_ID IS '�ֹ���ȣ';
------------------------------------------------------------------
(PRICE removed)��ǰ���� ����
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
        '��⵵ ���� �ϻ굿�� �����702����',
        '87-43(������)',
        NULL,
        '�ּ���',
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
        '��⵵ ���ý� û���� ����3��',
        '15-6',
        '���� �����ּ���',
        '�ڽÿ�',
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
        '�λ걤���� ��� �����950������',
        '76(���)',
        '����',
        '��ž�',
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
        '����Ư���� ���빮�� ����ڷ�62��',
        '8(���⵿)',
        '���ڰ� �������ּ���',
        '�̻��',
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
        '��õ������ ��ȭ�� ���� ���̷�146����',
        '12',
        NULL,
        '����',
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
        '����ؿ�~');
        
INSERT INTO TB_NON_CARD(OD_ID,
                        RIBBON_LEFT,
                        RIBBON_RIGHT,
                        RIBBON_MESSAGE)
VALUES (2,
        '',
        '',
        '�������ϵ����');
        
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
        '�ְ�',
        '����',
        '������');
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
        '����',
        '�߸� �����ؼ� ȯ�� ��Ź�帳�ϴ�',
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
        '�õ���׿�',
        '�����ϸ��� �õ���׿�',
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
        '������ �߸��Ծ��',
        '���� �� ������ �ƴϳ׿�. ��ȯ���ּ���',
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
        '���� �ʿ� ������',
        'ȯ���� ��Ź�ҰԿ�',
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
        '�ʹ� �ʰ� ��۵ƾ��',
        '���� �� ������ ����Ͻø� ����ؿ�',
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