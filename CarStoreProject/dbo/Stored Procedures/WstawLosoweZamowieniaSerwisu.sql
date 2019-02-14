CREATE PROCEDURE WstawLosoweZamowieniaSerwisu @ileZamowien as INT as
BEGIN
	
	DECLARE @obrotPetli as INT
	SET @obrotPetli = 0 
	
	DECLARE @pracownikID as INT
	DECLARE @klientID as INT
	DECLARE @uslugaID as INT
		
	WHILE @obrotPetli < @ileZamowien
	BEGIN

	-- Przydzielanie losowych wartosci
	SET @pracownikID = (SELECT TOP 1 ID FROM [dbo].[Pracownik] ORDER BY NEWID())
	SET @klientID = (SELECT TOP 1 ID FROM [dbo].[Klient] ORDER BY NEWID())
	SET @uslugaID = (SELECT TOP 1 ID FROM [Serwis].[Usluga] ORDER BY NEWID())

	-- Przypisanie wartosci do tabeli
	INSERT INTO [Serwis].[Zamowienie] (PracownikID, KlientID, UslugaID) VALUES
	(@pracownikID, @klientID, @uslugaID)

	END
END