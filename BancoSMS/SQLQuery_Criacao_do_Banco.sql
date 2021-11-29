create database bdSMS;

go

use bdSMS;

go

CREATE TABLE tbAluno(
	PK_RA BIGINT PRIMARY KEY NOT NULL,
	Nome Varchar(200) NOT NULL,
	Situacao Varchar(200) NULL
)

CREATE TABLE tbDisciplina(
	PK_Codigo INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(200) NOT NULL,
	Sigla VARCHAR(10) NOT NULL,
	Turno VARCHAR(1) NOT NULL,
	NumAulas INT NOT NULL
)

CREATE TABLE tbFaltas(
	FK_RA_Aluno BIGINT NOT NULL,
	FK_Codigo_Disciplina INT NOT NULL,
	PK_Data VARCHAR (100) NOT NULL,
	Presenca1 VARCHAR(1) NOT NULL,
	Presenca2 VARCHAR(1) NOT NULL,
	Presenca3 VARCHAR(1) NOT NULL,
	Presenca4 VARCHAR(1) NOT NULL,
	TOTALFALTAS INT
)

CREATE TABLE tbAvaliacao(
	PK_Codigo INT PRIMARY KEY NOT NULL,
	Peso_P1 DECIMAL(10,2) NOT NULL,
	Peso_P2 DECIMAL(10,2) NOT NULL,
	Peso_T  DECIMAL(10,2) NOT NULL,
	Peso_PreExame DECIMAL(10,2) NOT NULL
)

CREATE TABLE tbNotas(
	FK_RA_Aluno BIGINT NOT NULL,
	FK_Codigo_Disciplina INT NOT  NULL,
	FK_Codigo_Avaliacao INT NOT NULL,
	Nota DECIMAL(10,2) NOT NULL
)

CREATE TABLE tbLogin(
	PK_Codigo INT PRIMARY KEY NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Senha VARCHAR(50) NOT NULL
)

drop table tbNotas;
drop table tbFaltas;
drop table tbDisciplina;
drop table tbAvaliacao;
drop table tbAluno;
drop table tbLogin;

