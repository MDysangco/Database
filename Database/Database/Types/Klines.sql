CREATE TYPE KlineType AS TABLE (
    [CoinId] INT,
    [Interval] INT ,
	[KlineOpenTime] BIGINT, 
    [OpenPrice] DECIMAL(38, 18), 
    [HighPrice] DECIMAL(38, 18),  
    [LowPrice] DECIMAL(38, 18),  
    [ClosePrice] DECIMAL(38, 18),  
    [Volume] DECIMAL(38, 18), 
    [NumberOfTrades] INT
);
