-- Insere um registro na tabela emp

DECLARE
v_empno NUMBER := 11;
v_ename VARCHAR2(13) := 'SANDRA';
v_job VARCHAR2(13) := 'GERENTE';
v_deptno NUMBER := 10;
BEGIN
   INSERT INTO emp(empno, ename, job, deptno)
          VALUES (v_empno, v_ename, v_job, v_deptno);
END;
/


-- Update um registro na tabela emp

DECLARE
  v_sal_increase   NUMBER := 2000;
BEGIN
  UPDATE	emp
  SET		sal = sal + v_sal_increase
  WHERE	job = 'ANALYST';
END;
/

-- Delete um registro na tabela emp
DECLARE
  v_deptno   NUMBER := 10;               
BEGIN							
  DELETE FROM   emp
  WHERE         deptno = v_deptno;
END;
/