Create procedure sp_select_grupos(@saida int OUT)
as
begin
	declare @aux INT
	

	set @aux = 1
	while(@aux <= 4)
	begin

		if (@aux = 1)
		begin
			print('passou no primeiro')
				SELECT 
					NomeGrupo, 
					max(CodigoTime1) ,
					max(CodigoTime2), 
					max(CodigoTime3),
					max(CodigoTime4)
				FROM
					grupos, times
				WHERE
					NomeGrupo = 'A'
				GROUP BY
					NomeGrupo
			set @aux = @aux + 1
		end

		if (@aux = 2)
		begin
			print('passou no segundo')
				SELECT 
					NomeGrupo, 
					max(CodigoTime1) ,
					max(CodigoTime2), 
					max(CodigoTime3),
					max(CodigoTime4)
				FROM
					grupos, times
				WHERE
					NomeGrupo = 'B'
				GROUP BY
					NomeGrupo
			set @aux = @aux + 1
		end

		if (@aux = 3)
		begin
			print('passou no terceiro')
				SELECT 
					NomeGrupo, 
					max(CodigoTime1) ,
					max(CodigoTime2), 
					max(CodigoTime3),
					max(CodigoTime4)
				FROM
					grupos, times
				WHERE
					NomeGrupo = 'C'
				GROUP BY
					NomeGrupo
			set @aux = @aux + 1
		end
		
		IF (@aux = 4)
		begin
			print ('passou no quarto')
				SELECT 
					NomeGrupo, 
					max(CodigoTime1) ,
					max(CodigoTime2), 
					max(CodigoTime3),
					max(CodigoTime4)
				FROM
					grupos, times
				WHERE
					NomeGrupo = 'D'
				GROUP BY
					NomeGrupo
			set @aux = @aux + 1
		end
	end

end

go

/*
drop procedure sp_select_grupos
exec sp_select_grupos 1
*/
select * from Grupos
/*consultar jogos pela data*/
SELECT 
	j.CodigoJogo AS [Codigo do Jogo],
	tA.NomeTime AS [TIME A],
	tB.NomeTime AS [TIME B],
	GolsTimeA AS [GOLS TIME A],
	GolsTImeB AS [GOLS TIME B],
	DataJogo AS [DATA],
	j.CodRodada AS [Codigo da Rodada]
FROM 
	jogos j,
	Times tA,
	Times tB 
WHERE 
	tA.CodigoTime = j.CodigoTimeA AND	
	tB.CodigoTime = j.CodigoTimeB AND 
	datajogo = '01-09-2021'

/*consulta times das tabelas*/
SELECT 
	g.NomeGrupo AS [GRUPO],
	t1.NomeTime AS [TIME 1],
	t2.NomeTime AS [TIME 2],
	t3.NomeTime AS [TIME 3],
	t4.NomeTime AS [TIME 4]
FROM 
	Grupos g,
	Times t1,
	Times t2,
	Times t3,
	Times t4
WHERE 
	t1.CodigoTime = g.CodigoTime1 AND	
	t2.CodigoTime = g.CodigoTime2 AND
	t3.CodigoTime = g.CodigoTime3 AND	
	t4.CodigoTime = g.CodigoTime4 

SELECT 
	g.NomeGrupo AS [GRUPO],
	t1.NomeTime AS [TIME 1],
	t2.NomeTime AS [TIME 2],
	t3.NomeTime AS [TIME 3],
	t4.NomeTime AS [TIME 4]
FROM 
	Grupos g,
	Times t1,
	Times t2,
	Times t3,
	Times t4
WHERE 
	t1.CodigoTime = g.CodigoTime1 AND	
	t2.CodigoTime = g.CodigoTime2 AND
	t3.CodigoTime = g.CodigoTime3 AND	
	t4.CodigoTime = g.CodigoTime4 AND
	g.NomeGrupo = 'A'

delete Jogos
delete Grupos

declare @codigotime1 INT ,
		@codigotime2 INT ,
		@codigotime3 INT ,
		@codigotime4 INT
	
	SET @codigotime1 = 3
	SET @codigotime2 = 6
	SET @codigotime3 = 16
	SET @codigotime4 = 10

SELECT NomeTime FROM Times WHERE CodigoTime in (@codigotime1,@codigotime2,@codigotime3,@codigotime4)


go
use bdPaulistao
