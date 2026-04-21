CREATE TYPE KlineType AS TABLE (
    [CoinId] INT,
    [Interval] INT ,
	[KlineOpenTime] BIGINT, 
    [OpenPrice] DECIMAL(18, 8), 
    [HighPrice] DECIMAL(18, 8),  
    [LowPrice] DECIMAL(18, 8),  
    [ClosePrice] DECIMAL(18, 8),  
    [Volume] DECIMAL(18, 8), 
    [NumberOfTrades] INT
);
