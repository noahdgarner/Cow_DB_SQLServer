CREATE TABLE [dbo].[MilkMade]
(
[MilkID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateMilkAcquired] [date] NOT NULL,
[MilkQuantity] [int] NOT NULL,
[CowKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MilkComments] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MilkMade] ADD CONSTRAINT [PK_MilkMade] PRIMARY KEY CLUSTERED  ([MilkID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MilkMade] ADD CONSTRAINT [FK_MilkMade_Cow1] FOREIGN KEY ([CowKey]) REFERENCES [dbo].[Cow] ([CowKey])
GO
