CREATE TABLE [dbo].[COMPRA]
(
[IDCOM] [int] NOT NULL IDENTITY(1, 1),
[FECHCOM] [date] NULL CONSTRAINT [DF__COMPRA__FECHCOM__2C3393D0] DEFAULT (getdate()),
[TIPCOM] [char] (1) COLLATE Modern_Spanish_CI_AS NULL CONSTRAINT [DF__COMPRA__TIPCOM__2D27B809] DEFAULT ('T'),
[IDVEND] [int] NULL,
[IDPROV] [int] NULL,
[ESTCOM] [char] (1) COLLATE Modern_Spanish_CI_AS NULL CONSTRAINT [DF__COMPRA__ESTCOM__2E1BDC42] DEFAULT ('A')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRA] ADD CONSTRAINT [COMPRA_pk] PRIMARY KEY CLUSTERED ([IDCOM]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRA] ADD CONSTRAINT [COMPRA_PROVEEDOR] FOREIGN KEY ([IDPROV]) REFERENCES [dbo].[PROVEEDOR] ([IDPROV])
GO
ALTER TABLE [dbo].[COMPRA] ADD CONSTRAINT [COMPRA_VENDEDOR] FOREIGN KEY ([IDVEND]) REFERENCES [dbo].[VENDEDOR] ([IDVEND])
GO