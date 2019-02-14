CREATE VIEW [rapOp].[IloscZamknietychUslugSerwisu] as
--Ilosc zamknietych uslugserwisu przez pracownika
	SELECT pracownik.ID, count(zam.ID) as Ilosc
	FROM dbo.Pracownik as pracownik with(nolock)
	INNER JOIN Serwis.HistoriaZamowienia as zam on pracownik.ID = zam.PracownikID 
	INNER JOIN [Serwis].[Status] as s on zam.StatusID = s.ID
	WHERE s.Nazwa = 'zamkniete'
	GROUP BY pracownik.ID