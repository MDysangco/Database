CREATE TYPE ConfigurationType AS TABLE
(
    [UniqueId]                NVARCHAR(50) NOT NULL,
    [BuyProbabilityThreshold] FLOAT        NOT NULL,
    [SellProbabilityThreshold] FLOAT       NOT NULL,
    [TrendEMALength]          INT          NOT NULL,
    [VolFilterWindow]         INT          NOT NULL,
    [VolMinThreshold]         FLOAT        NOT NULL,
    [GlobalThreshold]         FLOAT        NOT NULL,
    [PerSymbolFloor]          FLOAT        NOT NULL,
    [Margin]                  FLOAT        NOT NULL,
    [CooldownHours]           INT          NOT NULL
);
