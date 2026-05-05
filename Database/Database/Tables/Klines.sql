CREATE TABLE [dbo].[Klines]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CoinId] INT NOT NULL,
    [Interval] INT NOT NULL,
	[KlineOpenTime] BIGINT, 
    [OpenPrice] DECIMAL(38, 18) NULL,  
    [HighPrice] DECIMAL(38, 18) NULL, 
    [LowPrice] DECIMAL(38, 18) NULL,  
    [ClosePrice] DECIMAL(38, 18) NULL, 
    [Volume] DECIMAL(38, 18) NULL, 
    [NumberOfTrades] INT NULL,
    [CreateDate] DateTime DEFAULT GETDATE()
)


