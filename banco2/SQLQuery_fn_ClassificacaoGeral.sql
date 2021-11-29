CREATE FUNCTION fn_ClassificacaoGeral()
RETURNS @table TABLE(
nome_time VARCHAR (100), 
num_jogos_disputados INT, 
vitorias INT, 
empates INT, 
derrotas INT,
gols_marcados INT, 
gols_sofridos INT, 
saldo_gols INT,
pontos INT
)
AS
BEGIN
	DECLARE @nome_time VARCHAR (100),
			@num_jogos_disputados INT,
			@vitorias INT,
			@empates INT,
			@derrotas INT,
			@gols_marcados INT,
			@gols_sofridos INT, 
			@saldo_gols INT,
			@pontos INT,
			@I INT,
			@NumeroA INT,
			@NumeroB INT


			SET @I =  1
	WHILE @I <= 16
	BEGIN
		
		SELECT @nome_time = NomeTime FROM Times WHERE CodigoTime = @I
		SELECT @num_jogos_disputados = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @I or CodigoTimeB = @I
		SELECT @vitorias = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @I and Resultado = 'Time A venceu' or CodigoTimeB = @I and Resultado = 'Time B venceu'
		SELECT @empates = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @I and Resultado = 'Empate' or CodigoTimeB = @I and Resultado = 'Empate'
		SELECT @derrotas = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @I and Resultado = 'Time B venceu' or CodigoTimeB = @I and Resultado = 'Time A venceu'
		
		SELECT @NumeroA = GolsTimeA  FROM jogos  WHERE CodigoTimeA = @I 
		SELECT @NumeroB = GolsTimeB  FROM jogos  WHERE CodigoTimeB = @I
		SET @gols_marcados = @NumeroA + @NumeroB

		SELECT @NumeroA = GolsTimeA  FROM jogos  WHERE CodigoTimeA <> @I 
		SELECT @NumeroB = GolsTimeB  FROM jogos  WHERE CodigoTimeB <> @I
		SET @gols_sofridos = @NumeroA + @NumeroB

		SET @saldo_gols = @gols_marcados - @gols_sofridos

		SET @pontos = @vitorias * 3 + @empates

	INSERT INTO @table (
	nome_time, 
	num_jogos_disputados, 
	vitorias, 
	empates, 
	derrotas,
	gols_marcados, 
	gols_sofridos, 
	saldo_gols,
	pontos) VALUES (
	@nome_time, 
	@num_jogos_disputados, 
	@vitorias, 
	@empates, 
	@derrotas,
	@gols_marcados, 
	@gols_sofridos, 
	@saldo_gols,
	@pontos) 

	SET @I = @I + 1
	END

 RETURN 

END

SELECT * FROM fn_ClassificacaoGeral()

--dROP FUNCTION fn_ClassificacaoGeral