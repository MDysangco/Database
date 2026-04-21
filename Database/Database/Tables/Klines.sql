CREATE TABLE [dbo].[Klines]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CoinId] INT NOT NULL,
    [Interval] INT NOT NULL,
	[KlineOpenTime] BIGINT, 
    [OpenPrice] DECIMAL(18, 8) NULL,  
    [HighPrice] DECIMAL(18, 8) NULL, 
    [LowPrice] DECIMAL(18, 8) NULL,  
    [ClosePrice] DECIMAL(18, 8) NULL, 
    [Volume] DECIMAL(18, 8) NULL, 
    [NumberOfTrades] INT NULL,
    [CreateDate] DateTime DEFAULT GETDATE()
)
