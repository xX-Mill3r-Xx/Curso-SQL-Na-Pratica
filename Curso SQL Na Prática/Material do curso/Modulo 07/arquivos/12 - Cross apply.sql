--UTILIZANDO O COMANDO CROSS APPLY
--Cross Apply retorna linhas da tabela que produzem um conjunto de resultados da função com valor de tabela

SELECT * FROM PRODUTOS

SELECT * FROM dbo.CalculaDescontoProdutoEspecifico(1,20)


--UTILIZANDO O CROSS APPLY
SELECT 
A.ID_PRODUTO,
A.DESCRICAO,
A.VALOR_UNITARIO,
B.PERCENTUAL_DESCONTO,
B.VALOR_COM_DESCONTO
FROM PRODUTOS A(NOLOCK)
CROSS APPLY dbo.CalculaDescontoProdutoEspecifico(A.ID_PRODUTO,20) AS B



