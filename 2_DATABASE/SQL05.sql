--1. �������� ���̺�(TB_CLASS_TYPE)�� �Ʒ��� ���� �����͸� �Է��Ͻÿ�.
-- ��ȣ, �����̸�
-- 01, �����ʼ�
-- 02, ��������
-- 03, �����ʼ�
-- 04, ���缱��
-- 05, ������
INSERT 
  INTO TB_CLASS_TYPE
VALUES('01', '�����ʼ�');

INSERT 
  INTO TB_CLASS_TYPE
VALUES('02', '��������');

INSERT 
  INTO TB_CLASS_TYPE
VALUES('03', '�����ʼ�');

INSERT 
  INTO TB_CLASS_TYPE
VALUES('04', '���缱��');

INSERT 
  INTO TB_CLASS_TYPE
VALUES('05', '������');

--2. �� ������б� �л����� ������ ���ԵǾ� �ִ� �л��Ϲ����� ���̺��� ������� �Ѵ�.
--   �Ʒ� ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�. (���������� �̿��Ͻÿ�)
-- ���̺� �̸� : TB_�л��Ϲ�����
-- �÷� �й�, �л��̸�, �ּ�
CREATE TABLE TB_�л��Ϲ�����(
    �й�,
    �л��̸�,
    �ּ�
)
AS SELECT
    STUDENT_NO,
    STUDENT_NAME,
    STUDENT_ADDRESS
FROM TB_STUDENT;
    
--3. ������а� �л����� �������� ���ԵǾ� �ִ� �а����� ���̺��� ������� �Ѵ�.
--   ������ �����Ͽ� ������ SQL ���� �ۼ��Ͻÿ�.
--   (��Ʈ : ����� �پ���, �ҽŲ� �ۼ��Ͻÿ�)
-- ���̺� �̸� : TB_������а�
-- �÷� �й�, �л��̸�, ����⵵, �����̸�

CREATE TABLE TB_������а�(
  �й�,
  �л��̸�,
  ����⵵,
  �����̸�
)
AS SELECT 
    S.STUDENT_NO,
    S.STUDENT_NAME,
    TO_CHAR(TO_DATE(SUBSTR(STUDENT_SSN, 1, 2), 'RR'), 'YYYY'),
    P.PROFESSOR_NAME
FROM TB_STUDENT S
JOIN TB_PROFESSOR P ON(S.COACH_PROFESSOR_NO = P.PROFESSOR_NO)
WHERE S.DEPARTMENT_NO = '001';

--4. �а����� ������ 10% ������Ű�� �Ǿ���. �̿� ����� SQL ���� �ۼ��Ͻÿ�.
--   (��, �ݿø��� ����Ͽ� �Ҽ��� �ڸ����� ������ �ʵ��� �Ѵ�)
UPDATE TB_DEPARTMENT
   SET CAPACITY = ROUND(CAPACITY * 1.1, 0);

--5. �й� A413042�� �ڰǿ� �л��� �ּҰ� "����� ���α� ���ε� 181-21 "�� ����Ǿ��ٰ� �Ѵ�.
--   �ּ����� �����ϱ� ���� ����� SQL ���� �ۼ��Ͻÿ�.
UPDATE TB_STUDENT
    SET STUDENT_ADDRESS = '����� ���α� ���ε� 181-21'
WHERE STUDENT_NO = 'A413042';

--6. �ֹε�Ϲ�ȣ ��ȣ���� ���� �л����� ���̺��� �ֹι�ȣ ���ڸ��� �������� �ʱ�� �����Ͽ���.
--   �� ������ �ݿ��� ������ SQL ������ �ۼ��Ͻÿ�.
--  (��. 830530-2124663 ==> 830530 )
UPDATE TB_STUDENT
    SET STUDENT_SSN = SUBSTR(STUDENT_SSN, 1, 6);
    
--7. ���а� ����� �л��� 2005�� 1�б⿡ �ڽ��� ������ '�Ǻλ�����' ������ �߸��Ǿ��ٴ� ���� �߰��ϰ�� ������ ��û�Ͽ���.
--   ��� ������ Ȯ�� ���� ��� �ش� ������ ������ 3.5�� ����Ű�� �����Ǿ���. ������ SQL ���� �ۼ��Ͻÿ�.
UPDATE TB_GRADE 
   SET POINT = 3.5
WHERE STUDENT_NO = (SELECT STUDENT_NO 
                     FROM TB_STUDENT
                     WHERE STUDENT_NAME = '�����'
                     AND DEPARTMENT_NO = '053'
                     )
AND TERM_NO = '200501'
AND CLASS_NO = (SELECT CLASS_NO FROM TB_CLASS WHERE CLASS_NAME = '�Ǻλ�����');

--8. ���� ���̺�(TB_GRADE) ���� ���л����� �����׸��� �����Ͻÿ�.
DELETE 
FROM TB_GRADE
WHERE STUDENT_NO
IN (SELECT STUDENT_NO FROM TB_STUDENT WHERE ABSENCE_YN = 'Y');