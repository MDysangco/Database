CREATE PROCEDURE [dbo].[InsertReadings]
    @Readings ReadingType READONLY
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO RawReading (
        TimestampUtc,
        CoinId,
        PredictedClass,
        ProbSell,
        ProbHold,
        ProbBuy,
        Price,
        EMA,
        Volatility,
        PassedProbFilter,
        PassedTrendFilter,
        PassedVolFilter,
        FinalSignal,
        ModelId,
        ConfigUniqueId,
        SentToAzure
    )
    SELECT 
        r.TimestampUtc,
        r.CoinId,
        r.PredictedClass,
        r.ProbSell,
        r.ProbHold,
        r.ProbBuy,
        r.Price,
        r.EMA,
        r.Volatility,
        r.PassedProbFilter,
        r.PassedTrendFilter,
        r.PassedVolFilter,
        r.FinalSignal,
        r.ModelId,
        r.ConfigUniqueId,
        r.SentToAzure
    FROM @Readings r
    WHERE NOT EXISTS (
        SELECT 1
        FROM RawReading rr
        WHERE rr.TimestampUtc = r.TimestampUtc
          AND rr.CoinId = r.CoinId
          AND rr.ModelId = r.ModelId
    );
END
