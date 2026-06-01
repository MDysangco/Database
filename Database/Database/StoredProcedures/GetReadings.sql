CREATE PROCEDURE [dbo].[GetReadings]
	@CoinId INT
AS BEGIN

	SELECT * FROM RawReading WHERE CoinId = @CoinId ORDER BY TimestampUtc DESC
END