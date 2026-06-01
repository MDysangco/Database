CREATE PROCEDURE [dbo].[InsertConfigurations]
    @Configurations ConfigurationType READONLY
AS BEGIN

    SET NOCOUNT ON;

    INSERT INTO Configurations (
        UniqueId,
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
    SELECT 
        c.UniqueId,
        c.BuyProbabilityThreshold,
        c.SellProbabilityThreshold,
        c.TrendEMALength,
        c.VolFilterWindow,
        c.VolMinThreshold,
        c.GlobalThreshold,
        c.PerSymbolFloor,
        c.Margin,
        c.CooldownHours
    FROM @Configurations c
    WHERE NOT EXISTS (
        SELECT 1 
        FROM Configurations cfg
        WHERE cfg.UniqueId = c.UniqueId
    );

END
