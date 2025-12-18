-- Escolhendo o banco de dados a ser utilizado
USE Agenda
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato

-- Atualizando o nome do contato com Numero igual a 40
UPDATE
	Contato
SET
	Nome = 'José da Silva'
WHERE
	Numero = 40;
GO

-- Atualizando o telefone e aniversário do contato com Numero igual a 40
UPDATE
	Contato
SET
	Telefone = '(11) 9999-8888',
	Aniversario = '1990-10-10'
WHERE
	Numero = 40
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato
GO