CREATE PROCEDURE WstawLosoweZamowienia 
@ileZamowien INT
as
BEGIN
	
	DECLARE @obrotPetli as INT
	SET @obrotPetli = 0 
	
	DECLARE @pracownikID as INT
	DECLARE @klientID as INT
	DECLARE @cennikID as INT
	DECLARE @modelID as INT 
	DECLARE @zrealizowane as BIT
	DECLARE @oplacone as BIT
	DECLARE @dataZamowienia as DATE
	DECLARE @dataOdbioru as DATE
	DECLARE @cena as MONEY
		
	WHILE @obrotPetli < @ileZamowien
	BEGIN

	-- Przydzielanie losowych wartosci
	SET @pracownikID = (SELECT TOP 1 ID FROM [dbo].[Pracownik] ORDER BY NEWID())
	SET @klientID = (SELECT TOP 1 ID FROM [dbo].[Klient] ORDER BY NEWID())
	SET @modelID = (SELECT TOP 1 ID FROM [Serwis].[Usluga] ORDER BY NEWID())
	SET @zrealizowane = CAST(ROUND(RAND(),0) AS BIT)
	SET @oplacone = CAST(ROUND(RAND(),0) AS BIT)

	-- Pobranie cennika przypisanego do modelu 
	SET @cennikID = (SELECT cennik.ID 
					FROM [dbo].[Cennik] as cennik 
					INNER JOIN [dbo].[Model] as model on cennik.ModelID = model.ID
					WHERE cennik.ModelID = @modelID)

	SET @dataZamowienia = Convert(date, DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 365), '2018-01-01'))
	SET @dataOdbioru = Convert(date, DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 60), '2019-01-01'))

	SET @cena = ((SELECT cennik.cena 
					FROM [dbo].[Cennik] as cennik 
					INNER JOIN [dbo].[Model] as model on cennik.ModelID = model.ID
					WHERE cennik.ModelID = @modelID) - 500)

	-- Przypisanie wartosci do tabeli
	INSERT INTO [dbo].[Zamowienie] (ModelID, CennikID, PracownikID, KlientID, Zrealizowane, Oplacone, DatZamowienia, DatOdbioru, Cena) VALUES
	(@modelID, @cennikID ,@pracownikID, @klientID, @zrealizowane, @oplacone, @dataZamowienia, @dataOdbioru, @cena )

	SET @obrotPetli = @obrotPetli + 1

	END
END