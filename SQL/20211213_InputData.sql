-- �������� ��ȸ
SELECT *
FROM VIEW_CONSTCHECK
WHERE TABLE_NAME = 'OBJECTION_STATE';


-- OBJECTION_STATE ���̺��� ��������, �Ӽ� ����/�߰�
ALTER TABLE OBJECTION_STATE DROP CONSTRAINT SYS_C007421;

ALTER TABLE OBJECTION_STATE DROP COLUMN AD_ID;
ALTER TABLE OBJECTION_STATE DROP COLUMN STATENAME;
ALTER TABLE OBJECTION_STATE ADD NAME VARCHAR2(30);


-- OBJECTION ���̺��� �Ӽ�, �������� �߰�/����
ALTER TABLE OBJECTION ADD AD_ID VARCHAR2(30);
ALTER TABLE OBJECTION ADD CONFIRMDATE DATE;

ALTER TABLE OBJECTION 
ADD CONSTRAINT OBJECTION_AD_ID_FK FOREIGN KEY(AD_ID)
    REFERENCES ADMIN(AD_ID);

ALTER TABLE OBJECTION DROP CONSTRAINT SYS_C007491;

--------------------------------------------------------------------------------

-- SELLERREVIEW ���̺� ����
CREATE TABLE SELLERREVIEW 
( REVIEW_NO	    NUMBER	NOT NULL
, REGRADE_NO	NUMBER	NOT NULL
, BUYER_NO	    NUMBER	NOT NULL
, REVIEWDATE	DATE
, COMMENTS	    VARCHAR2(300)
, CONSTRAINT SELLERREVIEW_NO_PK PRIMARY KEY(REVIEW_NO)
, CONSTRAINT SELLERREVIEW_REGRADE_NO_FK FOREIGN KEY(REGRADE_NO)
             REFERENCES REVIEWGRADE(REGRADE_NO)
, CONSTRAINT SELLERREVIEW_BUYER_NO_FK FOREIGN KEY(BUYER_NO)
             REFERENCES BUYER(BUYER_NO)
);


-- SELLERREVIEWDETAIL ���̺� ����
CREATE TABLE SELLERREVIEWDETAIL 
( REDETAIL_NO	NUMBER	NOT NULL
, MSTICKER_NO	NUMBER	NOT NULL
, REVIEW_NO	    NUMBER	NOT NULL
, CONSTRAINT SELLERDETAIL_NO_PK PRIMARY KEY(REDETAIL_NO)
, CONSTRAINT SELLERDETAIL_MSTICKER_NO_FK FOREIGN KEY(MSTICKER_NO)
             REFERENCES MANNERSTICKER(MSTICKER_NO)
, CONSTRAINT SELLERDETAIL_REVIEW_NO_FK FOREIGN KEY(REVIEW_NO)
             REFERENCES SELLERREVIEW(REVIEW_NO)
);

--------------------------------------------------------------------------------

INSERT INTO ACCOUNT(AC_NO) VALUES(2);

--------------------------------------------------------------------------------

-- OBJECTION_STATE ���̺� ������ �߰�
INSERT INTO OBJECTION_STATE(OBJSTAT_NO, NAME) VALUES(1, '������ ����');
INSERT INTO OBJECTION_STATE(OBJSTAT_NO, NAME) VALUES(2, '�Ǹ��� ����');

-- OBJECTIONWHY
INSERT INTO OBJECTIONWHY(OBJWHY_NO, WHY) VALUES(1, '������ ���޹��� ���߾��.');
INSERT INTO OBJECTIONWHY(OBJWHY_NO, WHY) VALUES(2, '���޹��� ���Ŀ� ������ �־��.');
INSERT INTO OBJECTIONWHY(OBJWHY_NO, WHY) VALUES(3, '�����ڰ� �δ��ϰ� ������ �����̶�� ��û�߾��.');
INSERT INTO OBJECTIONWHY(OBJWHY_NO, WHY) VALUES(4, '��Ÿ ����');

-- MANNERSTICKER
ALTER TABLE MANNERSTICKER MODIFY(NAME VARCHAR2(50));

INSERT INTO MANNERSTICKER(MSTICKER_NO, NAME) VALUES(1, 'ģ���ϰ� �ųʰ� ���ƿ�.');
INSERT INTO MANNERSTICKER(MSTICKER_NO, NAME) VALUES(2, '��ӽð��� �� ���ѿ�.');
INSERT INTO MANNERSTICKER(MSTICKER_NO, NAME) VALUES(3, '�������� ������ �����.');
INSERT INTO MANNERSTICKER(MSTICKER_NO, NAME) VALUES(4, '������ �����.');

-- REVIEWGRADE
INSERT INTO REVIEWGRADE(REGRADE_NO, NAME) VALUES(1, '�ְ�����');
INSERT INTO REVIEWGRADE(REGRADE_NO, NAME) VALUES(2, '���ƿ�');
INSERT INTO REVIEWGRADE(REGRADE_NO, NAME) VALUES(3, '���ο���');

-- GRADE 
INSERT INTO GRADE(GRADE_NO, NAME, SCORE) VALUES(1, '1', 80);
INSERT INTO GRADE(GRADE_NO, NAME, SCORE) VALUES(2, '2', 60);
INSERT INTO GRADE(GRADE_NO, NAME, SCORE) VALUES(3, '3', 40);
INSERT INTO GRADE(GRADE_NO, NAME, SCORE) VALUES(4, '4', 20);
INSERT INTO GRADE(GRADE_NO, NAME, SCORE) VALUES(5, '5', 0);

-- GUIN_MEMBER
INSERT INTO GUIN_MEMBER(GUMEM_NO, MEMBERNAME) VALUES(1, '1');
INSERT INTO GUIN_MEMBER(GUMEM_NO, MEMBERNAME) VALUES(2, '2');
INSERT INTO GUIN_MEMBER(GUMEM_NO, MEMBERNAME) VALUES(3, '3');

-- MENU
INSERT INTO MENU(MENU_NO, MENUNAME) VALUES(1, '�ѽ�');
INSERT INTO MENU(MENU_NO, MENUNAME) VALUES(2, '�Ͻ�');
INSERT INTO MENU(MENU_NO, MENUNAME) VALUES(3, '�߽�');
INSERT INTO MENU(MENU_NO, MENUNAME) VALUES(4, '���');
INSERT INTO MENU(MENU_NO, MENUNAME) VALUES(5, '�н�');

-- GUIN
INSERT INTO GUIN(GUIN_NO, AC_NO, MENU_NO, SHOP, FOOD, PRICE, DELIVERY, PERIOD, ROADADDR, DETAILADDR, GRADE_NO, COMMENTS, GUMEM_NO)
VALUES(1, 1, 1, '�̿����ҳන����', '������', 14000, 2500, 25, '����� ������ ���ַ�154�� 16', '404�� ��', 5, '������ 2�κ�', 1);

INSERT INTO GUIN(GUIN_NO, AC_NO, MENU_NO, SHOP, FOOD, PRICE, DELIVERY, PERIOD, ROADADDR, DETAILADDR, GRADE_NO, COMMENTS, GUMEM_NO)
VALUES(2, 1, 2, '���Ű�', '�������� ¥���', 22000, 3500, 35, '����� ������ ���ַ�159�� 2', '�ǹ� ��', 5, '��¥ ����', 1);

INSERT INTO GUIN(GUIN_NO, AC_NO, MENU_NO, SHOP, FOOD, PRICE, DELIVERY, PERIOD, ROADADDR, DETAILADDR, GRADE_NO, COMMENTS, GUMEM_NO)
VALUES(3, 2, 4, '�󸣺�Ƶ�', '�Ľ�Ÿ', 15000, 3000, 15, '����� ���빮�� ���Ϸ� 451', 'ȫ���� ��', 5, '�Ľ�Ÿ �Ծ��', 1);

-- PAY
INSERT INTO PAY(PAY_NO, PAYNUMBER, PAYMONEY, PAYDATE, GUIN_NO)
VALUES(1, 'PAYNUMBER_1', 8250, SYSDATE, 1);

INSERT INTO PAY(PAY_NO, PAYNUMBER, PAYMONEY, PAYDATE, GUIN_NO)
VALUES(2, 'PAYNUMBER_2', 12750, SYSDATE, 2);

INSERT INTO PAY(PAY_NO, PAYNUMBER, PAYMONEY, PAYDATE, GUIN_NO)
VALUES(3, 'PAYNUMBER����2!', 9000, SYSDATE, 3);

--------------------------------------------------------------------------------

-- BUYER �������� ��ȸ/����
SELECT *
FROM VIEW_CONSTCHECK
WHERE TABLE_NAME = 'BUYER';

ALTER TABLE BUYER DROP CONSTRAINT SYS_C007480;

-- BUYER
--1. �ǸŴ�����
INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE)
VALUES(1, 1, 1, SYSDATE);

INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE)
VALUES(3, 2, 1, SYSDATE);

INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE)
VALUES(5, 3, 2, SYSDATE);


--2. ������
INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE, PAY_NO)
VALUES(2, 1, 2, SYSDATE, 1);

INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE, PAY_NO)
VALUES(4, 2, 2, SYSDATE, 2);

INSERT INTO BUYER(BUYER_NO, GUIN_NO, AC_NO, BUYERDATE, PAY_NO)
VALUES(6, 3, 1, SYSDATE, 3);


-- SELLERREVIEW(�ǸŴ����� �� ������)
INSERT INTO SELLERREVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(1, 1, 2, SYSDATE, '���� �� ^^');

INSERT INTO SELLERREVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(2, 2, 4, SYSDATE, '����');

INSERT INTO SELLERREVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(3, 1, 6, SYSDATE, '�ڲٺ��׿뤾');


--REVIEW(������ �� �ǸŴ�����)
INSERT INTO REVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(1, 3, 2, SYSDATE, '�Ѥ�;;;;');

INSERT INTO REVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(2, 2, 4, SYSDATE, '�߸����Կ�..');

INSERT INTO REVIEW(REVIEW_NO, REGRADE_NO, BUYER_NO, REVIEWDATE, COMMENTS)
VALUES(3, 2, 6, SYSDATE, '�߸����Կ䤾;');


-- OBJECTION
INSERT INTO OBJECTION(OBJECTION_NO, BUYER_NO, OBJTYPE_NO, WHY, SINDATE)
VALUES(1, 2, 2, '������ �̻��ѵ� �����δ�. ���� �־� �Ѥ�', TO_DATE('2021-12-13', 'YYYY-MM-DD')); 


-- Ŀ��
COMMIT;