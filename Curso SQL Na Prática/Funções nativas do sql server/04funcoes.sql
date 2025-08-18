-- FUNÇÕES NATVAS DO SQL PARTE 4

-- RIGHT: EXTRAI CARACTERES DE UMA STRING COMEÇANDO PELA DIREITA
SELECT 
	PRO.DESCRICAO 
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

SELECT 
	PRO.DESCRICAO,
	RIGHT(PRO.DESCRICAO, 5) AS DESCRICAO_RESUMIDA_RIGHT
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

-- LEFT: EXTRAI CARACTERES DE UMA STRING COMEÇANDO PELA ESQUERDA
SELECT
	PRO.DESCRICAO,
	LEFT(PRO.DESCRICAO, 5) AS DESCRICAO_RESUMIDA_LEFT
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

-- LTRIM: REMOVE OS ESPAÇOS INICIAIS DE UMA STRING
SELECT '     MILLER M VASCO' AS NOME
SELECT LTRIM('     MILLER M VASCO') AS NOME
----------------------------------------------------------------------------------

-- RTRIM: REMOVE OS ESPAÇOS FINAIS DE UMA STRING
SELECT 'MILLER M VASCO     ' AS NOME
SELECT RTRIM('MILLER M VASCO     ') AS NOME

----------------------------------------------------------------------------------