CREATE TABLE [dbo].[PurchaseItems]
(
[PurchaseID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ItemID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PurchaseItems] ADD CONSTRAINT [PK_PurchaseItems] PRIMARY KEY CLUSTERED  ([PurchaseID], [ItemID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PurchaseItems] ADD CONSTRAINT [FK_PurchaseItems_Items] FOREIGN KEY ([ItemID]) REFERENCES [dbo].[Items] ([ItemID])
GO
ALTER TABLE [dbo].[PurchaseItems] ADD CONSTRAINT [FK_PurchaseItems_Purchases] FOREIGN KEY ([PurchaseID]) REFERENCES [dbo].[Purchases] ([PurchaseID])
GO
