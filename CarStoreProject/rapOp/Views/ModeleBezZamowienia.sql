CREATE VIEW [rapOp].[ModeleBezZamowienia] as 
	SELECT model.ID 
	FROM Model as model 
	INNER JOIN dbo.Zamowienie as zam on model.ID = zam.ModelID
	WHERE zam.ModelID IS NULL