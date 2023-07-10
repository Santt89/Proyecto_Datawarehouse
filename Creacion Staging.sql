CREATE DATABASE [TRADEProd_stg]
GO

USE [TRADEProd_stg]
GO

/****** Creacion STG_ARTICULOS  ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_ARTICULOS](
	[CODIGO_PRODUCTO] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[FAMILIA] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[COSTO_UNITARIO] [int] NULL
) ON [PRIMARY]
GO

/******Creacion STG_CLIENTES ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_CLIENTES](
	[NRO] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[ESTADO_CIVIL] [nvarchar](255) NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL
) ON [PRIMARY]
GO

/****** Creacion STG_COMUNA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_COMUNA](
	[COMUNA_ID] [smallint] NOT NULL,
	[COMUNA_NOMBRE] [nvarchar](255) NULL,
	[PROVINCIA_ID] [smallint] NULL
) ON [PRIMARY]
GO

/****** Cracion STG_DETALLE_VENTA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_DETALLE_VENTA](
	[DOCUMENTO] [nvarchar](255) NULL,
	[CODIGO_PRODUCTO] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[CANTIDAD] [int] NULL,
	[TOTAL] [int] NULL
) ON [PRIMARY]
GO

/****** Creacion STG_PROVINCIA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_PROVINCIA](
	[PROVINCIA_ID] [smallint] NOT NULL,
	[PROVINCIA_NOMBRE] [nvarchar](255) NULL,
	[REGION_ID] [smallint] NULL
) ON [PRIMARY]
GO

/****** Creacion STG_REGION ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_REGION](
	[REGION_ID] [smallint] NOT NULL,
	[REGION] [nvarchar](255) NULL
) ON [PRIMARY]
GO

/****** Creacion STG_SUCURSAL ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_SUCURSAL](
	[SUCURSAL_ID] [smallint] NOT NULL,
	[NOMBRE_SUCURSAL] [nvarchar](255) NULL,
	[COMUNA_ID] [smallint] NULL
) ON [PRIMARY]
GO

/****** Creacion STG_VENDEDORES ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_VENDEDORES](
	[ID_VENDEDOR] [smallint] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[TIPO_ CAPACITACION] [nvarchar](255) NULL,
	[HORAS_CAPACITACION] [smallint] NULL
) ON [PRIMARY]
GO

/****** Creacion STG_VENTAS ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_VENTAS](
	[DOCUMENTO] [nvarchar](255) NOT NULL,
	[FECHA] [datetime] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[ID_VENDEDOR] [smallint] NULL,
	[TOTAL_NETO] [int] NULL,
	[IMPUESTO] [int] NULL,
	[TOTAL_DOCUMENTO] [int] NULL,
	[SUCURSAL_ID] [smallint] NULL
) ON [PRIMARY]
GO


/****** Creacion STG_COTIZACION ******/
/****** ESTA NO LA INCLUIREMOS EN NUESTRO DW ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STG_COTIZACION](
	[FECHA] [datetime] NULL,
	[COMPRA] [float] NULL,
	[VENTA] [float] NULL,
) ON [PRIMARY]
GO

