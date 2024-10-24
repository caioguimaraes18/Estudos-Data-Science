-- Tipos de Variáveis

SET SERVEROUTPUT ON
DECLARE
    v_teste VARCHAR2(30):='Hello, World';
BEGIN           DBMS_OUTPUT.PUT_LINE(v_teste);
END;       
/

v_nascimento DATE; 
v_data DATE := SYSDATE + 7; 
v_codigo NUMBER(2) NOT NULL := 10; 
v_UF VARCHAR2(2) := 'SP'; 
v_loc VARCHAR2(2) DEFAULT 'RJ';
v_teste_logico BOOLEAN := (v_valor1 < v_valor2); 
c_const CONSTANT NUMBER := 54;


SELECT    colunas
INTO	 {variáveis...| registro}  
FROM	 tabela
WHERE	 condição;


SET SERVEROUTPUT ON
DECLARE
  v_nome    VARCHAR2(30);
  v_cargo   VARCHAR2(30);
BEGIN
  SELECT ename, job
  INTO v_nome, v_cargo
  FROM emp
  WHERE empno = 7934;
DBMS_OUTPUT.PUT_LINE(v_nome);
DBMS_OUTPUT.PUT_LINE(v_cargo);
END;


SET SERVEOUTPUT ON
DECLARE    
  v_soma_sal   NUMBER; 
  v_deptno	 NUMBER NOT NULL := 10;           
BEGIN
  SELECT	SUM(sal)  
  INTO		v_soma_sal
  FROM		emp
  WHERE	deptno = v_deptno;
DBMS_OUTPUT.PUT_LINE('A soma dos salários do departamento ' || v_deptno || ' é ' || v_soma_sal);
END;



DECLARE
v_empno NUMBER := 11;
v_ename VARCHAR2(13) := 'SANDRA';
v_job VARCHAR2(13) := 'GERENTE';
v_deptno NUMBER := 10;
BEGIN
   INSERT INTO emp(empno, ename, job, deptno)
          VALUES (v_empno, v_ename, v_job, v_deptno);
END;
