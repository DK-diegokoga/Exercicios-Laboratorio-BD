use bdSMS;

GO

INSERT INTO tbAvaliacao(PK_Codigo,Peso_P1,Peso_P2,Peso_T,Peso_PreExame) VALUES(1 , 0.3 , 0.5 , 0.2 , 0);
 
INSERT INTO tbAvaliacao(PK_Codigo,Peso_P1,Peso_P2,Peso_T,Peso_PreExame) VALUES(2 , 0.35 , 0.35 , 0.3 , 0.2);

INSERT INTO tbAvaliacao(PK_Codigo,Peso_P1,Peso_P2,Peso_T,Peso_PreExame) VALUES(3 , 0.333 , 0.333 , 0.333 , 0);

INSERT INTO tbAvaliacao(PK_Codigo,Peso_P1,Peso_P2,Peso_T,Peso_PreExame) VALUES(4 , 0.8 , 0.2 , 0 , 0);

go


--PESO 1
INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4203010, 'Arquitetura e Organização de Computadores', 'AOC', 'T', 80);

INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4203020, 'Arquitetura e Organização de Computadores', 'AOC', 'N', 80);

INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4208010, 'Laboratório de Hardware', 'LBH', 'T', 80);

INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4226004, 'Banco de Dados', 'BD', 'T', 80);

GO

--PESO 2
INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4213003, 'Sistemas Operacionais I', 'SOI', 'T', 80);

INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4213013, 'Sistemas Operacionais I', 'SOI', 'N', 80);

GO

--PESO 3
INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
4233005, 'Laboratório de Banco de Dados', 'LBD', 'T', 80);

GO

--PESO 4
INSERT INTO tbDisciplina (PK_Codigo, Nome, Sigla, Turno, NumAulas) VALUES(
5005220, 'Métodos Para a Produção do Conhecimento', 'MPC', 'T', 40);

GO


--ALUNOS

INSERT INTO tbAluno (PK_RA, Nome) VALUES(1110481922060, 'Gustavo Gonzaga de Farias');
INSERT INTO tbAluno (PK_RA, Nome) VALUES(1110481922056, 'Diego Toshio Takeda Koga');
INSERT INTO tbAluno (PK_RA, Nome) VALUES(1110481822022, 'Bruno Pallin de Azevedo');

GO

--LOGIN

INSERT INTO tbLogin (PK_Codigo, Usuario, Senha) VALUES(1, 'COLEVATI', '1234');
GO

--faltas base de Laboratório de Hardware
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481922056, 4208010, '2021-08-10', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-08-10', 'F', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-08-17', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-08-24', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-08-31', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-09-07', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-09-10', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-09-21', 'F', 'F', 'F', 'F');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-09-28', 'P', 'F', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-10-05', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-10-12', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-10-19', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-10-26', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-11-02', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-11-09', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-11-16', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-11-23', 'P', 'P', 'P', 'P');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-11-30', 'F', 'F', 'F', 'F');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-12-07', 'F', 'F', 'F', 'F');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-12-14', 'F', 'F', 'F', 'F');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481822022, 4208010, '2021-12-21', 'F', 'F', 'F', 'F');
go

select * from tbAvaliacao
select * from tbDisciplina
select * from tbAluno
select * from tbLogin
select * from tbFaltas
GO

select 
	f.FK_RA_Aluno,
	a.Nome,
	CONCAT( f.Presenca1,
	f.Presenca2,
	f.Presenca3,
	f.Presenca4) Presença,
	f.TOTALFALTAS
from 
	tbFaltas f,
	tbAluno a
WHERE 
	f.FK_RA_Aluno = a.PK_RA and
	f.PK_Data = '2021-08-10'
;

DECLARE @materia INT, @RA bigint,
            @NOME_ALUNO VARCHAR (100),
            @Data VARCHAR (100),
            @Presenca VARCHAR (4),
            @TOTAL INT,
            @I INT,
            @J INT,
            @A varchar(1), @B varchar(1), @C varchar(1), @D varchar(1)

            set @materia= 4203020

SELECT D.Nome AS 'MATÉRIA', A.Nome AS 'NOME', F.FK_RA_Aluno AS 'R.A', SUM( F.TOTALFALTAS) AS 'TOTAL DE FALTAS' FROM tbDisciplina D, tbFaltas F, tbAluno A 
WHERE
F.FK_RA_Aluno = A.PK_RA and  F.FK_Codigo_Disciplina = @materia and D.PK_Codigo = F.FK_Codigo_Disciplina
GROUP BY D.Nome ,A.Nome, F.FK_RA_Aluno

select 
	f.PK_Data, 	
	CONCAT( f.Presenca1,
	f.Presenca2,
	f.Presenca3,
	f.Presenca4) Presença
from 
	tbDisciplina d,
	tbFaltas f
WHERE 
	f.FK_Codigo_Disciplina = 4203020 and f.PK_Data between '2021-08-10' and '2021-12-21'



DECLARE @materia INT, @RA bigint,
            @NOME_ALUNO VARCHAR (100),
            @Data DATE,
            @Presenca VARCHAR (4),
            @TOTAL INT,
            @I INT,
            @J INT,
            @A varchar(1), @B varchar(1), @C varchar(1), @D varchar(1)

            set @materia= 4208010

SELECT @RA = F.FK_RA_Aluno, @NOME_ALUNO =  A.Nome, @Data = F.PK_Data FROM tbFaltas F, tbAluno A WHERE
F.FK_RA_Aluno = A.PK_RA and  F.FK_Codigo_Disciplina = @materia

SELECT  @A=  Presenca1, @B = Presenca2, @C = Presenca3, @D = Presenca4  FROM tbFaltas  WHERE FK_RA_Aluno = @RA and PK_Data = @Data

set @Presenca = (@A + @B + @C+@D )


select @TOTAL = count(Presenca1) from tbFaltas where Presenca1 = 'F' and FK_Codigo_Disciplina = @materia and FK_RA_Aluno = @RA
select @TOTAL += count(Presenca2) from tbFaltas where Presenca2 = 'F' and FK_Codigo_Disciplina = @materia and FK_RA_Aluno = @RA
select @TOTAL += count(Presenca3) from tbFaltas where Presenca3 = 'F' and FK_Codigo_Disciplina = @materia and FK_RA_Aluno = @RA
select @TOTAL += count(Presenca4) from tbFaltas where Presenca4 = 'F' and FK_Codigo_Disciplina = @materia and FK_RA_Aluno = @RA

print( @NOME_ALUNO + ' ' + CAST(@RA AS NVARCHAR(MAX)) + ' ' + CAST(@Data AS NVARCHAR(MAX)) + ' ' + CAST(@Presenca AS NVARCHAR) + ' ' + CAST(@TOTAL AS NVARCHAR))

SELECT * FROM tbDisciplina d, tbAluno a, tbFaltas f WHERE a.PK_RA = f.FK_RA_Aluno AND d.PK_Codigo = f.FK_Codigo_Disciplina AND a.PK_RA LIKE '111048%' AND f.PK_Data = '2021-12-21'



SELECT a.PK_RA, d.PK_Codigo AS disciplina_cod, av.PK_Codigo AS avaliacao_cod, n.Nota
	FROM tbAluno a, tbDisciplina d, tbAvaliacao av, tbNotas n
	WHERE	a.PK_RA = n.FK_RA_Aluno
	AND		d.PK_Codigo = n.FK_Codigo_Disciplina
	AND		av.PK_Codigo = n.FK_Codigo_Avaliacao

