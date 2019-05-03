CREATE TABLE [dbo].[Items]
(
[ItemID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Protein] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cost] [money] NOT NULL,
[Amount] [int] NOT NULL,
[FeedType] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeedDescription] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items] ADD CONSTRAINT [CK_Items] CHECK (([Protein]>(0)))
GO
ALTER TABLE [dbo].[Items] ADD CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED  ([ItemID]) ON [PRIMARY]
GO
