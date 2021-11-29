Create TRIGGER trg_Bloqueio_acoes_Time ON Times

INSTEAD  OF INSERT, DELETE, UPDATE 
AS BEGIN

select 'N�o � permitido fazer altera��es nesta tabela'

END
GO

Create TRIGGER trg_Bloqueio_acoes_Grupos ON Grupos

INSTEAD  OF INSERT, DELETE, UPDATE 
AS BEGIN

select 'N�o � permitido fazer altera��es nesta tabela'

END
GO

Create TRIGGER trg_Bloqueio_acoes_Jogos ON Jogos

INSTEAD  OF INSERT, DELETE 
AS BEGIN

select 'N�o � permitido fazer altera��es nesta tabela'

END
GO