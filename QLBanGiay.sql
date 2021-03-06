USE [QLBANGIAY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[About]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTittle] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](50) NULL,
	[Detail] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AD]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDonHang] [int] NOT NULL,
	[IDGiay] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTittle] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Images] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 8/30/2019 3:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdKhachHang] [nvarchar](100) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[TongTien] [float] NOT NULL,
	[NgayGiao] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[DaThanhToan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giay]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giay](
	[MaGiay] [nvarchar](10) NOT NULL,
	[TenGiay] [nvarchar](50) NOT NULL,
	[MaHang] [nvarchar](50) NOT NULL,
	[MaLoai] [nvarchar](50) NOT NULL,
	[MauSac] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](150) NULL,
	[GiaBan] [float] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[ThanhToanOnline] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [nvarchar](100) NOT NULL,
	[Pass] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](50) NOT NULL,
	[DienThoai] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGiay]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiay](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_dbo.Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTittle] [varchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Images] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 8/30/2019 3:37:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 8/30/2019 3:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_dbo.SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 8/30/2019 3:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/30/2019 3:37:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifledDate] [datetime] NULL,
	[ModifledBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905231109581_InitialCreate', N'Model.EF.ShopDbContext', 0x1F8B0800000000000400ED5DDB72DBB819BEEF4CDF41A3EBAC693B6D679B9177C791E3AEA771AC464AF61A226199131E541E12EBD97AD147EA2B1424780048900420803A2C66273B1680FF0388C3F7FF38FEFFFBCF7F67BFBEFADEE43B8C62370C6EA6571797D3090CECD07183CDCD344D9E7FFA79FAEB2F7FFED3EC83E3BF4EBE96E9DE66E9906410DF4C5F9264FBCEB262FB05FA20BEF05D3B0AE3F039B9B043DF024E685D5F5EFEDDBABAB220829822ACC964F6390D12D787F90FF4731E0636DC2629F01E43077A71118E629639EAE413F061BC0536BC99E6292E3EDC4F27B79E0B50FE4BE83D4F272008C20424A874EFBEC470994461B0596E5100F056BB2D44E99E8117C3A2D4EFEAE4BC1F70799D7D80550B9650761A27A12F0878F5B6A811AB292E55AFD3AAC6509D7D40759BECB2AFCEEBED667ABB0ED3643A69E6F46EEE4559AABA4E2FF2946F26F9EF375573A35E91FDF766324FBD248DE04D00D3240228C5225D7BAEFD4FB85B85DF607013A49E4716051506C55101286811855B1825BBCFF0B928E0C3DD7462D1725653B012236470E91F82E46F7F994E3EA1CCC1DA83554B135FBA4CC208FE03063002097416204960841AEAC181795DB5726FE495FDBFCC0D752D3436A69347F0FA11069BE4E5667AFD57341AEEDD57E894214509BE042E1A4A482889523894C9234CC0CA4D12AF2FABC19C8ADFFD59DDC1D88EDC2DEE6E3D79A9F8AC071F6CF6FA229E4CEE50DDB95E4F2EE84F05D9CC2388FACF1DFA576695FDBD727D4EC9F73BED4D8B86AEFBEC4147A690A5EC18C5440D8646F88F3072E2514616D1E5C532C41908E5B744AC9356B9BC0F430F8280169A59354BF772F71CB5DD268C765CF45D26360C7E4806EF257035392D4084BEBB55810324E9C65B0FEC9E22074684E0DBEBC1FE0CC3713ECBF0ABE15735FCCA107A097F3C05BF85350FEC49CC6190009BCFAC2ED29E202D67E4A09196B38A4129B51B6E4A35725966CE8647694FB0E1CF481F9FE58C4A3FAB97C6A4A89531CE54EC77104520487642868CB12F8C7DA1CBBE5885DBDFC244B4C9BEBAF0C73C4C6B15C8D58F5760D35709323423AAFE50114434204A3EBE122CF26EEB42666A544419AD4964B2AFF2FC1406831DA628E5DEC3BB553CA9CE700FA1B306F637AEAE50263E416B48B3193C600DA9593278C97B97DE4C3EF8FDBA5F4926B78E13C1B89F0055D83F837393432F7AA89CD5DC8761922D0BF18CE33CE9A98D625D5C792C935A86E1C0DDF88F3048B99A3E4B786A0DAF9FBE57F0B5AFB595B0C44737F8A69D8AA457885720DA40ED75206797A3C4ADCE203D4AB29FDC23250B32A345BFB1C3DD82A8244ECAB9665BA43DC1F63B87A5BB394AD993C995B2450CB33E28BD2A837AD160566A2C9D45E4DAB5750C6DD7076896B188D05FC5B9B59FA793A50DB2FE7E390C16FA61D6104A511F02DB4B1DE87CBD5D092AA87FA5A01877222B996671D62CCEF6F19A599C1D677156D4F6103ACFD39031B68839D6638EF5186637CCAEEF58CFD2731DBE197E9EF2042959F3F47EE8BCF78157AAC65947E39CED196E3D226E55B99BB2DCC509F4E761F0ECF26D939302A7C629E3EDAC8CB14F8A5778F5E6F11578A97E8E54D9A1798F7B1CE49CC71FB7FB72B7DF97987373374B786A2DA87F9E99D5CABEADC7D54516208E7F47D6BDF68CC6A0D2910E6A8C72E86494E333C698D36CCCED71EA2DBFC3E12202A9279EDBBB757ED6E395B5A38828A360D7B8687CBAC01875099372B0E04BDA7511F0CDF68B22DCEA97AE97155B0075D4104679A3A50D51C67020E4275F9808790C1F426E6E7481E4910338F5C1C4164A1D3584511C896A23141103F2F8544D4B1A0773C8624B94298FA30630AADDEE164415C387D0D3B95A2906108BE595164E113E244D4DABDA2054F40016BB8BF1F42D6C4BB54471308B502AEAA8E266167ED8A20898591D2F60CC1EC1768B18927811A308992CF17318F39F96E22F46F818C3B263C6C3115569AB9C90ED0436B0118BF7E8EFDD284E10FF8335C8E874EEF8AD64345176546D9917C9854DB3B1AEF13275F677A55A88172C9AA275B5DDA32FF11187E41F05ABEC3BB2CC25B31D6010318CCF79E8A57ED065C0F64963E38B94C721FC08E4D10512870CE747A3D6AB48382A821FAF5803A42A08078994096F55D3C5C161FC28A445452291E1A26899F9D2C67ADF22BFDEF6A3CC28AA05A91871C466E9C870B1FE556F34347B581D238648EF263451E9587EE4D2D623F1CAB036CACC6A50419366AC16CF3426A64DD2E2A2B44A434AB15A973407B1758B1E39B775509B18B3D53BAA24541D2AC047D48E03C54A548C40BFADF65FA99E5B851A96332C27CB729D28C476298544841F0F6716D34E39CA640BF3306697A41EC2ACA6C6D46863CF97D57590033669F65DD24DCA10E66C52A6E491EBC063B6EF6386812FC445E41956AAEF13E163CF17EA93AB244E1D6A74B2D1C9AA75727938954429C3F85188C3AA2410112C50A2FC7D01AA3C79C8B1A9916CB56E1F4DC290E757264CE10125DFA2BAEE170A7A5BA789C37CBBE080ED53ADB14BB54E973447DB748B1EABA62F3616A9E9E90BE321883E8C620794C42882F831AACD5A12A50A1CDF9C55AB3F4FC2382EF695E4C60C539667C474089AC9CEDEED99EFF449B5264B92A32DD9627A5A125F7AA794501EC28F808FE2920838E4906B72E545765AB9E2B0D1EDC21DBEB94E95A5083BAA3E9EEF464BF7739634675F678B1E5AD31FA825CA4D7DA986E810E668874EC9433743B70A729A2645D83E7BD087F047589C216F77D393FA3A5CC0C8C557AD292317078960D0F7B669303A4EA0B6C87BDB54959111FC78F56D6E12AC0E35CB636679CC2C8F9DC6F2D86115F97E27060640F815BB393F60CE0F183236645C489CD2F9017CA8588A3E99A21CA4D921A7872A951CB3544E4B0A967514CF880CBDC9D1DB492CB25287FEE5C67A0F02CF90EF153F562309DF20692E2D0A59D4F81233654DE3A033EB61D2BBCC72DBCB42FBCA67BEA699DFA991AA7B962447E5B3C5F4D47E7DA998C4A843456629E5AD617A9652868E492CAAF69155EC69ABD85B37C6C3C91B0FAD7B78CD2455EE4548F5BBBA8757DC811B764FDDBA14879364EF8A86DFD1DC202A0D868B2CC1C5F2DFDEDC73F3CDEF32C12308DC671827F84585E9F5E5D575C3D7F5F1F89DB6E2D8A11E7CE8723E4D37D6086F42ACDD8D9BD5EAE0C30F7BBCE1117C0791FD02A2F6DB2D35A89C9F3216B0382EE3192A6691F36787C5A0A957BE3A40C58B4B3E4E5BDCAB1783683FA0E0A0BF93FC6D0219A4FAA502359FC87A3D41B684EDD714149591F1C6A0CA9ECE7A523050014EBFF9B076077A8FB80B664362C324E629076E3E8A5A568A20B9301E0C948069BE99AAEA230D7119E2E2252E0640EB115485ECC7BA0D3706F96961BE866F262923439B9E615D52336AE63C6C65E58CD4F60021A918F7B7BA9BEE1E244A61F49FD17FF2FA8F76EF20DB2E2D770F12FD98F4CC2BC71F328E782534C6617CE3B6298A4B91504E6F87078B128FB6E761EF0CAA6089F918F912A6224CEA094F45988DD74715A1360DC8A39BFFE9B24E59F7C4C6181652C37D0CC37F503B88B95F3D0FBE215DA12A1A71A4C70655C34DD16A10EDF654D1F7EE6F0DED488FA76ABB69FBC6D5C976D5BD55A3B0DB5133B1EF25E8DAE3270BF2CA2C15484FDE5A9E3A5F7D4FD8EC23BD653A83DE3245C1593E3955E7C2F0D12941AF4D7F9D32AB1D66EDA607C9ACDD98B51BFD6B37D28E3B8D1637BBC06617D830E9D131A9CE5D60C6BDA6939DF80D9F5D3BDC8A8296C50EEEF98AE1AB612CD565D4B55EDB7D2DE984566D356C5FE42B586A2129778EAA46ADAE7E21B95F781EDD41CC5FE2D958FA4DF7858A36021BBE0AD5A06A18F27A760275EC59EAD85B354A5AB392DEDB9560DB91165D98EA6A53D99FFB5D05E21B47A812D7212A312EA3422F822C78953E0699F8EA1C1076C14395DE097B3251E6BD9095873ADF864C74057E0F59B8EA3C2276A1E3D8811C16C3FE1259F80B7DCE147BB253E57191958506678CCC6C14B96B6461EFEDC79105BA9787C7F60DD299F5390D322D877FA169BABBA9216608338076366BAF41CB340FC17358AA28F4416489CA248CA52BA455C16D94B8CF884A51B48D6CA2DCFB6E3E7FC90C9A35741E82A734D9A6C96D1C437FED51FD6B66F5E79FBBB1A4CB3C7BC22B652A3E0115D3CD0C83A7E07DEA7A4E55EE7B86FEED80C8346D6157A3522D93CCBEDEEC2AA44FADBBE15D4045F5DDC12D0C32AB7C05FDAD87C0E2A76009BE4399B2A1DEF5116E80BD5B141781BB41861B82AEF6D99D0B3611F0E302A396473F511F76FCD75FFE0FE29C08760DB80000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[AD] ON 

INSERT [dbo].[AD] ([ID], [Username], [Pass], [Ten]) VALUES (1, N'admin', N'123', N'phung')
SET IDENTITY_INSERT [dbo].[AD] OFF
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (1, 1, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (2, 1, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (3, 2, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (4, 2, N'13', 3, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (5, 3, N'16', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (6, 3, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (7, 3, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (8, 4, N'10', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (9, 4, N'3', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (10, 5, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (11, 5, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (12, 6, N'10', 3, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (13, 6, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (14, 6, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (15, 7, N'10', 3, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (16, 7, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (17, 7, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (18, 8, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (19, 8, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (20, 9, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (21, 9, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (22, 10, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (23, 10, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (24, 11, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (25, 11, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (26, 12, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (27, 12, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (28, 13, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (29, 13, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (30, 14, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (31, 14, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (32, 15, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (33, 15, N'10', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (34, 16, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (35, 16, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (36, 16, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (37, 16, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (38, 17, N'10', 4, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (39, 17, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (40, 17, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (41, 18, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (42, 18, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (43, 19, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (44, 19, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (45, 19, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (46, 20, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (47, 20, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (48, 20, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (49, 21, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (50, 21, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (51, 21, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (52, 22, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (53, 22, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (54, 22, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (55, 23, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (56, 23, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (57, 23, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (58, 24, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (59, 24, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (60, 25, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (61, 25, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (62, 26, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (63, 26, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (64, 26, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (65, 29, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (66, 29, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (67, 29, N'11', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (68, 30, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (69, 30, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (70, 33, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (71, 33, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (72, 33, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (73, 34, N'1', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (74, 34, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (75, 35, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (76, 35, N'13', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (77, 35, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (78, 36, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (79, 36, N'13', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (80, 36, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (81, 37, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (82, 37, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (83, 38, N'3', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (84, 38, N'7', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (85, 39, N'3', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (86, 39, N'7', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (87, 40, N'3', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (88, 40, N'7', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (89, 41, N'3', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (90, 41, N'7', 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (91, 42, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (92, 42, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (93, 43, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (94, 43, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (95, 44, N'12', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (96, 44, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (97, 45, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (98, 45, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (99, 46, N'1', 1, 400000)
GO
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (100, 46, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (101, 47, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (102, 47, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (103, 48, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (104, 49, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (105, 50, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (106, 51, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (107, 52, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (108, 53, N'11', 2, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (109, 54, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (110, 55, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (111, 56, N'1', 2, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (112, 57, N'3', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (113, 58, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (114, 59, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (115, 59, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (116, 59, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (117, 59, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (118, 60, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (119, 60, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (120, 60, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (121, 60, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (122, 61, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (123, 61, N'14', 3, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (124, 61, N'3', 4, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (125, 62, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (126, 62, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (127, 62, N'15', 3, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (128, 62, N'2', 4, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (129, 63, N'11', 2, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (130, 64, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (131, 64, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (132, 64, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (133, 65, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (134, 65, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (135, 65, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (136, 66, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (137, 66, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (138, 66, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (139, 67, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (140, 67, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (141, 67, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (142, 69, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (143, 69, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (144, 69, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (145, 70, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (146, 70, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (147, 70, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (148, 73, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (149, 73, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (150, 73, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (151, 74, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (152, 74, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (153, 74, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (154, 75, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (155, 76, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (156, 76, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (157, 76, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (158, 77, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (159, 77, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (160, 77, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (161, 78, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (162, 78, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (163, 79, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (164, 79, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (165, 79, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (166, 80, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (167, 80, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (168, 80, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (169, 83, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (170, 83, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (171, 83, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (172, 84, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (173, 84, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (174, 84, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (175, 85, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (176, 85, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (177, 85, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (178, 86, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (179, 86, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (180, 86, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (181, 87, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (182, 87, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (183, 88, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (184, 88, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (185, 89, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (186, 89, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (187, 92, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (188, 92, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (189, 93, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (190, 93, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (191, 94, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (192, 94, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (193, 95, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (194, 95, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (195, 95, N'11', 2, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (196, 96, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (197, 96, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (198, 97, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (199, 97, N'14', 1, 200000)
GO
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (200, 98, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (201, 98, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (202, 99, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (203, 99, N'11', 2, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (204, 100, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (205, 100, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (206, 101, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (207, 101, N'1', 2, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (208, 102, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (209, 102, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (210, 103, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (211, 103, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (212, 104, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (213, 104, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (214, 105, N'13', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (215, 105, N'14', 1, NULL)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (216, 106, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (217, 106, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (218, 107, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (219, 107, N'1', 3, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (220, 108, N'1', 3, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (221, 108, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (222, 109, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (223, 109, N'1', 3, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (224, 110, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (225, 110, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (226, 111, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (227, 111, N'13', 2, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (228, 112, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (229, 112, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (230, 113, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (231, 113, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (232, 114, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (233, 114, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (234, 114, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (235, 115, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (236, 115, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (237, 116, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (238, 116, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (239, 117, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (240, 117, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (241, 118, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (242, 118, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (243, 119, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (244, 119, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (245, 120, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (246, 120, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (247, 121, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (248, 121, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (249, 122, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (250, 122, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (251, 123, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (252, 123, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (253, 124, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (254, 124, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (255, 124, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (256, 125, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (257, 125, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (258, 126, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (259, 126, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (260, 127, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (261, 127, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (262, 128, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (263, 128, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (264, 129, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (265, 129, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (266, 130, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (267, 130, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (268, 131, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (269, 131, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (270, 134, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (271, 134, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (272, 135, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (273, 135, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (274, 136, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (275, 136, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (276, 137, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (277, 137, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (278, 138, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (279, 138, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (280, 139, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (281, 140, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (282, 141, N'11', 1, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (283, 142, N'10', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (284, 143, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (285, 145, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (286, 145, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (287, 146, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (288, 146, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (289, 147, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (290, 147, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (291, 148, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (292, 148, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (293, 149, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (294, 149, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (295, 150, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (296, 151, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (297, 151, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (298, 152, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (299, 152, N'14', 1, 200000)
GO
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (300, 153, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (301, 154, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (302, 154, N'12', 3, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (303, 155, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (304, 155, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (305, 156, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (306, 156, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (307, 157, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (308, 157, N'12', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (309, 158, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (310, 158, N'12', 3, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (311, 159, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (312, 159, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (313, 160, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (314, 160, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (315, 161, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (316, 161, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (317, 162, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (318, 162, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (319, 163, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (320, 163, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (321, 164, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (322, 164, N'14', 3, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (323, 165, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (324, 165, N'14', 3, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (325, 166, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (326, 166, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (327, 167, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (328, 167, N'14', 2, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (329, 168, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (330, 168, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (331, 169, N'13', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (332, 169, N'11', 2, 300000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (333, 170, N'14', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (334, 170, N'12', 1, 200000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (335, 171, N'1', 1, 400000)
INSERT [dbo].[ChiTietDonHang] ([ID], [IDDonHang], [IDGiay], [SoLuong], [DonGia]) VALUES (336, 171, N'14', 3, 200000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (1, N'phungdinhpham0406', CAST(N'2019-05-24' AS Date), 1200000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (2, N'phungdinhpham0406', CAST(N'2019-05-25' AS Date), 2600000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (3, N'phungdinhpham0406', CAST(N'2019-05-25' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (4, N'phungdinhpham0406', CAST(N'2019-05-25' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (5, N'phungdinhpham0406', CAST(N'2019-05-25' AS Date), 500000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (6, N'phungdinhpham0406', CAST(N'2019-05-27' AS Date), 1600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (7, N'phungdinhpham04', CAST(N'2019-05-31' AS Date), 1800000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (8, N'phungdinhpham0406', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (9, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (10, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (11, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (12, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (13, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (14, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (15, N'phungdinhpham', CAST(N'2019-06-10' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (16, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (17, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 2000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (18, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (19, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (20, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (21, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (22, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (23, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (24, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (25, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (26, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (27, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 0, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (28, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 0, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (29, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 1500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (30, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 400000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (31, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 0, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (32, N'phungdinhpham', CAST(N'2019-06-11' AS Date), 0, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (33, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 1400000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (34, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (35, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 2000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (36, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 2000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (37, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (38, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (39, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (40, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 500000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (41, N'phungdinhpham0406', CAST(N'2019-06-11' AS Date), 400000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (42, N'phungdinhpham0406', CAST(N'2019-06-12' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (43, N'phungdinhpham0406', CAST(N'2019-06-12' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (44, N'phungdinhpham0406', CAST(N'2019-06-12' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (45, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 600000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (46, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (47, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (48, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (49, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 2000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (50, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (51, N'phungdinhpham0406', CAST(N'2019-06-13' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (52, N'phungdinhpham0406', CAST(N'2019-06-14' AS Date), 1400000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (53, N'phungdinhpham0406', CAST(N'2019-06-15' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (54, N'phungdinhpham0406', CAST(N'2019-06-15' AS Date), 1200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (55, N'phungdinhpham0406', CAST(N'2019-06-15' AS Date), 800000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (56, N'phungdinhpham0406', CAST(N'2019-06-15' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (57, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1000000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (58, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 2200000, NULL, N'Chưa giao hàng', NULL)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (59, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 2500000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (60, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 2500000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (61, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (62, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 3600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (63, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1400000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (64, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (65, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (66, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (67, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 900000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (68, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 900000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (69, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 900000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (70, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (71, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1300000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (72, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (73, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (74, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (75, N'phungdinhpham0406', CAST(N'2019-06-17' AS Date), 1500000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (76, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (77, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (78, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (79, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (80, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (81, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (82, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (83, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (84, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (85, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (86, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (87, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (88, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (89, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (90, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (91, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (92, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (93, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 600000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (94, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (95, N'phungdinhpham0406', CAST(N'2019-06-18' AS Date), 1000000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (96, N'phungdinhpham0406', CAST(N'2019-06-19' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (97, N'phungdinhpham0406', CAST(N'2019-06-20' AS Date), 1000000, NULL, N'Đã giao hàng và khách hàng đã thanh toán đầy đủ', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (98, N'phungdinhpham0406', CAST(N'2019-06-26' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (99, N'phungdinhpham0406', CAST(N'2019-06-26' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
GO
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (100, N'phungdinhpham0406', CAST(N'2019-06-26' AS Date), 2000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (101, N'phungdinhpham0406', CAST(N'2019-06-26' AS Date), 1600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (102, N'phungdinhpham0406', CAST(N'2019-07-02' AS Date), 1800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (103, N'phungdinhpham0406', CAST(N'2019-07-02' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (104, N'phungdinhpham0406', CAST(N'2019-07-02' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (105, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (106, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (107, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (108, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (109, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (110, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (111, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (112, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (113, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (114, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (115, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (116, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (117, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (118, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (119, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (120, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (121, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (122, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (123, N'phungdinhpham0406', CAST(N'2019-07-03' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (124, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (125, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (126, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (127, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (128, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (129, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (130, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (131, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (132, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (133, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (134, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (135, N'phungdinhpham0406', CAST(N'2019-07-04' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (136, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (137, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (138, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (139, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (140, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (141, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 300000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (142, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (143, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (144, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 0, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (145, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (146, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (147, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (148, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (149, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (150, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (151, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (152, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (153, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (154, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (155, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (156, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (157, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (158, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (159, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (160, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (161, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (162, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (163, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (164, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (165, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (166, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1200000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (167, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 800000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (168, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 600000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (169, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (170, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 400000, NULL, N'Chưa giao hàng', 0)
INSERT [dbo].[DonHang] ([ID], [IdKhachHang], [NgayBan], [TongTien], [NgayGiao], [TrangThai], [DaThanhToan]) VALUES (171, N'phungdinhpham0406', CAST(N'2019-07-05' AS Date), 1000000, NULL, N'Chưa giao hàng', 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'1', N'Ultra Boost', N'2', N'2', N'Màu Xanh Dương', N'grid10.jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259530&checksum=61e20c15669984f5c6823a634a2cc79e22a137cd')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'10', N'Vans Classics Authentic', N'5', N'2', N'Màu Cam', N'grid11.jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259533&checksum=58492694771a86e09b0dcf8a93e48c29577cb4b1')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'11', N'Air Jordan 3 Black Cement', N'3', N'2', N'Màu Đỏ', N'grid12.jpg', 300000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259536&checksum=9f945fb80437a5f846849ccba21e7884b0a9db70')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'12', N'Puma Fenty Trainer', N'7', N'2', N'Màu Xám', N'grid13.jpg', 200000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259538&checksum=5da31391957d3e53283d98ec97b24742896c4741')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'13', N'New Balance 400', N'6', N'3', N'Màu Vàng', N'grid14.jpg', 800000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259540&checksum=3c51046e9f07c294f52d7eb4630fd43a7047defa')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'14', N'Adidas Stansmith', N'2', N'2', N'Màu Trắng', N'ad-023.jpg', 200000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259543&checksum=f664ed5bd9a3fa2de21381ae4aff0b29d0b4b2bc')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'15', N'Air Jordan 13 Bred', N'1', N'1', N'Màu Xanh Lục', N'download (1).jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259548&checksum=d3d981b53da3acf765ae59662f150742eb19346d')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'16', N' PUMA Ignite Evoknit', N'7', N'2', N'Màu Xám', N'giay-adidas-adicross-bounce-f33727.jpg', 300000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259551&checksum=e2d1eecaeb9bcaa620300345bcc745aad81a1444')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'17', N'Luna Racer +3', N'6', N'2', N'Màu Trắng', N'anh-that-giay-adidas-stan-smith-cf-white-blue-green-nam-nu-1517075078-1-5603522-1517075078.jpg', 200000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259554&checksum=7bb2c3de4374dfd229b2a778c4d810610fa65f69')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'2', N'Yeezy', N'2', N'2', N'Màu Bạc', N'giay-adidas-adicross-bounce-f33727.jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259555&checksum=c0ad2354828f97f6e871cbf7b0b71d15bf5a9934')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'20', N'Vans Classics Authentic', N'5', N'2', N'Màu Đen', N'Vans-SK8-Hi-Black-White-Classic-Womens-Shoes_06.jpg', 400000, N'Còn hàng', N'oid=100259533&checksum=58492694771a86e09b0dcf8a93e48c29577cb4b1')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'21', N'Convert', N'4', N'2', N'Màu Đen', N'giay1.jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259564&checksum=6a7531ab0041660f94378eb8b1ef7ca46b0f478b')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'3', N'Vans Old Skool', N'5', N'1', N'Màu Trắng', N'images (1).jpg', 200000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259567&checksum=0539b650a83a3f48373ca8b54ecb9a08be029c56')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'4', N'The Nike Air Jordan 1', N'1', N'1', N'Màu Xanh Lục', N'grid9.jpg', 400000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259568&checksum=6352db96bd9bbadb51e5ebf2363ed959c5a445f4')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'5', N'Puma Fenty Creeper', N'7', N'2', N'Màu Bạc', N'images (2).jpg', 500000, N'Còn hàng', N'https://www.baokim.vn/payment/?oid=100259517&checksum=b1160d201d97dd13c9e553bd8561c63f094cd6af')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'7', N'Adidas Stansmith', N'2', N'2', N'Màu Đen', N'images (3).jpg', 100000, N'Còn hàng', NULL)
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [MaHang], [MaLoai], [MauSac], [HinhAnh], [GiaBan], [TrangThai], [ThanhToanOnline]) VALUES (N'9', N'Air Jordan 13 Bred', N'3', N'2', N'Màu Đen', N'images.jpg', 200000, N'Còn hàng', NULL)
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'1', N'Nike', N'logonike.jpg')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'2', N'Adidas', N'logoadidas01.jpg')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'3', N'Jordan', N'jodan.png')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'4', N'Converse', N'logoconvot.png')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'5', N'Vans', N'logovan.jpg')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'6', N'New Blance', N'newbalance.jpg.png')
INSERT [dbo].[HangSX] ([MaHang], [TenHang], [Logo]) VALUES (N'7', N'Puma', N'puma.jpg.png')
INSERT [dbo].[KhachHang] ([ID], [Pass], [HoTen], [DiaChi], [NgaySinh], [Email], [DienThoai]) VALUES (N'phungdinhpham', N'nhockilo', N'phung', N'1/12/11 d3 binh thanh', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'nhalakhu6pk@gmail.com', N'0349965903')
INSERT [dbo].[KhachHang] ([ID], [Pass], [HoTen], [DiaChi], [NgaySinh], [Email], [DienThoai]) VALUES (N'phungdinhpham04', N'nhockilo', N'phamdinhphung', N'1/12/11 d3 binh thanh', CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'phungdinhpham04@gmail.com', N'0349965903')
INSERT [dbo].[KhachHang] ([ID], [Pass], [HoTen], [DiaChi], [NgaySinh], [Email], [DienThoai]) VALUES (N'phungdinhpham0406', N'nhockilo', N'phamdinhphung', N'1/12/11 d3 binh thanh', CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'phungdinhpham0406@gmail.com', N'0349965903')
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai]) VALUES (N'1', N'Giày thể thao')
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai]) VALUES (N'2', N'Sneaker')
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai]) VALUES (N'3', N'Giày thường')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTittle], [Description], [Images], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifledDate], [ModifledBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (1, N'giay1', N'G1', N'Nike 1', NULL, N'images/grid3.jpg', NULL, CAST(100 AS Decimal(18, 0)), NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2019-05-22T22:10:08.293' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTittle], [Description], [Images], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifledDate], [ModifledBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (2, N'giay2', N'G2', N'Nike 2', NULL, N'images/grid4.jpg', NULL, CAST(100 AS Decimal(18, 0)), NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2019-05-22T22:10:37.893' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTittle], [Description], [Images], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifledDate], [ModifledBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (3, N'giay3', N'G3', N'Nike 3', NULL, N'images/grid5.jpg', NULL, CAST(100 AS Decimal(18, 0)), NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2019-05-22T22:13:05.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT (getdate()) FOR [NgayBan]
GO
ALTER TABLE [dbo].[Giay] ADD  DEFAULT (N'Còn hàng') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([IDGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiGiay] ([MaLoai])
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangSX] ([MaHang])
GO
