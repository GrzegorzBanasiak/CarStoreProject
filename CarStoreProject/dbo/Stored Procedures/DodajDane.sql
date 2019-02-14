CREATE PROCEDURE [dbo].[DodajDane] as

BEGIN
	
	-- Obszar dbo

	INSERT INTO [dbo].[Marka] (Nazwa, Kraj) VALUES
	('Opel','Niemcy'),
	('Skoda','Czechy'),
	('BMW','Niemcy'),
	('Mercedes','Niemcy'),
	('Volkswagen', 'Niemcy'),
	('Fiat', 'Wlochy');
	
	INSERT INTO [dbo].[Pracownik] (Imie, Nazwisko, Pesel, NrKonta) VALUES
	('Jacek','Bebak',12345678911, 12345678911),
	('Robert','Kowalski',12345678911, 12345678911),
	('Michal','Maczuga',12345678911, 12345678911),
	('Arkadiusz','Nowak',12345678911, 12345678911),
	('Tomek','Maczuga',12345678911, 12345678911),
	('Maciek','Byrtek',12345678911, 12345678911);
	 
	INSERT INTO [dbo].[Klient] (Imie, Nazwisko, Telefon, NrDowodu) VALUES
	('Dawid','Duraj',666555777 , 'www-12345'),
	('Bartosz','Sliwa',555777666 , 'aaa-12345'),
	('Marcin','Sliwa',537644543 , 'www-54321'),
	('Bartosz','Dukala',644513512 , 'dsa-11125'),
	('Dawid','Duraj',509007708 , 'rbd-12345');

	INSERT INTO [dbo].[Model] (Nazwa, Kolor, Paliwo, CzyDostepny, MarkaID) VALUES
	('Fabia','Czerwony','Benzyna',1,2),
	('Astra','Bialy','Ropa',1,1),
	('SL 500','Czarny','Ropa',0,4),
	('X6','Czerwony','Benzyna',1,3),
	('Passat','Czarny','Benzyna Gaz',1,5),
	('Panda','Niebieski','Benzyna',1,6);

	INSERT INTO [dbo].[Cennik] (ModelID, Cena, CenaOD, CenaDO) VALUES
	(1, 12000, '2019-01-1', '2019-05-01'),
	(2, 32000, '2019-01-2', '2019-07-02'),
	(3, 42000, '2019-01-3', '2019-12-07'),
	(4, 19500, '2019-01-4', '2019-09-09'),
	(5, 76200, '2019-01-5', '2019-07-02'),
	(6, 10000, '2019-01-6', '2019-11-01');
	
	-- Obszar Serwis
	
	INSERT INTO [Serwis].[Status] (Nazwa) VALUES
	('złożone'),
	('w realizacje'),
	('czeka na odbior'),
	('zamkniete');

	INSERT INTO [Serwis].[Usluga] (Nazwa, Cena) VALUES
	('wymiana oleju',200),
	('zmiana klockow hamulcowych',150),
	('spawanie',100),
	('spawanie tlumika',250),
	('nabijanie klimatyzacji',50);

	-- Obszar HR

	INSERT INTO [HR].[StanowiskoPracy] (Nazwa) VALUES
	('Sprzedawca'),
	('Dyrektor'),
	('Mechanik'),
	('Opiekun Floty'),
	('Kierowca');

	INSERT INTO [HR].[Zespol] (Nazwa) VALUES
	('Mechanicy'),
	('Lakiernicy'),
	('Obsluga Sklepu'),
	('Biuro');

	INSERT INTO [HR].[PracownikStanowisko] (StanowiskoOd, StanowiskoDo, PracownikID, StanowiskoID) VALUES
	('2018-04-24','2019-12-3',1,1),
	('2018-02-11','2019-12-3',2,2),
	('2018-09-10','2019-12-3',3,3),
	('2018-12-3','2019-12-3',4,4),
	('2018-04-4','2019-12-3',5,5);

	INSERT INTO [HR].[PracownikZespol] (PracownikID, ZespolID) VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);

END