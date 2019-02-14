CREATE TABLE [dbo].[Zamowienie] (
    [ID]            INT   IDENTITY (1, 1) NOT NULL,
    [ModelID]       INT   DEFAULT ((-1)) NOT NULL,
    [CennikID]      INT   DEFAULT ((-1)) NOT NULL,
    [PracownikID]   INT   DEFAULT ((-1)) NOT NULL,
    [KlientID]      INT   DEFAULT ((-1)) NOT NULL,
    [Zrealizowane]  BIT   NOT NULL,
    [Oplacone]      BIT   NOT NULL,
    [DatZamowienia] DATE  NOT NULL,
    [DatOdbioru]    DATE  NOT NULL,
    [Cena]          MONEY NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([CennikID]) REFERENCES [dbo].[Cennik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([KlientID]) REFERENCES [dbo].[Klient] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([ModelID]) REFERENCES [dbo].[Marka] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT
);



