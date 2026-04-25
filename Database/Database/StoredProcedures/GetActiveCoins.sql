CREATE PROCEDURE [dbo].[GetActiveCoins]
AS BEGIN
	SELECT * FROM Coins where Active = 1
END 
