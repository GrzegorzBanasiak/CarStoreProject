CREATE TABLE [dbo].[Model] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa]       VARCHAR (200) NOT NULL,
    [Kolor]       VARCHAR (200) NOT NULL,
    [Paliwo]      VARCHAR (200) NOT NULL,
    [CzyDostepny] BIT           NOT NULL,
    [MarkaID]     INT           DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([MarkaID]) REFERENCES [dbo].[Marka] ([ID]) ON DELETE SET DEFAULT
);

