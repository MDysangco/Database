CREATE PROCEDURE [dbo].[InsertConfiguration]
    @BuyProbabilityThreshold FLOAT,
    @SellProbabilityThreshold FLOAT,
    @TrendEMALength INT,
    @VolFilterWindow INT,
    @VolMinThreshold FLOAT,
    @GlobalThreshold FLOAT,
    @PerSymbolFloor FLOAT,
    @Margin FLOAT,
    @CooldownHours INT,
    @NewId INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Configurations (
        BuyProbabilityThreshold,
        SellProbabilityThreshold,
        TrendEMALength,
        VolFilterWindow,
        VolMinThreshold,
        GlobalThreshold,
        PerSymbolFloor,
        Margin,
        CooldownHours
    )
    VALUES (
        @BuyProbabilityThreshold,
        @SellProbabilityThreshold,
        @TrendEMALength,
        @VolFilterWindow,
        @VolMinThreshold,
        @GlobalThreshold,
        @PerSymbolFloor,
        @Margin,
        @CooldownHours
    );

    SET @NewId = SCOPE_IDENTITY();
END
