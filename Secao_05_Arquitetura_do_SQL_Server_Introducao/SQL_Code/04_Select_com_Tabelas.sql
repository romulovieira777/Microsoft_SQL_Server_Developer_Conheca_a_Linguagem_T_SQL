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


SELECT
	*
FROM
	[FundamentosTSQL].[Rh].[Empregado]
GO


-- Organizando o código para uma melhor leitura.
SELECT
	RazaoSocial AS Empresa
  , Endereco    AS Local
  , CEP			AS CodigoPostal
FROM
	[FundamentosTSQL].[Vendas].[Cliente]
GO


-- Filtrando linhas.

-- Apresentando apenas um cliente
SELECT
	*
FROM
	[FundamentosTSQL].[Vendas].[Cliente]
WHERE
	iIDCliente = 1
GO


SELECT
	*
FROM
	[FundamentosTSQL].[Vendas].[Cliente]
WHERE
	Pais = 'Brazil'
GO


-- Mostrando os empregados com salario menor que 50.000 anual
SELECT
	*
FROM
	[FundamentosTSQL].[Rh].[Empregado]
WHERE
	Salario < 50000
GO


-- Apresentando os clientes do pais Brazil e do estado do Rio de Janeiro
SELECT
    *
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
WHERE
    Pais = 'Brazil'
AND
	Cidade = 'Rio de Janeiro'
GO


-- Mostrar todos os pedidos solicitados em 2006!
SELECT
    *
FROM
    [FundamentosTSQL].[Vendas].[Pedido]
WHERE
    DataPedido >= '2006-01-01'
AND
    DataPedido <= '2007-01-01'
GO


-- Mostrar pedidos enviados para o Rio de Janeiro e São Paulo
SELECT
    *
FROM
    [FundamentosTSQL].[Vendas].[Pedido]
WHERE
    shipCidade = 'Rio de Janeiro'
OR
    shipCidade = 'São Paulo'
GO


-- Ordenar os resultados
SELECT
    RazaoSocial
  , Contato
  , Pais
  , Cidade
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
ORDER BY
    Pais
GO


SELECT
    RazaoSocial
  , Contato
  , Pais
  , Cidade
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
ORDER BY
    Pais
  , Cidade
GO


SELECT
    PrimeiroNome + ' ' + UltimoNome AS Nome
  , Cargo
  , DataAdmissao
FROM
    [FundamentosTSQL].[Rh].[Empregado]
ORDER BY
    PrimeiroNome
GO


SELECT
    PrimeiroNome + ' ' + UltimoNome AS Nome
  , Cargo
  , DataAdmissao
FROM
    [FundamentosTSQL].[Rh].[Empregado]
ORDER BY
    Nome
GO


SELECT
    PrimeiroNome + ' ' + UltimoNome AS Nome
  , Cargo
  , DataAdmissao
FROM
    [FundamentosTSQL].[Rh].[Empregado]
ORDER BY
    1
GO


-- Selecionando dados distintos e agrupando os dados e gerando novos valores
SELECT
    Cidade
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
GO


SELECT
    DISTINCT Cidade
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
GO


SELECT
    Cidade
  , COUNT(*) AS TotalClientes
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
GROUP BY
    Cidade
GO


SELECT
    Cidade
  , COUNT(*) AS TotalClientes
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
GROUP BY
    Cidade
ORDER BY
    TotalClientes DESC
GO


SELECT
    Cidade
  , COUNT(*) AS TotalClientes
FROM
    [FundamentosTSQL].[Vendas].[Cliente]
GROUP BY
    Cidade
HAVING
    COUNT(*) >= 2
ORDER BY
    TotalClientes DESC
GO
