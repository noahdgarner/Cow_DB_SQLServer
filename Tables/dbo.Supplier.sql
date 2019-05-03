CREATE TABLE [dbo].[Supplier]
(
[SupplierID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Phone] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZipCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED  ([SupplierID]) ON [PRIMARY]
GO
