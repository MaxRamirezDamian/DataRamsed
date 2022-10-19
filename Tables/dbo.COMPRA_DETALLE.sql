CREATE TABLE [dbo].[COMPRA_DETALLE]
(
[IDCOMDET] [int] NOT NULL IDENTITY(1, 1),
[IDINSU] [int] NULL,
[IDCOM] [int] NULL,
[CANTCOMDET] [int] NULL,
[PRECOMDET] [decimal] (8, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRA_DETALLE] ADD CONSTRAINT [COMPRA_DETALLE_pk] PRIMARY KEY CLUSTERED ([IDCOMDET]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRA_DETALLE] ADD CONSTRAINT [COMPRA_DETALLE_INSUMO] FOREIGN KEY ([IDINSU]) REFERENCES [dbo].[INSUMO] ([IDINSU])
GO
ALTER TABLE [dbo].[COMPRA_DETALLE] ADD CONSTRAINT [COMPRADETALLE_COMPRA] FOREIGN KEY ([IDCOM]) REFERENCES [dbo].[COMPRA] ([IDCOM])
GO
