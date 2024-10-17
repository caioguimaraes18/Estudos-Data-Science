-- EXEMPLO DE ESTRUTURA PARA APLICAR NON-EQUIJOIN 
/*
DROP TABLE T_SCC_CD CASCADE  CONSTRAINT;
DROP TABLE T_SCC_FAIXA_PRECO CASCADE CONSTRAINT;
*/

CREATE TABLE T_SCC_CD 
( 
   cd_cd          NUMBER (5)     NOT NULL , 
   cd_gravadora   NUMBER (5)     NOT NULL , 
   nm_titulo      VARCHAR2 (30)  NOT NULL ,        
   dt_lancamento  DATE           NOT NULL, 
   vl_preco_venda NUMBER (6,2)   NOT NULL  
);

ALTER TABLE T_SCC_CD 
ADD CONSTRAINT PK_SCC_CD 
   PRIMARY KEY ( cd_cd ) ;

CREATE TABLE T_SCC_FAIXA_PRECO
( 
   cd_faixa_preco NUMBER (5)    NOT NULL , 
   ds_faixa_preco VARCHAR2 (30) NOT NULL , 
   vl_inicial     NUMBER (6,2)  NOT NULL , 
   vl_final       NUMBER (6,2)  NOT NULL 
);

ALTER TABLE T_SCC_FAIXA_PRECO
ADD CONSTRAINT PK_SCC_FAIXA_PRECO 
PRIMARY KEY ( cd_faixa_preco ) ;


/*
DELETE FROM T_SCC_CD;
DELETE FROM T_SCC_FAIXA_PRECO;
*/

-- INSERT´s PARA POPULAR A TABELA
INSERT INTO T_SCC_CD 
( cd_cd, cd_gravadora , nm_titulo, dt_lancamento, vl_preco_venda )
VALUES ( 1, 101 , 'CD ABC', TO_DATE('10/07/2015','DD/MM/YYYY') , 15.50);   
 
INSERT INTO T_SCC_CD 
( cd_cd, cd_gravadora , nm_titulo, dt_lancamento, vl_preco_venda )
VALUES ( 2, 101 , 'CD DEF', TO_DATE('21/03/2016','DD/MM/YYYY') , 23.40);  
 
INSERT INTO T_SCC_CD 
( cd_cd, cd_gravadora , nm_titulo, dt_lancamento, vl_preco_venda )
VALUES ( 3, 101 , 'CD GHI', TO_DATE('19/10/2016','DD/MM/YYYY') , 56.75);  
 
INSERT INTO T_SCC_CD 
( cd_cd, cd_gravadora , nm_titulo, dt_lancamento, vl_preco_venda )
VALUES ( 4, 101 , 'CD KLM', TO_DATE('13/03/2015','DD/MM/YYYY') , 33.90);  
 
COMMIT;
SELECT * FROM T_SCC_CD;

INSERT INTO T_SCC_FAIXA_PRECO 
( cd_faixa_preco, ds_faixa_preco, vl_inicial, vl_final )
VALUES ( 1, 'SELO VERDE', 5.00, 15.99);

INSERT INTO T_SCC_FAIXA_PRECO 
( cd_faixa_preco, ds_faixa_preco, vl_inicial, vl_final )
VALUES ( 2, 'SELO AZUL', 16.00, 25.99); 
  
INSERT INTO T_SCC_FAIXA_PRECO 
( cd_faixa_preco, ds_faixa_preco, vl_inicial, vl_final )
VALUES ( 3, 'SELO AMARELO', 26.00, 45.99);
    
INSERT INTO T_SCC_FAIXA_PRECO 
( cd_faixa_preco, ds_faixa_preco, vl_inicial, vl_final )
VALUES ( 4, 'SELO VERMELHO', 46.00, 65.99);

INSERT INTO T_SCC_FAIXA_PRECO 
( cd_faixa_preco, ds_faixa_preco, vl_inicial, vl_final )
VALUES ( 5, 'SELO PRETO', 66.00, 100.00);  
   
COMMIT;
SELECT * FROM T_SCC_FAIXA_PRECO;


-- EXEMPLO NON-EQUIJOIN 
SELECT CD.NM_TITULO, CD.VL_PRECO_VENDA, FP.DS_FAIXA_PRECO
  FROM T_SCC_CD CD, T_SCC_FAIXA_PRECO FP
 WHERE CD.VL_PRECO_VENDA  
        BETWEEN FP.VL_INICIAL AND FP.VL_FINAL;