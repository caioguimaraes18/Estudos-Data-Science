IF (condição) THEN
    conjunto de instruções;
END IF;


DECLARE
  v_col1    tabela1.col1%TYPE;   
  v_tamanho NUMBER(3); 
BEGIN   
  SELECT LENGTH(col1), col1 INTO v_tamanho, v_col1     
    FROM tabela1;   
  IF v_tamanho > 25 THEN      
    DBMS_OUTPUT.PUT_LINE ('Texto = ' || v_col1);   
  END IF; 
END;
/

IF (condição) THEN
   conjunto de instruções 1;
ELSE
   conjunto de instruções 2;
END IF;

DECLARE
  v_col1    tabela1.col1%TYPE;   
  v_tamanho NUMBER(3); 
BEGIN   
  SELECT LENGTH(col1), col1 INTO v_tamanho, v_col1     
    FROM tabela1;   
  IF v_tamanho > 25 THEN      
    DBMS_OUTPUT.PUT_LINE ('Texto = ' || v_col1);
  ELSE
     DBMS_OUTPUT.PUT_LINE ('Texto menor ou igual a 25');
  END IF; 
END;
/

IF (condição1 ) THEN
          conjunto de instruções 1;
ELSIF (condição 2)
          conjunto de instruções  2 ;
...
ELSE
           conjunto de instruções n;
END IF;


DECLARE
  v_col1    tabela1.col1%TYPE;   
  v_tamanho NUMBER(3); 
BEGIN   
  SELECT LENGTH(col1), col1 INTO v_tamanho, v_col1     
    FROM tabela1;   
  IF v_tamanho > 25 THEN      
    DBMS_OUTPUT.PUT_LINE ('Texto = ' || v_col1);
  ELSIF v_tamanho > 20 THEN
     DBMS_OUTPUT.PUT_LINE ('Texto maior que 20');
  ELSIF v_tamanho > 15 THEN
     DBMS_OUTPUT.PUT_LINE ('Texto maior que 15');
  ELSE
     DBMS_OUTPUT.PUT_LINE ('Texto menor ou igual a 15');
  END IF; 
END;
/

DECLARE
  v_tamanho NUMBER(3); 
BEGIN   
  SELECT LENGTH(col1) INTO v_tamanho     
    FROM tabela1;   
  IF v_tamanho > 25 AND
     TO_CHAR(SYSDATE, 'YYYY') > 1999 THEN  
     DBMS_OUTPUT.PUT_LINE ('Maior que 25 bytes e século XXI');
  END IF; 
END;
/

DECLARE
  v_tamanho NUMBER(3); 
BEGIN   
  SELECT LENGTH(col1) INTO v_tamanho     
    FROM tabela1;   
  IF v_tamanho > 25 OR
     TO_CHAR(SYSDATE, 'YYYY') > 1999 THEN
     DBMS_OUTPUT.PUT_LINE ('Maior que 25 bytes ou século XXI');
  END IF; 
END;
/