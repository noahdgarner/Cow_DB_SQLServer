CREATE TABLE [dbo].[CowMedical]
(
[CowMedicalKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BirthWeight] [int] NOT NULL,
[TreatmentDate] [date] NULL,
[CurrentWeight] [int] NOT NULL,
[CowKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowMedical] ADD CONSTRAINT [PK_CowMedical] PRIMARY KEY CLUSTERED  ([CowMedicalKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowMedical] ADD CONSTRAINT [FK_CowMedical_Cow] FOREIGN KEY ([CowKey]) REFERENCES [dbo].[Cow] ([CowKey])
GO
