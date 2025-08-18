-- FUN��ES NATVAS DO SQL PARTE 4

-- RIGHT: EXTRAI CARACTERES DE UMA STRING COME�ANDO PELA DIREITA
SELECT 
	PRO.DESCRICAO 
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

SELECT 
	PRO.DESCRICAO,
	RIGHT(PRO.DESCRICAO, 5) AS DESCRICAO_RESUMIDA_RIGHT
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

-- LEFT: EXTRAI CARACTERES DE UMA STRING COME�ANDO PELA ESQUERDA
SELECT
	PRO.DESCRICAO,
	LEFT(PRO.DESCRICAO, 5) AS DESCRICAO_RESUMIDA_LEFT
FROM PRODUTOS PRO (NOLOCK)

----------------------------------------------------------------------------------

-- LTRIM: REMOVE OS ESPA�OS INICIAIS DE UMA STRING
SELECT '     MILLER M VASCO' AS NOME
SELECT LTRIM('     MILLER M VASCO') AS NOME
----------------------------------------------------------------------------------

-- RTRIM: REMOVE OS ESPA�OS FINAIS DE UMA STRING
SELECT 'MILLER M VASCO     ' AS NOME
SELECT RTRIM('MILLER M VASCO     ') AS NOME

----------------------------------------------------------------------------------