CREATE TABLE [dbo].[Klient] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Imie]     VARCHAR (200) NOT NULL,
    [Nazwisko] VARCHAR (200) NOT NULL,
    [Telefon]  BIGINT        NULL,
    [NrDowodu] VARCHAR (200) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([NrDowodu] ASC)
);

