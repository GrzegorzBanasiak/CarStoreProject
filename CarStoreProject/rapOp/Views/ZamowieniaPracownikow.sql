CREATE VIEW [rapOp].[ZamowieniaPracownikow] as 
	SELECT pracownik.id, COUNT(zam.ID) as IloscZamowien, SUM(zam.Cena) as KwotaZamowien
	FROM dbo.Pracownik as pracownik with(nolock) 
	INNER JOIN dbo.Zamowienie as zam on pracownik.ID = zam.PracownikID
	GROUP BY pracownik.ID