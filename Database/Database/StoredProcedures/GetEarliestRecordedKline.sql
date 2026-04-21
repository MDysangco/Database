CREATE PROCEDURE [dbo].[GetEarliestRecordedKline]
	@CoinId INT,
	@Interval INT
AS BEGIN

    SET NOCOUNT ON;

	SELECT TOP 1 * FROM Klines WHERE CoinId = @CoinId AND Interval = @Interval ORDER BY KlineOpenTime ASC

END