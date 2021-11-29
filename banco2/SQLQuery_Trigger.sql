Create TRIGGER trg_Bloqueio_acoes_Time ON Times

INSTEAD  OF INSERT, DELETE, UPDATE 
AS BEGIN

select 'Não é permitido fazer alterações nesta tabela'

END
GO

Create TRIGGER trg_Bloqueio_acoes_Grupos ON Grupos

INSTEAD  OF INSERT, DELETE, UPDATE 
AS BEGIN

select 'Não é permitido fazer alterações nesta tabela'

END
GO

Create TRIGGER trg_Bloqueio_acoes_Jogos ON Jogos

INSTEAD  OF INSERT, DELETE 
AS BEGIN

select 'Não é permitido fazer alterações nesta tabela'

END
GO