--===========================================================================================
/*
    <�Լ�>
    ���޵� �÷����� �޾Ƽ� �Լ��� ������ ����� ��ȯ
    
    -������ �Լ� : N���� ���� �о�鿩�� N���� ������� ����(���ึ�� �Լ����� ����� ��ȯ)
    -�׷� �Լ� : N���� ���� �о�鿩�� 1���� ������� ���� (�׷��� ��� �׷캰�� �Լ����� ����� ��ȯ)
    
     >> SELECT ���� �������Լ��� �׷��Լ��� �Բ� ������� ����
     -> ��� ���� ������ �ٸ��� ����
     
     >> �Լ��� ����� �� �ִ� ��ġ : SELECT�� WHERE�� ORDER BY�� HAVING��
*/

--=========================<������ �Լ�>====================================
/*
    <����ó���Լ�>

    *LENGTH(�÷� | '���ڿ�') : �ش� ���ڿ��� ���ڼ��� ��ȯ
    *LENGTHB(�÷� | '���ڿ�') : �ش� ���ڿ��� ����Ʈ ���� ��ȯ
    
    '��' '��' '��' �ѱ��� ���ڴ� 3BYTE
    ������, ����, Ư������ ���ڴ� 1BYTE
*/

SELECT LENGTH('����Ŭ'), LENGTHB('����Ŭ')
FROM DUAL;

SELECT LENGTH('ORACLE'), LENGTHB('ORACLE')
FROM DUAL;

SELECT EMP_NAME, LENGTH(EMP_NAME), LENGTHB(EMP_NAME)
FROM EMPLOYEE;

--=============================================================
/*
    *INSTR
    ���ڿ��κ��� Ư�� ������ ������ġ�� ã�Ƽ� ��ȯ
    
    INSTR(�÷� | '���ڿ�', 'ã�����ϴ� ����', ['ã�� ��ġ�� ���۰�, ����']) -> ����� NUMBER
*/
SELECT INSTR('AABAACAABBAA', 'B') FROM DUAL; --���ʿ� �ִ� ù B�� 3��° ��ġ�� �ִ�.
--ã�� ��ġ ���۰� : 1, ���� 1 => �⺻��
SELECT INSTR('AABAACAABBAA', 'B', 1) FROM DUAL;
SELECT INSTR('AABAACAABBAA', 'B', -1) FROM DUAL; -- �ڿ������� ã�� ��ġ�� ���� ���� �տ������� �о��ش�.
SELECT INSTR('AABAACAABBAA', 'B', 1, 2) FROM DUAL; -- ������ �����Ϸ��� ��ġ�� ���۰��� ǥ���ؾ��Ѵ�.
SELECT INSTR('AABAACAABBAA', 'B', 1, 3) FROM DUAL;

SELECT EMAIL, INSTR(EMAIL, '_',1,1), INSTR(EMAIL, '@')
FROM EMPLOYEE;

------------------------------------------------------------------------

/*
    *SUBSTR
    ���ڿ����� Ư�� ���ڿ��� �����ؼ� ��ȯ
    
    [ǥ����]
    SUBSTR(STRING, POSITION, [LENGTH])
    - STRING : ����Ÿ�� �÷� | '���ڿ�'
    - POSITION : ���ڿ� ������ ������ġ ��
    - LENTH : ������ ���� ����(�����ϸ� ������)
*/

SELECT SUBSTR('SHOWMETHEMONEY', 7) FROM DUAL; -- 7��° ��ġ���� ������ ����
SELECT SUBSTR('SHOWMETHEMONEY', 5, 2) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', 1, 6) FROM DUAL;--SHOWME
SELECT SUBSTR('SHOWMETHEMONEY', -8, 3) FROM DUAL;

SELECT EMP_NAME, EMP_NO, SUBSTR(EMP_NO, 8, 1) AS "����"
FROM EMPLOYEE;

--������� ������鸸 EMP_NAME, EMP_NO ��ȸ
SELECT EMP_NAME, EMP_NO
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO, 8, 1) = '2' OR SUBSTR(EMP_NO, 8, 1) ='4'
ORDER BY EMP_NAME;

--�Լ� ��ø��� ����
--�̸����� ���̵�κ� ����
--�����Ͽ��� �����, �̸���, ���̵� ��ȸ
SELECT
    EMP_NAME,
    EMAIL,
    SUBSTR(EMAIL,1, INSTR(EMAIL,'@')-1)
FROM EMPLOYEE;

/*
    *LPAD / RPAD
    ���ڿ��� ��ȸ�� �� ���ϰ� �ְ� ��ȸ�ϰ��� �� �� ���
    
    [ǥ����]
    LPAD/RPAD(STRING, ���������� ��ȯ�� ���ڿ��� ����, [�����̰����ϴ� ����])
    
    ���ڿ��� �����̰����ϴ� ���ڸ� ���� �Ǵ� �����ʿ� �ٿ��� ���� N���̸�ŭ ���ڿ��� ��ȯ
    
    ���ڿ��� �����̰����ϴ� ���ڸ� ���� �Ǵ� �����ʿ� �ٿ��� ���� N���̸�ŭ ���ڿ��� ��ȯ
*/
--20��ŭ�� ���� �� EMAIL�÷����� ���������� �����ϰ� ������ �κ��� �������� ä���.

SELECT EMP_NAME, LPAD(EMAIL,20)
FROM EMPLOYEE;

SELECT EMP_NAME, LPAD(EMAIL, 20, '#')
FROM EMPLOYEE;

SELECT EMP_NAME, RPAD(EMAIL, 20, '#')
FROM EMPLOYEE;

--������� �����, �ֹε�Ϲ�ȣ ��ȸ("701011-1XXXXXX")
SELECT
    EMP_NAME, SUBSTR(EMP_NO,1,8) || 'XXXXXX'
--SELECT EMP_NAME, RPAD(SUBSTR(EMP_NO, 1, 8), 14 ,'X')
FROM EMPLOYEE;

/*
    *LSTRIM/RTRIM
    ���ڿ����� Ư�� ���ڸ� ������ �������� ��ȯ
    LTRIM/RTRIM(STRING, [�����ϰ����ϴ� ���ڵ�])
    
    ���ڿ��� ���� Ȥ�� �����ʿ��� �����ϰ����ϴ� ���ڵ��� ã�Ƽ� ������ ������ ���ڿ� ��ȯ
    *'����'���̴�. ���ڿ��� �ƴϴ�.
*/
SELECT RTRIM('     K     H     ')FROM DUAL;
SELECT LTRIM('ACBABCAABCKKH', 'A')FROM DUAL;
SELECT LTRIM('ACBABCAABCKKH', 'ABC')FROM DUAL;
SELECT LTRIM('5135432KH543542', '0123456789')FROM DUAL;

/*
    *TRIM
    ���ڿ��� ��/��/���ʿ� �ִ� ������ ���ڵ��� ������ ������ ���ڿ� ��ȯ
    TRIM([LEADING] | TRAILING | BOTH] �����ϰ����ϴ� ���ڿ� FROM ���̺��)
*/
SELECT TRIM('     K     H     ') FROM DUAL; --���ʿ� �ִ� ���� ����
SELECT TRIM('Z' FROM 'ZZZZKHZZABCZZZZZZ') FROM DUAL; --���ʿ� �ִ� Z����

SELECT TRIM(LEADING 'Z' FROM 'ZZZZKHZZZZZZZZ') FROM DUAL; --LTRIM
SELECT TRIM(TRAILING 'Z' FROM 'ZZZZKHZZZZZZZZ') FROM DUAL; --RTRIM

/*
    *LOWER / UPPER / INITCAP
    LOWER : ���ڿ��� �ҹ��ڷ� ������ ���ڿ� ��ȯ
    UPPER : ���ڿ��� �빮�ڷ� ������ ���ڿ� ��ȯ
    INITCAP : ���� ���� ù���ڸ��� �빮�ڷ� ������ ���ڿ� ��ȯ
*/

SELECT LOWER ('Welcome To My KH') FROM DUAL;
SELECT UPPER ('Welcome To My KH') FROM DUAL;
SELECT INITCAP ('welcome to my kh') FROM DUAL;

/*
    *CONCAT
    ���ڿ� �ΰ� ���޹޾� �ϳ��� ��ģ �� ��ȯ
    CONCAT(STRING1, STRING2)
*/
SELECT CONCAT('������', 'ABC') FROM DUAL;
SELECT '������' || 'ABC' FROM DUAL;

--=============================================================================

/*
    <���� ó�� �Լ�>
    
    *ABS
    ������ ���밪�� �����ִ� �Լ�
*/
SELECT ABS(-10), ABS(-6.3) FROM DUAL;

/*
    *MOD
    �� ���� ���� ���������� ��ȯ
    *���� �ƴ� �������̴�. (�ڹٿ��� �����ȣ %�� ����)
    MOD(NUMBER, NUMBER)
*/

SELECT MOD(10,3) FROM DUAL;
SELECT MOD(10.9 ,3) FROM DUAL;

/*
    *ROUND
    �ݿø��� ����� ��ȯ
    ROUND(NUMBER, [��ġ])
*/

SELECT ROUND(123.456) FROM DUAL; --�⺻�ڼ��� �Ҽ��� ù���� �ڸ����� �ݿø�
SELECT ROUND(123.456, 1) FROM DUAL; -- ����� �����Ҽ��� �Ҽ��� �ڷ� ��ĭ�� �̵�(,1)
SELECT ROUND(123.456, -1) FROM DUAL; -- ������ �����Ҽ��� �Ҽ��� ���ڸ��� �̵�

/*
    *CEIL
    �ø�ó���� ���� �Լ�
    CEIL(NUMBER)
*/

SELECT CEIL(123.456) FROM DUAL;

/*
    TRUNC
    ����ó���Լ�
    TRUNC(NUMBER, [��ġ])
*/  

SELECT TRUNC(123.456) FROM DUAL;
SELECT TRUNC(123.456, 1) FROM DUAL;
SELECT TRUNC(123.456, -1) FROM DUAL;

----------------------����----------------------
--�˻��ϰ����ϴ� ����
--JOB CODE�� J7�̰ų� J6�̸鼭 SALARY���� 200���� �̻��̰�
--BONUS�� �ְ� ������ �����
--�̸�, �ֹε�Ϲ�ȣ, �����ڵ�, �μ��ڵ�, �޿�, ���ʽ��� ��ȸ�ϰ�ʹ�

SELECT EMP_NAME AS �̸� , EMP_NO AS �ֹε�Ϲ�ȣ , JOB_CODE AS �����ڵ�, DEPT_CODE AS �μ��ڵ�, SALARY AS �޿�, BONUS AS ���ʽ�
FROM EMPLOYEE
WHERE (JOB_CODE = 'J6' OR JOB_CODE = 'J7') AND SALARY >= 2000000 AND BONUS IS NOT NULL AND SUBSTR(EMP_NO, 8, 1)= '2';

--=============================================================================

/*
    <��¥ ó�� �Լ�>
*/

--SYSDATE : �ý����� ���� ��¥ �� �ð��� ��ȯ
SELECT SYSDATE FROM DUAL;

--MONTH_BETWEEN : �� ��¥ ������ ���� ��
--������� �����, �Ի���, �ٹ��� ��, �ٹ����� �� ��ȸ
SELECT EMP_NAME AS ����� , HIRE_DATE AS �Ի��� , FLOOR(SYSDATE - HIRE_DATE) AS �ٹ��ϼ�,
CEIL (MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) AS �ٹ�������
FROM EMPLOYEE;

--*ADD_MONTHS  : Ư�� ��¥�� NUMBER�������� ���ؼ� ��ȯ
SELECT ADD_MONTHS(SYSDATE, 4) FROM DUAL;

--�ٷ��� ���̺��� �����, �Ի���, �Ի��� 3������ ��¥�� ��ȸ
SELECT
    EMP_NAME,
    HIRE_DATE,
    ADD_MONTHS(HIRE_DATE, 3)
FROM EMPLOYEE;

--*NEXT_DAY(DATE, ����(���� | ����)) : Ư����¥ ���� ���� ����� ������ ��¥�� ��ȯ
SELECT NEXT_DAY(SYSDATE, '�����') FROM DUAL;
SELECT NEXT_DAY(SYSDATE, '��') FROM DUAL;

--1 : �Ͽ��� ~ 7 : �����
SELECT NEXT_DAY(SYSDATE, 7) FROM DUAL;

--���� SQL �νľ� �ѱ���� ���ֱ� ������ FRIDAY�� ���� ������ �߻�
SELECT NEXT_DAY(SYSDATE, 'FRIDAY') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'�ݿ���')FROM DUAL;

--*LAST_DAY(DATE) : �ش翭�� ������ ��¥ ���ؼ� ��ȯ
SELECT LAST_DAY(SYSDATE) FROM DUAL;

/*
    EXTRACT : Ư�� ��¥�κ��� ��|��|�� ���� �����ؼ� ��ȯ�ϴ� �Լ�
    
    [ǥ����]
    EXTRACT(YEAR FROM DATE) : ������ ����
    EXTRACT(MONTH FROM DATE) : ���� ����
    EXTRACT(DAY FROM DATE) : �ϸ� ����
*/

--����� �����, �Ի�⵵, �Ի��, �Ի���
SELECT EMP_NAME,
EXTRACT(YEAR FROM HIRE_DATE) AS "�Ի�⵵",
EXTRACT(MONTH FROM HIRE_DATE) AS "�Ի��",
EXTRACT(DAY FROM HIRE_DATE) AS "�Ի���"
FROM EMPLOYEE
ORDER BY 2,3,4;

/*
    [����ȯ �Լ�]
    *TO_CHAR : ����Ÿ�� �Ǵ� ��¥ Ÿ���� ���� ����Ÿ������ ��ȯ�����ִ� �Լ�
    
    [ǥ����]
    TO_CHAR(���� | ����, [����])
*/

-- ���� -> ����
SELECT TO_CHAR(1234) FROM DUAL;
SELECT TO_CHAR(12, '99999') FROM DUAL;
SELECT TO_CHAR(12,'00000') FROM DUAL;
SELECT TO_CHAR(2000000, 'L99999') FROM DUAL;

SELECT TO_CHAR(3500000,'L9,999,999') FROM DUAL;

--��¥Ÿ�� -> ����Ÿ��
SELECT SYSDATE FROM DUAL;
SELECT TO_CHAR(SYSDATE) FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS')FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'AM HH:MI:SS')FROM DUAL; -- AM, PM����� ����ϰ� ������ �����ִ� ���̱⿡ �����ϰ� ��Ÿ��.
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS')FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD DAY DY')FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'MON, YYYY')FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY"��" MM"��" DD"��" HH:MI:SS')FROM DUAL;

--������� �̸�, �Ի糯¥(0000�� 00�� 00��) ��ȸ
SELECT EMP_NAME AS �̸�, TO_CHAR(HIRE_DATE, 'YYYY"��" MM"��" DD"��"') AS �Ի糯¥
FROM EMPLOYEE;

--�⵵�� ���õ� ����
SELECT TO_CHAR(SYSDATE, 'YYYY'),
       TO_CHAR(SYSDATE, 'YY'),
     --TO_CHAR(SYSDATE, 'RRRR'), --RR���� ���� �����Ѵ�. -> 50�� �̻��� ������ +100 EX) 1954 -> 2054
       TO_CHAR(SYSDATE, 'YEAR')
FROM DUAL;

SELECT HIRE_DATE, TO_CHAR(HIRE_DATE, 'YYYY'), TO_CHAR(HIRE_DATE, 'RRRR')
FROM EMPLOYEE;

--���� ���õ� ����
SELECT TO_CHAR(SYSDATE, 'MM'),
       TO_CHAR(SYSDATE, 'MON'),
       TO_CHAR(SYSDATE, 'MONTH')
FROM DUAL;

--�Ͽ� ���õ� ����
SELECT TO_CHAR(SYSDATE, 'DDD'), -- ������ �̹��⵵�� ���° �ϼ�
       TO_CHAR(SYSDATE, 'DD'), -- ���� ����
       TO_CHAR(SYSDATE, 'D') -- ������ ���ڷ� ��Ÿ�� 1 : �Ͽ��� ~ 7 : �����
FROM DUAL;

--������ ��Ÿ���� ����
SELECT TO_CHAR(SYSDATE, 'DAY'),
       TO_CHAR(SYSDATE, 'DY')
FROM DUAL;

/*
    TO_NUMBER : ����Ÿ���� �����͸� ����Ÿ������ ��ȯ�����ִ� �Լ�
    
    [ǥ����]
    TO_NUMBER(����, [����])
*/

SELECT TO_NUMBER('05123456789') FROM DUAL;

SELECT '100000' + '55000' FROM DUAL;
SELECT '100,000' + '55,000' FROM DUAL;
SELECT TO_NUMBER('100,000', '999,999') + TO_NUMBER('55,000', '99,000') FROM DUAL;

--===========================================================================

/* 
    [NULLó�� �Լ�]
    
    [ǥ����]
*/
--*NVL(�÷�, �ش��÷��� NULL�� ��� ������ ��)
SELECT EMP_NAME, NVL(BONUS, 0)
FROM EMPLOYEE;

--�� ����� �̸�, ���ʽ� ���� ���� ��ȸ
SELECT EMP_NAME, NVL((SALARY + (SALARY * BONUS)) * 12, 0)
FROM EMPLOYEE;

--*NVL2(�÷�, ��ȯ��1, ��ȯ��2)
--��ȯ��1 : �ش��÷��� ������ ��� ������ ��
--��ȯ��2 : �ش��÷��� NULL�� ��� ������ ��

SELECT EMP_NAME, BONUS, NVL2(BONUS,'O','X')
FROM EMPLOYEE;

--===========================================================================

/*
    1. �����(EQUAL JOIN) / ��������(INNER JOIN)
    �����Ű�� �÷��� ���� ��ġ�ϴ� ��鸸 ��ȸ(��ġ�ϴ� ���� ���� ���� ��ȸ ����)
*/

-----> ANSI����
--FROM���� ������ �Ǵ� ���̺� �ϳ� ���
--JOIN���� ���� �����ϰ��� �ϴ� ���̺� ��� + ��Ī��ų �÷��� ���� ����
--JOIN USING / JOIN ON

--1. ������ �� �÷����� �ٸ� ��� (EMPLOYEE : DEPT_CODE / DEPARTMENT : DEPT_ID)
--JOIN ON
--��ü ������� ���, �����, �μ��ڵ�, �μ���
SELECT EMP_ID, EMP_NAME, DEPT_CODE, DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID);

--2. ������ �� �÷����� ������ ���
--��ü ������� ���, �����, �����ڵ�, ���޸�
SELECT EMP_ID, EMP_NAME, E.JOB_CODE, JOB_NAME
FROM EMPLOYEE E
JOIN JOB J ON (E.JOB_CODE = J.JOB_CODE);

--USING
SELECT EMP_ID, EMP_NAME, JOB_CODE, JOB_NAME
FROM EMPLOYEE
JOIN JOB USING (JOB_CODE);

/* 
    *��������
    -�ϳ��� SQL�� �ȿ� ���Ե� �� �ٸ� SELECT��
    -���� SQL���� ���� ���� ������ �ϴ� ����
*/

--���ö ����� ���� �μ��� ���� ����� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9';

--���ö����� � �μ��ϱ�?
SELECT DEPT_CODE
FROM EMPLOYEE
WHERE EMP_NAME ='���ö';

--���� �� ������ �ϳ��� ������ ��������
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE = (SELECT DEPT_CODE
                   FROM EMPLOYEE
                   WHERE EMP_NAME ='���ö');

--���� ���� ����2)
--�� ������ ��� �޿����� �� ���� �޿��� �޴� ������� ���, �̸�, �����ڵ�
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_CODE
FROM EMPLOYEE
WHERE SALARY >= (SELECT ROUND(AVG(SALARY))
                 FROM EMPLOYEE);

/*
    *���������� ����
    ���������� ������ ������� ���� ��� �������Ŀ� ���� �з�
    
    --������ �������� : ���������� ��ȸ ������� ������ 1���� ��
    --������ �������� : ���������� ��ȸ ������� ������ �� (������ �ѿ�)
    --���߿� �������� : ���������� ��ȸ ��� ���� ���������� �÷��� ������ �϶�
    --������ ���߿� �������� : ���������� ��ȸ ������� ������ ���� �÷��� ��
    
    >> ���������� ������� ���� �������� ���ʿ� �����ڰ� �޶�����.
*/

/*
    1. ������ ��������
    ���������� ��ȸ ������� ������ 1���� ��(���� �ѿ�)
    �Ϲ� �񱳿����� ��� ����
    = != > <=...
*/
--1. �� ������ ��� �޿����� �޿��� �� ���Թ޴� ������� �����, �����ڵ�, �޿� ��ȸ
SELECT
    EMP_NAME,
    JOB_CODE,
    SALARY
FROM EMPLOYEE
WHERE SALARY <= (SELECT ROUND(AVG(SALARY))
                 FROM EMPLOYEE);

--2. �����޿��� �޴� ����� ���, �̸�, �޿�, �Ի��� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY,
    HIRE_DATE
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEE);

--3. ���ö ����� �޿����� ���� �޴� ������� ���, �̸�, �μ��ڵ� ,�޿� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY FROM EMPLOYEE WHERE EMP_NAME = '���ö');

--4. ���ö ����� �޿����� ���� �޴� ������� ���, �̸� �μ���, �޿� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    SALARY
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
WHERE SALARY > (SELECT SALARY FROM EMPLOYEE WHERE EMP_NAME = '���ö');

--5. �μ��� �޿����� ���� ū �μ��� �μ��ڵ�, �޿��� �ڡ�
SELECT
    DEPT_CODE,
    SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING SUM(SALARY) = (SELECT MAX(SUM(SALARY))
                      FROM EMPLOYEE
                      GROUP BY DEPT_CODE);

--===========================================================================
--INSERT ���߰�

--1) INSERT INTO ���̺�� VALUES(��,��,��....)

/*
    [ǥ����]
    INSERT ALL
    INTO ���̺��1 VALUES(�÷�, �÷�, �÷�...)
    INTO ���̺��2 VLAUES(�÷�, �÷�...)
    ��������;
*/

--UPDATE �����
/*
    UPDATE ���̺��
    SET �÷� = '��'
        �÷� = '��'
    [WHERE ����] -> ������ ��ü ��� ���� �����Ͱ� ����
*/

--DELETE �����
/*
    [ǥ����]
    DELETE FORM ���̺��
    [WHERE ����] -> WHERE�� ���þ��ϸ� ��ü�� �� ������
*/

--�÷�
--ALTER �÷��� �߰�/����/���� �� �� ����.
/*
    1_1) �÷� �߰�(ADD)
    ALTER TABLE ���̺�� ������ ����
    --DEPT_TALBE�� CNAME�÷� �߰�
    ALTER TABLE DEPT_TABLE ADD CNAME VARCHAR2(20);
    
    
    1_2) �÷� ����(MODIFY)
    -- ������Ÿ�� ���� : MODIFY �÷��� �ٲٰ����ϴ� ������Ÿ��
    -- DEFAULT�� ���� : MODIFY �÷��� DEFAULT �����ұ⺻��
    
    --DEPT_TITLE �÷��� VARCHAR2(40)
    ALTER TABLE DEPT_TABLE MODIFY DEPT_TITLE VARCHAR2(40);
    --LNAME�÷��� �⺻���� '�̱�'���� ����
    ALTER TABLE DEPT_TABLE MODIFY LNAME DEFAULT '�̱�';
    
    
    1_3) �÷� ����(DROP COLUMN) : DROP COLUMN �����ϰ����ϴ� �÷�
    
    ALTER TABLE DEPT_COPY DROP COLUMN DEPT_ID;
    ALTER TABLE DEPT_COPY DROP COLUMN CNAME;
    ALTER TABLE DEPT_COPY DROP COLUMN LNAME;
    ALTER TABLE DEPT_COPY DROP COLUMN DEPT_TITLE;

    ALTER TABLE DEPT_COPY DROP COLUMN LOCATION_ID; -- ���̺��� �ּ� �ϳ��̻��� �÷��� �ʿ�
    
    
    
    --���̺� ����
    DROP TABLE DEPT_TABLE;
    
    --��򰡿� �����ǰ��ִ� �θ����̺��� �Ժη� ���������� �ʴ´�.
    --���� ��������Ѵٸ�
    --1. �ڽ����̺� ���� ���� ����
    --2. �׳� �θ����̺� �����ϴµ� �������Ǳ��� �����ϴ� ���
    DROP TABLE ���̺�� CASCADE CONSTRAINT;
    
    --3) �÷���/�������Ǹ�/���̺�� ����
    
    --3_1) �÷��� ���� : RENAME COLUMN �����÷��� TO �ٲ� �÷���
    -- DEPT_TITLE -> DEPT_NAME
    ALTER TABLE DEPT_TABLE RENAME COLUMN DEPT_TITLE TO DEPT_NAME;
    
    --3_2) �������Ǹ� ���� : RENAME CONSTAINT �����������Ǹ� TO �ٲ��������Ǹ�
    ALTER TABLE DEPT_TABLE RENAME CONSTRAINT SYS_C007151 TO DTABLE_ID_NN;

    --3_3) ���̺�� ���� : RENAME TO �ٲ����̺��
    ALTER TABLE DEPT_TABLE RENAME TO DEPT_TEST;

*/
/*
    1. VIEW �������
    
    [ǥ����]
    CREATE VIEW ���
    AS ��������
*/
--TB_ (���̺��� ��)
--VW_ (���� ��)

--CREATE OR REPLACE�� ����ϸ� VIEW�� ���� ���� ����, �̹� �����Ѵٸ� ������ �� �ִ�.
--(VIEW�� ����, TABLE�� �Ұ�����)
/*
 [��ǥ����]
    CREATE [OR REPLACE] [FORCE | NOFORCE] VEIW �¸�
    AS ��������
    [WITH CHECK OPTION]
    [WITH READ ONLY];
    
    1) OR REPLACE : ������ ������ �䰡 ���� ��� �����ϰ�, ���� �汸 ���� �����ض�
    2) FORCE | NOFORCE
        > FORCE : ���������� ����� ���̺��� �������� �ʾƵ� �䰡 �����ǵ����ض�
          NOFORCE : ���������� ����� ���̺��� �����ϴ� ���̺��̿��߸� �Ѵ�.(�⺻��)
    3) WITH CHECK OPTION : DML�� ���������� ����� ���ǿ� ������ �����θ� DML�� �����ϵ���
    4) WITH READ ONLY : �信 ���ؼ� ��ȸ�� �����ϵ��� 
*/

SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D9' OR DEPT_CODE='D6' AND SALARY >= 3000000
AND EMAIL LIKE '___@_%' ESCAPE '@'  AND BONUS IS NOT NULL;

/*
    1. DEPT_CODE='D9' OR DEPT_CODE='D6'�� �Ұ�ȣ�� ���ų� DEPT_CODE IN ('D9','D6')�� �ۼ��Ѵ�.
    2. SALARY�� 300���� �̻��̹Ƿ� SALARY > 3000000�� �߸��Ǿ���.
    3.  EMAIL LIKE '____%'���� ���ϵ� ī�� ���ڿ� �Ϲݹ��ڸ� ����������Ѵ�.
    4. ���ʽ��� �־�� �ϹǷ� BONUS IS NULL�� �߸��Ǿ���.
    5. '�����̰�' �̹Ƿ� EMP_NO�� �̿��� ������ �߰��ؾ��Ѵ�.
*/
SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY, EMAIL
FROM EMPLOYEE
WHERE DEPT_CODE IN ('D9','D6') AND SALARY >= 3000000
AND EMAIL LIKE '___@_%' ESCAPE '@'  AND BONUS IS NOT NULL
AND SUBSTR(EMP_NO,8,1) IN ('1','3');


SELECT DEPT_CODE, SUM(SALARY) �հ�, FLOOR(AVG(SALARY)) ���, COUNT(*) �ο���
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING FLOOR(AVG(SALARY)) > 2800000
ORDER BY DEPT_CODE ASC;

SELECT ROWNUM, A.EMP_NAME, A.SALARY
FROM(
    SELECT ROWNUM, EMP_NAME, SALARY
    FROM EMPLOYEE
    WHERE SALARY IS NOT NULL AND ROWNUM <= 3
    ORDER BY SALARY DESC) A;


/*
    FOREIGN KEY(�ܷ�Ű) ��������
    �ٸ����̺� �����ϴ� ���� ���;ߵǴ� Ư�� �÷��� �ο��ϴ� ��������
    -> �ٸ� ���̺��� �����Ѵٰ� ǥ��
    -> �ַ� FORIGN KEY ������������ ���� ���̺� ���谡 �����ȴ�.
    
    >�÷��������
    �÷��� �ڷ��� REFERENCES ���������̺��[������ �÷���]
    
    >���̺������
    FOREIGN KEY(�÷���) REFERENCES ���������̺��[������ �÷���]
    
    -> ������ �÷��� ������ ������ ���̺��� PRIMARY KEY�� ������ �÷��� ��Ī�ȴ�.
*/
DROP TABLE MEM;

CREATE TABLE MEM(
    MEM_NO NUMBER PRIMARY KEY,
    MEM_ID VARCHAR2(20) NOT NULL UNIQUE, --�÷��������
    MEM_PWD VARCHAR2(20) NOT NULL,
    MEM_NAME VARCHAR2(20) NOT NULL,
    GENDER CHAR(3) CHECK(GENDER IN ('��', '��')), -- ��, ��
    PHONE VARCHAR2(13),
    EMAIL VARCHAR2(50),
    GRADE_ID NUMBER, -- REFERENCES MEM_GRADE(GRADE_CODE)
    FOREIGN KEY(GRADE_ID) REFERENCES MEM_GRADE(GRADE_CODE)
);
INSERT INTO MEM VALUES(1, 'USER1', 'PASS01', 'ȫ�浿', '��', NULL, NULL, NULL);
INSERT INTO MEM VALUES(2, 'USER2', 'PASS02', 'ȫ���', '��', NULL, NULL, 10);
INSERT INTO MEM VALUES(3, 'USER3', 'PASS03', '������', '��', NULL, NULL, 20);
INSERT INTO MEM VALUES(4, 'USER4', 'PASS04', '�����', '��', NULL, NULL, 30);
SELECT * FROM MEM;
INSERT INTO MEM VALUES(5, 'USER5', 'PASS05', '������', '��', NULL, NULL, 40);
--PARENT KEY�� ã�� �� ���ٴ� ���� �߻�










