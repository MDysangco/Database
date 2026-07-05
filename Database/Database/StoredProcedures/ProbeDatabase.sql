CREATE PROCEDURE [dbo].[ProbeDatabase]
AS BEGIN

	SET NOCOUNT ON;

	-- force the Azure database to resume from auto-pause before work is issued.
	SELECT 1 AS Probe;

END
