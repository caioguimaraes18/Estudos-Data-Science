-- EXEMPLO – SYSDATE
SELECT SYSDATE FROM DUAL;

-- EXEMPLO – FUNÇÕES DE DATA – ADD_MONTHS()
SELECT SYSDATE                 "DATA ATUAL"  ,
       ADD_MONTHS(SYSDATE, 1)  "PRÓXIMO MÊS" ,
       ADD_MONTHS(SYSDATE, -1) "MÊS ANTERIOR"
  FROM DUAL;

  -- EXEMPLO – FUNÇÕES DE DATA – ADD_MONTHS()
SELECT DT_ADMISSAO ,
       ADD_MONTHS(DT_ADMISSAO,1) 
  FROM T_SIP_FUNCIONARIO;

-- EXEMPLO – FUNÇÕES DE DATA – LAST_DAY()
SELECT SYSDATE "DATA ATUAL" ,
       LAST_DAY(SYSDATE) "DATA COM ÚLTIMO DIA DO MÊS"
  FROM DUAL;

  -- EXEMPLO – FUNÇÕES DE DATA – LAST_DAY()
SELECT DT_ADMISSAO ,
       LAST_DAY(DT_ADMISSAO) 
  FROM T_SIP_FUNCIONARIO;


-- EXEMPLO – FUNÇÕES DE DATA – MONTHS_BETWEEN()
SELECT DT_ADMISSAO ,
       SYSDATE     , 
       MONTHS_BETWEEN(SYSDATE, DT_ADMISSAO) ,
       TRUNC(MONTHS_BETWEEN(SYSDATE, DT_ADMISSAO)) || ' MESES'
  FROM T_SIP_FUNCIONARIO;

  -- EXEMPLO – FUNÇÕES DE DATA – NEXT_DAY()
SELECT SYSDATE ,
       NEXT_DAY(SYSDATE, 1) "PRÓXIMO DOMINGO" ,
       NEXT_DAY(SYSDATE, 2) "PRÓXIMA SEGUNDA" ,
       NEXT_DAY(SYSDATE, 3) "PRÓXIMA TERÇA"   ,
       NEXT_DAY(SYSDATE, 4) "PRÓXIMA QUARTA"  ,
       NEXT_DAY(SYSDATE, 5) "PRÓXIMA QUINTA"  ,
       NEXT_DAY(SYSDATE, 6) "PRÓXIMA SEXTA"   ,
       NEXT_DAY(SYSDATE, 7) "PRÓXIMO SÁBADO" 
  FROM DUAL;