CREATE TABLE tabela1
(col1 VARCHAR2(18));

INSERT INTO tabela1
  VALUES ('Campo com 18 bytes');

SET SERVEROUTPUT ON

DECLARE
  v_col1 VARCHAR2(18);
BEGIN
  SELECT col1 INTO v_col1
    FROM tabela1;
  DBMS_OUTPUT.PUT_LINE ('Valor = ' || v_col1);
END;
/


TRUNCATE TABLE tabela1;

ALTER TABLE tabela1
MODIFY col1 VARCHAR2(30);

INSERT INTO tabela1
  VALUES ('Tamanho alterado para 30 bytes');

SET SERVEROUTPUT ON

DECLARE
  v_col1 VARCHAR2(18);
BEGIN
  SELECT col1 INTO v_col1
    FROM tabela1;
  DBMS_OUTPUT.PUT_LINE ('Valor = ' || v_col1);
END;
/

-- ORA-06502: PL/SQL: numeric or value error: character string buffer too small
-- ORA-06512: at line 4

DECLARE
  v_col1 tabela1.col1%TYPE;
BEGIN
  SELECT col1 INTO v_col1
    FROM tabela1;
  DBMS_OUTPUT.PUT_LINE ('Valor = ' || v_col1);
END;
/