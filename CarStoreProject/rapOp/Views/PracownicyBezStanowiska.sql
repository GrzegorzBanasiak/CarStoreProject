CREATE VIEW [rapOp].[PracownicyBezStanowiska] as 
--Nowi pracownicy bez stanowiska
	SELECT pracownik.ID, pracownik.Nazwisko
	FROM dbo.Pracownik as pracownik with(nolock)
	INNER JOIN HR.PracownikStanowisko as ps on pracownik.ID = ps.PracownikID
	WHERE ps.PracownikID is null