CREATE PROCEDURE [dbo].[InsertKlines]
	@Klines KlineType READONLY

AS BEGIN
	
	INSERT INTO Klines(
		CoinId, 
		Interval, 
		KlineOpenTime, 
		OpenPrice, 
		HighPrice, 
		LowPrice, 
		ClosePrice, 
		Volume, 
		NumberOfTrades
	)
	SELECT 
		kl.CoinId, 
		kl.Interval, 
		kl.KlineOpenTime, 
		kl.OpenPrice, 
		kl.HighPrice, 
		kl.LowPrice, 
		kl.ClosePrice, 
		kl.Volume, 
		kl.NumberOfTrades 
	FROM @Klines kl WHERE NOT EXISTS (SELECT 1 FROM Klines WHERE CoinId = kl.CoinId AND Interval = kl.Interval AND KlineOpenTime = kl.KlineOpenTime)

END