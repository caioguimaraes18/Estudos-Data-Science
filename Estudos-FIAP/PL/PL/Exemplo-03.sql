LOOP                                  
 conjunto de instruções;
  EXIT [WHEN condição]; 
END LOOP;

DECLARE
  v_contador NUMBER(2) :=1; 
BEGIN   
  LOOP
    INSERT INTO tabela1
    VALUES ('Inserindo texto numero ' || v_contador);
    v_contador := v_contador + 1;   
  EXIT WHEN v_contador > 10;   
  END LOOP;
END;
/

FOR contador in [REVERSE] limite_inferior..limite_superior LOOP  
  conjunto de instruções;
  . . .
END LOOP;

BEGIN   
  FOR i IN 1..10 LOOP
    INSERT INTO tabela1
    VALUES ('Inserindo texto numero ' || i);
  END LOOP;
END;
/

BEGIN   
  FOR i IN 1..3 LOOP
    FOR j IN 1..5 LOOP
        INSERT INTO tabela1
        VALUES ('Inserindo texto numero ' || i || j);
    END LOOP;
  END LOOP;
END;
/