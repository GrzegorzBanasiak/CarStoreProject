CREATE VIEW [rapOp].[PracownikUslugaSpawania] as
--Pracownicy obslugujacy w serwisie zamowienie spawania 
	SELECT pracownik.ID 
	FROM dbo.Pracownik as pracownik with(nolock)
	INNER JOIN Serwis.Zamowienie as zam on pracownik.ID = zam.PracownikID 
	INNER JOIN Serwis.Usluga as us on zam.UslugaID = us.ID
	WHERE us.Nazwa = 'spawanie'