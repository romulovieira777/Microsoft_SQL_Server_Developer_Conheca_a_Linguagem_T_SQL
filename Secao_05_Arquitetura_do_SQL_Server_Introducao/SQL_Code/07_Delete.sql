-- Escolhendo o banco de dados a ser utilizado
USE Agenda
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato
GO

-- Inserindo novos registros na tabela Contato
INSERT INTO Contato (Numero, Nome, Telefone) VALUES (6,'Ana Paula', '(11) 5555-6666')
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato
GO

-- Deletando o registro do contato com Numero igual a 6
DELETE FROM Contato
WHERE
	Numero = 6
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato
GO

-- Deletando todos os registros da tabela Contato
DELETE FROM Contato
GO

-- Selecionando todos os registros da tabela Contato
SELECT
	* 
FROM
	Contato
GO