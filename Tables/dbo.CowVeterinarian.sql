CREATE TABLE [dbo].[CowVeterinarian]
(
[VetKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VetAddress] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZipCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TechName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VisitCost] [money] NULL,
[TotalCost] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowVeterinarian] ADD CONSTRAINT [PK_CowVeterinarian] PRIMARY KEY CLUSTERED  ([VetKey]) ON [PRIMARY]
GO
