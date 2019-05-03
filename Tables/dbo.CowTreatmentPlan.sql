CREATE TABLE [dbo].[CowTreatmentPlan]
(
[TreatmentKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CowMedicalKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Medication] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MediconQuantity] [int] NOT NULL,
[Cost] [money] NULL,
[VetID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SymptomKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowTreatmentPlan] ADD CONSTRAINT [PK_CowTreatmentPlan] PRIMARY KEY CLUSTERED  ([TreatmentKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CowTreatmentPlan] ADD CONSTRAINT [FK_CowTreatmentPlan_CowMedical] FOREIGN KEY ([CowMedicalKey]) REFERENCES [dbo].[CowMedical] ([CowMedicalKey])
GO
ALTER TABLE [dbo].[CowTreatmentPlan] ADD CONSTRAINT [FK_CowTreatmentPlan_CowSymptoms] FOREIGN KEY ([SymptomKey]) REFERENCES [dbo].[CowSymptoms] ([SymptomKey])
GO
ALTER TABLE [dbo].[CowTreatmentPlan] ADD CONSTRAINT [FK_CowTreatmentPlan_CowVeterinarian] FOREIGN KEY ([VetID]) REFERENCES [dbo].[CowVeterinarian] ([VetKey])
GO
