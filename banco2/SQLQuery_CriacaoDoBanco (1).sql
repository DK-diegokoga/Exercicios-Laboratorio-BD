CREATE DATABASE bdPaulistao;

go 

USE bdPaulistao;

CREATE TABLE Times
(
	CodigoTime INT PRIMARY KEY NOT NULL,
	NomeTime Varchar(50) NOT NULL,
	Cidade Varchar(200) NOT NULL,
	Estadio Varchar(200) NOT NULL
)


CREATE TABLE Grupos
(
	NomeGrupo CHAR PRIMARY KEY NOT NULL,
	CodigoTime1 INT,
	FOREIGN KEY (CodigoTime1) REFERENCES Times (CodigoTime),
	CodigoTime2 INT,
	FOREIGN KEY (CodigoTime2) REFERENCES Times (CodigoTime),
	CodigoTime3 INT,
	FOREIGN KEY (CodigoTime3) REFERENCES Times (CodigoTime),
	CodigoTime4 INT,
	FOREIGN KEY (CodigoTime4) REFERENCES Times (CodigoTime)
)


CREATE TABLE Jogos
(
	CodigoJogo INT PRIMARY KEY NOT NULL,
	CodigoTimeA INT NOT NULL,
	CodigoTimeB INT NOT NULL,
	GolsTimeA INT,
	GolsTImeB INT,
	DataJogo VARCHAR(200),
	CodRodada INT
)
go

---Times (Com todos os 16 times)(N�o � necess�rio CRUD para ela)
--Valores chumbados na tabela Times
INSERT INTO Times (CodigoTime,NomeTime,Cidade,Estadio) VALUES
	(1,'S�o Paulo','S�o Paulo','Morumbi'),
	(2,'Palmeiras','S�o Paulo','Allianz Parque'),
	(3,'Corinthians','S�o Paulo','Arena Corinthians'),
	(4,'Santos','Santos','Vila Belmiro'),
	(5,'Guarani','Campinas','Brinco de Ouro da Princesa'),
	(6,'Ituano','Itu','Novelli Junior'),
	(7,'Mirassol','Mirassol','Jos� Maria de Campos Maia'),
	(8,'Novorizontino','Novo Horizonte','Jorge Ismael de Biasi'),
	(9,'Oeste','Barueri','Arena Barueri'),
	(10,'Bragantino','Bragan�a Paulista','Nabi Abi Chedid'),	
	(11,'Ponte Preta','Campinas','Mois�s Lucarelli'),
	(12,'Red Bull Brasil','Campinas','Mois�s Lucarelli'),
	(13,'Ferrovi�ria','Araraquara','Fonte Luminosa'),
	(14,'S�o Bento','Sorocaba','Walter Ribeiro'),
	(15,'S�o Caetano','S�o Caetano do Sul','Anacleto Campanella'),
	(16,'Botafogo-SP','Ribeir�o Preto','Santa Cruz')

go

CREATE TABLE ClassificacaoGeral
(
	NomeTime Varchar(50) NOT NULL,
	num_jogos_disputados int,
	vitorias int,
	empates int,
	derrotas int,
	gols_marcados int,
	gols_sofridos int,
	saldo_gol int,
	pontos int
)