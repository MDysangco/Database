CREATE PROCEDURE [dbo].[GetKlines]
	@CoinId INT,
	@Interval INT
AS BEGIN

    SET NOCOUNT ON;

    SELECT * FROM Klines WHERE CoinId = @CoinId AND Interval = @Interval ORDER BY KlineOpenTime;
END