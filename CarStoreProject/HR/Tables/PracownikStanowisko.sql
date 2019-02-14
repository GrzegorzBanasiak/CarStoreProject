CREATE TABLE [HR].[PracownikStanowisko] (
    [ID]           INT  IDENTITY (1, 1) NOT NULL,
    [StanowiskoOd] DATE NOT NULL,
    [StanowiskoDo] DATE NOT NULL,
    [PracownikID]  INT  DEFAULT ((-1)) NOT NULL,
    [StanowiskoID] INT  DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([StanowiskoID]) REFERENCES [HR].[StanowiskoPracy] ([ID]) ON DELETE SET DEFAULT
);

