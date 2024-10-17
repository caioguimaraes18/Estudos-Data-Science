-- EXEMPLO – SUBCONSULTA DE UMA ÚNICA LINHA
SELECT NM_FUNCIONARIO,
        VL_SALARIO_MENSAL
   FROM T_SIP_FUNCIONARIO 
  WHERE VL_SALARIO > (
                         SELECT VL_SALARIO_MENSAL
                           FROM T_SIP_FUNCIONARIO 
                          WHERE NR_MATRICULA = 12348
                  );

-- EXEMPLO – SUBCONSULTA DE UMA ÚNICA LINHA,
-- COM FUNÇÕES DE GRUPO
SELECT F.NM_FUNCIONARIO,
    F.VL_SALARIO_MENSAL
  FROM T_SIP_FUNCIONARIO F
 WHERE F.VL_SALARIO > (
                        SELECT AVG(F.VL_SALARIO_MENSAL)
                        FROM T_SIP_FUNCIONARIO F
                      );


-- EXEMPLO – SUBCONSULTA DE UMA ÚNICA LINHA,
 -- COM AGRUPAMENTO, FUNÇÕES DE GRUPO E HAVING
   SELECT CD_DEPTO,
          MIN(VL_SALARIO_MENSAL)
     FROM T_SIP_FUNCIONARIO 
 GROUP BY CD_DEPTO
   HAVING MIN(VL_SALARIO_MENSAL) > (
                                 SELECT MIN(VL_SALARIO_MENSAL)
                                   FROM T_SIP_FUNCIONARIO 
                                  WHERE CD_DEPTO = 3 
                        );



-- EXEMPLO – SUBCONSULTA DE UMA ÚNICA LINHA,
 -- COM CLÁUSULA FROM
   SELECT F.NR_MATRICULA ,
          F.NM_FUNCIONARIO , 
          F.DT_ADMISSAO  , 
          RESFUNC.QTDEALOCACAO
   FROM   T_SIP_FUNCIONARIO F , 
                         (
                          SELECT  NR_MATRICULA , 
                                    COUNT(NR_MATRICULA) QTDEALOCACAO
                              FROM  T_SIP_IMPLANTACAO  
                          GROUP BY  NR_MATRICULA                                  
                          ) RESFUNC
                               
  WHERE F.NR_MATRICULA = RESFUNC.NR_MATRICULA ;



  -- EXEMPLO – SUBCONSULTA COM VÁRIAS LINHAS,
 -- COM OPERADOR IN
 SELECT CD_IMPLANTACAO ,
        CD_PROJETO     , 
  NR_MATRICULA "FUNCIONARIO"
   FROM T_SIP_IMPLANTACAO 
  WHERE CD_PROJETO IN
           (
             SELECT CD_PROJETO
               FROM T_SIP_PROJETO 
                    WHERE TO_CHAR(DT_INICIO,'MM/YYYY') IN('04/2012','10/2013')
                  );

-- EXEMPLO – SUBCONSULTA COM VÁRIAS LINHAS,
 -- COM OPERADOR NOT IN
 SELECT CD_IMPLANTACAO ,
        CD_PROJETO     , 
  NR_MATRICULA "FUNCIONARIO"
   FROM T_SIP_IMPLANTACAO 
  WHERE CD_PROJETO NOT IN
           (
             SELECT CD_PROJETO
               FROM T_SIP_PROJETO 
                    WHERE TO_CHAR(DT_INICIO,'MM/YYYY') IN('04/2012','10/2013')
                  );
            
-- EXEMPLO – SUBCONSULTA COM VÁRIAS LINHAS,
-- COM OPERADOR ANY
SELECT NR_MATRICULA   , 
        NM_FUNCIONARIO , 
        VL_SALARIO_MENSAL
FROM T_SIP_FUNCIONARIO 
WHERE VL_SALARIO_MENSAL < ANY 
                          (
                               SELECT AVG(VL_SALARIO_MENSAL)
                                 FROM T_SIP_FUNCIONARIO 
                             GROUP BY CD_DEPTO
);


-- EXEMPLO – SUBCONSULTA COM VÁRIAS LINHAS,
 -- COM OPERADOR ALL
 SELECT NR_MATRICULA   , 
        NM_FUNCIONARIO , 
        VL_SALARIO_MENSAL
   FROM T_SIP_FUNCIONARIO 
  WHERE VL_SALARIO_MENSAL > ALL 
                          (
                               SELECT AVG(VL_SALARIO_MENSAL)
                                 FROM T_SIP_FUNCIONARIO 
                             GROUP BY CD_DEPTO
                           );