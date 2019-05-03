CREATE TABLE [dbo].[CowBirths]
(
[BirthKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateBirthing] [date] NOT NULL,
[CowKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NumBirths] [int] NOT NULL,
[BirthComments] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowBirths] ADD CONSTRAINT [PK_CowBirths] PRIMARY KEY CLUSTERED  ([BirthKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowBirths] ADD CONSTRAINT [FK_CowBirths_Cow1] FOREIGN KEY ([CowKey]) REFERENCES [dbo].[Cow] ([CowKey])
GO
