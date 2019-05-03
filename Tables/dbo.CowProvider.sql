CREATE TABLE [dbo].[CowProvider]
(
[SourceProviderKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentSireID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentCowID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LineageComments] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowProvider] ADD CONSTRAINT [PK_CowProvider] PRIMARY KEY CLUSTERED  ([SourceProviderKey]) ON [PRIMARY]
GO
