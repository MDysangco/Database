CREATE PROCEDURE [dbo].[DeleteKlinesByDateRange]
	@StartDate BIGINT NULL,
	@EndDate BIGINT NULL
AS BEGIN

	SET NOCOUNT ON;

    DELETE FROM Klines WHERE KlineOpenTime >= @StartDate AND KlineOpenTime < @EndDate

END