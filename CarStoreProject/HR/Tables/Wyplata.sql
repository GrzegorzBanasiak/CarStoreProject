CREATE TABLE [HR].[Wyplata] (
    [ID]          INT   IDENTITY (1, 1) NOT NULL,
    [Kwota]       MONEY NOT NULL,
    [OkresOd]     DATE  NOT NULL,
    [OkresDo]     DATE  NOT NULL,
    [CzyPremia]   BIT   NOT NULL,
    [PracownikID] INT   DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT
);

