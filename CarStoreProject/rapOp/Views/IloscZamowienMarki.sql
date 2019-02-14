/*
CREATE SCHEMA [rapOp] 
	AUTHORIZATION [dbo];

ALTER TABLE [dbo].[Zamowienie] Add Cena money NOT NULL;

*/

CREATE VIEW [rapOp].[IloscZamowienMarki] as 
	SELECT m.Nazwa, count(z.ID) as IloscZamowienMarki, sum(z.Cena) as Kwota
	FROM dbo.Marka as m with(nolock) 
	LEFT JOIN dbo.Model as model on m.ID = model.MarkaID
	LEFT JOIN dbo.Zamowienie as z on z.ModelID = model.ID
	GROUP BY m.Nazwa