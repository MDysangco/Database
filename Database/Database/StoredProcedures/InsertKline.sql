CREATE PROCEDURE [dbo].[InsertKline] 
(
	@CoinId INT,
	@Interval INT,
	@KlineOpenTime BIGINT,
	@OpenPrice DECIMAL(38, 18),
	@HighPrice DECIMAL(38, 18),
	@LowPrice DECIMAL(38, 18),
	@ClosePrice DECIMAL(38, 18),
	@Volume DECIMAL(38, 18),
	@NumberOfTrades INT
)
AS BEGIN

	IF NOT EXISTS(SELECT 1 FROM Klines WHERE CoinId = @CoinId AND Interval = @Interval AND KlineOpenTime = @KlineOpenTime)
	BEGIN

		INSERT INTO Klines(CoinId, Interval, KlineOpenTime, OpenPrice, HighPrice, LowPrice, ClosePrice, Volume, NumberOfTrades)
		VALUES(@CoinId, @Interval, @KlineOpenTime, @OpenPrice, @HighPrice, @LowPrice, @ClosePrice, @Volume, @NumberOfTrades)
	END

END