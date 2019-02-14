CREATE VIEW [rapOp].[ZespolPracownikow] as 
--Zespoly pracownikow 
	SELECT pracownik.ID, pracownik.Nazwisko, zespol.Nazwa
	FROM dbo.Pracownik as pracownik with(nolock)
	INNER JOIN HR.PracownikZespol as pz on pracownik.ID = pz.PracownikID
	INNER JOIN HR.Zespol as zespol on pz.ZespolID = zespol.ID
	GROUP BY pracownik.ID, pracownik.Nazwisko, zespol.Nazwa