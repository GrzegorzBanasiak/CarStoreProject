CREATE TABLE [dbo].[Marka] (
    [ID]    INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa] VARCHAR (200) NOT NULL,
    [Kraj]  VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([Nazwa] ASC)
);

