﻿CREATE TABLE [dbo].[GdprDCD]
(
    [Id] UNIQUEIDENTIFIER CONSTRAINT [DF_GdprDCD_Id] DEFAULT NEWID() NOT NULL PRIMARY KEY NONCLUSTERED, 
    [DisplayName] NVARCHAR(40) NOT NULL, 
    [Details] NVARCHAR(MAX) NULL
)
GO;

CREATE UNIQUE CLUSTERED INDEX [IX_GdprDCD_DisplayName] ON [dbo].[GdprDCD] ([DisplayName])
GO;
