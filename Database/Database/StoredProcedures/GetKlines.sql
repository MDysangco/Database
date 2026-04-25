CREATE PROCEDURE [dbo].[GetKlines]
	@CoinId INT NULL,
	@Interval INT NULL
AS BEGIN

    SET NOCOUNT ON;

    SELECT * FROM Klines WHERE (@CoinId IS NULL OR CoinId = @CoinId) AND (@Interval IS NULL OR Interval = @Interval) ORDER BY KlineOpenTime;
END