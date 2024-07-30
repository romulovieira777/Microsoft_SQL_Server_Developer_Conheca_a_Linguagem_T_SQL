-- Forma mais simples do SELECT com pesquisa em tabelas.
USE
	FundamentosTSQL
GO


SELECT
    *
FROM
   [Vendas].[Cliente]
GO


-- Selecionando as colunas
SELECT
    RazaoSocial
  , Endereco
  , CEP
FROM
   [Vendas].[Cliente]
GO


SELECT
    CEP
  , Endereco
  , RazaoSocial
FROM
   [Vendas].[Cliente]
GO


-- Incluindo alias ou apelido no nome das colunas
SELECT
    RazaoSocial AS Empresa
  , Endereco    AS Local
  , CEP         AS CodigoPostal
FROM
   [Vendas].[Cliente]
GO


-- Realizar operações de concatenação ou matemáticas
SELECT
    RazaoSocial
  , Endereco + ', ' + Cidade + ', ' + CEP AS Endereco
FROM
   [Vendas].[Cliente]
GO


SELECT
    PrimeiroNome + ' ' + UltimoNome AS Nome
  , Cargo
  , Salario / 12 * 3                AS SalarioMensal
FROM
   [RH].[Empregado]
GO