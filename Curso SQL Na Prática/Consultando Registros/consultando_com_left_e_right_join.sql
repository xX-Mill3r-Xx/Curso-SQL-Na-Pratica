-- CONSULTANDO DADOS UTILIZANDO LEFT JOIN E RIGHT JOIN

-- INNER JOIN

/*	Objetivo: Retorna apenas os registros que possuem correspondência nas duas tabelas envolvidas.

	Como funciona:

	A consulta compara os valores da coluna usada na cláusula ON.

	Só serão exibidos os registros em que existe correspondência entre as tabelas.

	Se um produto não tiver nenhum pedido, ele não aparecerá no resultado.

	Exemplo prático: Se você quiser listar apenas os produtos que já foram vendidos 
	(ou seja, que têm pedidos registrados), o INNER JOIN é ideal.	*/

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
	mesmo que não haja correspondência na tabela da direita (PEDIDOS).

	Como funciona:

	A consulta traz todos os produtos.

	Se algum produto não tiver pedido, os campos da tabela PEDIDOS virão como NULL.

	Exemplo prático: Se você quiser listar todos os produtos, 
	inclusive os que ainda não foram vendidos, use LEFT JOIN.	*/

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
	mesmo que não haja correspondência na tabela da esquerda (PRODUTOS).

	Como funciona:

	A consulta traz todos os pedidos.

	Se algum pedido estiver associado a um produto que não existe mais ou foi excluído, 
	os campos da tabela PRODUTOS virão como NULL.

	Exemplo prático: Se você quiser listar todos os pedidos, 
	mesmo que o produto correspondente não esteja mais cadastrado, use RIGHT JOIN.	*/

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