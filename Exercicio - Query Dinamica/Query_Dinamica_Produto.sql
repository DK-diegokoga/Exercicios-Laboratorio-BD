/*
Exercício:
 
Considere a tabela Produto com os seguintes atributos:
Produto (Codigo | Nome | Valor)
Considere a tabela ENTRADA e a tabela SAÍDA com os seguintes atributos:
(Codigo_Transacao | Codigo_Produto | Quantidade | Valor_Total)
Cada produto que a empresa compra, entra na tabela ENTRADA. Cada produto que a empresa vende, entra na tabela SAIDA.
Criar uma procedure que receba um código (‘e’ para ENTRADA e ‘s’ para SAIDA), criar uma exceção de erro para código inválido,
receba o codigo_transacao, codigo_produto e a quantidade e preencha a tabela correta, com o valor_total de cada transação de cada produto.
*/


CREATE DATABASE AULA_QUERY

GO

USE AULA_QUERY

CREATE TABLE Produto(
	Codigo INT NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Valor DECIMAL(5,2) NOT NULL
	PRIMARY KEY (Codigo)
)

CREATE TABLE ENTRADA(
	Codigo_Transacao INT NOT NULL,
	Codigo_Produto INT NOT NULL,
	Quantidade INT NOT NULL,
	Valor_Total DECIMAL(5,2) NOT NULL
	PRIMARY KEY (Codigo_Transacao)
	FOREIGN KEY (Codigo_Produto) REFERENCES Produto (Codigo)
)

CREATE TABLE SAIDA(
	Codigo_Transacao INT NOT NULL,
	Codigo_Produto INT NOT NULL,
	Quantidade INT NOT NULL,
	Valor_Total DECIMAL(5,2) NOT NULL
	PRIMARY KEY (Codigo_Transacao)
	FOREIGN KEY (Codigo_Produto) REFERENCES Produto (Codigo)
)


GO

CREATE PROCEDURE sp_validaProduto(@cod_valida AS CHAR(1),
                                  @codigo_Transacao INT,
								  @codigo_Produto INT, 
								  @quantidade INT,
								  @nome VARCHAR(50),
								  @valor DECIMAL(5,2), 
								  @saida VARCHAR(100) OUTPUT)
AS
	DECLARE @tabela CHAR(10),
			@total  DECIMAL(5,2),
			@query  VARCHAR(MAX),
			@error  VARCHAR(MAX)

	IF (@cod_valida = 'e')
	BEGIN 
		SET @tabela = 'ENTRADA'
	END
	ELSE
	BEGIN 
		SET @tabela = 'SAIDA'
	END
	
	SET @total = @valor * @quantidade

	SET @query  = 'INSERT INTO '+@tabela+'(Codigo_Transacao, Codigo_Produto, Quantidade, Valor_Total)
				   VALUES('+ CAST(@codigo_Transacao AS VARCHAR(7))+
				   ', '+ CAST(@codigo_Produto AS VARCHAR(10))+
				   ', '+ CAST(@quantidade AS VARCHAR(7))+
				   ', '+ CAST(@total AS VARCHAR(7))+
				   ')'	
	
	BEGIN TRY
		INSERT INTO Produto(Codigo,Nome,Valor) VALUES(@codigo_Produto, @nome, @valor)
		EXEC (@query)
        SET @saida = @tabela + ' foi inserido com sucesso!'
	END TRY
	BEGIN CATCH
			SET @error = ERROR_MESSAGE()
			RAISERROR('DEU ERRO AQUI',16,1)
	END CATCH

GO
--SAIDA
DECLARE @entrada1 AS VARCHAR(100)
EXEC sp_validaProduto 's', 1 , 2 , 2 , 'Caneta', 2.50, 
	@entrada1 OUTPUT

DECLARE @entrada2 AS VARCHAR(100)
EXEC sp_validaProduto 's', 2 , 3 , 2 , 'Lapis', 1.50, 
	@entrada2 OUTPUT

GO
--ENTRADA
DECLARE @saida1 AS VARCHAR(100)
EXEC sp_validaProduto 'e', 3 , 4 , 2 , 'Borracha' , 2.20,
	@saida1 OUTPUT

DECLARE @saida2 AS VARCHAR(100)
EXEC sp_validaProduto 'e', 4 , 5 , 2 , 'Folha A4' , 5.00,
	@saida2 OUTPUT

GO

SELECT * FROM Produto
SELECT * FROM SAIDA
SELECT * FROM ENTRADA

SELECT s.Codigo_Transacao, s.Codigo_Produto, s.Quantidade, s.Valor_Total
FROM SAIDA s, Produto p
WHERE s.Codigo_Produto = p.Codigo


SELECT e.Codigo_Transacao, e.Codigo_Produto, e.Quantidade, e.Valor_Total
FROM ENTRADA e, Produto p
WHERE e.Codigo_Produto = p.Codigo

/*
DROP PROCEDURE sp_validaProduto
DROP TABLE ENTRADA
DROP TABLE SAIDA
DROP TABLE Produto
*/