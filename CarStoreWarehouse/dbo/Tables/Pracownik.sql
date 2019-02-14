CREATE TABLE [dbo].[Pracownik] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Imie]           VARCHAR (200) NOT NULL,
    [Nazwisko]       VARCHAR (200) NOT NULL,
    [PESEL]          BIGINT        NOT NULL,
    [NrKonta]        BIGINT        NOT NULL,
    [Zespol]         VARCHAR (200) NOT NULL,
    [Stanowisko]     VARCHAR (200) NOT NULL,
    [NaStanowiskuOD] DATE          NOT NULL,
    [NaStanowiskuDO] DATE          NOT NULL,
    [Wynagrodzenie]  MONEY         NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([PESEL] ASC)
);

