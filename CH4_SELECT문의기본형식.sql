-- 해당 코드 실행 : CTRL + ENTER

DESC EMP;

DESC DEPT;

DESC SALGRADE;

-- 테이블 전체 열 출력
SELECT *
FROM EMP;

-- 테이블 부분 열 출력
SELECT EMPNO, ENAME, DEPTNO
FROM EMP;

-- 열이 한 개일 때, DISTINCT로 열 중복 제거
SELECT DISTINCT DEPTNO
FROM EMP;

-- 열이 여러 개일 때, DISTINCT로 열 중복 제거
SELECT DISTINCT JOB, DEPTNO
FROM EMP;

-- ALL로 중복되는 열 제거하지 않고 그대로 출력
SELECT ALL JOB, DEPTNO
FROM EMP;

-- 열에 연산식을 사용하여 출력
SELECT ENAME, SAL, SAL*12+COMM, COMM
FROM EMP;

-- 별칭을 사용하여 사원의 연간 총 수입 출력
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM
FROM EMP;

-- EMP 테이블의 모든 열을 급여 기준으로 오름차순 정렬
SELECT *
FROM EMP
ORDER BY SAL;     -- 오름차순: ASC(디폴트), 내림차순: DESC

-- EMP 테이블의 전체 열을 부서 번호(오름차순)와 급여(내림차순)로 정렬
SELECT *
FROM EMP
ORDER BY DEPTNO ASC, SAL DESC;

