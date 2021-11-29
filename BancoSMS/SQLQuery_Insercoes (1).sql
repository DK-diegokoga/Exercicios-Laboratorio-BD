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
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481922056, 4208010, '2021-08-17', 'F', 'P', 'F', 'F');
INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(1110481922056, 4208010, '2021-08-24', 'F', 'P', 'P', 'F');

go

select * from tbNotas
select * from tbAvaliacao
select * from tbDisciplina
select * from tbAluno
select * from tbLogin
select * from tbFaltas
GO

delete from tbFaltas 