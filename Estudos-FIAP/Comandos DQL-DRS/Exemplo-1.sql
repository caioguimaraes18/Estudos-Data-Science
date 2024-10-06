SELECT tabela1.coluna, tabela2.coluna
FROM tabela1
	[CROSS JOIN tabela2] |
	[NATURAL JOIN tabela2] |
	[JOIN tabela2 USING (nome_coluna)] |
	[JOIN tabela2
	ON(tabela1.nome_coluna = tabela2.nome_coluna)] |
	[LEFT|RIGHT|FULL OUTER JOIN tabela2
	ON (tabela1.nome_coluna = tabela2.nome_coluna)];