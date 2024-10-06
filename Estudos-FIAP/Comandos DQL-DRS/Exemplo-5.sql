-- EXEMPLO DE ESTRUTURA PARA APLICAR SELF JOIN
-- DROP TABLE T_EXE_FUNCIONARIO CASCADE CONSTRAINT;

CREATE TABLE T_EXE_FUNCIONARIO 
( 
   cd_funcionario  NUMBER (5)    NOT NULL ,  
   cd_gerente      NUMBER (5)        NULL , 
   nm_funcionario  VARCHAR2 (50) NOT NULL , 
   nr_cpf          NUMBER (11)   NOT NULL , 
   nr_rg           NUMBER (9)    NOT NULL ,
   dt_admissao     DATE          NOT NULL ,
   vl_salario      NUMBER (8,2)  NOT NULL
) ;
/* Chave primária da tabela Funcionario */
ALTER TABLE T_EXE_FUNCIONARIO 
ADD CONSTRAINT PK_EXE_FUNCIONARIO 
PRIMARY KEY ( cd_funcionario ) ;

/******* Chave ESTRANGEIRA - Tabela Funcionario ********/
ALTER TABLE T_EXE_FUNCIONARIO 
ADD CONSTRAINT FK_EXE_GERENTE 
   FOREIGN KEY (cd_gerente) 
REFERENCES T_EXE_FUNCIONARIO (cd_funcionario);  

---------------------------------------------------
-- EXEMPLO DE INSERÇÕES
----------------------------------------------------
INSERT INTO T_EXE_FUNCIONARIO 
VALUES (1,NULL,'RITA',12345678901,11222333,
TO_DATE('15/07/2021','DD/MM/YYYY'), 4567.98);

INSERT INTO T_EXE_FUNCIONARIO 
VALUES (2,NULL,'JOAO',12342233445,11333444,
TO_DATE('28/03/2019','DD/MM/YYYY'), 3894.57);
     
INSERT INTO T_EXE_FUNCIONARIO 
VALUES (3,NULL,'ROSA',12234543441,11444555,
TO_DATE('03/04/2017','DD/MM/YYYY'), 1452.25);

INSERT INTO T_EXE_FUNCIONARIO 
VALUES (4,NULL,'MARIA',1555566651,116667778,
TO_DATE('29/07/2020','DD/MM/YYYY'), 1598.47);
     
INSERT INTO T_EXE_FUNCIONARIO 
VALUES (5,NULL,'ANA'  ,1343322901,119764333,
TO_DATE('12/04/2021','DD/MM/YYYY'), 3457.33);

--------------------------------------------------
-- INFORMAR OS GERENTES DE CADA FUNCIONARIO
-- ATRAVES DO UPDATE A INDICAÇÃO DOS GERENTES 
-- DE CADA FUNCIONARIO
UPDATE T_EXE_FUNCIONARIO
   SET cd_gerente=3
 WHERE cd_funcionario IN (1,2,5);

COMMIT;
SELECT * FROM T_EXE_FUNCIONARIO ;




-- Criando consulta para aumento de 25% no salário dos funcionários admitidos após 01/01/2020
SELECT  
    NM_FUNCIONARIO,
    NR_CPF,
    NR_RG,
    VL_SALARIO,
    CASE WHEN DT_ADMISSAO > TO_DATE('01/01/2020','DD/MM/YYYY') THEN VL_SALARIO * 1.25 ELSE VL_SALARIO END AS AUMENTO_SALARIAL
FROM T_EXE_FUNCIONARIO;