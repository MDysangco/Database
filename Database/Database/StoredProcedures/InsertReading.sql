CREATE PROCEDURE [dbo].[InsertReading]
    @TimestampUtc       DATETIME,
    @CoinId             INT,
    @PredictedClass     INT,
    @ProbSell           FLOAT,
    @ProbHold           FLOAT,
    @ProbBuy            FLOAT,
    @Price              FLOAT,
    @EMA                FLOAT,
    @Volatility         FLOAT,
    @PassedProbFilter   BIT,
    @PassedTrendFilter  BIT,
    @PassedVolFilter    BIT,
    @FinalSignal        NVARCHAR(10),
    @ModelId            INT,
    @ConfigUniqueId     NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM RawReading WHERE TimestampUtc = @TimestampUtc AND CoinId = @CoinId AND ModelId = @ModelId)
    BEGIN
        INSERT INTO RawReading (
            TimestampUtc, CoinId, PredictedClass, ProbSell, ProbHold, ProbBuy, Price, EMA, Volatility,
            PassedProbFilter, PassedTrendFilter, PassedVolFilter, FinalSignal, ModelId, ConfigUniqueId, SentToAzure
        )
        VALUES ( 
            @TimestampUtc, @CoinId, @PredictedClass, @ProbSell, @ProbHold, @ProbBuy, @Price, @EMA, @Volatility,
            @PassedProbFilter, @PassedTrendFilter, @PassedVolFilter, @FinalSignal, @ModelId, @ConfigUniqueId, 0
        );
    END

END
