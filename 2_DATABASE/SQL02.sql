--1. ���� �����а�(�а��ڵ� 002) �л����� �й��� �̸�, ���� �⵵��
--   ���г⵵�� ���� ������ ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.
--   (��, ����� '�й�', '�̸�', '���г⵵' ǥ��)
SELECT
    STUDENT_NO AS "�й�",
    STUDENT_NAME AS "�̸�",
    ENTRANCE_DATE AS "���г⵵"
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 002
ORDER BY ENTRANCE_DATE ASC;

--2. �� ������б��� ���� �� �̸��� �� ���ڰ� �ƴ� ������ �� �� �ִٰ� �Ѵ�.
--  �� ������ �̸��� �ֹι�ȣ�� ȭ�鿡 ����ϴ� SQL�� �ۼ��غ���
SELECT
    PROFESSOR_NAME,
    PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) != 3; 

--3. �� ������б��� ���� �������� �̸��� ���̸� ����ϴ� SQL������ �ۼ��Ͻÿ�.
--  (��, �̶� ���̰� ���� ������� ���� ��� ������ ȭ�鿡 ��µǵ��� ����ÿ�.)
--  (��, ���� �� 2000�� ���� ����ڴ� ������ ��� ����� '���� �̸�', '����'�� �Ѵ�. ���̴� '��'���� ���)
SELECT
    PROFESSOR_NAME AS "���� �̸�",
    EXTRACT(YEAR FROM SYSDATE) - (1900 + TO_NUMBER(SUBSTR(PROFESSOR_SSN, 1, 2))) + 1 AS "����"
    --��� ���� ������ �������� +1�� ����� -16�� ���ش�
FROM TB_PROFESSOR
WHERE SUBSTR(PROFESSOR_SSN, 8, 1) = '1'
ORDER BY ���� ASC;

--4. �������� �̸� �� ���� ������ �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�.
--   ��� ����� "�̸�" (���� 2���� ���� ������ ���ٰ� ����
SELECT
    SUBSTR(PROFESSOR_NAME,2,3) AS "�̸�"
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) >= 3;

--5. �� ������б��� ����� �����ڸ� ���Ϸ��� �Ѵ�.
--   ��� ã�Ƴ� ���ΰ�? �� �� 19�쿡 �����ϸ� ����� ���� ���������� �����Ѵ�.
SELECT
    STUDENT_NO,
    STUDENT_NAME
FROM TB_STUDENT
WHERE TO_NUMBER(SUBSTR(ENTRANCE_DATE,1,2)) - TO_NUMBER(SUBSTR(STUDENT_SSN, 1, 2)) != 19;

--6. 2020�� ũ���������� ���� �����ΰ�?
SELECT
   TO_CHAR((TO_DATE(20201225)), 'day') AS "ũ��������"
FROM DUAL;

--7. TO_DATE('99/10/11','YY/MM/DD'),TO_DATE('49/10/11','YY/MM/DD')�� ���� �� �� ��� ������ �ǹ��ұ�
--   �� TO_DATE('99/10/11','RR/MM/DD'),TO_DATE('49/10/11','RR/MM/DD')�� ���� �� �� ��� ������ �ǹ��ұ�
SELECT
    TO_DATE('99/10/11','YYYY/MM/DD')AS "1999��10��11��",
    TO_DATE('49/10/11','YYYY/MM/DD')AS "2049��10��11��",
    TO_DATE('99/10/11','RRRR/MM/DD')AS "2099��10��11��",
    TO_DATE('49/10/11','RRRR/MM/DD')AS "1949��10��11��"
FROM DUAL;

--8. �� ������б��� 2000�⵵ ���� �����ڵ��� �й��� A�� �����ϰ� �Ǿ��ִ�.
--   2000�⵵ ���� �й��� ���� �л����� �й��� �̸��� �����ִ� SQL ������ �ۼ��Ͻÿ�
SELECT
    STUDENT_NO,
    STUDENT_NAME
FROM TB_STUDENT
WHERE SUBSTR(STUDENT_NO,1,1) != 'A';

--9. �й��� A517178�� �ѾƸ� �л��� ���� �� ������ ���ϴ� SQL���� �ۼ��Ͻÿ�
--   �̶�, ��� ȭ���� �����'����'�̶�� ������ �ϰ�,
--   ������ �ݿø��Ͽ� �Ҽ��� ���� ���ڸ������� ǥ���Ѵ�.
SELECT
    ROUND(AVG(POINT),1) AS "����"
FROM TB_GRADE
WHERE STUDENT_NO = 'A517178';

--10. �а��� �л����� ���Ͽ� "�а���ȣ", "�л���(��)"�� ���·� ����� ����� �������
--    ��µǵ��� �Ͻÿ�
SELECT
    DEPARTMENT_NO AS "�а���ȣ",
    COUNT(STUDENT_NO) AS "�л���(��)"
FROM TB_DEPARTMENT
JOIN TB_STUDENT USING(DEPARTMENT_NO)
GROUP BY(DEPARTMENT_NO)
ORDER BY DEPARTMENT_NO ASC;

--11. ���� ������ �������� ���� �л��� ���� �� �� ���� �Ǵ� �˾Ƴ��� SQL���� �������
SELECT
    COUNT(*)
FROM TB_STUDENT
WHERE COACH_PROFESSOR_NO IS NULL;

--12. �й��� A112113�� ���� �л��� �⵵ �� ������ ���ϴ� SQL���� �ۼ��Ͻÿ�
--   ��, �̶� ��� ȭ���� ����� "�⵵", "�⵵ �� ����"�̶�� ������ �ϰ�, ������ �ݿø��Ͽ�
--   �Ҽ��� ���� �� �ڸ������� ǥ���Ѵ�.
SELECT
    SUBSTR(TERM_NO,1,4) AS "�⵵",
    ROUND(AVG(POINT),1)
FROM TB_GRADE
WHERE STUDENT_NO ='A112113'
GROUP BY SUBSTR(TERM_NO,1,4)
ORDER BY SUBSTR(TERM_NO,1,4) ASC;

--13. �а� �� ���л��� ���� �ľ��ϰ��� �Ѵ�. �ڡڡڡڡڡڡڡڡڡڡڡڡ�
--    �а���ȣ�� ���л� ���� ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�
SELECT
    DEPARTMENT_NO AS "�а��ڵ��",
    COUNT(DECODE(ABSENCE_YN, 'Y', 1)) AS "���л� ��"
FROM TB_STUDENT
WHERE ABSENCE_YN ='Y'
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO ASC;

--14. �� ���б��� �ٴϴ� �������� �л����� �̸��� ã���� �Ѵ�.
--    � SQL������ ����ϸ� �����ϰڴ°�?
SELECT
    STUDENT_NAME,
    COUNT(STUDENT_NAME)
FROM TB_STUDENT
GROUP BY STUDENT_NAME
HAVING COUNT(STUDENT_NAME) >1
ORDER BY STUDENT_NAME ASC;

--15. �й��� A112113�� ���� �л��� �⵵, �б� �� ������ �⵵ �� ���� ����,
-- �� ������ ���ϴ� SQL���� �ۼ��Ͻÿ�(��, ������ �Ҽ��� 1�ڸ������� �ݿø��Ͽ� ǥ���Ѵ�.)
-- �ڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡڡ�
SELECT NVL(SUBSTR(TERM_NO, 1, 4), ' ') �⵵,
       NVL(SUBSTR(TERM_NO, 5, 2), ' ') �б�, 
       ROUND(AVG(POINT), 1) ����
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113' 
GROUP BY ROLLUP (SUBSTR(TERM_NO, 1, 4),
                 SUBSTR(TERM_NO, 5, 2));








