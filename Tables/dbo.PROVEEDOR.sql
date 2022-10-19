CREATE TABLE [dbo].[PROVEEDOR]
(
[IDPROV] [int] NOT NULL IDENTITY(1, 1),
[RUCPROV] [char] (11) COLLATE Modern_Spanish_CI_AS NULL,
[RAZSOPROV] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[EMAPROV] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CELPROV] [char] (9) COLLATE Modern_Spanish_CI_AS NULL,
[DIRPROV] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CODUBI] [char] (6) COLLATE Modern_Spanish_CI_AS NULL,
[ESTPROV] [char] (1) COLLATE Modern_Spanish_CI_AS NULL CONSTRAINT [DF__PROVEEDOR__ESTPR__398D8EEE] DEFAULT ('A')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD CONSTRAINT [PROVEEDOR_pk] PRIMARY KEY CLUSTERED ([IDPROV]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD CONSTRAINT [PROVEEDOR_UBIGEO] FOREIGN KEY ([CODUBI]) REFERENCES [dbo].[UBIGEO] ([CODUBI])
GO
