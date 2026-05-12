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
    @ConfigRowId        INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO RawReading (
        TimestampUtc, CoinId, PredictedClass, ProbSell, ProbHold, ProbBuy, Price, EMA, Volatility,
        PassedProbFilter, PassedTrendFilter, PassedVolFilter, FinalSignal, ModelId, ConfigRowId, SentToAzure
    )
    VALUES ( 
        @TimestampUtc, @CoinId, @PredictedClass, @ProbSell, @ProbHold, @ProbBuy, @Price, @EMA, @Volatility,
        @PassedProbFilter, @PassedTrendFilter, @PassedVolFilter, @FinalSignal, @ModelId, @ConfigRowId, 0
    );
END
