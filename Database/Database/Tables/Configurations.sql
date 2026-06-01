CREATE TABLE [dbo].[Configurations]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UniqueId] NVARCHAR(50) NOT NULL,
	[BuyProbabilityThreshold] FLOAT,
	[SellProbabilityThreshold] FLOAT,
	[TrendEMALength] INT,
	[VolFilterWindow] INT,
	[VolMinThreshold] FLOAT,
	[GlobalThreshold] FLOAT,
	[PerSymbolFloor] FLOAT,
	[Margin] FLOAT,
	[CooldownHours] INT,
	[CreateDate] DATETIME DEFAULT GETDATE()
)
