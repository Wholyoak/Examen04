--Crear Región:
CREATE PROCEDURE sp_CreateRegion
@RegionName NVARCHAR(100),
@Enabled BIT
AS
BEGIN
	INSERT INTO REGIONS([RegionName],[Enabled]) 
	VALUES (@RegionName,@Enabled)
END


--Leer Regiones:
CREATE PROCEDURE sp_ReadRegions
AS
BEGIN
	select [RegionId],[RegionName],[Enabled]
	from regions 
	where [Enabled]=1
END

--Actualizar Región:
CREATE PROCEDURE sp_UpDateRegion
@RegionId INT,
@RegionName NVARCHAR(100),
@Enabled BIT
AS
BEGIN
UPDATE REGIONS 
	SET	 [RegionName]=@RegionName,[Enabled]=@Enabled	
	where [RegionId]=@RegionId
END

