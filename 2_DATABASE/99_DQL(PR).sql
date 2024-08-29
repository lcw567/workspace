/*
    <SELECT>
    SELECT ����������� ���� FROM ���̺�;
    SELECT (*) �Ǵ� �÷�1, �÷�2, �÷�3...FROM ���̺�;
*/

--��� ����� ��� ������ ������
SELECT * FROM EMPLOYEE;

--��� ����� �̸�, �ֹε�Ϲ�ȣ, �ڵ�����ȣ
SELECT EMP_NAME �̸�, EMP_NO �ֹε�Ϲ�ȣ, PHONE �ڵ�����ȣ 
FROM EMPLOYEE;

---------------�ǽ�---------------
--JOB���̺��� ���޸� ��ȸ
SELECT JOB_CODE ���޸� FROM JOB;

--DEPARTMENT ���̺��� ��� �÷� ��ȸ
SELECT * FROM DEPARTMENT;

--DEPARTEMENT ���̺��� �μ��ڵ�, �μ��� ��ȸ
SELECT DEPT_ID �μ��ڵ�, DEPT_TITLE �μ��� FROM DEPARTMENT;

--EMPLOYEE ���̺��� �����, �̸���, ��ȭ��ȣ, �Ի���, �޿� ��ȸ
SELECT EMP_NAME �����, EMAIL �̸���, PHONE ��ȭ��ȣ, HIRE_DATE �Ի���, SALARY �޿�
FROM EMPLOYEE;

--<�÷����� ���� �������>
--SELECT�� �÷��� �ۼ��κп� ��������� �� �� �ִ�.

--EMPLOYEE���̺��� �����, ����� ����(SALARY * 12)�� ��ȸ
SELECT EMP_NAME �����, SALARY * 12 ���� 
FROM EMPLOYEE;

--EMPLOYEE���̺��� �����, �޿�, ���ʽ�, ����, ���ʽ����Կ���(�޿� (�޿� * ���ʽ�)) *12)
SELECT EMP_NAME �����, SALARY �޿�, BONUS ���ʽ�, SALARY * 12 ����, (SALARY +(SALARY * BONUS)) * 12  ���ʽ����Կ���
FROM EMPLOYEE;

--������� �����߿� NULL�����Ͱ� ���ԵǾ� �ִٸ� ������ ������� NULL

--EMPLOYEE���̺��� �����, �Ի���, �ٹ��ϼ��� ��ȸ
--����ð� - �Ի��� = �ٹ��ѱⰣ
--DATE -DATE = ����� ������ �Ϸ� ǥ�� ��.
--�ڵ����� ��¥�� ����ð��� ǥ���ϴ� ��� : SYSDATE
SELECT EMP_NAME �����, HIRE_DATE �Ի���, SYSDATE - HIRE_DATE �ٹ��ϼ�
FROM EMPLOYEE;

-- DUAL : ����Ŭ���� �������ִ� �������� ���̺�
SELECT SYSDATE FROM DUAL;


/*
     <�÷��� ��Ī �����ϱ�>
     ��������� �ϰԵǸ� �÷����� ������������. �̶� �÷��� ��Ī�� �ο��ؼ� ����ϰ� ������ �� �ִ�.
     [ǥ����]
     �÷��� ��Ī / �÷��� AS ��Ī / �÷��� "��Ī" / �÷��� AS "��Ī"
*/


/*
    <���ͷ�>
    ���Ƿ� ������ ���ڿ�('')
    ��ȸ�� ����� ��� �࿡ �ݺ������� ���
*/

--EMPLOYEE���̺��� ���, �����, �޿� 
SELECT EMP_ID ���, EMP_NAME  AS �����, SALARY AS "�޿�"
FROM EMPLOYEE;


/*
    <���Ῥ���� : ||>
    ���� �÷������� ��ġ �ϳ��� �÷�ó�� ������ �� �ִ�.
*/
--���, �̸�, �޿��� �ϳ��� �÷����� ��ȸ
SELECT EMP_ID ||' '|| EMP_NAME || ' '||SALARY
FROM EMPLOYEE;


--EMPLOYEE���̺��� ��� ����� ������ ��ȸ�Ѵ�.
--������ ���� ����� �������� ����ض�
-- XX�� ������ XX���Դϴ�.
SELECT EMP_NAME || '�� ������ '|| SALARY || '�� �Դϴ�.'
FROM EMPLOYEE;


/*
    <DISTINCT>
    �ߺ����� - �÷��� ǥ�õ� ������ �ѹ����� ��ȸ�ϰ��� �� �� ���
*/
--EMPLOYEE�� �����ڵ� ��ȸ
SELECT DISTINCT JOB_CODE
FROM EMPLOYEE;

--EMPLOYEE�� �μ��ڵ� ��ȸ
SELECT DISTINCT DEPT_CODE
FROM EMPLOYEE;

SELECT *
FROM EMPLOYEE
WHERE EMP_NAME LIKE '%��%';

--SELECT DISTINCT JOB_CODE, DISTINCT DEPT_CODE 
--��ó�� �ۼ��� ������ �߻��Ѵ�. DISTINCT�� �ѹ��� ��� �����ϴ�.

SELECT DISTINCT JOB_CODE, DEPT_CODE
FROM EMPLOYEE;
--��ó�� ����(JOB_CODE, DEPT_CODE)�� ������ ��� �ߺ��� ������ ���� �����ش�.


/*
   SQL������ ����(�ڹٿ����� \n(���� �ѱ��))�� ����.
   SQL������ �����͸��� ����ϰ� �׿ܴ� �ڹٳ� �ٸ� �� �̿��� �ܺο��� �����Ѵ�.
*/

/*
    <WHERE ��>
    ��ȸ�ϰ����ϴ� ���̺�κ��� Ư�� ���ǿ� �����ϴ� �����͸� ��ȸ�� �� ���
    ���ǽĿ����� �پ��� ������ ����� �����ϴ�.
    [ǥ����]
    SELECT �÷�,�÷�,�÷� ����
    FROM ���̺�
    WHERE ����;
    
    >>�񱳿���<<
    > , <,  >=, <= : ��Һ�
    = : ������ ����
    !=, ^=, <> : ������ �ٸ��� (!= �� ���� ���)
*/

--EMPLOYEE���� �μ��ڵ尡 'D5'�� ����鸸 ��ȸ(��� �÷�)
SELECT DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE = 'D5';

--EMPLOYEE���� �μ��ڵ尡 'D9'�� ����鸸 ��ȸ(��� �÷�)
SELECT DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9';

--EMPLOYEE���� �μ��ڵ尡 'D1'�� ������� �����, �޿� �μ��ڵ� ��ȸ(��� �÷�)
SELECT EMP_NAME �����, SALARY �޿� , DEPT_CODE �μ��ڵ�
FROM EMPLOYEE
WHERE DEPT_CODE = 'D1';

--EMPLOYEE���� �μ��ڵ尡 'D1'�� �ƴ� ������� �����, �޿� �μ��ڵ� ��ȸ(��� �÷�)
SELECT EMP_NAME �����, SALARY �޿�, DEPT_CODE �μ��ڵ�
FROM EMPLOYEE
WHERE DEPT_CODE != 'D1';

--������ 400���� �̻��� ������� �����, �μ��ڵ�, �޿� ��ȸ
SELECT EMP_NAME �����, DEPT_CODE �μ��ڵ�
FROM EMPLOYEE
WHERE SALARY >= 4000000;

--=============================================================================

--1. �޿��� 300���� �̻��� ������� �����, �޿�, �Ի���, ����(��Ī -> ����)
SELECT EMP_NAME �����, SALARY �޿�, HIRE_DATE �Ի���, SALARY * 12 ����
FROM EMPLOYEE
WHERE SALARY >= 3000000;

--2. ������ 5õ���� �̻��� ������� �����, �޿�, ����(��Ī -> ����), �μ��ڵ�
SELECT EMP_NAME �����, SALARY �޿�, SALARY * 12 ����, DEPT_CODE �μ��ڵ�
FROM EMPLOYEE
WHERE SALARY * 12 >= 50000000;

--3. �����ڵ尡 'J3'�� �ƴ� ������� ��� �����, �����ڵ�, ��翩��
SELECT EMP_ID �����ȣ, EMP_NAME �����, JOB_CODE �����ڵ�, EMP_YN ��翩��
FROM EMPLOYEE
WHERE JOB_CODE != 'J3';

--4. �޿��� 350���� �̻� 600���� ������ ��� ����� �����, ���, �޿�
    -- �߰��� AND,OR �� ������ ������ �� ����   
SELECT EMP_NAME �����, EMP_ID �����ȣ, SALARY �޿�
FROM EMPLOYEE
WHERE SALARY >= 3500000 AND SALARY <=6000000;
--=============================================================================
--24/08/06
SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE IS NULL;
--NULL �񱳴� IS NULL, IS NOT NULL�� ����Ѵ�.

/*
    ORDER BY��
    SELECT���� �ۼ��� �� �������� �ۼ�
    ���� ������ �� �����.
    
    [ǥ����]
    ORDER BY ���ı��� �÷� | ��Ī | �÷� ����
*/

SELECT *
FROM EMPLOYEE
--ORDER BY BONUS;
--ORDER BY BONUS ASC NULLS FIRST;
ORDER BY BONUS DESC, SALARY ASC;

--�� ����� �����, ����(���ʽ� ����) ��ȸ(�� �� ������ �������� ����)
SELECT EMP_NAME, SALARY * 12 AS ����
FROM EMPLOYEE
--ORDER BY SALARY *12 DESC;
--ORDER BY ���� DESC;
ORDER BY 2 DESC;

--============================================================================
/*
    <�Լ�>
    ���޵� �÷����� �޾Ƽ� �Լ��� ������ ����� ��ȯ
    
    -������ �Լ� : N���� ���� �о�鿩�� N���� ������� ���� (���ึ�� �Լ����� ����� ��ȯ)
    -�׷� �Լ� : N���� ���� �о� �鿩�� 1���� ������� ����(�׷��� ��� �׷캰�� �Լ����� ����� ��ȯ)
    
    >> SELECT ���� �������Լ��� �׷��Լ��� �Բ� ������� ����
    -> ��� ���� ������ �ٸ��� ����
    
    >> �Լ��� ����� �� �ִ� ��ġ : SELECT�� WHERE�� ORDER BY�� HAVING��
    
*/

--=========================������ �Լ�=========================
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
    
    INSTR(�÷� | '���ڿ�', 'ã�����ϴ� ����', ['ã�� ��ġ�� ���۰�, ����']) -> ����� NUMBER]
    *������ ã�� �����̴� (ex 1,2 ��� 1���� ã�� �����ؼ� 2��°�� ã�� ��)
*/
SELECT INSTR('AABAACAABBA', 'B') FROM DUAL; --���ʿ� �ִ� ù B�� 3��° ��ġ�� �ִ�.
--ã�� ��ġ ���۰� : 1, ���� 1 => �⺻��
SELECT INSTR('AABAACAABBA', 'B', 1) FROM DUAL;
SELECT INSTR('AABAACAABBA', 'B', -1) FROM DUAL; --�ڿ������� ã�� ��ġ�� ���� ���� �տ������� �о��ش�.
SELECT INSTR('AABAACAABBA', 'B', 1, 2) FROM DUAL; --9?
SELECT INSTR('AABAACAABBA', 'B', 1, 3) FROM DUAL; 

SELECT EMAIL, INSTR(EMAIL, '_', 1,1), INSTR(EMAIL,'@')
FROM EMPLOYEE;

--=============================================================

/*
    *SUBSTR
    ���ڿ����� Ư�� ���ڿ��� �����ؼ� ��ȯ
    
    [ǥ����]
    SUBSTR(STRING, POSITION, [LENGTH])
    - STRING : ����Ÿ�� �÷� | '���ڿ�'
    - POSITION : ���ڿ� ������ ������ġ ��
    - LENTH : ������ ���� ���� (�����ϸ� ������)
*/

SELECT SUBSTR('SHOWMETHEMONEY', 7) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', 5, 2) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', 1, 6) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY', -8, 3) FROM DUAL;

SELECT EMP_NAME, EMP_NO, SUBSTR(EMP_NO, 8, 1) AS "����"
FROM EMPLOYEE;

--������� ������鸸 �����, �ֹι�ȣ ��ȸ
SELECT EMP_NAME, EMP_NO
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO, 8, 1) = '2' OR SUBSTR(EMP_NO, 8, 1) = '4'
ORDER BY EMP_NAME;

--�Լ� ��ø��� ����
--�̸����� ���̵�κ� ����
--�����Ͽ��� �����, �̸���, ���̵� ��ȸ
SELECT EMP_NAME, EMAIL, SUBSTR(EMAIL, 1, INSTR(EMAIL, '@')-1)
FROM EMPLOYEE;

/*
    *LPAD / RPAD
    ���ڿ��� ��ȸ�� �� ���ϰ� �ְ� ��ȸ�ϰ��� �� �� ���
    
    [ǥ����]
    LPAD/RPAD(STRING, ���������� ��ȯ�� ���ڿ��� ����, [�����̰����ϴ� ����])
    
    ���ڿ��� �����̰����ϴ� ���ڸ� ���� �Ǵ� �����ʿ� �ٿ��� ���� N���̸�ŭ ���ڿ��� ��ȯ
*/
--20��ŭ�� ���� �� EMAIL �÷����� ���������� �����ϰ� ������ �κ��� �������� ä���.
--�����̰����ϴ� ���ڸ� �־����� �ʾұ� ������ �������� ǥ��
SELECT EMP_NAME, LPAD(EMAIL, 20)
FROM EMPLOYEE;

--���� ������ #���� ä��
SELECT EMP_NAME, LPAD(EMAIL,20, '#')
FROM EMPLOYEE;

--������ ������ #���� ä��
SELECT EMP_NAME, RPAD(EMAIL, 20, '#')
FROM EMPLOYEE;

--������� �����, �ֹε�Ϲ�ȣ ��ȸ("701011-1XXXXXX")
SELECT EMP_NAME, RPAD(SUBSTR(EMP_NO, 1, 8), 14, 'X')AS "���� �� �ֹε�Ϲ�ȣ"
FROM EMPLOYEE;

/*
    *LTRIM/RTRIM
    ���ڿ����� Ư�� ���ڸ� ������ �������� ��ȯ
    LTRIM/RTRIM(STRING, [�����ϰ����ϴ� ���ڵ�])
    
    ���ڿ��� ���� Ȥ�� �����ʿ��� �����ϰ����ϴ� ���ڵ��� ã�Ƽ� ������ ������ ���ڿ� ��ȯ
    *'����'���̴� ���ڿ��� �ƴϴ�.
*/
SELECT LTRIM('     K     H     ') FROM DUAL;
SELECT LTRIM('ACBABCAABCKKH', 'A') FROM DUAL;
SELECT LTRIM('ACBABCAABCKKH', 'ABC') FROM DUAL;
SELECT LTRIM('5135432KH543542', '0123456789')FROM DUAL;

/*
    *TRIM
    ���ڿ��� ��/��/���ʿ� �ִ� ������ ���ڵ��� ������ ������ ���ڿ� ��ȯ
    TRIM([LEADING] | TRAILING | BOTH] �����ϰ����ϴ� ���ڿ� FROM ���ڿ�)
*/

SELECT TRIM('     K     H     ') FROM DUAL;
SELECT TRIM('Z' FROM 'ZZZZKHZZABCZZZZZZ') FROM DUAL; --���ʿ� �ִ� Z����

SELECT TRIM(LEADING 'Z' FROM 'ZZZZKHZZZZZZZZ') FROM DUAL; --LTRIM
SELECT TRIM(TRAILING 'Z' FROM 'ZZZZKHZZZZZZZZ') FROM DUAL; --RTRIM

/*
    *LOWER / UPPER / INITCAP
    LOWER : �� �ҹ��ڷ� ������ ���ڿ� ��ȯ
    UPPER : �� �빮�ڷ� ������ ���ڿ� ��ȯ
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
SELECT CONCAT('������',' ABC') FROM DUAL;
SELECT '������' || 'ABC' FROM DUAL;

/*
    *REPLACE
    Ư�����ڿ����� Ư���κ��� �ٸ� �κ����� ��ü
    REPLACE(���ڿ�, ã�� ���ڿ�, ������ ���ڿ�)
*/

SELECT EMAIL, REPLACE(EMAIL,'KH.or.kr', 'gmail,com')
FROM EMPLOYEE;

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
SELECT MOD(10.9, 3) FROM DUAL;

/*
    *ROUND
    �ݿø��� ����� ��ȯ
    ROUND(NUMBER, [��ġ])
*/

-- 1, -1�� �ݿø��� �Ҽ��� �ڸ����̴�
-- �⺻������ �Ҽ��� ù��° �ڸ����� �ݿø�
-- 1�� �Ҽ��� ù��° �ڸ�
-- -1�� �Ҽ������� �ö󰡼� 1�� �ڸ���
SELECT ROUND(123.456) FROM DUAL;
SELECT ROUND(123.456, 1) FROM DUAL;
SELECT ROUND(123.456, -1) FROM DUAL;

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

--�˻��ϰ����ϴ� ����
--JOB CODE�� J7�̰ų� J6�̸鼭 SALARY���� 200���� �̻��̰� -->WHERE ����
--BONUS�� �ְ� ������ ����� 
--�̸�, �ֹε�Ϲ�ȣ, �����ڵ�, �μ��ڵ�, �޿�, ���ʽ��� ��ȸ�ϰ�ʹ�

SELECT EMP_NAME, EMP_NO, JOB_CODE, DEPT_CODE, SALARY, BONUS
FROM EMPLOYEE
WHERE (JOB_CODE = 'J7' OR JOB_CODE = 'J6') AND SALARY >= 2000000 
AND BONUS IS NOT NULL AND SUBSTR(EMP_NO, 8, 1) = '2';


--===================================================

/*
    <��¥ ó�� �Լ�>
*/

--*SYSDATE : �ý����� ���� ��¥ �� �ð��� ��ȯ
SELECT SYSDATE FROM DUAL;

--*MONTHS_BETWEEN : �� ��¥ ������ ���� ��
--������� �����, �Ի���, �ٹ��ϼ�, �ٹ������� ��ȸ (�ٹ��ϼ� = ���糯¥ - �Ի���)
SELECT EMP_NAME, HIRE_DATE, FLOOR(SYSDATE - HIRE_DATE) AS �ٹ�������,
CEIL(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) AS �ٹ�������
FROM EMPLOYEE;

--*ADD_MONTHS : Ư�� ��¥�� NUMBER�������� ���ؼ� ��ȯ
SELECT ADD_MONTHS(SYSDATE, 4) FROM DUAL;

--�ٷ��� ���̺��� �����, �Ի���, �Ի��� 3������ ��¥�� ��ȸ
SELECT EMP_NAME, HIRE_DATE, ADD_MONTHS(HIRE_DATE, 3)
FROM EMPLOYEE;

--*NEXT_DAY(DATE, ����(����|����)) : Ư����¥ ���� ���� ����� ������ ��¥�� ��ȯ
SELECT NEXT_DAY(SYSDATE, '�����') FROM DUAL;
SELECT NEXT_DAY(SYSDATE, '��') FROM DUAL;

--1 : �Ͽ��� ~ 7 : ����� (�޷��� ���� �� �� �ֵ��� �Ͽ��Ϻ��� ����)
SELECT NEXT_DAY(SYSDATE, 7) FROM DUAL;

--���� SQL �νľ� �ѱ���� ���ֱ� ������ FRIDAY�� ���� ������ �߻�
SELECT NEXT_DAY(SYSDATE, 'FRIDAY') FROM DUAL;

--����
ALTER SESSION SET NLS_LANGUAGE = KOREAN;
ALTER SESSION SET NLS_LANGUAGE = AMERICAN;

--*LAST_DAY(DATE) : �ش翭�� ������ ��¥ ���ؼ� ��ȯ
SELECT LAST_DAY(SYSDATE) FROM DUAL;

/*
    EXTRACT : Ư�� ��¥�κ��� ��|
    
    [ǥ����]
    EXTRACT(YEAR FROM DATE) : ������ ����
    EXTRACT(MONTH FROM DATE) :���� ����
    EXTRACT(DAY FROM DATE) : �ϸ� ����
*/

--����� �����, �Ի�⵵, �Ի��, �Ի��� ��ȸ
SELECT EMP_NAME,
EXTRACT(YEAR FROM HIRE_DATE),
EXTRACT(MONTH FROM HIRE_DATE),
EXTRACT(DAY FROM HIRE_DATE)
FROM EMPLOYEE
ORDER BY 2,3,4; --(������ �÷�)

/*
    <LIKE>
    ���ϰ����ϴ� �÷����� ���� ������ Ư�� ���Ͽ� ������ ��� ��ȸ
    
    [ǥ����]
    ���� ����÷� LIKE 'Ư������'; -> ��ġ�ϴ� �͸� �����´�.
    
    Ư�������� ������ �� '���ϵ�ī��'��� Ư�� ������ ���ǵǾ�� �Ѵ�.
    1. '%' : ���Թ��� �˻�(0���� �̻� ���� ��ȸ)
    EX) ���� ��� �÷� LIKE '����%' : ���� ��� �÷��� �߿��� �ش� ���ڷ� �����ϴ� ���鸸 �����´�.
                                      ��, ���� ���ڴ� ����� ����.
                                    
*/


--===================================================�ڵ� ����===================================================

--1. JOB ���̺��� ��� ���� ��ȸ
SELECT *
FROM JOB;

--2. JOB ���̺��� ���� �̸� ��ȸ
SELECT JOB_NAME
FROM JOB;

--3. DEPARTMENT ���̺��� ��� ���� ��ȸ
SELECT *
FROM DEPARTMENT;

--4. EMPLOYEE���̺��� ������, �̸���, ��ȭ��ȣ, ����� ��ȸ
SELECT 
    EMP_NAME AS "������", 
    EMAIL AS "�̸���", 
    PHONE AS "��ȭ��ȣ", 
    HIRE_DATE AS "�����"
FROM EMPLOYEE;

--5. EMPLOYEE���̺��� �����, ��� �̸�, ���� ��ȸ
SELECT
    HIRE_DATE AS "�����",
    EMP_NAME AS "������",
    SALARY AS "����"
FROM EMPLOYEE;

--6. EMPLOYEE���̺��� �̸�, ����, �Ѽ��ɾ�(���ʽ�����), �Ǽ��ɾ�(�Ѽ��ɾ� - (����*���� 3%)) ��ȸ
SELECT
    EMP_NAME,
    SALARY * 12 AS "����",
    (SALARY+(SALARY * NVL(BONUS,0)))*12 AS "�Ѽ��ɾ�(���ʽ�����)",
    ((SALARY+(SALARY * NVL(BONUS,0)))*12-(SALARY *12) * 0.03) AS "�Ǽ��ɾ�"
FROM EMPLOYEE;


--7. EMPLOYEE���̺��� SAL_LEVEL�� S1�� ����� �̸�, ����, �����, ����ó ��ȸ
SELECT EMP_NAME, SALARY, HIRE_DATE,PHONE
FROM EMPLOYEE
WHERE SALARY BETWEEN 6000000 AND 10000000;

--8. EMPLOYEE���̺��� �Ǽ��ɾ�(6�� ����)�� 5õ���� �̻��� ����� �̸�, ����, �Ǽ��ɾ�, ����� ��ȸ
SELECT 
    EMP_NAME AS "�̸�", 
    SALARY AS "����",
    ((SALARY+(SALARY * NVL(BONUS,0)))*12-(SALARY *12) * 0.03) AS "�Ǽ��ɾ�",
    HIRE_DATE AS "�����"
FROM EMPLOYEE
WHERE ((SALARY+(SALARY * NVL(BONUS,0)))*12-(SALARY *12) * 0.03) > 50000000;

--9. EMPLOYEE���̺� ������ 4000000�̻��̰� JOB_CODE�� J2�� ����� ��ü ���� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE JOB_CODE = 'J2';

--10. EMPLOYEE���̺� DEPT_CODE�� D9�̰ų� D5�� ��� �� ������� 02�� 1�� 1�Ϻ��� ���� ����� �̸�, �μ��ڵ�, ����� ��ȸ
SELECT 
    EMP_NAME,
    DEPT_CODE,
    HIRE_DATE
FROM EMPLOYEE
WHERE DEPT_CODE IN ('D9','D5')
ORDER BY DEPT_CODE;

--11. EMPLOYEE���̺� ������� 90/01/01 ~ 01/01/01�� ����� ��ü ������ ��ȸ
SELECT *
FROM EMPLOYEE
WHERE HIRE_DATE BETWEEN '90/01/01' AND '01/01/01';

--12. EMPLOYEE���̺��� �̸� ���� '��'���� ������ ����� �̸� ��ȸ
SELECT EMP_NAME
FROM EMPLOYEE
WHERE EMP_NAME LIKE '%��';

--13. EMPLOYEE���̺��� ��ȭ��ȣ ó�� 3�ڸ��� 010�� �ƴ� ����� �̸�, ��ȭ��ȣ�� ��ȸ
SELECT 
    EMP_NAME,
    PHONE
FROM EMPLOYEE
WHERE NOT PHONE LIKE '010%';
--WHERE SUBSTR(PHONE, 1, 3) != '010';


--14. EMPLOYEE���̺��� �����ּ� '_'�� ���� 4���̸鼭 DEPT_CODE�� D9 �Ǵ� D6�̰� ������� 90/01/01 ~ 00/12/01�̰�,
--    �޿��� 270�� �̻��� ����� ��ü�� ��ȸ
--�ڡڡڡ�
SELECT *
FROM EMPLOYEE
WHERE  
    EMAIL LIKE '____\_%' ESCAPE '\'
    AND DEPT_CODE IN ('D9','D6')
    AND HIRE_DATE BETWEEN '90/01/01' AND '00/12/01';
    
--15. EMPLOYEE���̺��� ��� ��� ������ �ֹι�ȣ�� �̿��Ͽ� ����, ����, ���� ��ȸ
SELECT 
    EMP_NAME,
    SUBSTR(EMP_NO,1,2) AS "����",
    SUBSTR(EMP_NO,3,2) AS "����",
    SUBSTR(EMP_NO,5,2) AS "����" 
FROM EMPLOYEE;

--16. EMPLOYEE���̺��� �����, �ֹι�ȣ ��ȸ (��, �ֹι�ȣ�� ������ϸ� ���̰� �ϰ�, '-'���� ���� '*'�� �ٲٱ�)
--SELECT EMP_NAME AS �����, SUBSTR(EMP_NO,1 ,7) || '*******' AS �ֹε�Ϲ�ȣ �ڡڡڡ�
SELECT 
    EMP_NAME,
    RPAD(SUBSTR(EMP_NO,1,7),14,'*')
FROM EMPLOYEE;

--17. EMPLOYEE���̺��� �����, �Ի���-����, ����-�Ի��� ��ȸ
--(��, �� ��Ī�� �ٹ��ϼ�1, �ٹ��ϼ�2�� �ǵ��� �ϰ� ��� ����(����), ����� �ǵ��� ó��)
--�ڡڡڡ�
SELECT
    EMP_NAME,
    ABS (ROUND(HIRE_DATE - SYSDATE)) AS "�ٹ��ϼ�1",
    ABS (ROUND(SYSDATE - HIRE_DATE)) AS "�ٹ��ϼ�2"
FROM EMPLOYEE
ORDER BY �ٹ��ϼ�1;

--18. EMPLOYEE���̺��� ����� Ȧ���� �������� ���� ��� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE MOD(EMP_ID, 2) = 1;

--19. EMPLOYEE���̺��� �ٹ� ����� 20�� �̻��� ���� ���� ��ȸ
--�ٹ� ����� 20�� = 240����
--�ڡڡڡ�
SELECT *   
FROM EMPLOYEE
WHERE (MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) >= 240;

--20. EMPLOYEE ���̺��� �����, �޿� ��ȸ (��, �޿��� '\9,000,000' �������� ǥ�� , \�� '��'ǥ��)
--�ڡڡڡ�
SELECT
    EMP_NAME,
    TO_CHAR(SALARY,'L99,999,999')
FROM EMPLOYEE;


--21. EMPLOYEE���̺��� ���� ��, �μ��ڵ�, �������, ����(��) ��ȸ
--(��, ��������� �ֹι�ȣ���� �����ؼ� 00�� 00�� 00�Ϸ� ��µǰ� �ϸ�
--���̴� �ֹι�ȣ���� ����ؼ� ��¥�����ͷ� ��ȯ�� ���� ���)�ڡڡڡ�
SELECT 
    EMP_NAME,
    DEPT_CODE,
    SUBSTR(EMP_NO,1,2)|| '�� ' ||
    SUBSTR(EMP_NO,3,2)|| '�� ' ||
    SUBSTR(EMP_NO,5,2)|| '��' AS "�������",
    EXTRACT(YEAR FROM SYSDATE) -  --���糯¥���� �⵵�� ���� 
    CASE
        WHEN SUBSTR(EMP_NO, 1, 2) >= '50' THEN 1900 + TO_NUMBER(SUBSTR(EMP_NO, 1, 2))
        ELSE 2000 + TO_NUMBER(SUBSTR(EMP_NO, 1, 2))
    END "����(��)" --������ ����⵵�� 50�̻��̸� 19xx�������� �ϰ�, ��
FROM EMPLOYEE;


--22. EMPLOYEE���̺��� �μ��ڵ尡 D5, D6, D9�� ����� ��ȸ�ϵ� D5�� �ѹ���, D6�� ��ȹ��, D9�� �����η� ó��
--(��, �μ��ڵ� ������������ ����)
SELECT EMP_ID, EMP_NAME, DEPT_CODE,
       DECODE(DEPT_CODE, 'D5', '�ѹ���', 'D6', '��ȹ��', 'D9', '������')
FROM EMPLOYEE
WHERE DEPT_CODE IN ('D5','D6','D9')
ORDER BY DEPT_CODE;

--23. EMPLOYEE���̺��� ����� 201���� �����, �ֹι�ȣ ���ڸ�, �ֹι�ȣ ���ڸ�,
--�ֹι�ȣ ���ڸ��� ���ڸ��� �� ��ȸ
SELECT 
    EMP_NAME,
    SUBSTR(EMP_NO,1,6),
    SUBSTR(EMP_NO,8,14),
    SUBSTR(EMP_NO,1,6) + SUBSTR(EMP_NO,8,14)
FROM EMPLOYEE
WHERE EMP_ID = '201';

--24. EMPLOYEE���̺��� �μ��ڵ尡 D5�� ������ ���ʽ� ���� ���� �� ��ȸ
SELECT
    SUM((SALARY+(SALARY * NVL(BONUS,0)))*12) AS "���ʽ� ���� ���� ��"
FROM EMPLOYEE
WHERE DEPT_CODE = 'D5';

--25. EMPLOYEE���̺��� �������� �Ի��Ϸκ��� �⵵�� ������ �� �⵵�� �Ի� �ο��� ��ȸ
--��ü ���� ��, 2001��, 2002��, 2003��, 2004�� �ڡڡڡ�
SELECT
    COUNT(*) AS "��ü ������",
    COUNT(DECODE(EXTRACT(YEAR FROM HIRE_DATE), 2001, 1, NULL)) AS "2001��",
    COUNT(DECODE(EXTRACT(YEAR FROM HIRE_DATE), 2002, 1, NULL)) AS "2002��",
    COUNT(DECODE(EXTRACT(YEAR FROM HIRE_DATE), 2003, 1, NULL)) AS "2003��",
    COUNT(DECODE(EXTRACT(YEAR FROM HIRE_DATE), 2004, 1, NULL)) AS "2004��"
    --DECODE�� ����� 200X���̸� ī��Ʈ 1����
FROM EMPLOYEE;

--=========================JOIN=========================
/*
    JOIN
    �ΰ� �̻��� ���̺��� �����͸� ��ȸ�ϰ��� �� �� ���Ǵ� ����
    ��ȸ ����� �ϳ��� ���(RESULT SET)�� ��ȯ�Ѵ�.
    
    ������ �����ͺ��̽������� �ּ����� �����͸� ������ ���̺� ��� �ִ�.
    (������ �� ��ȸ�� ���°� �ƴ϶� �� ���̺� ����� (�ܷ�Ű)�� ���� �����͸� ��Ī���� ��ȸ�ؾ��Ѵ�.
    JOIN�� ũ�� '����Ŭ ���뱸��" "ANSI ����"
    
    ANSI�� ��� SQL���� ���
    ����Ŭ ���� ������ �˰� ������ ����, �� �ʼ��� �ƴ�

*/
--��ü ������� ���, �����, �μ��ڵ�, �μ���
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--������ �� �÷����� �ٸ� ��
--JOIN ON
SELECT 
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--������ �� �÷����� ���� ��
--JOIN USING
SELECT
    EMP_ID,
    EMP_NAME,
    E.JOB_CODE,
    JOB_NAME
FROM EMPLOYEE E
JOIN JOB J ON (E.JOB_CODE = J.JOB_CODE);
--Ȥ��
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_CODE,
    JOB_NAME
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE);

--����Ŭ ���� ����
--FROM���� ��ȸ�ϰ����ϴ� ���̺��� ����(,�� ����)
--WHERE���� ��Ī��ų �÷��� ���� ������ ����

--1. ������ �� �÷����� �ٸ� ��
--��ü ������� ���, �����, �μ��ڵ�, �μ���
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    DEPT_TITLE
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE = DEPT_ID;
--�� �ڵ�� ANSI�� ���� �� �Ʒ��� ����
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--2. ������ �� �÷����� ������ ��
--��ü ������� ���, �����, �����ڵ�, ���޸�
SELECT 
    EMP_ID, 
    EMP_NAME, 
    E.JOB_CODE, 
    J.JOB_NAME
FROM EMPLOYEE E, JOB J
WHERE E.JOB_CODE = J.JOB_CODE;
--�� �ڵ�� ANSI�� ���� �� �Ʒ��� ����
SELECT
    EMP_ID,
    EMP_NAME,
    E.JOB_CODE,
    J.JOB_NAME
FROM EMPLOYEE E
JOIN JOB J ON(E.JOB_CODE = J.JOB_CODE);

SELECT
    EMP_ID,
    EMP_NAME,
    JOB_CODE,
    JOB_NAME
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE);

--�߰����� ��������
--������ �븮�� ����� ���, �����, ���޸�, �޿� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_NAME,
    SALARY
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE)
WHERE JOB_NAME = '�븮';

--����Ŭ
SELECT EMP_ID, EMP_NAME, JOB_NAME, SALARY
FROM EMPLOYEE E, JOB J
WHERE E.JOB_CODE = J.JOB_CODE AND JOB_NAME = '�븮';

--===================================�ǽ�===================================
--1. �μ��� �λ�������� ������� ���, �̸�, ���ʽ� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    BONUS
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE DEPT_TITLE = '�λ������';

--2. DEPARTMENT�� LOCATION ���̺��� �����Ͽ�
--��ü�μ��� �μ��ڵ�, �μ���, �����ڵ�, ������ ��ȸ
SELECT
    DEPT_ID,
    DEPT_TITLE,
    LOCAL_CODE,
    LOCAL_NAME
FROM DEPARTMENT
JOIN LOCATION ON(LOCATION_ID = LOCAL_CODE);


--3. ���ʽ��� �޴� ������� ���, �����, ���ʽ�, �μ��� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    BONUS,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE BONUS IS NOT NULL;


--4. �μ��� �ѹ��ΰ� �ƴ� ������� �����, �޿� ��ȸ
SELECT
    EMP_NAME,
    SALARY
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE DEPT_TITLE != '�ѹ���';


--===========================================================================
/*
    2. �������� / �ܺ�����(OUTER JOIN)
    �� ���̺��� JOIN�� ��ġ���� �ʴ� �൵ ���Խ��� ��ȸ ����
    ��, �ݵ�� LEFT/RIGHT�� �����ؾߵȴ�.(� ���̺��� �����̴�.)  
*/

--�ܺ����ΰ� ���Ҹ��� ��������
--�����, �μ���, �޿�, ����
--�μ���ġ�� �������� 2���� ��������� ������

--1) LEFT[OUTRE] JOIN : �� ���̺� �� ���� ����� ���̺��� �������� JOIN
--ANSI
SELECT
    EMP_NAME,
    DEPT_TITLE,
    SALARY,
    SALARY * 12
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--����Ŭ
SELECT
    EMP_NAME,
    DEPT_TITLE,
    SALARY,
    SALARY*12
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE = DEPT_ID(+);

--2) RIGHT [OUTER] JOIN : �� ���̺� �� ������ ����� ���̺���� �������� JOIN
--ANSI
SELECT
    EMP_NAME
    DEPT_TITLE,
    SALARY,
    SALARY * 12
FROM EMPLOYEE
RIGHT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);
--����Ŭ
SELECT
    EMP_NAME,
    DEPT_TITLE,
    SALARY,
    SALARY * 12
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE(+) = DEPT_ID;

--FULL [OUTER] JOIN : �� ���̺��� ���� ��� ���� ��ȸ�� �� �ִ�.
--ANSI���� ����.(����Ŭ�� ����)
SELECT
    EMP_NAME
    DEPT_TITLE,
    SALARY,
    SALARY * 12
FROM EMPLOYEE
FULL JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

------------------------------------------------------------------------------
/*
    3. �����(NON EQUAL JOIN)
    ��Ī��ų �÷��� ���� ���� �ۼ��� '='�� ������� �ʴ� ���ι�
    ANSI������� �� JOIN ON�� ����
*/

--�����, �޿�, �޿����� ��ȸ
SELECT EMP_NAME, SALARY, SAL_LEVEL
FROM EMPLOYEE
JOIN SAL_GRADE ON (SALARY >= MIN_SAL AND SALARY <= MAX_SAL);

--����Ŭ
SELECT EMP_NAME, SALARY, SAL_LEVEL
FROM EMPLOYEE, SAL_GRADE
WHERE SALARY BETWEEN MIN_SAL AND MAX_SAL; 
------------------------------------------------------------------------------
/*
    4.��ü ����
    ���� ���̺��� �ٽ��ѹ� �����ϴ� ���
*/

-- ��ü ����� ���, �����, ����μ��ڵ� --> EMPLOYEE E
--�����   ���, �����, ����μ��ڵ� --> EMPLOYEE M
--ANSI
SELECT E.EMP_ID, E.EMP_NAME, E.DEPT_CODE,
       M.EMP_ID, M.EMP_NAME, M.DEPT_CODE
FROM EMPLOYEE E
LEFT JOIN EMPLOYEE M ON(E.MANAGER_ID = M.EMP_ID);


--����Ŭ
SELECT E.EMP_ID, E.EMP_NAME, E.DEPT_CODE,
       M.EMP_ID, M.EMP_NAME, M.DEPT_CODE
FROM EMPLOYEE E, EMPLOYEE M
WHERE E.MANAGER_ID = M.EMP_ID;

------------------------------------------------------------------------------
/*
    <��������>
    2�� �̻��� ���Ϻ� ������ JOIN�� �� �ִ�.
*/
--���, �����, �μ���, ���޸�
--ANSI
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    JOB_NAME
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
JOIN JOB USING(JOB_CODE);

--����Ŭ
SELECT EMP_ID, EMP_NAME, DEPT_TITLE, JOB_NAME
FROM EMPLOYEE E, DEPARTMENT, JOB J
WHERE E.DEPT_CODE = DEPT_ID AND E.JOB_CODE = J.JOB_CODE;

--���, �����, �μ���, ������
--ANSI
SELECT EMP_ID, EMP_NAME, DEPT_TITLE, LOCAL_NAME
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
JOIN LOCATION ON(LOCATION_ID = LOCAL_CODE);

--===================================�ǽ�===================================
--1. ���, �����, �μ���, ������, ������ ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    LOCAL_NAME,
    NATIONAL_NAME
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
JOIN LOCATION ON(LOCATION_ID = LOCAL_CODE)
JOIN NATIONAL USING(NATIONAL_CODE);

--2. ���, �����, �μ���, ���޸�, ������, �޿���� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    JOB_NAME,
    NATIONAL_NAME,
    SAL_LEVEL
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
JOIN JOB USING(JOB_CODE)
JOIN LOCATION ON(LOCATION_ID = LOCAL_CODE)
JOIN NATIONAL USING(NATIONAL_CODE)
JOIN SAL_GRADE ON(SALARY BETWEEN MIN_SAL AND MAX_SAL);

--======================================================================
--24/08/09
/*
    <JOIN>
    �ΰ� �̻��� ���̺��� �����͸� ��ȸ�ϰ��� �� �� ���Ǵ� ���� 
    ��ȸ ����� �Ϥ��� ���(RESULT SET)�� ��ȯ�Ѵ�.
    
    ������ �����ͺ��̽������� �ּ����� �����͸� ������ ���̺� ��� �� ��.
    (������ �� ��ȸ�� ���°� �ƴ϶� �� ���̺� ���� (�ܷ�Ű)�� ���� �����͸� ��Ī���� ��ȸ�ؾ��Ѵ�.)
    
    JOIN�� ũ�� ����Ŭ ���뱸���� ANSI �������� ���(����Ŭ ���� ������ ����ŬSQL������ ��밡��)
    [�������]
    
            ����Ŭ ���� ����              |              ANSI ����
    ---------------------------------------------------------------------------
                �����                 |               ��������
              (EQUAL JOIN)              |    (INNER JOIN) -> JOIN USING/ON
    ---------------------------------------------------------------------------
                �����                 |               �ܺ�����
              LEFT, RIGHT               |          LEFT, RIGHT, FULL
    ---------------------------------------------------------------------------
                ��ü����                 |               JOIN ON
               ������ ����               |               
*/

--1. ������ �� �÷����� �ٸ� ���(EMPLOYEE : DEPT_CODE / DEPARTMENT : DEPT_ID)
--JOIN ON
--��ü ������� ���, �����, �μ��ڵ�, �μ���
SELECT
    EMP_ID AS ���,
    EMP_NAME AS �����,
    DEPT_CODE AS �μ��ڵ�,
    DEPT_TITLE AS �μ���
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--2. ������ �� �÷����� ������ ���
--��ü ������� ���, �����, �����ڵ�, ���޸�
SELECT
    EMP_ID AS ���,
    EMP_NAME AS �����,
    JOB_CODE AS �����ڵ�,
    JOB_NAME AS ���޸�
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE);

SELECT
    E.EMP_ID AS ���,
    E.EMP_NAME AS �����,
    E.JOB_CODE AS �����ڵ�,
    J.JOB_NAME AS ���޸�
FROM EMPLOYEE E
JOIN JOB J ON (E.JOB_CODE = J.JOB_CODE);

-->����Ŭ ���뱸��
--FROM���� ��ȸ�ϰ����ϴ� ���̺�� ����(,�α���)
--WHERE���� ��Ī��ų �÷��� ���� ������ ����

--1. ������ �� �÷����� �ٸ� ���(EMPLOYEE : DEPT_CODE / DEPARTMENT : DEPT_ID)
--��ü ������� ���, �����, �μ��ڵ�, �μ���
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    DEPT_TITLE
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE = DEPT_ID;
--�Ʒ��� JOIN ON�� ����
SELECT
    EMP_ID AS ���,
    EMP_NAME AS �����,
    DEPT_CODE AS �μ��ڵ�,
    DEPT_TITLE AS �μ���
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID);

--2. ������ �� �÷����� ������ ���
--��ü ������� ���, �����, �����ڵ�, ���޸�
SELECT
    E.EMP_ID,
    E.EMP_NAME,
    E.JOB_CODE,
    J.JOB_NAME
FROM EMPLOYEE E, JOB J
WHERE E.JOB_CODE = J.JOB_CODE;

--�߰����� ��������
--������ �븮�� ����� ���, �����, ���޸�, �޿� ��ȸ
SELECT
    EMP_ID AS ���,
    EMP_NAME AS �����,
    JOB_NAME AS ���޸�,
    SALARY AS �޿�
FROM EMPLOYEE
JOIN JOB USING (JOB_CODE)
WHERE JOB_NAME = '�븮';

--����Ŭ
SELECT
    EMP_ID AS ���,
    EMP_NAME AS �����,
    JOB_NAME AS ���޸�,
    SALARY AS �޿�
FROM EMPLOYEE E, JOB J
WHERE E.JOB_CODE = J.JOB_CODE AND JOB_NAME = '�븮';

--===================================�ǽ�===================================
--1. �μ��� �λ�������� ������� ���, �̸�, ���ʽ� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY
    --DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
WHERE DEPT_TITLE = '�λ������';

--2. DEPARTMENT�� LOCATION ���̺��� �����Ͽ�
--��ü�μ��� �μ��ڵ�, �μ���, �����ڵ�, ������ ��ȸ
SELECT
    DEPT_ID,
    DEPT_TITLE,
    LOCAL_CODE,
    LOCAL_NAME
FROM DEPARTMENT
JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE);

--3. ���ʽ��� �޴� ������� ���, �����, ���ʽ�, �μ��� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    BONUS,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE BONUS IS NOT NULL;

--4. �μ��� �ѹ��ΰ� �ƴ� ������� �����, �޿� ��ȸ
SELECT
    EMP_NAME,
    SALARY
    --DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE DEPT_TITLE != '�ѹ���';

--=============================================================================
SELECT EMP_ID, EMP_NAME, SALARY          -- 3   Ž������
FROM EMPLOYEE                            -- 1
WHERE DEPT_CODE IS NULL; --IS NOT NULL;  -- 2

--NULL�� ���� ���� IS NULL, IS NOT NULL

/*
    <ORDER BY��>
    SELECT�� ���� ������ �ٿ� �ۼ�, �������, ���� ���� �������� �����Ѵ�.
    
    [ǥ����]
    SELECT ��ȸ�� �÷�...
    FROM ��ȸ�� ���̺�
    WHERE ���ǽ� <- �ʼ��� �ƴ϶� ���� �� ����
    ORDER BY ���ı��ص� �÷� | ��Ī | �÷����� [ASC | DESC] [NULLS FIRST | NULLS LAST]
    
    -ASC : ��������(���� ������ �����ؼ� ���� ���� Ŀ���� ��)
    -DESC : ��������(ū ������ �����ؼ�
    *ASC�� DESC�� ���� ���� (�⺻������ ASC�̴�.)

    -NULL�� �⺻������ ���� ū ������ �з��ؼ� �����Ѵ�.
    -NULLS FIRST : �����ϰ��� �ϴ� �÷����� NULL�� ���� ��� �ش� ������ �� �տ� ��ġ(DESC�� �� �⺻ ��)
    -NULLS LAST : �����ϰ��� �ϴ� �÷����� NULL�� ���� ��� �ش� ������ �� �������� ��ġ(ASC�� �� �⺻ ��)
*/

SELECT *
FROM EMPLOYEE
--ORDER BY BONUS
--ORDER BY BONUS ASC
--ORDER BY BONUS ASC NULLS FIRST
--ORDER BY BONUS DESC
ORDER BY BONUS DESC, SALARY ASC;

--=========================<������ �Լ�>====================================

/*
    <����ó���Լ�>

    *LENGTH(�÷� | '���ڿ�') : �ش� ���ڿ��� ���ڼ��� ��ȯ
    *LENGTHB(�÷� | '���ڿ�') : �ش� ���ڿ��� ����Ʈ ���� ��ȯ
    
    '��' '��' '��' �ѱ��� ���ڴ� 3BYTE
    ������, ����, Ư������ ���ڴ� 1BYTE
*/

SELECT
    LENGTH('����Ŭ'), LENGTHB('����Ŭ')
    --�ѱ��� 1���ڴ� 3����Ʈ
FROM DUAL;

SELECT EMP_NAME, LENGTH(EMP_NAME), LENGTHB(EMP_NAME)
FROM EMPLOYEE;

/*
    *INSTR
    ���ڿ��κ��� Ư�� ������ ������ġ�� ã�Ƽ� ��ȯ
    
    
    INSTR(�÷� | '���ڿ�', 'ã�����ϴ� ����', ['ã�� ��ġ�� ���۰�, ����'))-> ����� NUMBER
*/
SELECT INSTR('AABAACAABBBAA', 'B')FROM DUAL;
SELECT INSTR('AABAACAABBBAA', 'B', 1)FROM DUAL;
SELECT INSTR('AABAACAABBBAA', 'B',-1)FROM DUAL;
SELECT INSTR('AABAACAABBBAA', 'B', 1, 2)FROM DUAL;
SELECT INSTR('AABAACAABBBAA', 'B', 1, 3)FROM DUAL;

SELECT EMAIL, INSTR(EMAIL, '_',1,1), INSTR(EMAIL,'@')
FROM EMPLOYEE;
------------------------------------------------------------------------
/*
    *SUBSTR
    ���ڿ����� Ư�� ���ڿ��� �����ؼ� ��ȯ
    
    [ǥ����]
    SUBSTR(STRING, POSTION, [LENGTH])
    -STIRNG : ����Ÿ�� �÷� | '���ڿ�'
    -POSITION : ���ڿ� ������ ������ġ ��
    -LENGTH : ������ ���� ����(�����ϸ� ������)
*/

SELECT SUBSTR('SHOWMETHEMONEY', 7) FROM DUAL; --7��°���� ������
SELECT SUBSTR('SHOWMETHEMONEY', 5, 2) FROM DUAL; --5��°���� 2��
SELECT SUBSTR('SHOWMETHEMONEY', 1, 6) FROM DUAL;--SHOWME
SELECT SUBSTR('SHOWMETHEMONEY', -8, 3) FROM DUAL; --�������� ����, ���� ������ ����������

SELECT EMP_NAME, EMP_NO, SUBSTR(EMP_NO, 8, 1) AS "����"
FROM EMPLOYEE;

--����� �� ������鸸 �����, �ֹε�Ϲ�ȣ ��ȸ
SELECT
    EMP_NAME,
    EMP_NO
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO, 8,1) = '2' OR SUBSTR(EMP_NO,8,1) ='4'
ORDER BY EMP_NAME;


--==============================================================================
/*
    *��������
    -�ϳ��� SQL�� �ȿ� ���Ե� �� �ٸ� SELECT��
    -���� SQL���� ���� ���� ������ �ϴ� ����
    (���� ���� ������ ���ǹ�(WHERE,HAVING)�� ������ �ִ� ���̴�.
*/

--���ö ����� ���� �μ��� ���� ����� ��ȸ
SELECT
    EMP_NAME,
    DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9' AND EMP_NAME != '���ö';

--���ö����� � �μ��ϱ�?
SELECT
    EMP_NAME,
    DEPT_CODE
FROM EMPLOYEE
WHERE EMP_NAME = '���ö';

--���� �� ������ �ϳ��� ������ ��������
SELECT
    EMP_NAME,
    DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE = (SELECT DEPT_CODE
                  FROM EMPLOYEE
                  WHERE EMP_NAME = '���ö');

--���� ���� ����2)
--�� ������ ��� �޿����� �� ���� �޿��� �޴� ������� ���, �̸�, �����ڵ�
--1) �������� ��� �޿�
SELECT ROUND(AVG(SALARY)) FROM EMPLOYEE;
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_CODE
    FROM EMPLOYEE;
--2)3047663 ���� �޿��� ���� ������� �޿�
SELECT 
    EMP_NAME,
    SALARY
FROM EMPLOYEE
WHERE SALARY >= (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEE)
ORDER BY SALARY DESC;

/*
    *���������� ����
    ���������� ������ ������� ���� ��� �������Ŀ� ���� �з�
    
    --������ �������� : ���������� ��ȸ ������� ������ 1���� ��
    --������ �������� : ���������� ��ȸ ������� ������ �� (������ �ѿ�)
    --���߿� �������� : ���������� ��ȸ ������� ���������� �÷��� ������ �� ��
    --������ ���߿� �������� : ���������� ��ȸ ������� ������ ���� �÷��� ��
    
    >> ���������� ������� ���� �������� ���ʿ� �����ڰ� �޶�����
*/

/*
    1. ������ ��������
    ���������� ��ȸ ������� ������ 1���� �� (���� �ѿ�)
    �Ϲ� �񱳿����� ��� ����
    = != > <= ...
*/
--1. �� ������ ��� �޿����� �޿��� �� ���Թ޴� ������� �����, �����ڵ�, �޿� ��ȸ
SELECT
    EMP_NAME,
    JOB_CODE,
    SALARY
FROM EMPLOYEE
WHERE SALARY <= (SELECT AVG(SALARY) FROM EMPLOYEE);

--2. �����޿��� �޴� ����� ���, �̸�, �޿�, �Ի��� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    SALARY,
    HIRE_DATE
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE);
    
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
JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE SALARY < (SELECT SALARY FROM EMPLOYEE WHERE EMP_NAME = '���ö');

--5. �μ��� �޿����� ���� ū �μ��� �μ��ڵ�, �޿��� �ڡڡ�
--1) �μ��� �޿����� ���� ū �μ�
SELECT MAX(SUM(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_CODE;

--2) �޿����� 17700000���� �μ��ڵ�, �޿���
SELECT DEPT_CODE, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING SUM(SALARY) = 17700000;

--3) �� ������ �ϳ��� ���ϱ�
SELECT DEPT_CODE, SUM(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING SUM(SALARY) = (SELECT MAX(SUM(SALARY))
                     FROM EMPLOYEE
                     GROUP BY DEPT_CODE);

--6. '������'����� ���� �μ��� ������� ���, �����, ��ȭ��ȣ, �Ի���, �μ��� ��ȸ
-- �� ������ ��� ����
SELECT
    EMP_ID,
    EMP_NAME,
    PHONE,
    HIRE_DATE,
    DEPT_TITLE
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
WHERE DEPT_CODE = (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME = '������')
AND EMP_NAME != '������';

------------------------------------------------------------------------------
/*
    2. ������ ��������
    ���������� ������ ������� �������� �� (�÷��� �Ѱ�)
    IN(��������) : �������� ����� �߿��� �Ѱ��� Ŭ ��� ��ȸ
    > ANY(��������) : �������� ����� �߿��� �Ѱ��� Ŭ ��� ��ȸ
    < ANY(��������) : �������� ����� �߿��� �Ѱ��� ���� ��� ��ȸ
        �񱳴�� > ANY (���������� ����� ->��1, ��2, ��3...)
        
    > ALL(��������) : �������� ��� ������� ���� Ŭ ��� ��ȸ
    < ALL(��������) : �������� ��� ������� ���� ���� ��� ��ȸ
*/

--1) ����� �Ǵ� ������ ����� ���� ������ ������� ���, �����, �����ڵ�, �޿� ��ȸ
--1-1) ����� �Ǵ� ������ ����� ����
SELECT
    JOB_CODE
FROM EMPLOYEE
WHERE EMP_NAME IN('�����','������');

--1-2)������ J3, J7�� ������� ���, �����, �����ڵ�, �޿� ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_CODE,
    SALARY
FROM EMPLOYEE
WHERE JOB_CODE IN ('J3','J7');

--�� ������ �ϳ��� ���ϱ�
SELECT EMP_ID,
    EMP_NAME,
    JOB_CODE,
    SALARY
FROM EMPLOYEE
WHERE JOB_CODE IN(SELECT JOB_CODE FROM EMPLOYEE 
                  WHERE EMP_NAME IN('�����','������'))
AND EMP_NAME != '�����' AND EMP_NAME != '������';

--2. �븮�����ӿ��� ���� ���� �޿��� �� �ּ� �޿����� ���� �޴� 
--   ������� ���, �����, ���޸�, �޿� ��ȸ
--�� ������ ��ġ��
SELECT
    EMP_ID,
    EMP_NAME,
    JOB_NAME,
    SALARY
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE)
WHERE JOB_NAME = '�븮' AND SALARY > ANY
(SELECT SALARY
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE)WHERE JOB_NAME = '����');

-------------------------------------------------------------------------------
/*
    3. ���߿� ��������
    ������� �� �������� ������ �÷����� �������� ���
*/

--1) ������ ����� ���� �μ��ڵ�, ���� �����ڵ忡 �ش��ϴ� ����� ��ȸ
--(�����, �μ��ڵ�, �����ڵ�, �Ի���)
-->������ ��������
SELECT
    EMP_NAME,
    DEPT_CODE,
    JOB_CODE,
    HIRE_DATE
FROM EMPLOYEE
WHERE DEPT_CODE = (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME = '������')
AND JOB_CODE = (SELECT JOB_CODE FROM EMPLOYEE WHERE EMP_NAME = '������')
AND EMP_NAME != '������';

--���߿��� �ٲ��� ��
SELECT
    EMP_NAME,
    DEPT_CODE,
    JOB_CODE,
    HIRE_DATE
FROM EMPLOYEE
WHERE (DEPT_CODE, JOB_CODE)= (SELECT DEPT_CODE, JOB_CODE
                              FROM EMPLOYEE 
                              WHERE EMP_NAME = '������')
                              AND EMP_NAME != '������';

--2) �ڳ��� ����� ���� �����ڵ�, ���� ����� ������ �ִ�
--   ������� ���, �����, �����ڵ�, �����ȣ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    MANAGER_ID
FROM EMPLOYEE
WHERE (DEPT_CODE, MANAGER_ID) = (SELECT DEPT_CODE, MANAGER_ID
                                 FROM EMPLOYEE
                                 WHERE EMP_NAME = '�ڳ���');

/*
    4. ������ ���߿� ��������
    ���������� ��ȸ ������� ������ �������� ���
*/

--1) �� ���޺� �ּұ޿��� �޴� ��� ��ȸ(���,�����, �����ڵ�, �޿�)
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_CODE,
    SALARY
FROM EMPLOYEE
WHERE (DEPT_CODE, SALARY) IN (SELECT DEPT_CODE, MAX(SALARY)
                              FROM EMPLOYEE GROUP BY DEPT_CODE)
ORDER BY DEPT_CODE;

--1. �μ� �� �޿� �հ谡 ��ü �޿� �� ���� 20%���� ���� �μ��� �μ� ��, �μ� �� �޿� �հ� ��ȸ
SELECT
    DEPT_TITLE,
    SUM(SALARY)
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
GROUP BY DEPT_TITLE 
HAVING SUM(SALARY) > (SELECT SUM(SUM(SALARY)) --�׷����̹Ƿ� WHRER�� �ƴ� HAVING
                      FROM EMPLOYEE
                      GROUP BY SALARY) *0.2;

--2. ���� �� ���� ������ ��� �ڵ�, ��� ��, ����, �μ� ��, ���� �� ��ȸ
/*
�ֹι�ȣ�� ���� ���ϱ� (�����δ� �̷��� �������� ����)
EXTRACT(YEAR FROM SYSDATE)-
    CASE
        WHEN SUBSTR(EMP_NO, 1, 2) <= TO_CHAR(SYSDATE, 'YY') THEN
        2000+ TO_NUMBER(SUBSTR(EMP_NO,1,2))
    ELSE
        1900 + TO_NUMBER(SUBSTR(EMP_NO,1,2))
        END +1
*/
--���̸� �� ������ ���� �� �ִ� ����� ������? -> ���� �÷��� �ƿ� ���θ����?






-------------------------------------------------------------------------------
/*
   <DML>
   ������ ���� ���
   ���̺� ���� ����(INSERT), ����(ALTER), ����(DELETE) �ϴ� ����
*/

/*
    1. INSERT
    ���̺� ���ο� ���� �߰��ϴ� ����
    
    [ǥ����]
    1) INSERT INTO ���̺�� VALUES(��, ��, ��,...)
    ���̺��� ��� �÷��� ���� ���� ���� �����ؼ� �� ���� ISNERT�ϰ��� �� ��
    �÷��� ������ ���Ѽ� VALUES�� ���� �����ؾ� �Ѵ�.
    
    �����ϰ� ���� ������ ���, ���� �� ���� ������ ��� -> ���� �߻�
*/

SELECT * FROM EMPLOYEE;

INSERT INTO EMPLOYEE
VALUES(900,'�̼ұ�', '880914-1456789','SG8809@NAVER.COM','01078945656','D7',
       'J5',4000000,0.2,200,SYSDATE, NULL,'N');

/*
    2) INSERT INTO ���̺��(�÷�,�÷�,�÷�...)VALUES(��, ��, ��,...)
    ���̺� ���� ������ �÷��� ���� ���� INSERT�� �� ���
    �׷��� �� �� ������ �߰� �Ǳ� ������ ���� �ȵ� �÷��� �⺻������ NULL�� ����.
    -> NOT NULL ���������� �ɷ��ִ� �÷��� �ݵ�� �������� �־���� �Ѵ�.
    ��, �⺻���� �����Ǿ� ������ NULL�� �ƴ� �⺻���� ����.
*/
INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME, EMP_NO, JOB_CODE, HIRE_DATE)
VALUES(901, '������', '440701-1234567', 'J7', SYSDATE);
SELECT * FROM EMPLOYEE;

INSERT
INTO EMPLOYEE(
            EMP_ID,
            EMP_NAME,
            EMP_NO,
            JOB_CODE,
            HIRE_DATE
            )
        VALUES(
              902, 
              '�μҶ�', 
              '440811-1234567',
              'J7',
              SYSDATE
              );

/*
    3) INSERT INTO ���̺�� (��������);
    VALUES�� ���� ���� ����ϴ� �� ��� ���������� ��ȸ�� ���� ��°�� INSERT ����
*/

CREATE TABLE EMP_01(
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(20),
    DEPT_TITLE VARCHAR2(20)
);

SELECT * FROM EMP_01;

INSERT INTO EMP_01(SELECT EMP_ID, EMP_NAME, DEPT_TITLE
                   FROM EMPLOYEE
                   LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID));
                   
-------------------------------------------------------------------------------
/*
    2. INSERT ALL
    �ΰ� �̻��� ���̺� ���� INSERT�� ��
    �̶� ���Ǵ� ���������� ������ ���
*/

CREATE TABLE EMP_DEPT
AS(SELECT EMP_ID, EMP_NAME, DEPT_CODE, HIRE_DATE
    FROM EMPLOYEE
    WHERE 1 = 0
    );
    
CREATE TABLE EMP_MANAGER
AS(SELECT EMP_ID, EMP_NAME, MANAGER_ID
    FROM EMPLOYEE
    WHERE 1=0);
    
--�μ��ڵ尡 D1�� ������� ���, �̸�, �μ��ڵ�, �Ի��� ,�������� ��ȸ
SELECT EMP_ID, EMP_NAME, DEPT_CODE, HIRE_DATE, MANAGER_ID
FROM EMPLOYEE
WHERE DEPT_CODE = 'D1';

/*
    [ǥ����]
    INSERT ALL
    INTO ���̺��1 VALUES [�÷�,�÷�,...]
    INTO ���̺��2 VALUES [�÷�,�÷�,...]
    ��������;
*/

INSERT ALL
    INTO EMP_DEPT VALUES (EMP_ID, EMP_NAME, DEPT_CODE, HIRE_DATE)
    INTO EMP_MANAGER VALUES (EMP_ID, EMP_NAME, MANAGER_ID)
    (SELECT EMP_ID, EMP_NAME, DEPT_CODE, HIRE_DATE, MANAGER_ID
    FROM EMPLOYEE
    WHERE DEPT_CODE = 'D1');

SELECT * FROM EMP_DEPT;
SELECT * FROM EMP_MANAGER;

-------------------------------------------------------------------------------

/*
    3. UPDATE
    ���̺� ��ϵǾ��ִ� ������ �����͸� �����ϴ� ����
    
    [ǥ����]
    UPDATE ���̺��
    SET �÷� = '��'
        �÷� = '��'
        ...
    (WHERE ����) -> ���� �� ��ü ��� ���� �����Ͱ� ����
    
    *������Ʈ�ÿ��� �������� �� Ȯ���ؾ��Ѵ�.
*/

CREATE TABLE DEPT_TABLE
    AS(SELECT * FROM DEPARTMENT);
    
    SELECT * FROM DEPT_TABLE;

--D9 �μ��� �μ����� '������ȹ��'���� ����
UPDATE DEPT_TABLE
SET DEPT_TITLE ='������ȹ��'
WHERE DEPT_ID = 'D9';

SELECT * FROM DEPT_TABLE;

CREATE TABLE EMP_SALARY
AS (SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY, BONUS
FROM EMPLOYEE);

--EMP_SALARY ���̺���
--���ö ����� �޿��� 100�������� ����
UPDATE EMP_SALARY
SET SALARY = 1000000
WHERE EMP_NAME = '���ö';

--������ ����� �޿��� 700����, ���ʽ��� 0.2�� ����
UPDATE EMP_SALARY
    SET SALARY = 700000,
        BONUS = 0.2
WHERE EMP_NAME = '������';

SELECT * FROM EMP_SALARY;

--��ü ����� �޿��� ���� �޿��� 10���� ����� �ݾ����� ����

UPDATE EMP_SALARY
    SET SALARY = SALARY * 1.1 
    --10���θ� ���ϹǷ� ����SALARY�� 0.1�� ���� SALARY *0.1�� ���ϰų� 1.1�� ����
    ;

/*
    UPDATE���� �������� ���
    
    UPDATE ���̺��
    SET �÷��� = (��������)
    WHERE ����
*/
    
--���� ����� �޿��� ���ʽ� ���� ����� ����� �޿��� ���ʽ� ������ ����
UPDATE EMP_SALARY
    SET SALARY = (SELECT SALARY
                  FROM EMPLOYEE
                  WHERE EMP_NAME = '�����'),
        BONUS   =(SELECT BONUS
                  FROM EMPLOYEE
                  WHERE EMP_NAME = '�����')
WHERE EMP_NAME ='����';

--ASIA�������� �ٹ��ϴ� ������� ���ʽ����� 0.3���� ����
-- UPDATE�� �ϱ� ���� ���ǹ��� ���� �ۼ��� UPDATE WHERE ���ǿ� �ֱ�

SELECT EMP_ID, EMP_NAME
FROM EMP_SALARY
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
WHERE LOCAL_NAME LIKE 'ASIA%';

--������ ���� ������� ���ʽ����� 0.3���� ����
UPDATE EMP_SALARY
SET BONUS = 0.3
WHERE EMP_ID IN(SELECT EMP_ID
                FROM EMP_SALARY
                JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
                JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
                WHERE LOCAL_NAME LIKE 'ASIA%');
COMMIT;

/*
    4. DELETE
    ���̺� ��ϵ� �����͸� �����ϴ� ����(�� �� ������ ������ �ȴ�.)
    
    [ǥ����]
    DELETE FROM ���̺��
    [WHERE ����] -> WHERE�� ���þ��ϸ� ��ü�� �� ���� ��
*/

DELETE FROM EMOLYEE;

ROLLBACK;

DELETE FROM EMPLOYEE
WHERE EMP_NAME ='�̼ұ�';

------------------------------------------------------------------------------
/*
    <DCL : ������ ���>
    
    ������ �ý��� ���� �Ǵ� ��ü���� ������ �ο��ϰų� ȸ���ϴ� ����
    
    >�ý��� ���� : DB�� �����ϴ� ����, ��ü�� ������ �� �մ� ����
    >��ü ���� ���� : Ư�� ��ü���� ������ �� �ִ� ����
    
    CREATE USER ������ IDENTIFIED BY ��й�ȣ; --> ��й�ȣ�� ��ҹ��ڸ� ������
    GRANT ����(CONNECT, RESOURCE) TO ����
*/

SELECT * FROM ROLE_SYS_PRIVS;

/*
    <TCL : Ʈ����� ���>
    -�����ͺ��̽��� ���� �������
    -�������� ������׵��� �ϳ��� Ʈ����ǿ� ��� ó��
    DML�� �Ѱ��� ������ �� Ʈ������� �������� �ʴ´ٸ� Ʈ������� ���� �����ش�.
                         Ʈ������� �����Ѵٸ� �ش� Ʈ����ǿ� ��� ó��
    COMMIT�ϱ� �������� ������׵��� �ϳ��� Ʈ����ǿ� ��´�.
    -Ʈ����ǿ� ����� �Ǵ� SQL : INSERT, UPDATE, DELETE
    
    COMMIT(Ʈ����� ���� ó�� �� Ȯ��)
    ROLLBACK(Ʈ����ǿ� �ִ� �۾��� ���)
    SAVEPOINT(�ӽ�����)
    
    -COMMIT : �� Ʈ����ǿ� ����ִ� ������׵��� ���� DB�� �ݿ���Ű�ڴٴ� �ǹ�
    -ROLLBACK : �� Ʈ����ǿ� ����ִ� ������׵��� ����(���)�� �� ������ COMMIT �������� ���ư�
    -SAVEPOINT ����Ʈ�� : ���� ������ �ش� ����Ʈ������ �ӽ� ���� ���ְڴ�.
*/

------------------------------------------------------------------------------
/*
    <VIEW ��>
    
    SELECT��(������)�� �����ص� �� �ִ� ��ü
    (���� ����ϴ� SELECT���� �����صθ� �� SELECT���� �Ź� �ٽ� ����� �ʿ���� ����� �� �ִ�.)
    �����̺� ���� ����(���� �����Ͱ� ����ִ� �� �ƴϴ� -> �����̺�)
*/

--�ѱ����� �ٹ��ϴ� ������� ���, �̸�, �μ���, �޿�, �ٹ�������, ��ȸ
SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    SALARY,
    NATIONAL_NAME
FROM EMPLOYEE
JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
JOIN NATIONAL USING (NATIONAL_CODE)
WHERE NATIONAL_NAME = '�ѱ�';

/*
    1. VIEW �������
    
    [ǥ����]
    CREATE VIEW ���
    AS ��������
*/
--TB (���̺��� ��)
--VW_(���� ��)
CREATE VIEW VW_EMPLOYEE
AS(SELECT
    EMP_ID,
    EMP_NAME,
    DEPT_TITLE,
    SALARY,
    NATIONAL_NAME
    FROM EMPLOYEE
        JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
        JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
        JOIN NATIONAL USING (NATIONAL_CODE));

--GRANT CREATE VIEW TO KH;

SELECT * FROM VW_EMPLOYEE;

--���� ����Ǵ� ���� �Ʒ��� ���� ���������� ����ȴٰ� �� �� �ֵ�.
SELECT * 
FROM (SELECT  --FROM���ȿ� �����Ƿ� �ζ��κ�� ����
        EMP_ID,
        EMP_NAME,
        DEPT_TITLE,
        SALARY,
        NATIONAL_NAME
      FROM EMPLOYEE
      JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
      JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
      JOIN NATIONAL USING (NATIONAL_CODE));

--�ѱ����� �ٹ��ϴ� ������� ���, �̸�, �μ���, �޿�, �ٹ�������, ��ȸ
SELECT *
FROM VW_EMPLOYEE
WHERE NATIONAL_NAME ='�ѱ�';

--���þƿ��� �ٹ��ϴ� ������� ���, �̸�, �μ���, �޿�, �ٹ�������, ��ȸ
SELECT *
FROM VW_EMPLOYEE
WHERE NATIONAL_NAME ='���þ�';

--�Ϻ����� �ٹ��ϴ� ������� ���, �̸�, �μ���, �޿�, �ٹ�������, ��ȸ
SELECT *
FROM VW_EMPLOYEE
WHERE NATIONAL_NAME ='�Ϻ�';

--��CREATE OR REPLACE�� ����ϸ� VIEW�� ���� ���� ����, �̹� �����Ѵٸ� ������ �� �ִ�.
--(VIEW�� ����, TABLE�� �Ұ�����)
CREATE OR REPLACE VIEW VWEMPLOYEE
AS(SELECT
        EMP_ID,
        EMP_NAME,
        DEPT_TITLE,
        SALARY,
        NATIONAL_NAME,
        BONUS
    FROM EMPLOYEE
    JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
    JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
    JOIN NATIONAL USING (NATIONAL_CODE));
    
SELECT * FROM VW_EMPLOYEE;    

------------------------------------------------------------------------------
/*
    *�� �÷��� ��Ī �ο�
    ���������� SELECT���� �Լ����̳� ���������� ����Ǿ��ִٸ� �ݵ�� ��Ī�� �ο��ؾ� �Ѵ�.
*/
CREATE OR REPLACE VIEW VW_EMP_JOB
AS (SELECT
        EMP_ID,
        EMP_NAME,
        JOB_NAME,
        DECODE(SUBSTR(EMP_NO, 8, 1) , '1', '��', '2', '��') AS "����",
        EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM HIRE_DATE) AS "�ٹ����"
    FROM EMPLOYEE
    JOIN JOB USING(JOB_CODE));
    
  SELECT * FROM VW_EMP_JOB
WHERE �ٹ���� >=20;
    
------------------------------------------------------------------------------
--������ �並 ���ؼ� DML(INSERT, UPDATE, DELETE) ��밡��
--�並 ���ؼ� �����ϰ� �Ǹ� ���� �����Ͱ� ����ִ� ���̺� �ݿ��� �ȴ�.

CREATE OR REPLACE VIEW VW_JOB
AS(SELECT JOB_CODE, JOB_NAME
    FROM JOB);

------------------------------------------------------------------------------
/*
    <PL/SQL>
    ����Ŭ ��ü�� ����Ǿ� �ִ� ������ ���
    SQL���� ���ּ� ������ ����, ����(IF), �ݺ�(FOR, WHILE)���� �����Ͽ� SQL������ ����
    �ټ��� SQL���� �ѹ��� ���� �����ϴ�
    
    ����δ� DECLARE�� ����
    ����δ� BEGIN���� ���� �ϰ� END;/�� ������
    ����ó���δ� EXCEPTION�� ����
*/


SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO ORACLE');
END;
/

-----------------------------------------------------------------------------
/*
    1. DECLARE �����
    ���� �� ����� �����ϴ� ����
    �Ϲ�Ÿ�Ժ���, ���۷��� Ÿ�Ժ���,  ROWŸ�Ժ���
    
    1_1) �Ϲ�Ÿ�� ���� ���� �� �ʱ�ȭ
        [ǥ����] ������ [CONSTANT] �ڷ��� [:= ��]
*/

DECLARE
    EID NUMBER;
    ENAME VARCHAR2(20);
    PI CONSTANT NUMBER := 3.14; --CONSTANT�� ������� ���
BEGIN 
    EID := &��ȣ;
    ENAME := '&�̸�';
    
    DBMS_OUTPUT.PUT_LINE('EID : ' || EID);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('PI : ' || PI);
END;
/

-----------------------------------------------------------------------------
--1_2)���۷��� Ÿ�� ���� ���� �� �ʱ�ȭ(� ���̺��� � �÷��� ������ Ÿ���� �����ؼ� �� Ÿ������ ����)

DECLARE
    EID EMPLOYEE.EMP_ID%TYPE;
    ENAME EMPLOYEE.EMP_NAME%TYPE;
    SAL EMPLOYEE.SALARY%TYPE;
BEGIN
    --EID := 800
    --ENAME :='������';
    --SAL := 1000000;
    
    --����� 200���� ����� ���, �����, �޿� ��ȸ
    SELECT EMP_ID, EMP_NAME, SALARY
    INTO EID, ENAME, SAL
    FROM EMPLOYEE
    WHERE EMP_ID = &���;
    
    DBMS_OUTPUT.PUT_LINE('EID : ' || EID);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('SAL : ' || SAL);
END;
/

---------------------------------�ǽ�--------------------------------------------
/*
    ���۷���Ÿ�� ������ EID, ENAME, JCODE, SAL, DTITLE�� �����ϰ�
    �� �ڷ��� EMPLOYEE(EMP_ID, EMP_NAME, JOB_CDOE, SALARY), DEPARTMENT(DEPT_TITLE)���� �����ϵ���
    ����ڰ� �Է��� ����� ����� ���, , �����ڵ�, �޿�, �μ��� ��ȸ�� �� ������ ��� ���
*/
DECLARE
    EID EMPLOYEE.EMP_ID%TYPE;
    ENAME EMPLOYEE.EMP_NAME%TYPE;
    JCODE EMPLOYEE.JOB_CODE%TYPE;
    SAL EMPLOYEE.SALARY%TYPE;
    DTITLE DEPARTMENT.DEPT_TITLE%TYPE;
BEGIN
    SELECT
        EMP_ID,
        EMP_NAME,
        JOB_CODE,
        SALARY,
        DEPT_TITLE
    INTO EID, ENAME, JCODE, SAL, DTITLE
    FROM EMPLOYEE
    JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
    WHERE EMP_ID = &���;
    
    DBMS_OUTPUT.PUT_LINE(EID || ',' ||  ENAME || ',' || JCODE || ',' || SAL || ',' || DTITLE);
    
END;
/
-----------------------------------------------------------------------------
--2. BEGIN �����
--<���ǹ�>
-- 1) IF ���ǽ� THEN ���೻�� END IF; (IF���� �ܵ����� ����� ��)

--�Է¹��� ����� �ش��ϴ� ����� ���, �̸�, �޿�, ���ʽ� ���
--�� ,���ʽ��� ���� ���� ����� ���ʽ��� ��� �� '���ʽ��� ���޹��� �ʴ� ����Դϴ�' ���

DECLARE
    EID EMPLOYEE.EMP_ID%TYPE;
    ENAME EMPLOYEE.EMP_NAME%TYPE;
    SAL EMPLOYEE.SALARY%TYPE;
    BONUS EMPLOYEE.BONUS%TYPE;
BEGIN
    SELECT
        EMP_ID,
        EMP_NAME,
        SALARY,
        NVL(BONUS, 0)
    INTO EID, ENAME, SAL, BONUS
    FROM EMPLOYEE
    
    WHERE EMP_ID = &���;
    
    DBMS_OUTPUT.PUT_LINE('��� : ' || EID);
    DBMS_OUTPUT.PUT_LINE('�̸� : ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('�޿� : ' || SAL);
    
    IF BONUS = 0
        THEN DBMS_OUTPUT.PUT_LINE('���ʽ��� ���޹��� �ʴ� ����Դϴ�.');
    END IF;
        DBMS_OUTPUT.PUT_LINE('���ʽ� : ' || BONUS);

END;
/

--2) IF ���ǽ� THEN ���೻�� ELSE ���೻�� END IF;

DECLARE
    EID EMPLOYEE.EMP_ID%TYPE;
    ENAME EMPLOYEE.EMP_NAME%TYPE;
    SAL EMPLOYEE.SALARY%TYPE;
    BONUS EMPLOYEE.BONUS%TYPE;
BEGIN
    SELECT
        EMP_ID,
        EMP_NAME,
        SALARY,
        NVL(BONUS, 0)
    INTO EID, ENAME, SAL, BONUS
    FROM EMPLOYEE
    
    WHERE EMP_ID = &���;
    
    DBMS_OUTPUT.PUT_LINE('��� : ' || EID);
    DBMS_OUTPUT.PUT_LINE('�̸� : ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('�޿� : ' || SAL);
    
    IF BONUS = 0
        THEN DBMS_OUTPUT.PUT_LINE('���ʽ��� ���޹��� �ʴ� ����Դϴ�.');
    ELSE
    DBMS_OUTPUT.PUT_LINE('���ʽ� : ' || BONUS);
    END IF;

END;
/

---------------------------------�ǽ�-------------------------------------------
--DECLARE
-- ���۷�������(EID, ENAME, DTITLE, NCODE)
-- ��������(EMP_ID, EMP_NAME, DEPT_TITLE, NATIONAL_CODE)
-- �Ϲ�Ÿ�Ժ���(TEAM ���ڿ�) - ������, �ؿ��� �и��ؼ� ����

-- BEGIN ����ڰ� �Է��� ����� ��������� ������, 
-- ���, �̸�, �μ���, �ٹ������ڵ� ��ȸ �� �� ������ ����
-- NOCDE���� KO�� ��� -> TEAM --> ������
--          KO�� �ƴ� ��� -> TEAM --> �ؿ��� ����
-- ���, �̸�, �μ� ,�Ҽ�(TEAM)�� ���

DECLARE
    EID EMPLOYEE.EMP_ID%TYPE;
    ENAME EMPLOYEE.EMP_NAME%TYPE;
    DTITLE DEPARTMENT.DEPT_TITLE%TYPE;
    NCODE LOCATION.NATIONAL_CODE%TYPE;
    TEAM VARCHAR2(20);
BEGIN
    SELECT
        EMP_ID, EMP_NAME, DEPT_TITLE, NATIONAL_CODE
        INTO EID, ENAME, DTITLE, NCODE
    FROM EMPLOYEE
    JOIN DEPARTMENT ON (DEPT_CODE = DEPT_ID)
    JOIN LOCATION ON (LOCATION_ID = LOCAL_CODE)
    WHERE EMP_ID = &���;
    
    IF NCODE = 'KO'
        THEN TEAM := '������';
    ELSE
        TEAM := '�ؿ���';
    END IF;

    DBMS_OUTPUT.PUT_LINE('��� : ' || EID);
    DBMS_OUTPUT.PUT_LINE('�̸� : ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('�μ� : ' || DTITLE);
    DBMS_OUTPUT.PUT_LINE('���� : ' || NCODE);
    DBMS_OUTPUT.PUT_LINE('�Ҽ� : ' || TEAM);
END;
/
--3) IF ���ǽ�1 THEN ���೻��1 ELSIF ���ǽ�2 THEN ���೻��2 ... [ELSE ���೻��] END IF;
DECLARE
    SCORE NUMBER;
    GRADE VARCHAR2(1);
BEGIN
    SCORE := &����;
    
    IF SCORE >= 90 
        THEN GRADE := 'A';
    ELSIF SCORE >= 80 
         THEN GRADE := 'B';
    ELSIF SCORE >= 70 
         THEN GRADE := 'C';
    ELSIF SCORE >= 60 
         THEN GRADE := 'D';
    ELSE
        GRADE := 'F';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('����� ������ ' || SCORE || '���̸�, ������ ' || GRADE || '�����Դϴ�.');
END;
/

-----------------------------------------------------------------------------
--<�ݺ���>

/*
    1) BASIC LOOP��
    [ǥ����]
    LOOP
        �ݺ������� ������ ����
        *�ݺ����� �������� �� �ִ� ����
    END LOOP;
    
    *�ݺ����� �������� �� �ִ� ����
    1) IF ���ǽ� THEN EXIT; END IF;
    2) EXIT WHEN ���ǽ�;
*/

DECLARE
    I NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        EXIT WHEN I = 10;
        I := I+1;
    END LOOP;
END;
/

-----------------------------------------------------------------------------
/*
    2) FOR LOOP��
    [ǥ����]
    FOR ���� IN [REVERSE] �ʱⰪ..������
    LOOP
        �ݺ������� ������ ����;
    END LOOP;
*/

BEGIN
    FOR I IN 1..5
    LOOP   
        DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/

BEGIN
    FOR I IN REVERSE 1..5
    LOOP
        DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/
DROP TABLE TEST;

CREATE TABLE TEST(
    TNO NUMBER PRIMARY KEY,
    TDATE DATE
);

CREATE SEQUENCE SEQ_TNO;

BEGIN
    FOR I IN 1..100
    LOOP
        INSERT INTO TEST VALUES(SEQ_TNO.NEXTVAL, SYSDATE);
    END LOOP;
END;
/

SELECT * FROM TEST;

-----------------------------------------------------------------------------
/*
    2) WHILE LOOP��
    [ǥ����]
    WHILE �ݺ����� ����� ����
    LOOP
        �ݺ������� ������ ����;
    END LOOP;
*/

DECLARE
    I NUMBER := 0;
BEGIN
    WHILE I < 10
    LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        I := I+1;
    END LOOP;
END;
/

-----------------------------------------------------------------------------
/*
    3. ����ó����
    ����(EXCEPTION) : ���� �� �߻��ϴ� ����
    
    EXCEPTION
        WHEN ���ܸ�1 TEHN ó������1;
        WHEN ���ܸ�2 TEHN ó������2;
        ...
        
    *�ý��� ����(����Ŭ���� �̸� �����ص� ����)
    -NO_DATE_FOUND : SELECT�� ����� ���൵ ���� ��
    -TOO_MANY_ROWS : SELECT�� ����� �������� ���
    -ZERO_DIVIDE : 0���� ���� ��
    -DUP_VAL_ON_INDEX : UNIQUE�������� ����
    ...
*/
--����ڰ� �Է��� ���� �������� ����� ���
DECLARE
    RESULT NUMBER;
BEGIN
    RESULT := 10/&����;
    DBMS_OUTPUT.PUT_LINE('����� : ' || RESULT);
EXCEPTION
    --WHEN ZERO_DIVIDE THEN DBMS_OUTPUT.PUT_LINE('������ ����� 0���� ���� �� �����ϴ�.');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('������ ����� 0���� ���� �� �����ϴ�.');
END;
/

ALTER TABLE EMPLOYEE ADD PRIMARY KEY(EMP_ID);

BEGIN
    UPDATE EMPLOYEE
    SET EMP_ID = '&�����һ��'
    WHERE EMP_NAME = '���ö';
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN DBMS_OUTPUT.PUT_LINE('�̹� �����ϴ� ����Դϴ�.');
END;
/