CREATE TABLE [dbo].[CowHerd]
(
[HerdID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeDateFed] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowHerd] ADD CONSTRAINT [CK_CowHerd] CHECK (([Location] like 'Milking Station' OR [Location] like 'Feeding Station'))
GO
ALTER TABLE [dbo].[CowHerd] ADD CONSTRAINT [PK_CowHerd] PRIMARY KEY CLUSTERED  ([HerdID]) ON [PRIMARY]
GO
