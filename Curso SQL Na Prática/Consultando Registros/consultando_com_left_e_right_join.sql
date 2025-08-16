-- CONSULTANDO DADOS UTILIZANDO LEFT JOIN E RIGHT JOIN

-- INNER JOIN

/*	Objetivo: Retorna apenas os registros que possuem correspond�ncia nas duas tabelas envolvidas.

	Como funciona:

	A consulta compara os valores da coluna usada na cl�usula ON.

	S� ser�o exibidos os registros em que existe correspond�ncia entre as tabelas.

	Se um produto n�o tiver nenhum pedido, ele n�o aparecer� no resultado.

	Exemplo pr�tico: Se voc� quiser listar apenas os produtos que j� foram vendidos 
	(ou seja, que t�m pedidos registrados), o INNER JOIN � ideal.	*/

SELECT 
	PRO.ID_PRODUTO,
	PRO.DESCRICAO,
	PE.ID_PEDIDO,
	PE.DATA_PEDIDO,
	PE.QUANTIDADE,
	PE.VALOR_TOTAL
FROM PRODUTOS PRO (NOLOCK)
	INNER JOIN PEDIDOS PE (NOLOCK) ON (PE.ID_PRODUTO = PRO.ID_PRODUTO)

-----------------------------------------------------------------------------------------

-- LEFT JOIN

/*	Objetivo: Retorna todos os registros da tabela da esquerda (no caso, PRODUTOS), 
	mesmo que n�o haja correspond�ncia na tabela da direita (PEDIDOS).

	Como funciona:

	A consulta traz todos os produtos.

	Se algum produto n�o tiver pedido, os campos da tabela PEDIDOS vir�o como NULL.

	Exemplo pr�tico: Se voc� quiser listar todos os produtos, 
	inclusive os que ainda n�o foram vendidos, use LEFT JOIN.	*/

SELECT 
	PRO.ID_PRODUTO,
	PRO.DESCRICAO,
	PE.ID_PEDIDO,
	PE.DATA_PEDIDO,
	PE.QUANTIDADE,
	PE.VALOR_TOTAL
FROM PRODUTOS PRO (NOLOCK)
	LEFT JOIN PEDIDOS PE (NOLOCK) ON (PE.ID_PRODUTO = PRO.ID_PRODUTO)

-----------------------------------------------------------------------------------------

-- RIGHT JOIN

/*	Objetivo: Retorna todos os registros da tabela da direita (PEDIDOS), 
	mesmo que n�o haja correspond�ncia na tabela da esquerda (PRODUTOS).

	Como funciona:

	A consulta traz todos os pedidos.

	Se algum pedido estiver associado a um produto que n�o existe mais ou foi exclu�do, 
	os campos da tabela PRODUTOS vir�o como NULL.

	Exemplo pr�tico: Se voc� quiser listar todos os pedidos, 
	mesmo que o produto correspondente n�o esteja mais cadastrado, use RIGHT JOIN.	*/

SELECT 
	PRO.ID_PRODUTO,
	PRO.DESCRICAO,
	PE.ID_PEDIDO,
	PE.DATA_PEDIDO,
	PE.QUANTIDADE,
	PE.VALOR_TOTAL
FROM PRODUTOS PRO (NOLOCK)
	RIGHT JOIN PEDIDOS PE (NOLOCK) ON (PE.ID_PRODUTO = PRO.ID_PRODUTO)

-----------------------------------------------------------------------------------------