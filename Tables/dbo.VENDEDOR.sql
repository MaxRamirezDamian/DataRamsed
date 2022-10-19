CREATE TABLE [dbo].[VENDEDOR]
(
[IDVEND] [int] NOT NULL IDENTITY(1, 1),
[DNIVEND] [char] (8) COLLATE Modern_Spanish_CI_AS NULL,
[NOMVEND] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[APEPATVEND] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[APEMATVEND] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CELVEND] [char] (9) COLLATE Modern_Spanish_CI_AS NULL,
[EMAVEND] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[DOMVEND] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL,
[CODUBI] [char] (6) COLLATE Modern_Spanish_CI_AS NULL,
[ESTVEND] [char] (1) COLLATE Modern_Spanish_CI_AS NULL CONSTRAINT [DF__VENDEDOR__ESTVEN__36B12243] DEFAULT ('A')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENDEDOR] ADD CONSTRAINT [VENDEDOR_pk] PRIMARY KEY CLUSTERED ([IDVEND]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENDEDOR] ADD CONSTRAINT [VENDEDOR_UBIGEO] FOREIGN KEY ([CODUBI]) REFERENCES [dbo].[UBIGEO] ([CODUBI])
GO
