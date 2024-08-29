--1. �迭 ������ ������ ī�װ� ���̺��� ������� �Ѵ�. ������ ���� ���̺��� �ۼ��Ͻÿ�.
CREATE TABLE TB_CATEGORY(
    NAME VARCHAR2(10),
    USE_YN CHAR(1) DEFAULT 'Y'
);

--2. ���� ������ ������ ���̺��� ������� �Ѵ�. ������ ���� ���̺��� �ۼ��Ͻÿ�.
CREATE TABLE TB_CLASS_TYPE(
    NO VARCHAR2(5) PRIMARY KEY,
    NAME VARCHAR2(10)
);
--3.TB_CATAGORY ���̺��� NAME �÷��� PRIMARY KEY�� �����Ͻÿ�.
--  (KEY �̸��� �������� �ʾƵ� ������.)
--  (���� KEY �̸��� �����ϰ��� �Ѵٸ� �̸��� ������ �˾Ƽ� ������ �̸��� ����Ѵ�.)
ALTER TABLE TB_CATEGORY
  ADD CONSTRAINT ALTER_CATEGORY_KEY PRIMARY KEY(NAME);
  
--4.TB_CLASS_TYPE ���̺��� NAME �÷��� NULL ���� ���� �ʵ��� �Ӽ��� �����Ͻÿ�.
ALTER TABLE TB_CLASS_TYPE
    MODIFY NAME NOT NULL;
    
--5. �� ���̺��� �÷� ���� NO�� ���� ���� Ÿ���� �����ϸ鼭 ũ��� 10 ����,
--   �÷����� NAME �� ���� ���������� ���� Ÿ���� �����ϸ鼭 ũ�� 20 ���� �����Ͻÿ�.
ALTER TABLE TB_CLASS_TYPE
    MODIFY (NO VARCHAR2(10), NAME VARCHAR2(20));
ALTER TABLE TB_CATEGORY
    MODIFY NAME VARCHAR2(20);

--6. �� ���̺��� NO �÷��� NAME �÷��� �̸��� �� �� TB_ �� ������ ���̺� �̸��� �տ� ���� ���·� �����Ѵ�.
--   (ex. CATEGORY_NAME)
ALTER TABLE TB_CATEGORY
    RENAME COLUMN NAME TO CATEGORY_NAME;
ALTER TABLE TB_CLASS_TYPE
    RENAME COLUMN NO TO CLASS_TYPE_NO;
ALTER TABLE TB_CLASS_TYPE
    RENAME COLUMN NAME TO CLASS_TYPE_NAME;


--7. TB_CATAGORY ���̺�� TB_CLASS_TYPE ���̺��� PRIMARY KEY �̸��� ������ ���� �����Ͻÿ�.
--   Primary Key�� �̸��� ?PK + �÷��̸�?���� �����Ͻÿ�. (ex. PK_CATEGORY_NAME )

ALTER TABLE TB_CATEGORY DROP CONSTRAINT ALTER_CATEGORY_KEY;
ALTER TABLE TB_CATEGORY ADD CONSTRAINT PK_CATEGORY_NAME PRIMARY KEY (CATEGORY_NAME);

ALTER TABLE TB_CLASS_TYPE DROP CONSTRAINT SYS_C007063;
ALTER TABLE TB_CLASS_TYPE ADD CONSTRAINT PK_CLASS_TYPE_NO PRIMARY KEY (CLASS_TYPE_NO);


--8. ������ ���� INSERT���� �����Ѵ�.
/*
    INSERT INTO TB_CATEGORY VALUES('����','Y');
    INSERT INTO TB_CATEGORY VALUES('�ڿ�����','Y');
    INSERT INTO TB_CATEGORY VALUES('����','Y');
    INSERT INTO TB_CATEGORY VALUES('��ü��','Y');
    INSERT INTO TB_CATEGORY VALUES('�ι���ȸ;','Y');
    COMMIT;
*/
INSERT INTO TB_CATEGORY VALUES('����','Y');
INSERT INTO TB_CATEGORY VALUES('�ڿ�����','Y');
INSERT INTO TB_CATEGORY VALUES('����','Y');
INSERT INTO TB_CATEGORY VALUES('��ü��','Y');
INSERT INTO TB_CATEGORY VALUES('�ι���ȸ','Y');
COMMIT;

--9. TB_DEPARTMENT�� CATEGORY �÷��� TB_CATEGORY ���̺��� CATEGORY_NAME �÷��� �θ�
-- �ڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡ�
ALTER TABLE TB_DEPARTMENT 
  ADD CONSTRAINT FK_DEPARTMENT_CATEGORY 
  FOREIGN KEY (CATEGORY)
  REFERENCES TB_CATEGORY (CATEGORY_NAME);


--10. �� ������б� �л����� �������� ���ԵǾ� �ִ� �л��Ϲ����� VIEW�� ������� �Ѵ�.
--    �Ʒ� ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�.
--  �� �̸� : VW_�л��Ϲ�����
--  �÷� : �й�, �л��̸�, �ּ�

CREATE VIEW VW_�л��Ϲ����� AS
SELECT STUDENT_NO AS "�й�",
       STUDENT_NAME AS "�л��̸�",
       STUDENT_ADDRESS AS  "�ּ�"
  FROM TB_STUDENT;

--11. �� ������б��� 1�⿡ �ι� �� �а����� �л��� ���������� ���� ����� �����Ѵ�.
--    �̸� ���� ����� �л��̸�, �а��̸�, ��米���̸����� �����Ǿ� �ִ� VIEW�� ����ÿ�.
--    �̶� ���� ������ ���� �л��� ���� �� ������ ����Ͻÿ�.
--   (��, �� VIEW�� �ܼ� SELECT���� �� ��� �а����� ���ĵǾ� ȭ�鿡 �������� ����ÿ�.)
--   �� �̸� : VW_�������
--   �÷� : �л��̸�, �а��̸�, ���������̸�
CREATE VIEW VW_������� AS
SELECT S.STUDENT_NAME AS "�л��̸�",
       DEPARTMENT_NAME AS "�а��̸�",
       P.PROFESSOR_NAME AS "���������̸�"
FROM TB_STUDENT S
LEFT JOIN TB_PROFESSOR P ON(S.COACH_PROFESSOR_NO = P.PROFESSOR_NO)
       JOIN TB_DEPARTMENT D ON(S.DEPARTMENT_NO = D.DEPARTMENT_NO)
ORDER BY S.DEPARTMENT_NO;

--12. ��� �а��� �а��� �л� ���� Ȯ���� �� �ֵ��� ������ VEIW�� �ۼ��� ����.
--   �� �̸� : VW_�а����л���
--   �÷� : DEPARTMENT_NAME, STUDENT_COUNT
CREATE VIEW VW_�а����л��� AS
SELECT DEPARTMENT_NAME,
       COUNT(STUDENT_NO)
FROM TB_DEPARTMENT
JOIN TB_STUDENT USING(DEPARTMENT_NO)
GROUP BY DEPARTMENT_NAME;

--13. ������ ������ �л��Ϲ����� VIEW�� ���ؼ� �й��� A213046�� �л��� �̸���
--    ���� �̸����� �����ϴ� SQL���� �ۼ��Ͻÿ�
UPDATE VW_�л��Ϲ���
    SET �л��̸� = '������'
WHERE �й� = 'A213046��';

--14. 13�������� ���� VIEW�� ���ؼ� �����Ͱ� ����� �� �ִ� ��Ȳ�� �������� VIEW��
--    ��� �����ؾ� �ϴ��� �ۼ��Ͻÿ�.
CREATE VIEW VW_�л��Ϲ����� AS
SELECT STUDENT_NO AS "�й�",
       STUDENT_NAME AS "�л��̸�",
       STUDENT_ADDRESS AS  "�ּ�"
FROM TB_STUDENT
WITH READ ONLY;  --�� ������������ ������ ������ �Ұ����ϰ� �б⸸ ����.

--15. �� ������б��� �ų� ������û �Ⱓ�� �Ǹ� Ư�� �α� ����鿡 ���� ��û�� ����
--    ������ �ǰ� �ִ�.
--    �ֱ� 3���� �������� �����ο��� ���� ���Ҵ� 3������ ã�� ������ �ۼ��غ��ÿ�.

SELECT �����ȣ, �����̸�, "������������(��)"
FROM 
    (SELECT CLASS_NO AS "�����ȣ",
            CLASS_NAME AS "�����̸�",
            RANK() OVER (ORDER BY COUNT(STUDENT_NO) DESC) AS "TOP3",
            COUNT(STUDENT_NO) AS "������������(��)"
       FROM TB_CLASS
       JOIN TB_GRADE USING(CLASS_NO)
       WHERE SUBSTR(TERM_NO, 1, 4) IN (2005, 2006, 2007, 2008, 2009)
      GROUP BY (CLASS_NO, CLASS_NAME)
     )
WHERE TOP3 <= 3;





















