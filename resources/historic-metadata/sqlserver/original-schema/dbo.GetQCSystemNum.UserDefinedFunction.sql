USE [sqm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetQCSystemNum]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetQCSystemNum](@emp int)
RETURNS int
AS
BEGIN
	DECLARE @ResultVar int
	
	SELECT @ResultVar = COUNT(1)
	FROM CALIDADSISTEMA
	WHERE idCalidadEmpresa = @emp;
	RETURN @ResultVar

END

GO
