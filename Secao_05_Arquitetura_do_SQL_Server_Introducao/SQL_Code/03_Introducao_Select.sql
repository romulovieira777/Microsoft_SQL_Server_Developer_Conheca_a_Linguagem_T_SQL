/*
SELECT - Recupera dados de uma tabela, permite realizar tratamentos dos dados e retorna as informações
*/
SELECT
	1
GO


SELECT
	1 + 2
GO


SELECT
	5 + 4 AS Resultado
GO

SELECT
	'Jose da Silva' AS Nome
GO


SELECT
	'Jose' + ' da ' + 'Silva' AS Nome
GO


SELECT
	40
  , 'Jose da Silva'
  , '2021-08-09'
GO


SELECT
	40				AS Idade
  , 'Jose da Silva' AS Nome
  , '2017-0809'     AS DataAtual
GO


SELECT
    10 + 'Jose ' -- Vai dar erro, pois não é possível somar um número com uma string
GO


SELECT
    10 + ' 40'
GO


SELECT
    Jose + 10 -- Vai dar erro, pois não é possível somar um número com uma string
GO


SELECT
   10 + 5 * 2 AS Resultado
GO


SELECT
   (10 + 5) * 2 AS Resultado
GO