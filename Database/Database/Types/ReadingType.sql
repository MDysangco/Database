CREATE TYPE ReadingType AS TABLE (
    [TimestampUtc]       DATETIME        NOT NULL,
    [CoinId]             INT             NOT NULL,
    [PredictedClass]     INT             NOT NULL,
    [ProbSell]           FLOAT           NOT NULL,
    [ProbHold]           FLOAT           NOT NULL,
    [ProbBuy]            FLOAT           NOT NULL,
    [Price]              FLOAT           NULL,
    [EMA]                FLOAT           NULL,
    [Volatility]         FLOAT           NULL,
    [PassedProbFilter]   BIT             NOT NULL,
    [PassedTrendFilter]  BIT             NOT NULL,
    [PassedVolFilter]    BIT             NOT NULL,
    [FinalSignal]        NVARCHAR(10)    NOT NULL,
    [ModelId]            INT             NOT NULL,
    [ConfigRowId]        INT             NOT NULL,
    [SentToAzure]        BIT             NOT NULL
);
