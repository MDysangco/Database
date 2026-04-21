CREATE PROCEDURE [dbo].[InsertKline] 
(
	@CoinId INT,
	@Interval INT,
	@KlineOpenTime BIGINT,
	@OpenPrice DECIMAL(18, 8),
	@HighPrice DECIMAL(18, 8),
	@LowPrice DECIMAL(18, 8),
	@ClosePrice DECIMAL(18, 8),
	@Volume DECIMAL(18, 8),
	@NumberOfTrades INT
)
AS BEGIN

	IF NOT EXISTS(SELECT 1 FROM Klines WHERE CoinId = @CoinId AND Interval = @Interval AND KlineOpenTime = @KlineOpenTime)
	BEGIN

		INSERT INTO Klines(CoinId, Interval, KlineOpenTime, OpenPrice, HighPrice, LowPrice, ClosePrice, Volume, NumberOfTrades)
		VALUES(@CoinId, @Interval, @KlineOpenTime, @OpenPrice, @HighPrice, @LowPrice, @ClosePrice, @Volume, @NumberOfTrades)
	END

END