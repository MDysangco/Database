CREATE TABLE [dbo].[Coins]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Ticker] NVARCHAR(55),
	[Name] NVARCHAR(100),
	[Address] NVARCHAR(255),
	[ChainId] INT,
	[Active] BIT,
	[CreateDate] DATETIME DEFAULT GETDATE()
)
