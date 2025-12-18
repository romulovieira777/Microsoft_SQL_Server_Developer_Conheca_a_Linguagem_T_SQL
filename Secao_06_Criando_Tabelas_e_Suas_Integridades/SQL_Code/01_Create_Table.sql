-- Escolha o banco de dados
Use DBExemplo
GO

-- Removendo a tabela caso ela já exista
DROP TABLE IF EXISTS dbo.Empregado
GO

-- Criando a tabela Empregado
CREATE TABLE dbo.Empregado
(
   IDEmpregado    INT         NOT NULL
 , PrimeiroNome   VARCHAR(50) NOT NULL
 , UltimoNome     VARCHAR(50) NOT NULL
 , Admissao       DATE        NOT NULL
 , CPF            VARCHAR(11) NOT NULL
 , Salario        MONEY       NOT NULL
)
GO

/*
Tipos de dados
INT      - Valores inteiros entre -2 bilhões até 2 bilhões - Ocupa 4 bytes
VARCHAR  - Cadeia de caracter de tamanho variável.
           ocupa de 1 até 8000 bytes.
		   Se definido com MAX, ocupa até 2Gb de dados.
DATE     - Armazena uma data valida entre 01/01/0001 até 31/12/9999
           e ocupa 3 bytes.
MONEY    - Valor monetário entre -922 trilhoes até 922 trilhões - Ocupa 8 bytes
*/

-- Incluindo novas colunas
ALTER TABLE dbo.Empregado ADD Departamento VARCHAR(40) NOT NULL
GO

ALTER TABLE dbo.Empregado ADD Cargo VARCHAR(50) NOT NULL

-- Consultando a estrutura da tabela.
EXECUTE sp_help 'dbo.Empregado'

-- Inserindo registros na tabela Empregado
INSERT INTO dbo.empregado
(iDEmpregado, PrimeiroNome, UltimoNome, Admissao, CPF,Salario , Departamento, Cargo)
VALUES
(1,'Jose',' da Silva', '2010-02-10','12554584587', 10000.00 ,'Vendas', 'Vendedor')
GO

-- Consultando os registros da tabela Empregado
SELECT
  *
FROM
  dbo.empregado
GO

-- Erro de truncate
INSERT INTO dbo.empregado
(iDEmpregado, PrimeiroNome, UltimoNome, Admissao, CPF,Salario , Departamento, Cargo)
VALUES
(2,'Manuel',' da Silva', '2007-10-15','12554584587', 8500.00 ,'Compras', 'Comprador')
GO