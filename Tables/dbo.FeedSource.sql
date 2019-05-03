CREATE TABLE [dbo].[FeedSource]
(
[FeedSourceKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QuantityTotal] [decimal] (18, 0) NULL,
[HerdID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ItemID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Waste] [decimal] (18, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeedSource] ADD CONSTRAINT [PK_FeedSource] PRIMARY KEY CLUSTERED  ([FeedSourceKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeedSource] ADD CONSTRAINT [FK_FeedSource_CowHerd] FOREIGN KEY ([HerdID]) REFERENCES [dbo].[CowHerd] ([HerdID])
GO
ALTER TABLE [dbo].[FeedSource] ADD CONSTRAINT [FK_FeedSource_Items] FOREIGN KEY ([ItemID]) REFERENCES [dbo].[Items] ([ItemID])
GO
