CREATE TABLE [dbo].[CowSymptoms]
(
[SymptomKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Severity] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SymptomComments] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowSymptoms] ADD CONSTRAINT [PK_CowSymptoms] PRIMARY KEY CLUSTERED  ([SymptomKey]) ON [PRIMARY]
GO
