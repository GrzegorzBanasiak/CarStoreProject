CREATE TABLE [dbo].[Zamowienie] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Zrealizowane]   BIT           NOT NULL,
    [Oplacone]       BIT           NOT NULL,
    [DatZamowienia]  DATE          NOT NULL,
    [DatOdbioru]     DATE          NOT NULL,
    [CenaZamowienia] MONEY         NOT NULL,
    [CenaKatalogowa] MONEY         NOT NULL,
    [Marka]          VARCHAR (200) NOT NULL,
    [KrajMarki]      VARCHAR (200) NOT NULL,
    [Model]          VARCHAR (200) NOT NULL,
    [Kolor]          VARCHAR (200) NOT NULL,
    [Paliwo]         VARCHAR (200) NOT NULL,
    [CzyDostepny]    VARCHAR (200) NOT NULL,
    [KlientID]       INT           NOT NULL,
    [PracownikID]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

