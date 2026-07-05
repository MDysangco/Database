CREATE PROCEDURE [dbo].[UpdateCoins]
	@Coins CoinType READONLY
AS BEGIN
	
	UPDATE c 
	SET
		c.Ticker             = COALESCE(src.Ticker, c.Ticker),
		c.Name               = COALESCE(src.Name, c.Name),
		c.Address            = COALESCE(src.Address, c.Address),
		c.ChainId            = COALESCE(src.ChainId, c.ChainId),
		c.Active             = COALESCE(src.Active, c.Active),
		c.BinanceListingDate = COALESCE(src.BinanceListingDate, c.BinanceListingDate)
	FROM Coins c
	INNER JOIN @Coins src ON c.Id = src.Id;

END
