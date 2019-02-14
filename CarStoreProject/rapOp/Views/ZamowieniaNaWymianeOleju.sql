CREATE VIEW [rapOp].[ZamowieniaNaWymianeOleju] as
--Zamowienia na wymiane oleju
	SELECT zam.ID 
	FROM Serwis.Zamowienie as zam with(nolock)
	INNER JOIN Serwis.Usluga as us on zam.UslugaID = us.ID
	GROUP BY zam.ID