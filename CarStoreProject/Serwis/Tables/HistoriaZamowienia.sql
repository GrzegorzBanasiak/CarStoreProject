CREATE TABLE [Serwis].[HistoriaZamowienia] (
    [ID]            INT  IDENTITY (1, 1) NOT NULL,
    [ZmianaStatusu] DATE NOT NULL,
    [PracownikID]   INT  DEFAULT ((-1)) NOT NULL,
    [StatusID]      INT  DEFAULT ((-1)) NOT NULL,
    [ZamowienieID]  INT  DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([StatusID]) REFERENCES [Serwis].[Status] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([ZamowienieID]) REFERENCES [Serwis].[Zamowienie] ([ID]) ON DELETE SET DEFAULT
);

