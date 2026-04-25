CREATE PROCEDURE [dbo].[UpdateCoin]
    @CoinId INT,
    @Active BIT = NULL,
    @BinanceListingDate BIGINT = NULL
AS
BEGIN

    UPDATE Coins
    SET 
        Active = COALESCE(@Active, Active),
        BinanceListingDate = COALESCE(@BinanceListingDate, BinanceListingDate)
    WHERE Id = @CoinId;
END