CREATE TABLE [Serwis].[Usluga] (
    [ID]    INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa] VARCHAR (200) NOT NULL,
    [Cena]  MONEY         NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

