CREATE TYPE CoinType AS TABLE (
	[Id] INT,
	[Ticker] NVARCHAR(55),
	[Name] NVARCHAR(100),
	[Address] NVARCHAR(255),
	[ChainId] INT,
	[Active] BIT,
	[BinanceListingDate] BIGINT
);
