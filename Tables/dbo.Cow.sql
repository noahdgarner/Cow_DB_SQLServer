CREATE TABLE [dbo].[Cow]
(
[CowKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dateborn] [date] NOT NULL,
[DateAquired] [date] NULL,
[Breed] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateRemoved] [date] NULL,
[CauseRemoved] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationRemoved] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HerdID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SourceProviderKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VetKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cow] ADD CONSTRAINT [CK_Cow] CHECK (([DateAquired]<=[DateRemoved]))
GO
ALTER TABLE [dbo].[Cow] ADD CONSTRAINT [PK_Cow] PRIMARY KEY CLUSTERED  ([CowKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cow] ADD CONSTRAINT [FK_Cow_CowHerd] FOREIGN KEY ([HerdID]) REFERENCES [dbo].[CowHerd] ([HerdID])
GO
ALTER TABLE [dbo].[Cow] ADD CONSTRAINT [FK_Cow_CowProvider] FOREIGN KEY ([SourceProviderKey]) REFERENCES [dbo].[CowProvider] ([SourceProviderKey])
GO
ALTER TABLE [dbo].[Cow] ADD CONSTRAINT [FK_Cow_CowVeterinarian] FOREIGN KEY ([VetKey]) REFERENCES [dbo].[CowVeterinarian] ([VetKey])
GO
