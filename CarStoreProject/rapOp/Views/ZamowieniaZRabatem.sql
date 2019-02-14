CREATE VIEW [rapOp].[ZamowieniaZRabatem] as 
	SELECT z.ID, ((cennik.Cena-z.Cena)/cennik.Cena) as Rabat 
	FROM Zamowienie as z with(nolock) 
	INNER JOIN Cennik as cennik on cennik.ID = z.CennikID