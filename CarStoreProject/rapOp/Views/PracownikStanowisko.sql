CREATE VIEW [rapOp].[PracownikStanowisko] as 
--Nazwa stanowiska pracowników
	SELECT pracownik.ID, pracownik.Nazwisko, stanowisko.Nazwa
	FROM dbo.Pracownik as pracownik with(nolock)
	INNER JOIN HR.PracownikStanowisko as ps on pracownik.ID = ps.PracownikID
	INNER JOIN HR.StanowiskoPracy as stanowisko on ps.StanowiskoID = stanowisko.ID
	GROUP BY pracownik.ID, pracownik.Nazwisko, stanowisko.Nazwa