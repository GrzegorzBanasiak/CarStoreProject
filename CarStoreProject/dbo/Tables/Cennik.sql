CREATE TABLE [dbo].[Cennik] (
    [ID]      INT  IDENTITY (1, 1) NOT NULL,
    [ModelID] INT  DEFAULT ((-1)) NOT NULL,
    [Cena]    INT  NOT NULL,
    [CenaOD]  DATE NOT NULL,
    [CenaDO]  DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ModelID]) REFERENCES [dbo].[Marka] ([ID]) ON DELETE SET DEFAULT
);

