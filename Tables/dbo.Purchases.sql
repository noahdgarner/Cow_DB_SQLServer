CREATE TABLE [dbo].[Purchases]
(
[PurchaseID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PurchaseDate] [date] NULL,
[DeliveryCost] [money] NOT NULL,
[TotalCost] [money] NOT NULL,
[SupplierID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Purchases] ADD CONSTRAINT [CK_Purchases] CHECK (([DeliveryCost]>(0)))
GO
ALTER TABLE [dbo].[Purchases] ADD CONSTRAINT [PK_Purchases] PRIMARY KEY CLUSTERED  ([PurchaseID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Purchases] ADD CONSTRAINT [FK_Purchases_Supplier] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Supplier] ([SupplierID])
GO
