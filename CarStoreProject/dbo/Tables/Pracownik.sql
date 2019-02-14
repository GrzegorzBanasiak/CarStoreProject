CREATE TABLE [dbo].[Pracownik] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Imie]     VARCHAR (200) NOT NULL,
    [Nazwisko] VARCHAR (200) NOT NULL,
    [Pesel]    BIGINT        NOT NULL,
    [NrKonta]  BIGINT        NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([Pesel] ASC)
);

