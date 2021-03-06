USE [db_oxywatch]
GO
/****** Object:  Table [dbo].[tbl_adv]    Script Date: 29-Dec-18 8:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_adv](
	[PK_AdvID] [int] NOT NULL,
	[C_Name] [nvarchar](2000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](2000) NULL,
	[C_Url] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_Place] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Page] [int] NULL,
	[C_Width] [int] NULL,
	[C_Height] [int] NULL,
	[C_Video] [ntext] NULL,
	[C_IsImages] [int] NULL,
	[C_IsFlash] [int] NULL,
	[C_IsVideo] [int] NULL,
	[C_Music] [ntext] NULL,
	[C_IsMusic] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_banner]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_banner](
	[PK_BannerID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[FK_CategoryID] [int] NULL,
	[C_Url] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbl_banner] PRIMARY KEY CLUSTERED 
(
	[PK_BannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_banner]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_banner](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Url] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
 CONSTRAINT [PK_tbl_category_banner] PRIMARY KEY CLUSTERED 
(
	[PK_CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_news]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_news](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ParentID] [int] NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Url] [nvarchar](500) NULL,
	[C_Product] [int] NULL,
	[C_PointUrl] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Granite] [int] NULL,
	[C_MenuNgang] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_nhaxuong]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_nhaxuong](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Active] [int] NOT NULL,
	[C_Rank] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_slide]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_slide](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Url] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[PK_CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[C_CustomerName] [nvarchar](255) NULL,
	[C_CustomerPass] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_FullName] [nvarchar](2000) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Sex] [int] NULL,
	[C_Des] [ntext] NULL,
	[C_Birth] [nvarchar](50) NULL,
	[C_Address] [nvarchar](500) NULL,
	[C_Phone] [nvarchar](50) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Company] [nvarchar](500) NULL,
	[C_Image] [nvarchar](500) NULL,
	[C_Permission] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Change] [int] NULL,
	[C_ActiveCode] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_customer_cart]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer_cart](
	[PK_CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[C_CustomerName] [nvarchar](255) NULL,
	[C_CustomerPass] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_FullName] [nvarchar](2000) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Sex] [int] NULL,
	[C_Des] [ntext] NULL,
	[C_Birth] [nvarchar](50) NULL,
	[C_Address] [nvarchar](500) NULL,
	[C_Phone] [nvarchar](50) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Company] [nvarchar](500) NULL,
	[C_Image] [nvarchar](500) NULL,
	[C_Permission] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Change] [int] NULL,
	[C_ActiveCode] [nvarchar](500) NULL,
	[C_Code] [nvarchar](max) NULL,
	[C_HinhThucThanhToan] [int] NULL,
	[C_Create] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_granit]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_granit](
	[PK_GranitID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_groupmember]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_groupmember](
	[PK_GroupMemberID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NULL,
	[C_System] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Add] [int] NULL,
	[C_Edit] [int] NULL,
	[C_Del] [int] NULL,
	[C_Lock] [int] NULL,
	[C_View] [int] NULL,
	[C_ProcessLock] [int] NULL,
	[C_ProcessUnLock] [int] NULL,
	[C_ProcessDel] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_menu]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_menu](
	[PK_MenuID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ParentID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Icon] [nvarchar](200) NULL,
	[C_Url] [nvarchar](2000) NULL,
	[C_Active] [int] NOT NULL,
	[C_Rank] [int] NULL,
	[C_Add] [int] NULL,
	[C_Edit] [int] NULL,
	[C_Del] [int] NULL,
	[C_Lock] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_news]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_news](
	[PK_NewsID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Content] [ntext] NULL,
	[C_Hot] [int] NULL,
	[C_Img] [nvarchar](500) NULL,
	[C_Create] [datetime] NULL,
	[C_Author] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](500) NULL,
	[C_Download] [int] NULL,
	[C_SupperHot] [int] NULL,
	[C_Tieudiem] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_nhaxuong]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhaxuong](
	[PK_NhaxuongID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Content] [ntext] NULL,
	[C_Hot] [int] NULL,
	[C_Img] [nvarchar](500) NULL,
	[C_Create] [datetime] NULL,
	[C_Author] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](4000) NULL,
	[C_Download] [int] NULL,
	[C_SupperHot] [int] NULL,
	[C_Tieudiem] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_permission]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_permission](
	[PK_PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[FK_MenuID] [int] NULL,
	[FK_GroupMemberID] [int] NULL,
	[C_Change] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[PK_ProductID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Img2] [nvarchar](500) NULL,
	[C_GiaCu] [decimal](18, 0) NULL,
	[C_GiaMoi] [decimal](18, 0) NULL,
	[C_Hot] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product_cart]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_cart](
	[PK_ProductCartID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CustomerCartID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Img2] [nvarchar](500) NULL,
	[C_GiaCu] [decimal](18, 0) NULL,
	[C_GiaMoi] [decimal](18, 0) NULL,
	[C_Hot] [int] NULL,
	[C_SoLuong] [int] NULL,
	[C_Price] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product_image]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_image](
	[PK_ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ProductID] [int] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Name] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product_price]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_price](
	[PK_ProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_resquest]    Script Date: 29-Dec-18 8:56:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_resquest](
	[PK_ResquestID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](255) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Address] [nvarchar](255) NULL,
	[C_Content] [ntext] NULL,
	[C_Rank] [int] NULL,
	[C_Status] [int] NULL,
	[C_Create] [datetime] NULL,
	[FK_ProductID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
 CONSTRAINT [PK_tbl_resquest] PRIMARY KEY CLUSTERED 
(
	[PK_ResquestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_siteinfo]    Script Date: 29-Dec-18 8:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_siteinfo](
	[SiteInfoID] [int] NOT NULL,
	[Email] [nvarchar](500) NULL,
	[Counter] [int] NULL,
	[Contact] [ntext] NULL,
	[Footer] [ntext] NULL,
	[Yahoo1] [nvarchar](500) NULL,
	[Yahoo2] [nvarchar](500) NULL,
	[Skype1] [nvarchar](500) NULL,
	[Skype2] [nvarchar](500) NULL,
	[Congty] [nvarchar](500) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Dienthoai] [nvarchar](500) NULL,
	[Mobile] [nvarchar](500) NULL,
	[TieudeGioithieu] [nvarchar](500) NULL,
	[Gioithieu1] [ntext] NULL,
	[Gioithieu2] [ntext] NULL,
	[FK_LangID] [int] NULL,
	[C_Logo] [nvarchar](max) NULL,
	[C_Copyright] [nvarchar](max) NULL,
	[C_Title] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_slide]    Script Date: 29-Dec-18 8:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_slide](
	[PK_SlideID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[FK_CategoryID] [int] NULL,
	[C_Url] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 29-Dec-18 8:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[PK_UserID] [int] IDENTITY(1,1) NOT NULL,
	[C_UserName] [nvarchar](255) NULL,
	[C_UserPass] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_FullName] [nvarchar](2000) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Sex] [int] NULL,
	[C_Des] [ntext] NULL,
	[C_Birth] [nvarchar](50) NULL,
	[C_Add] [nvarchar](500) NULL,
	[C_Phone] [nvarchar](50) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Company] [nvarchar](500) NULL,
	[C_Image] [nvarchar](500) NULL,
	[C_Permission] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Change] [int] NULL,
	[C_ActiveCode] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_groupmember]    Script Date: 29-Dec-18 8:56:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_groupmember](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_UserID] [int] NULL,
	[FK_GroupMemberID] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (1, N'1', N'', N'data/images/adv/29_06_2011_14581_317.png', N'#', 1, 3, 1, 1, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (2, N'2', N'', N'data/images/adv/29_06_2011_145816_605.png', N'#', 1, 3, 1, 2, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (3, N'3', N'', N'data/images/adv/29_06_2011_145828_692.png', N'#', 1, 3, 1, 3, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (4, N'4', N'', N'data/images/adv/29_06_2011_145847_943.png', N'#', 1, 3, 1, 4, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (5, N'5', N'', N'data/images/adv/29_06_2011_14593_932.png', N'#', 1, 3, 1, 5, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (6, N'6', N'', N'data/images/adv/29_06_2011_145917_923.png', N'#', 1, 3, 1, 6, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (7, N'7', N'', N'data/images/adv/29_06_2011_145932_217.png', N'#', 1, 3, 1, 7, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (8, N'adv 1', N'', N'data/images/adv/30_06_2011_093845_132.png', N'#', 1, 1, 1, 8, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (9, N'adv 2', N'', N'data/images/adv/30_06_2011_093928_369.jpg', N'#', 1, 1, 1, 9, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (10, N'adv 3', N'', N'data/images/adv/30_06_2011_093941_739.jpg', N'#', 1, 1, 1, 10, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (11, N'adv 4', N'', N'data/images/adv/30_06_2011_094026_340.png', N'#', 1, 2, 1, 11, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (12, N'adv 6', N'', N'data/images/adv/30_06_2011_094040_937.png', N'#', 1, 2, 1, 12, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (13, N'1', N'', N'data/images/adv/30_06_2011_094345_254.GIF', N'#', 1, 2, 1, 13, 1, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (14, N'2', N'', N'data/images/adv/30_06_2011_094358_757.jpg', N'#', 1, 1, 1, 14, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (15, N'3', N'', N'data/images/adv/30_06_2011_094431_68.JPG', N'#', 1, 1, 1, 15, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (16, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, NULL, 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (17, N'Banner', N'', N'data/images/adv/15_07_2011_14385_297.swf', NULL, 1, 4, 0, 17, 1, 930, 122, NULL, 0, 1, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (18, N'Banner 1', N'', N'data/images/adv/15_07_2011_144140_11.jpg', N'#', 1, 4, 1, 18, 1, 0, 0, NULL, 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (19, N'Video', N'', NULL, NULL, 1, 2, 1, 19, 1, 0, 0, N'&lt;p&gt;&lt;iframe width=&#34;200&#34; height=&#34;250&#34; frameborder=&#34;0&#34; allowfullscreen=&#34;&#34; src=&#34;http://www.youtube.com/embed/kyYXDf4oQVE&#34;&gt;&lt;/iframe&gt;&lt;/p&gt;', 0, 0, 1, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (20, N'123', N'&lt;p&gt;2&lt;/p&gt;', NULL, NULL, 1, 1, 1, 20, 1, 0, 0, NULL, 0, 0, 0, N'&lt;p&gt;1&lt;/p&gt;', 1)
SET IDENTITY_INSERT [dbo].[tbl_banner] ON 

INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (1, N'Đồng hồ Rolex', N'&lt;p&gt;Đẳng cấp thương hiệu&lt;/p&gt;', N'data/images/banner/slideshow_1_08_07_2017_1087_60.jpg', 1, 1, 3, 3, N'detail-product/0/356/act/0/Đong-ho-Rolex.aspx')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (2, N'Đồng hồ Tissot', N'&lt;p&gt;Tinh tế sang trọng&lt;/p&gt;', N'data/images/banner/slideshow_2_08_07_2017_10833_456.jpg', 1, 1, 2, 3, N'detail-product/0/357/act/0/Dong-ho-Tissot.aspx')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (3, N'TIẾT KIỆM ĐẾN 50%', N'&lt;p&gt;M&oacute;n qu&agrave; hạnh ph&uacute;c&lt;/p&gt;', N'data/images/banner/slideshow_3_09_07_2017_1090_351.jpg', 1, 1, 1, 3, N'detail-product/0/358/act/0/Đong-ho-đoi.aspx')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (4, N'Miễn phí 2 ngày vận chuyển với đơn hàng trên 500k trừ trực tiếp khi thanh toán', N'&lt;p&gt;Miễn ph&iacute; vận chuyển&lt;strong&gt; &lt;span style=&#34;color:#ffffff&#34;&gt;Với tất cả đơn h&agrave;ng tr&ecirc;n 500k th&agrave;nh phố H&agrave; Nội&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', N'data/images/banner/banner-top_21_07_2017_091625_522.jpg', 1, 1, 4, 2, N'')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (5, N'Đồng hồ Nam', N'', N'data/images/banner/block_home_category1_21_07_2017_091737_145.jpg', 1, 1, 6, 1, N'product/13/13/danh-sach-san-pham.aspx')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (6, N'Đồng hồ Nữ', N'', N'data/images/banner/block_home_category2_21_07_2017_091832_126.jpg', 1, 1, 5, 1, N'product/12/12/danh-sach-san-pham.aspx')
INSERT [dbo].[tbl_banner] ([PK_BannerID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID], [C_Url]) VALUES (7, N'Banner quảng cáo', N'', N'data/images/banner/left_image_ad_21_07_2017_091915_526.jpg', 1, 1, 7, 4, N'')
SET IDENTITY_INSERT [dbo].[tbl_banner] OFF
SET IDENTITY_INSERT [dbo].[tbl_category_banner] ON 

INSERT [dbo].[tbl_category_banner] ([PK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Active], [C_Rank]) VALUES (1, 1, N'Banner footer', N'', NULL, 1, 1)
INSERT [dbo].[tbl_category_banner] ([PK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Active], [C_Rank]) VALUES (2, 1, N'Banner center', N'', NULL, 1, 2)
INSERT [dbo].[tbl_category_banner] ([PK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Active], [C_Rank]) VALUES (3, 1, N'Banner header', N'', NULL, 1, 3)
INSERT [dbo].[tbl_category_banner] ([PK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Active], [C_Rank]) VALUES (4, 1, N'Banner quảng cáo', N'', NULL, 1, 4)
SET IDENTITY_INSERT [dbo].[tbl_category_banner] OFF
SET IDENTITY_INSERT [dbo].[tbl_category_news] ON 

INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (9, 0, 1, N'GIỚI THIỆU', N'', N'detail-news/9/214/tin-tuc.aspx', 0, 1, 1, 11, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (10, 0, 1, N'DỊCH VỤ', N'', N'detail-news/10/212/tin-tuc.aspx', 0, 1, 1, 12, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (11, 0, 1, N'TRANG CHỦ', N'', N'', 0, 0, 1, 15, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (12, 0, 1, N'ĐỒNG HỒ NỮ', N'', N'product/12/12/danh-sach-san-pham.aspx', 1, 0, 1, 13, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (13, 0, 1, N'ĐỒNG HỒ NAM', N'', N'product/13/13/danh-sach-san-pham.aspx', 0, 1, 1, 14, 1, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (69, 0, 1, N'Menu product', N'', N'', 0, 0, 1, 69, 0, 0)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (15, 13, 1, N'Đồng hồ Longbo', N'', N'product/13/15/danh-sach-san-pham.aspx', 0, 0, 1, 17, 1, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (16, 13, 1, N'Đồng hồ Baishuns', N'', N'product/13/16/danh-sach-san-pham.aspx', 0, 1, 1, 15, 1, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (17, 13, 1, N'Đồng hồ Halei', N'&lt;p&gt;&nbsp;- Đá granite với nhi&ecirc;̀u chủng loại màu sắc phong phú, đ&ocirc;̣ cứng cao, chịu lực, chịu nhi&ecirc;̣t.&lt;/p&gt;

&lt;p&gt;- Sản ph&acirc;̉m được nh&acirc;̣p ngoại cũng như hàng trong nước r&acirc;́t đa dạng&lt;/p&gt;

&lt;p&gt;- Thường dùng làm c&acirc;̀u thang, bàn b&ecirc;́p, mặt ti&ecirc;̀n.&lt;/p&gt;

&lt;p&gt;&nbsp;&lt;/p&gt;

&lt;ul&gt;
&lt;/ul&gt;

&lt;p&gt;&nbsp;&lt;/p&gt;', N'product/13/17/danh-sach-san-pham.aspx', 0, 0, 1, 45, 1, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (70, 69, 1, N'Tất cả các sản phẩm', N'', N'product/0/0/danh-sach-san-pham.aspx?sort_by=title-ascending', 0, 0, 1, 70, 0, 0)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (71, 69, 1, N'Sản phẩm nổi bật', N'', N'product/0/0/danh-sach-san-pham.aspx?sort_by=manual&hot=1', 0, 0, 1, 71, 0, 0)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (72, 69, 1, N'Sản phẩm khuyến mại', N'', N'product/0/0/danh-sach-san-pham.aspx?sort_by=title-ascending', 0, 0, 1, 72, 0, 0)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (65, 13, 1, N'Đồng hồ Skmei', N'', N'product/13/65/danh-sach-san-pham.aspx', 0, 0, 1, 65, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (66, 13, 1, N'Đồng hồ Tevise', N'', N'product/13/66/danh-sach-san-pham.aspx', 0, 0, 1, 66, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (35, 0, 1, N'BLOG', N'', N'category/35/36/danh-sach-tin.aspx', 0, 1, 1, 10, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (36, 0, 1, N'Tin tức', N'', N'', 0, 0, 1, 36, 0, 0)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (44, 12, 1, N'Đồng hồ Beesister', N'&lt;p&gt;&nbsp;- Mang đến sự sang trọng kh&aacute;c biệt&lt;/p&gt;

&lt;p&gt;- Thanh nh&ocirc;m được sản xuất tinh xảo, sắc n&eacute;t&lt;/p&gt;

&lt;p&gt;- Mở ra một sự chắc chắn, vững chắc&nbsp;&lt;/p&gt;

&lt;p&gt;- Phụ kiện Kinlong nhập khẩu ch&iacute;nh h&atilde;ng&lt;/p&gt;

&lt;p&gt;- Thiết kế v&agrave; thi c&ocirc;ng theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch&nbsp;&lt;/p&gt;', N'product/12/44/danh-sach-san-pham.aspx', 0, 1, 1, 44, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (42, 12, 1, N'Đồng hồ Halei', N'', N'product/12/42/danh-sach-san-pham.aspx', 0, 0, 1, 42, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (43, 12, 1, N'Đồng hồ Skmei', N'', N'product/12/43/danh-sach-san-pham.aspx', 0, 0, 1, 43, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (45, 13, 1, N'Đồng hồ nam Curren', N'', N'product/13/45/danh-sach-san-pham.aspx', 0, 1, 1, 16, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (48, 20, 1, N'Desktop Stone', N'', N'product/48/48/danh-sach-san-pham.aspx', 0, 0, 1, 48, 0, 0)
SET IDENTITY_INSERT [dbo].[tbl_category_news] OFF
SET IDENTITY_INSERT [dbo].[tbl_category_nhaxuong] ON 

INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (1, N'Hoà Bình', NULL, 1, 1, 1)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (2, N'Sơn La', NULL, 1, 1, 2)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (3, N'Quảng Ninh', NULL, 1, 1, 3)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (4, N'Hải Phòng', NULL, 1, 1, 4)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (5, N'Hưng Yên', NULL, 1, 1, 5)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (6, N'Lai Châu', NULL, 1, 1, 6)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (7, N'Hải Dương', NULL, 1, 1, 7)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (8, N'Lạng Sơn', NULL, 1, 1, 8)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (9, N'Cao Bằng', NULL, 1, 1, 9)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (10, N'Nghệ An', NULL, 1, 1, 10)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (11, N'Lào cai', NULL, 1, 1, 11)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (12, N'Bắc Giang', NULL, 1, 1, 12)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (13, N'Hà Giang', NULL, 1, 1, 13)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (14, N'Tuyên Quang', NULL, 1, 1, 14)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (15, N'Thái Nguyên', NULL, 1, 1, 15)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (16, N'Thái Bình', NULL, 1, 1, 16)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (17, N'Hà Tây', NULL, 1, 1, 17)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (18, N'Hà Nam', NULL, 1, 1, 18)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (19, N'Bắc Kạn', NULL, 1, 1, 19)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (20, N'Hà Nội', NULL, 1, 1, 20)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (21, N'Phú Thọ', NULL, 1, 1, 21)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (22, N'Quảng Bình', NULL, 1, 1, 22)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (23, N'Bắc Ninh', NULL, 1, 1, 23)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (24, N'Hà Tĩnh', NULL, 1, 1, 24)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (25, N'Quảng Trị', NULL, 1, 1, 25)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (26, N'Thanh Hoá', NULL, 1, 1, 26)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (27, N'Yên Bái', NULL, 1, 1, 27)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (28, N'Điện Biên', NULL, 1, 1, 28)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (29, N'Bà Rịa - Vũng Tàu', NULL, 1, 1, 29)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (30, N'Bình Dương', NULL, 1, 1, 30)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (31, N'Bình Phước', NULL, 1, 1, 31)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (32, N'Bình Thuận', NULL, 1, 1, 32)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (33, N'Long An', NULL, 1, 1, 33)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (34, N'Ninh Thuận', NULL, 1, 1, 34)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (35, N'Đồng Nai', NULL, 1, 1, 35)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (36, N'Tiền Giang', NULL, 1, 1, 36)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (37, N'Thành phố. Hồ Chí Minh', NULL, 1, 1, 37)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (38, N'An Giang', NULL, 1, 1, 38)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (39, N'Bạc Liêu', NULL, 1, 1, 39)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (40, N'Bến Tre', NULL, 1, 1, 40)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (41, N'Cà Mau', NULL, 1, 1, 41)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (42, N'Cần Thơ', NULL, 1, 1, 42)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (43, N'Đồng Tháp', NULL, 1, 1, 43)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (44, N'Hậu Giang', NULL, 1, 1, 44)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (45, N'Kiên Giang', NULL, 1, 1, 45)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (46, N'Sóc Trăng', NULL, 1, 1, 46)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (47, N'Trà Vinh', NULL, 1, 1, 47)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (48, N'Vĩnh Long', NULL, 1, 1, 48)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (49, N'Thừa Thiên Huế', NULL, 1, 1, 49)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (50, N'Đà Nẵng', NULL, 1, 1, 50)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (51, N'Quảng Nam', NULL, 1, 1, 51)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (52, N'Quảng Ngãi', NULL, 1, 1, 52)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (53, N'Bình Định', NULL, 1, 1, 53)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (54, N'Phú Yên', NULL, 1, 1, 54)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (55, N'Khánh Hoà', NULL, 1, 1, 55)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (56, N'Hoa Binh', NULL, 2, 1, 56)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (57, N'Son La', NULL, 2, 1, 57)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (58, N'QuangNinh', NULL, 2, 1, 58)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (59, N'Hai Phong', NULL, 2, 1, 59)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (60, N'Hung Yen', NULL, 2, 1, 60)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (61, N'Lai Chau', NULL, 2, 1, 61)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (62, N'Hai Duong', NULL, 2, 1, 62)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (63, N'Lang Son', NULL, 2, 1, 63)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (64, N'Cao Bang', NULL, 2, 1, 64)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (65, N'Nghe An', NULL, 2, 1, 65)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (66, N'Lao Cai', NULL, 2, 1, 66)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (67, N'Bac Giang', NULL, 2, 1, 67)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (68, N'Ha Giang', NULL, 2, 1, 68)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (69, N'Tuyen Quang', NULL, 2, 1, 69)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (70, N'Thai Nguyen', NULL, 2, 1, 70)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (71, N'Thai Binh', NULL, 2, 1, 71)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (72, N'Ha Tay', NULL, 2, 1, 72)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (73, N'Ha Nam', NULL, 2, 1, 73)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (74, N'Bac Kan', NULL, 2, 1, 74)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (75, N'Hanoi', NULL, 2, 1, 75)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (76, N'Phu Tho', NULL, 2, 1, 76)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (77, N'Quang Binh', NULL, 2, 1, 77)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (78, N'Bac Ninh', NULL, 2, 1, 78)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (79, N'Ha Tinh', NULL, 2, 1, 79)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (80, N'Quang Tri', NULL, 2, 1, 80)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (81, N'Thanh Hoa', NULL, 2, 1, 81)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (82, N'Yen Bai', NULL, 2, 1, 82)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (83, N'Dien Bien', NULL, 2, 1, 83)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (84, N'Ba Ria - Vung Tau', NULL, 2, 1, 84)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (85, N'Binh Duong', NULL, 2, 1, 85)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (86, N'Binh Phuoc', NULL, 2, 1, 86)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (87, N'Binh Thuan', NULL, 2, 1, 87)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (88, N'Long An', NULL, 2, 1, 88)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (89, N'Ninh Thuan', NULL, 2, 1, 89)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (90, N'Dong Nai', NULL, 2, 1, 90)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (91, N'Tien Giang', NULL, 2, 1, 91)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (92, N'Ho Chi Minh City', NULL, 2, 1, 92)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (93, N'An Giang', NULL, 2, 1, 93)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (94, N'Bac Lieu', NULL, 2, 1, 94)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (95, N'Ben Tre', NULL, 2, 1, 95)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (96, N'Ca Mau', NULL, 2, 1, 96)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (97, N'Can Tho', NULL, 2, 1, 97)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (98, N'Dong Thap', NULL, 2, 1, 98)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (99, N'Hau Giang', NULL, 2, 1, 99)
GO
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (100, N'Kien Giang', NULL, 2, 1, 100)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (101, N'Sóc Trăng', NULL, 2, 1, 101)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (102, N'Tra Vinh', NULL, 2, 1, 102)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (103, N'Vinh Long', NULL, 2, 1, 103)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (104, N'Thua Thien - Hue', NULL, 2, 1, 104)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (105, N'Da Nang', NULL, 2, 1, 105)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (106, N'Quang Nam', NULL, 2, 1, 106)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (107, N'Quang Ngai', NULL, 2, 1, 107)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (108, N'Binh Dinh', NULL, 2, 1, 108)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (109, N'Phu Yen', NULL, 2, 1, 109)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (110, N'Khanh Hoa', NULL, 2, 1, 110)
SET IDENTITY_INSERT [dbo].[tbl_category_nhaxuong] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', 1, N'Administrator', N'abc@gmail.com', 1, N'', N'', N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 4, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (3, N'111111', N'c4ca4238a0b923820dcc509a6f75849b', 1, N'', N'nhuongnv@gmail.com', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 3, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (4, N'22222', N'c4ca4238a0b923820dcc509a6f75849b', 1, N'', N'abc@gmail.com222222222222', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 1, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (5, N'nhuongnv', N'202cb962ac59075b964b07152d234b70', 1, N'Nguyen Van Nhuong', N'nhuongnv@gmail.com', 1, N'', N'', N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 5, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (6, N'33333', N'202cb962ac59075b964b07152d234b70', 1, N'', N'abc@gmail.com3333', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 6, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (7, N'444444', N'202cb962ac59075b964b07152d234b70', 1, N'', N'abc@gmail.com3333', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 7, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (8, N'5555555', N'202cb962ac59075b964b07152d234b70', 1, N'', N'abc@gmail.com3333', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 8, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (9, N'6666', N'81dc9bdb52d04dc20036dbd8313ed055', 1, N'', N'abc@gmail.com66', 0, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 9, 0, NULL)
INSERT [dbo].[tbl_customer] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (10, N'test', N'c4ca4238a0b923820dcc509a6f75849b', 1, N'Nguyen Van Nhường', N'abc@gmail.com', 0, N'', N'', N'Hà Nội test', N'Điện thoại test', NULL, NULL, NULL, 0, 1, 10, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer_cart] ON 

INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (28, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 28, 0, NULL, N'20170726150856', 0, CAST(N'2017-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (29, N'NhuongNV', NULL, 1, N'', N'abc@gmail.com222222222222', NULL, N' sdfsf asdf asdf sdf sdf', NULL, N'Hà Nội 33333333333', N'09787686876', NULL, NULL, NULL, 0, 1, 29, 0, NULL, N'20170726151029', 0, CAST(N'2017-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (30, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 30, 0, NULL, N'20170726151903', 0, CAST(N'2017-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (31, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 31, 0, NULL, N'20170726152443', 0, CAST(N'2017-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (32, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 32, 0, NULL, N'20170727083338', 0, CAST(N'2017-07-27T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (33, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 33, 0, NULL, N'20170727083602', 0, CAST(N'2017-07-27T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (34, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 34, 0, NULL, N'20170727161424', 0, CAST(N'2017-07-27T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (35, N'Administrator', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'Hà Nội', N'01234567890', NULL, NULL, NULL, 0, 1, 35, 0, NULL, N'20170727162946', 0, CAST(N'2017-07-27T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (36, N'Nguyen Van A', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'asdf dsf', N'034234324', NULL, NULL, NULL, 0, 1, 36, 0, NULL, N'20170728130220', 0, CAST(N'2017-07-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_customer_cart] ([PK_CustomerID], [C_CustomerName], [C_CustomerPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Address], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode], [C_Code], [C_HinhThucThanhToan], [C_Create]) VALUES (37, N'Nguyen Van A', NULL, 1, N'', N'abc@gmail.com', NULL, N'', NULL, N'asdf dsf', N'034234324', NULL, NULL, NULL, 0, 1, 37, 0, NULL, N'20170728130338', 0, CAST(N'2017-07-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_customer_cart] OFF
SET IDENTITY_INSERT [dbo].[tbl_granit] ON 

INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (13, 17, N'GHL3', N'&lt;p&gt;&lt;img alt=&#34;&#34; src=&#34;file:///C:/Users/NAMSON/AppData/Local/Temp/moz-screenshot-4.png&#34; /&gt;Đá trắng&lt;/p&gt;', N'data/images/granit/19_10_2011_161428_262.jpg', 1, 1, 140)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (14, 17, N'GHL4', N'', N'data/images/granit/19_10_2011_161648_395.jpg', 1, 1, 12)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (3, 17, N'GHL2', N'&lt;p&gt;V&agrave;ng x&agrave; cừ&lt;/p&gt;
&lt;p&gt;M&atilde; s&ocirc;́: GHL2&lt;/p&gt;
&lt;p&gt;Gi&aacute; b&aacute;n&lt;/p&gt;
&lt;p&gt;(Gi&aacute; mang t&iacute;nh thời đi&ecirc;̉m. Gọi cho ch&uacute;ng t&ocirc;i đ&ecirc;̉ c&oacute; gi&aacute; ch&iacute;nh x&aacute;c nh&acirc;́t)&lt;/p&gt;', N'data/images/granit/08_10_2011_0880_590.jpg', 1, 1, 147)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (15, 17, N'GHL5', N'', N'data/images/granit/19_10_2011_161713_352.jpg', 1, 1, 13)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (5, 16, N'NTHL1', N'&lt;p&gt;Mã s&ocirc;́:&lt;/p&gt;
&lt;p&gt;Xu&acirc;́t xứ:&lt;/p&gt;
&lt;p&gt;Giá bán:&lt;/p&gt;
&lt;p&gt;(Giá mang tính thời đi&ecirc;̉m. Gọi cho chúng t&ocirc;i đ&ecirc;̉ có giá chính xác nh&acirc;́t)&lt;/p&gt;', N'data/images/granit/19_10_2011_132924_630.jpg', 1, 1, 3)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (22, 45, N'TTHL1', N'', N'data/images/granit/27_10_2011_164217_920.jpg', 1, 1, 19)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (23, 45, N'TTHL2', N'', N'data/images/granit/27_10_2011_164233_391.jpg', 1, 1, 20)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (24, 45, N'TTHL3', N'', N'data/images/granit/27_10_2011_16437_189.jpg', 1, 1, 22)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (25, 45, N'TTHL4', N'', N'data/images/granit/27_10_2011_164323_33.jpg', 1, 1, 23)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (10, 17, N'GHL10', N'', N'data/images/granit/08_10_2011_12813_895.jpg', 1, 1, 5)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (148, 47, N'DSHL1', N'', N'data/images/granit/14_11_2011_085751_926.jpg', 2, 1, 149)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (12, 17, N'GHL1', N'', N'data/images/granit/08_10_2011_12834_95.jpg', 1, 1, 10)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (16, 17, N'GHL6', N'', N'data/images/granit/19_10_2011_161736_99.jpg', 1, 1, 14)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (17, 17, N'GHL67', N'&lt;p&gt;Đỏ Hồng Ngọc&lt;/p&gt;', N'data/images/granit/19_10_2011_16188_120.jpg', 1, 1, 15)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (18, 17, N'GHL7', N'', N'data/images/granit/19_10_2011_161832_77.jpg', 1, 1, 16)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (19, 17, N'GHL8', N'', N'data/images/granit/19_10_2011_16192_499.jpg', 1, 1, 17)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (20, 17, N'GHL9', N'', N'data/images/granit/19_10_2011_161931_10.jpg', 1, 1, 18)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (26, 45, N'TTHL5', N'', N'data/images/granit/27_10_2011_164340_458.jpg', 1, 1, 24)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (27, 45, N'TTHL6', N'', N'data/images/granit/27_10_2011_164357_758.jpg', 1, 1, 25)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (28, 45, N'TTHL7', N'', N'data/images/granit/27_10_2011_164418_118.jpg', 1, 1, 26)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (29, 45, N'TTHL8', N'', N'data/images/granit/27_10_2011_164435_401.jpg', 1, 1, 27)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (30, 45, N'TTHL9', N'', N'data/images/granit/27_10_2011_164450_962.jpg', 1, 1, 28)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (31, 45, N'TTHL10', N'', N'data/images/granit/27_10_2011_16459_917.jpg', 1, 1, 29)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (32, 45, N'TTHL11', N'', N'data/images/granit/27_10_2011_164525_684.jpg', 1, 1, 30)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (33, 45, N'TTHL12', N'', N'data/images/granit/27_10_2011_16478_634.jpg', 1, 1, 31)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (34, 45, N'TTHL13', N'', N'data/images/granit/27_10_2011_16467_49.jpg', 1, 1, 32)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (35, 45, N'TTHL14', N'', N'data/images/granit/27_10_2011_164637_540.jpg', 1, 1, 33)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (36, 45, N'TTHL15', N'', N'data/images/granit/27_10_2011_164738_488.jpg', 1, 1, 34)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (37, 45, N'TTHL16', N'', N'data/images/granit/27_10_2011_164755_589.jpg', 1, 1, 35)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (38, 15, N'MHL2', N'&lt;p&gt;beige jura&lt;/p&gt;', N'data/images/granit/27_10_2011_16539_678.jpg', 1, 1, 36)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (39, 15, N'MHL3', N'', N'data/images/granit/27_10_2011_165330_909.jpg', 1, 1, 37)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (40, 15, N'MHL7', N'&lt;p&gt;cream imperial&lt;/p&gt;', N'data/images/granit/27_10_2011_191037_77.jpg', 1, 1, 38)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (41, 15, N'MHL4', N'&lt;p&gt;cream valencia&lt;/p&gt;', N'data/images/granit/27_10_2011_19112_121.jpg', 1, 1, 39)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (42, 15, N'MHL5', N'&lt;p&gt;cream mafil 2&lt;/p&gt;', N'data/images/granit/27_10_2011_191218_229.jpg', 1, 1, 40)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (43, 15, N'MHL6', N'&lt;p&gt;dark - emperado&lt;/p&gt;', N'data/images/granit/27_10_2011_191432_970.jpg', 1, 1, 41)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (44, 15, N'MHL8', N'&lt;p&gt;den chi xanh&lt;/p&gt;', N'data/images/granit/27_10_2011_191545_164.jpg', 1, 1, 42)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (45, 15, N'MHL9', N'&lt;p&gt;Đen tia chớp&lt;/p&gt;', N'data/images/granit/27_10_2011_191621_260.jpg', 1, 1, 43)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (46, 15, N'MHL10', N'&lt;p&gt;Den tia chop chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192016_69.jpg', 1, 1, 44)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (47, 15, N'MHL11', N'&lt;p&gt;Giallo-sunny&lt;/p&gt;', N'data/images/granit/27_10_2011_192053_248.jpg', 1, 1, 45)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (48, 15, N'MHL12', N'&lt;p&gt;Guan chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192117_421.jpg', 1, 1, 46)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (49, 15, N'MHL13', N'&lt;p&gt;Hong rio&lt;/p&gt;', N'data/images/granit/27_10_2011_192143_873.jpg', 1, 1, 47)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (50, 15, N'MHL14', N'&lt;p&gt;hong so&lt;/p&gt;', N'data/images/granit/27_10_2011_192212_350.jpg', 1, 1, 48)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (51, 15, N'MHL15', N'&lt;p&gt;Kem chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192252_21.jpg', 1, 1, 49)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (52, 15, N'MHL16', N'&lt;p&gt;Kem sua&lt;/p&gt;', N'data/images/granit/27_10_2011_192321_501.jpg', 1, 1, 50)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (53, 15, N'MHL17', N'&lt;p&gt;Kem van go&lt;/p&gt;', N'data/images/granit/27_10_2011_192511_481.jpg', 1, 1, 51)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (54, 15, N'MHL18', N'&lt;p&gt;Kem vo so&lt;/p&gt;', N'data/images/granit/27_10_2011_192649_500.jpg', 1, 1, 52)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (55, 15, N'MHL19', N'&lt;p&gt;Light emperado&lt;/p&gt;', N'data/images/granit/27_10_2011_192750_535.jpg', 1, 1, 53)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (56, 15, N'MHL20', N'&lt;p&gt;Maron emperado&lt;/p&gt;', N'data/images/granit/13_02_2012_174956_14.png', 1, 1, 54)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (57, 15, N'MHL21', N'&lt;p&gt;Nau multicolour&lt;/p&gt;', N'data/images/granit/27_10_2011_192910_490.jpg', 1, 1, 55)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (58, 15, N'MHL22', N'&lt;p&gt;Rainforest&lt;/p&gt;', N'data/images/granit/27_10_2011_192957_996.jpg', 1, 1, 56)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (59, 15, N'MHL23', N'&lt;p&gt;Snow&nbsp; white&lt;/p&gt;', N'data/images/granit/27_10_2011_193039_859.jpg', 1, 1, 57)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (60, 15, N'MHL24', N'&lt;p&gt;Snow white 2&lt;/p&gt;', N'data/images/granit/27_10_2011_193114_278.jpg', 1, 1, 58)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (61, 15, N'MHL25', N'&lt;p&gt;Trang hat gao&lt;/p&gt;', N'data/images/granit/27_10_2011_193149_812.jpg', 1, 1, 59)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (62, 15, N'MHL26', N'&lt;p&gt;Trang hilap&lt;/p&gt;', N'data/images/granit/27_10_2011_193236_547.jpg', 1, 1, 60)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (63, 15, N'MHL27', N'&lt;p&gt;Trắng Volocat&lt;/p&gt;', N'data/images/granit/27_10_2011_193314_800.jpg', 1, 1, 61)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (64, 15, N'MHL28', N'&lt;p&gt;Trang kem&lt;/p&gt;', N'data/images/granit/27_10_2011_19347_251.jpg', 1, 1, 62)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (65, 15, N'MHL29', N'&lt;p&gt;Trang van nui&lt;/p&gt;', N'data/images/granit/27_10_2011_193617_755.jpg', 1, 1, 63)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (66, 15, N'MHL30', N'&lt;p&gt;Vang A Chau&lt;/p&gt;', N'data/images/granit/27_10_2011_193734_347.jpg', 1, 1, 64)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (67, 15, N'MHL31', N'&lt;p&gt;Vang Ai Cap&lt;/p&gt;', N'data/images/granit/27_10_2011_193820_16.jpg', 1, 1, 65)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (68, 15, N'MHL32', N'&lt;p&gt;Vang Grojo&lt;/p&gt;', N'data/images/granit/27_10_2011_193927_655.jpg', 1, 1, 66)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (69, 15, N'MHL33', N'&lt;p&gt;Vang nero&lt;/p&gt;', N'data/images/granit/27_10_2011_194025_274.jpg', 1, 1, 67)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (70, 15, N'MHL34', N'&lt;p&gt;Vang thach anh&lt;/p&gt;', N'data/images/granit/27_10_2011_194147_826.jpg', 1, 1, 68)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (71, 15, N'MHL35', N'&lt;p&gt;Vang van go&lt;/p&gt;', N'data/images/granit/27_10_2011_194245_100.jpg', 1, 1, 69)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (72, 15, N'MHL36', N'&lt;p&gt;White botico&lt;/p&gt;', N'data/images/granit/27_10_2011_194359_500.jpg', 1, 1, 70)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (73, 15, N'MHL37', N'&lt;p&gt;White cacara&lt;/p&gt;', N'data/images/granit/27_10_2011_194510_771.jpg', 1, 1, 71)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (74, 15, N'MHL38', N'&lt;p&gt;White volocat&lt;/p&gt;', N'data/images/granit/27_10_2011_195954_874.jpg', 1, 1, 72)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (75, 15, N'MHL39', N'&lt;p&gt;Xam duc y&lt;/p&gt;', N'data/images/granit/00_10_2011_20028_746.jpg', 1, 1, 73)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (76, 15, N'MHL40', N'&lt;p&gt;Xanh com&lt;/p&gt;', N'data/images/granit/00_10_2011_20056_153.jpg', 1, 1, 74)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (77, 15, N'MHL41', N'&lt;p&gt;Xanh Italia&lt;/p&gt;', N'data/images/granit/01_10_2011_20129_369.jpg', 1, 1, 75)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (78, 15, N'MHL42', N'&lt;p&gt;Xanh ngoc&lt;/p&gt;', N'data/images/granit/03_10_2011_2035_911.jpg', 1, 1, 76)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (79, 15, N'MHL43', N'&lt;p&gt;Xanh van ngoc Y&lt;/p&gt;', N'data/images/granit/03_10_2011_20335_206.jpg', 1, 1, 77)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (80, 17, N'GHL11', N'&lt;p&gt;&nbsp;Đen b&ocirc;ng tuy&ecirc;́t&lt;/p&gt;', N'data/images/granit/06_11_2011_202846_851.jpg', 1, 1, 78)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (81, 17, N'GHL12', N'&lt;p&gt;&nbsp;Đen ch&acirc;́m h&ocirc;̀ng&lt;/p&gt;', N'data/images/granit/06_11_2011_202911_696.jpg', 1, 1, 79)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (82, 17, N'GHL13', N'&lt;p&gt;&nbsp;Đen Hu&ecirc;́ b&ocirc;ng chìm&lt;/p&gt;', N'data/images/granit/06_11_2011_202938_288.jpg', 1, 1, 80)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (83, 17, N'GHL14', N'&lt;p&gt;&nbsp;Đen Hu&ecirc;́ b&ocirc;ng n&ocirc;̉i&lt;/p&gt;', N'data/images/granit/06_11_2011_20302_976.jpg', 1, 1, 81)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (84, 17, N'GHL15', N'&lt;p&gt;&nbsp;Đen Indo b&ocirc;ng nhỏ&lt;/p&gt;', N'data/images/granit/06_11_2011_203026_187.jpg', 1, 1, 82)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (85, 17, N'GHL16', N'&lt;p&gt;&nbsp;Đen Indo b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_20313_585.jpg', 1, 1, 83)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (86, 17, N'GHL17', N'&lt;p&gt;&nbsp;Đen Campuchia b&ocirc;ng b&eacute;&lt;/p&gt;', N'data/images/granit/06_11_2011_203142_27.jpg', 1, 1, 84)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (87, 17, N'GHL18', N'&lt;p&gt;&nbsp;Đen Phú Y&ecirc;n&lt;/p&gt;', N'data/images/granit/06_11_2011_203213_696.jpg', 1, 1, 85)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (88, 17, N'GHL19', N'&lt;p&gt;&nbsp;Đen Rubi&lt;/p&gt;', N'data/images/granit/06_11_2011_203242_939.jpg', 1, 1, 86)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (89, 17, N'GHL20', N'&lt;p&gt;&nbsp;Đen Rubi &Acirc;́n Đ&ocirc;̣&lt;/p&gt;', N'data/images/granit/06_11_2011_20338_548.jpg', 1, 1, 87)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (90, 17, N'GHL21', N'&lt;p&gt;&nbsp;Đen sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_203342_12.jpg', 1, 1, 88)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (91, 17, N'GHL22', N'&lt;p&gt;&nbsp;Đen xà cừ b&ocirc;ng tím&lt;/p&gt;', N'data/images/granit/06_11_2011_203412_629.jpg', 1, 1, 89)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (92, 17, N'GHL23', N'&lt;p&gt;&nbsp;Đỏ ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_203443_650.jpg', 1, 1, 90)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (93, 17, N'GHL24', N'&lt;p&gt;&nbsp;Đỏ b&ocirc;ng xanh Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_203516_472.jpg', 1, 1, 91)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (94, 17, N'GHL25', N'&lt;p&gt;&nbsp;Đỏ Karena&lt;/p&gt;', N'data/images/granit/06_11_2011_203543_565.jpg', 1, 1, 92)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (95, 17, N'GHL26', N'&lt;p&gt;&nbsp;Đỏ rubi&lt;/p&gt;', N'data/images/granit/06_11_2011_203614_88.jpg', 1, 1, 93)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (96, 17, N'GHL27', N'&lt;p&gt;&nbsp;Đỏ Rubi Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_203643_921.jpg', 1, 1, 94)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (97, 17, N'GHL28', N'&lt;p&gt;&nbsp;Đỏ Rubi B&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_203714_517.jpg', 1, 1, 95)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (98, 17, N'GHL29', N'&lt;p&gt;&nbsp;Đỏ Rubi Brazin&lt;/p&gt;', N'data/images/granit/06_11_2011_20386_187.jpg', 1, 1, 96)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (99, 17, N'GHL30', N'&lt;p&gt;&nbsp;Đỏ sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_203840_595.jpg', 1, 1, 97)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (100, 17, N'GHL31', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_203917_186.jpg', 1, 1, 98)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (101, 17, N'GHL32', N'&lt;p&gt;&nbsp;H&ocirc;̀ng ban đ&ecirc;m&lt;/p&gt;', N'data/images/granit/06_11_2011_203949_405.jpg', 1, 1, 99)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (102, 17, N'GHL33', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Bantic&lt;/p&gt;', N'data/images/granit/06_11_2011_204017_816.jpg', 1, 1, 100)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (103, 17, N'GHL34', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Gia Lai&lt;/p&gt;', N'data/images/granit/06_11_2011_204056_581.jpg', 1, 1, 101)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (104, 17, N'GHL35', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Hiudong&lt;/p&gt;', N'data/images/granit/06_11_2011_204124_204.jpg', 1, 1, 102)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (105, 17, N'GHL36', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Hoa Kỳ&lt;/p&gt;', N'data/images/granit/06_11_2011_204156_420.jpg', 1, 1, 103)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (106, 17, N'GHL37', N'&lt;p&gt;&nbsp;H&ocirc;̀ng H&ograve;a T&acirc;m&lt;/p&gt;', N'data/images/granit/06_11_2011_204229_135.jpg', 1, 1, 104)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (107, 17, N'GHL38', N'&lt;p&gt;&nbsp;H&ocirc;̀ng nhạt&lt;/p&gt;', N'data/images/granit/06_11_2011_20433_42.jpg', 1, 1, 105)
GO
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (108, 17, N'GHL39', N'&lt;p&gt;&nbsp;H&ocirc;̀ng nhạt Phú Y&ecirc;n&lt;/p&gt;', N'data/images/granit/06_11_2011_204343_553.jpg', 1, 1, 106)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (109, 17, N'GHL40', N'&lt;p&gt;&nbsp;H&ocirc;̀ng ph&acirc;́n&lt;/p&gt;', N'data/images/granit/06_11_2011_204416_393.jpg', 1, 1, 107)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (110, 17, N'GHL41', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Phước H&ograve;a&lt;/p&gt;', N'data/images/granit/06_11_2011_204448_770.jpg', 1, 1, 108)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (111, 17, N'GHL42', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Rosso Multicolor&lt;/p&gt;', N'data/images/granit/03_11_2011_21330_867.jpg', 1, 1, 109)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (112, 17, N'GHL43', N'&lt;p&gt;H&ocirc;̀ng b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/04_11_2011_21428_640.jpg', 1, 1, 110)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (113, 17, N'GHL44', N'&lt;p&gt;&nbsp;H&ocirc;̀ng xu&acirc;n dung&lt;/p&gt;', N'data/images/granit/05_11_2011_21535_384.jpg', 1, 1, 111)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (114, 17, N'GHL45', N'&lt;p&gt;&nbsp;Kim sa cám&lt;/p&gt;', N'data/images/granit/06_11_2011_21610_311.jpg', 1, 1, 138)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (115, 17, N'GHL46', N'&lt;p&gt;&nbsp;Kim sa bap&lt;/p&gt;', N'data/images/granit/06_11_2011_21641_566.jpg', 1, 1, 112)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (116, 17, N'GHL47', N'&lt;p&gt;&nbsp;Kim sa trung&lt;/p&gt;', N'data/images/granit/07_11_2011_2179_670.jpg', 1, 1, 122)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (117, 17, N'GHL48', N'&lt;p&gt;&nbsp;N&acirc;u Bantich&lt;/p&gt;', N'data/images/granit/07_11_2011_21738_558.jpg', 1, 1, 113)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (118, 17, N'GHL49', N'&lt;p&gt;&nbsp;Tím đỏ Khánh Hòa&lt;/p&gt;', N'data/images/granit/08_11_2011_21813_479.jpg', 1, 1, 114)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (119, 17, N'GHL50', N'&lt;p&gt;&nbsp;Tím hoa cà&lt;/p&gt;', N'data/images/granit/09_11_2011_2197_198.jpg', 1, 1, 115)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (120, 17, N'GHL51', N'&lt;p&gt;&nbsp;Tím Khánh Hòa&lt;/p&gt;', N'data/images/granit/09_11_2011_21940_875.jpg', 1, 1, 116)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (121, 17, N'GHL52', N'&lt;p&gt;&nbsp;Tím m&ocirc;ng c&ocirc;̉&lt;/p&gt;', N'data/images/granit/06_11_2011_21106_543.jpg', 1, 1, 117)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (122, 17, N'GHL53', N'&lt;p&gt;&nbsp;Trắng &Acirc;́n Đ&ocirc;̣&lt;/p&gt;', N'data/images/granit/06_11_2011_211040_233.jpg', 1, 1, 118)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (123, 17, N'GHL54', N'&lt;p&gt;&nbsp;Trắng ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_211116_315.jpg', 1, 1, 119)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (124, 17, N'GHL55', N'&lt;p&gt;&nbsp;Trắng Belhel&lt;/p&gt;', N'data/images/granit/06_11_2011_211149_936.jpg', 1, 1, 120)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (125, 17, N'GHL56', N'&lt;p&gt;&nbsp;Trắng Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_211225_17.jpg', 1, 1, 121)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (126, 17, N'GHL57', N'&lt;p&gt;&nbsp;Trắng Kasmir&lt;/p&gt;', N'data/images/granit/06_11_2011_211311_132.jpg', 1, 1, 123)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (127, 17, N'GHL58', N'&lt;p&gt;&nbsp;Trắng mắt r&ocirc;̀ng&lt;/p&gt;', N'data/images/granit/06_11_2011_211349_85.jpg', 1, 1, 124)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (128, 17, N'GHL59', N'&lt;p&gt;&nbsp;Trắng mu&ocirc;́i Ngh&ecirc;̣ An&lt;/p&gt;', N'data/images/granit/06_11_2011_21156_722.jpg', 1, 1, 125)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (129, 17, N'GHL60', N'&lt;p&gt;&nbsp;Trắng mu&ocirc;́i ti&ecirc;u&lt;/p&gt;', N'data/images/granit/06_11_2011_211546_129.jpg', 1, 1, 126)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (130, 17, N'GHL61', N'&lt;p&gt;Trắng Nepal&lt;/p&gt;', N'data/images/granit/06_11_2011_211623_437.jpg', 1, 1, 127)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (131, 17, N'GHL62', N'&lt;p&gt;&nbsp;Trắng sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_211749_801.jpg', 1, 1, 128)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (132, 17, N'GHL63', N'&lt;p&gt;&nbsp;Trắng T&acirc;y Ban Nha&lt;/p&gt;', N'data/images/granit/06_11_2011_211824_147.jpg', 1, 1, 129)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (133, 17, N'GHL64', N'&lt;p&gt;&nbsp;Trắng su&ocirc;́i l&acirc;u&lt;/p&gt;', N'data/images/granit/06_11_2011_211916_518.jpg', 1, 1, 130)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (134, 17, N'GHL65', N'&lt;p&gt;&nbsp;Trắng su&ocirc;́i l&acirc;u 2&lt;/p&gt;', N'data/images/granit/06_11_2011_211953_164.jpg', 1, 1, 131)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (135, 17, N'GHL66', N'&lt;p&gt;&nbsp;Trắng Trung &Acirc;́n&lt;/p&gt;', N'data/images/granit/06_11_2011_212032_588.jpg', 1, 1, 132)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (136, 17, N'GHL67', N'&lt;p&gt;&nbsp;Trắng váng mỡ&lt;/p&gt;', N'data/images/granit/06_11_2011_212116_503.jpg', 1, 1, 133)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (137, 17, N'GHL68', N'&lt;p&gt;&nbsp;Vàng Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_21374_806.jpg', 1, 1, 134)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (138, 17, N'GHL69', N'&lt;p&gt;&nbsp;Vàng b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_213738_604.jpg', 1, 1, 135)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (139, 17, N'GHL70', N'&lt;p&gt;&nbsp;Vàng Multicolor&lt;/p&gt;', N'data/images/granit/06_11_2011_214016_466.jpg', 1, 1, 136)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (140, 17, N'GHL71', N'&lt;p&gt;&nbsp;Vàng nhạt&lt;/p&gt;', N'data/images/granit/06_11_2011_214045_190.jpg', 1, 1, 137)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (141, 17, N'GHL72', N'&lt;p&gt;&nbsp;Vàng TQ&lt;/p&gt;', N'data/images/granit/06_11_2011_214114_991.jpg', 1, 1, 139)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (142, 17, N'GHL73', N'&lt;p&gt;&nbsp;Xà cừ xanh&lt;/p&gt;', N'data/images/granit/06_11_2011_214144_587.jpg', 1, 1, 141)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (143, 17, N'GHL74', N'&lt;p&gt;&nbsp;Xám Quảng Ngãi&lt;/p&gt;', N'data/images/granit/06_11_2011_214254_56.jpg', 1, 1, 142)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (144, 17, N'GHL75', N'&lt;p&gt;&nbsp;Xanh C&ocirc;n Đảo&lt;/p&gt;', N'data/images/granit/06_11_2011_214345_607.jpg', 1, 1, 143)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (145, 17, N'GHL76', N'&lt;p&gt;&nbsp;Xanh đen&lt;/p&gt;', N'data/images/granit/06_11_2011_214413_499.jpg', 1, 1, 144)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (146, 17, N'GHL77', N'&lt;p&gt;&nbsp;Xanh Nam Mỹ&lt;/p&gt;', N'data/images/granit/06_11_2011_214439_735.jpg', 1, 1, 145)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (147, 17, N'GHL78', N'&lt;p&gt;&nbsp;Xanh TQ&lt;/p&gt;', N'data/images/granit/06_11_2011_21455_183.jpg', 1, 1, 146)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (149, 47, N'DSHL2', N'', N'data/images/granit/14_11_2011_08588_926.jpg', 2, 1, 150)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (150, 47, N'DSHL3', N'', N'data/images/granit/14_11_2011_085826_188.jpg', 2, 1, 151)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (151, 47, N'DSHL4', N'', N'data/images/granit/14_11_2011_085846_245.jpg', 2, 1, 152)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (152, 47, N'DSHL5', N'', N'data/images/granit/14_11_2011_08596_752.jpg', 2, 1, 153)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (153, 47, N'DSHL6', N'', N'data/images/granit/14_11_2011_085925_582.jpg', 2, 1, 154)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (154, 47, N'DSHL7', N'', N'data/images/granit/14_11_2011_085947_566.jpg', 2, 1, 155)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (155, 47, N'DSHL8', N'', N'data/images/granit/00_11_2011_0904_618.jpg', 2, 1, 156)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (156, 47, N'DSHL9', N'', N'data/images/granit/00_11_2011_09021_330.jpg', 2, 1, 157)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (157, 47, N'DSHL10', N'', N'data/images/granit/00_11_2011_09038_811.jpg', 2, 1, 159)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (158, 47, N'DSHL11', N'', N'data/images/granit/00_11_2011_09054_867.jpg', 2, 1, 160)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (159, 47, N'DSHL12', N'', N'data/images/granit/01_11_2011_09110_135.jpg', 2, 1, 158)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (160, 47, N'DSHL13', N'', N'data/images/granit/01_11_2011_09126_170.jpg', 2, 1, 148)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (161, 47, N'DHL14', N'', N'data/images/granit/01_11_2011_09152_89.jpg', 2, 1, 161)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (162, 47, N'DSHL15', N'', N'data/images/granit/02_11_2011_09257_985.jpg', 2, 1, 162)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (163, 47, N'DSHL16', N'', N'data/images/granit/03_11_2011_09324_664.jpg', 2, 1, 163)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (164, 24, N'MHL1', N'&lt;p&gt;&nbsp;Beige Jura&lt;/p&gt;', N'data/images/granit/04_11_2011_09452_858.jpg', 2, 1, 164)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (165, 24, N'MHL2', N'&lt;p&gt;&nbsp;Cream Imperial&lt;/p&gt;', N'data/images/granit/05_11_2011_09536_910.jpg', 2, 1, 165)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (166, 24, N'MHL3', N'&lt;p&gt;&nbsp;Crema mafil&lt;/p&gt;', N'data/images/granit/14_11_2011_091017_336.jpg', 2, 1, 166)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (167, 24, N'MHL4', N'&lt;p&gt;&nbsp;Crema mafil 2&lt;/p&gt;', N'data/images/granit/09_11_2011_09954_749.jpg', 2, 1, 167)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (168, 24, N'MHL5', N'&lt;p&gt;&nbsp;Cream Valencia&lt;/p&gt;', N'data/images/granit/03_11_2011_10342_914.jpg', 2, 1, 168)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (169, 24, N'MHL6', N'&lt;p&gt;&nbsp;Dack Emperado&lt;/p&gt;', N'data/images/granit/06_11_2011_10650_479.jpg', 2, 1, 169)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (170, 24, N'MHL7', N'&lt;p&gt;&nbsp;Black &amp; green&lt;/p&gt;', N'data/images/granit/09_11_2011_1099_96.jpg', 2, 1, 170)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (171, 24, N'MHL8', N'&lt;p&gt;&nbsp;Black &amp; Lightning&lt;/p&gt;', N'data/images/granit/14_11_2011_101018_572.jpg', 2, 1, 171)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (172, 24, N'MHL9', N'&lt;p&gt;&nbsp;Black &amp; lightning &amp; Red&lt;/p&gt;', N'data/images/granit/14_11_2011_101056_396.jpg', 2, 1, 172)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (173, 24, N'MHL10', N'&lt;p&gt;&nbsp;Giallo sunny&lt;/p&gt;', N'data/images/granit/14_11_2011_101126_399.jpg', 2, 1, 173)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (174, 24, N'MHL11', N'&lt;p&gt;&nbsp;Guan Red&lt;/p&gt;', N'data/images/granit/14_11_2011_101154_168.jpg', 2, 1, 174)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (175, 24, N'MHL12', N'&lt;p&gt;&nbsp;Rose rio&lt;/p&gt;', N'data/images/granit/14_11_2011_101225_531.jpg', 2, 1, 175)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (176, 24, N'MHL13', N'&lt;p&gt;&nbsp;Cream&amp;red&lt;/p&gt;', N'data/images/granit/16_11_2011_152528_785.jpg', 2, 1, 176)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (177, 24, N'MHL14', N'&lt;p&gt;&nbsp;Cream&amp;milk&lt;/p&gt;', N'data/images/granit/16_11_2011_152558_81.jpg', 2, 1, 177)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (178, 24, N'MHL15', N'', N'data/images/granit/16_11_2011_152622_449.jpg', 2, 1, 178)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (179, 24, N'MHL16', N'', N'data/images/granit/16_11_2011_152643_272.jpg', 2, 1, 179)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (180, 24, N'MHL17', N'&lt;p&gt;&nbsp;Light Emperado&lt;/p&gt;', N'data/images/granit/16_11_2011_152710_812.jpg', 2, 1, 180)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (181, 24, N'MHL18', N'&lt;p&gt;Brown Multicolor&lt;/p&gt;', N'data/images/granit/16_11_2011_152827_146.jpg', 2, 1, 181)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (182, 24, N'MHL19', N'&lt;p&gt;&nbsp;Rain forest&lt;/p&gt;', N'data/images/granit/16_11_2011_15297_448.jpg', 2, 1, 182)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (183, 24, N'MHL20', N'&lt;p&gt;&nbsp;Snow white&lt;/p&gt;', N'data/images/granit/16_11_2011_152933_862.jpg', 2, 1, 183)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (184, 24, N'MHL21', N'&lt;p&gt;&nbsp;Snow white 2&lt;/p&gt;', N'data/images/granit/16_11_2011_152959_418.jpg', 2, 1, 184)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (185, 24, N'MHL22', N'&lt;p&gt;&nbsp;White rice&lt;/p&gt;', N'data/images/granit/16_11_2011_153035_750.jpg', 2, 1, 185)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (186, 24, N'MHL23', N'&lt;p&gt;&nbsp;white greek&lt;/p&gt;', N'data/images/granit/16_11_2011_153225_674.jpg', 2, 1, 186)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (187, 24, N'MHL24', N'&lt;p&gt;&nbsp;White &amp; cream&lt;/p&gt;', N'data/images/granit/16_11_2011_153256_845.jpg', 2, 1, 187)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (188, 24, N'MHL25', N'&lt;p&gt;&nbsp;White &amp; river cloud&lt;/p&gt;', N'data/images/granit/16_11_2011_153434_843.jpg', 2, 1, 188)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (189, 24, N'MHL26', N'', N'data/images/granit/16_11_2011_15353_483.jpg', 2, 1, 189)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (190, 24, N'MHL27', N'', N'data/images/granit/16_11_2011_153553_303.jpg', 2, 1, 190)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (191, 24, N'MHL29', N'&lt;p&gt;&nbsp;Gold Egypt&lt;/p&gt;', N'data/images/granit/16_11_2011_153616_266.jpg', 2, 1, 191)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (192, 24, N'MHL28', N'&lt;p&gt;&nbsp;Gold Grojo&lt;/p&gt;', N'data/images/granit/16_11_2011_153647_465.jpg', 2, 1, 192)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (193, 24, N'MHL30', N'&lt;p&gt;&nbsp;Gold nero&lt;/p&gt;', N'data/images/granit/16_11_2011_153725_969.jpg', 2, 1, 193)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (194, 24, N'MHL31', N'', N'data/images/granit/16_11_2011_153941_860.jpg', 2, 1, 194)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (195, 24, N'MHL32', N'', N'data/images/granit/16_11_2011_15404_932.jpg', 2, 1, 195)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (196, 24, N'MHL33', N'&lt;p&gt;&nbsp;White botico&lt;/p&gt;', N'data/images/granit/16_11_2011_154040_995.jpg', 2, 1, 196)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (197, 24, N'MHL34', N'&lt;p&gt;White cacara&lt;/p&gt;', N'data/images/granit/16_11_2011_154116_377.jpg', 2, 1, 197)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (198, 24, N'MHL35', N'&lt;p&gt;&nbsp;white volacat&lt;/p&gt;', N'data/images/granit/16_11_2011_154157_97.jpg', 2, 1, 198)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (199, 24, N'MHL36', N'', N'data/images/granit/16_11_2011_154224_869.jpg', 2, 1, 199)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (200, 24, N'MHL37', N'', N'data/images/granit/16_11_2011_15430_93.jpg', 2, 1, 200)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (201, 24, N'MHL38', N'&lt;p&gt;&nbsp;Green Italia&lt;/p&gt;', N'data/images/granit/16_11_2011_154326_971.jpg', 2, 1, 201)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (202, 24, N'MHL39', N'&lt;p&gt;&nbsp;Green Gem&lt;/p&gt;', N'data/images/granit/16_11_2011_154439_1.jpg', 2, 1, 202)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (203, 24, N'MHL40', N'&lt;p&gt;&nbsp;Green Gem Italia&lt;/p&gt;', N'data/images/granit/16_11_2011_154512_893.jpg', 2, 1, 203)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (204, 26, N'GHL1', N'&lt;p&gt;&nbsp;Black &amp; snow&lt;/p&gt;', N'data/images/granit/16_11_2011_154617_734.jpg', 2, 1, 204)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (205, 26, N'GHL2', N'&lt;p&gt;&nbsp;Back &amp; pink&lt;/p&gt;', N'data/images/granit/16_11_2011_154654_777.jpg', 2, 1, 205)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (206, 26, N'GHL3', N'', N'data/images/granit/16_11_2011_154713_196.jpg', 2, 1, 206)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (207, 26, N'GHL4', N'', N'data/images/granit/16_11_2011_154727_398.jpg', 2, 1, 207)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (208, 26, N'GHL5', N'', N'data/images/granit/16_11_2011_154741_49.jpg', 2, 1, 208)
GO
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (209, 26, N'GHL6', N'', N'data/images/granit/16_11_2011_154759_545.jpg', 2, 1, 209)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (210, 26, N'GHL7', N'', N'data/images/granit/16_11_2011_155954_111.jpg', 2, 1, 210)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (211, 26, N'GHL8', N'', N'data/images/granit/00_11_2011_16010_575.jpg', 2, 1, 211)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (212, 26, N'GHL9', N'&lt;p&gt;&nbsp;Black rubi&lt;/p&gt;', N'data/images/granit/00_11_2011_16056_927.jpg', 2, 1, 212)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (213, 26, N'GHL10', N'&lt;p&gt;&nbsp;Black rubi Egypt&lt;/p&gt;', N'data/images/granit/01_11_2011_16130_959.jpg', 2, 1, 213)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (214, 26, N'GHL11', N'', N'data/images/granit/01_11_2011_16148_792.jpg', 2, 1, 214)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (215, 26, N'GHL12', N'', N'data/images/granit/02_11_2011_1626_253.jpg', 2, 1, 215)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (216, 26, N'GHL13', N'', N'data/images/granit/02_11_2011_16222_110.jpg', 2, 1, 216)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (217, 26, N'GHL14', N'', N'data/images/granit/16_11_2011_161327_892.jpg', 2, 1, 217)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (218, 26, N'GHL15', N'&lt;p&gt;&nbsp;Red Karena&lt;/p&gt;', N'data/images/granit/16_11_2011_161742_970.jpg', 2, 1, 218)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (219, 26, N'GHL16', N'&lt;p&gt;&nbsp;red rubi&lt;/p&gt;', N'data/images/granit/16_11_2011_161817_393.jpg', 2, 1, 219)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (220, 26, N'GHL17', N'&lt;p&gt;&nbsp;Red Rubi Binh Dinh&lt;/p&gt;', N'data/images/granit/16_11_2011_16197_819.jpg', 2, 1, 220)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (221, 26, N'GHL18', N'', N'data/images/granit/16_11_2011_161957_370.jpg', 2, 1, 221)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (222, 26, N'GHL19', N'&lt;p&gt;&nbsp;Red rubi brazin&lt;/p&gt;', N'data/images/granit/16_11_2011_164013_159.jpg', 2, 1, 222)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (223, 26, N'GHL20', N'', N'data/images/granit/16_11_2011_164036_885.jpg', 2, 1, 223)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (224, 26, N'GHL21', N'', N'data/images/granit/16_11_2011_16415_505.jpg', 2, 1, 224)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (225, 26, N'GHL22', N'', N'data/images/granit/16_11_2011_164153_384.jpg', 2, 1, 225)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (226, 26, N'GHL23', N'&lt;p&gt;&nbsp;Pink bantic&lt;/p&gt;', N'data/images/granit/16_11_2011_164239_150.jpg', 2, 1, 226)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (227, 26, N'GHL24', N'&lt;p&gt;&nbsp;Pink Gialai&lt;/p&gt;', N'data/images/granit/16_11_2011_16434_783.jpg', 2, 1, 227)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (228, 26, N'GHL25', N'&lt;p&gt;&nbsp;Pink hiudong&lt;/p&gt;', N'data/images/granit/16_11_2011_164337_264.jpg', 2, 1, 228)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (229, 26, N'GHL26', N'&lt;p&gt;&nbsp;Pink Unite State of American&lt;/p&gt;', N'data/images/granit/16_11_2011_164423_721.jpg', 2, 1, 229)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (230, 26, N'GHL27', N'', N'data/images/granit/16_11_2011_164457_589.jpg', 2, 1, 230)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (231, 26, N'GHL28', N'&lt;p&gt;&nbsp;Pink&lt;/p&gt;', N'data/images/granit/16_11_2011_164519_946.jpg', 2, 1, 231)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (232, 26, N'GHL29', N'&lt;p&gt;&nbsp;Pink Phu Yen&lt;/p&gt;', N'data/images/granit/16_11_2011_164547_893.jpg', 2, 1, 232)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (233, 26, N'GHL30', N'&lt;p&gt;&nbsp;Pink 2&lt;/p&gt;', N'data/images/granit/16_11_2011_164611_348.jpg', 2, 1, 233)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (234, 26, N'GHL31', N'', N'data/images/granit/16_11_2011_164630_791.jpg', 2, 1, 234)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (235, 26, N'GHL32', N'&lt;p&gt;&nbsp;Ponk rosso multicolor&lt;/p&gt;', N'data/images/granit/16_11_2011_16472_255.jpg', 2, 1, 235)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (236, 26, N'GHL33', N'&lt;p&gt;&nbsp;Pink China&lt;/p&gt;', N'data/images/granit/16_11_2011_164729_937.jpg', 2, 1, 236)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (237, 26, N'GHL34', N'', N'data/images/granit/16_11_2011_164749_50.jpg', 2, 1, 237)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (238, 26, N'GHL35', N'', N'data/images/granit/16_11_2011_164823_956.jpg', 2, 1, 238)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (239, 26, N'GHL36', N'', N'data/images/granit/16_11_2011_164844_905.jpg', 2, 1, 239)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (240, 26, N'GHL37', N'', N'data/images/granit/16_11_2011_16497_973.jpg', 2, 1, 240)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (241, 26, N'GHL38', N'&lt;p&gt;&nbsp;Brown bantic&lt;/p&gt;', N'data/images/granit/16_11_2011_164933_676.jpg', 2, 1, 241)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (242, 26, N'GHL39', N'&lt;p&gt;&nbsp;violet &amp; red Khanh Hoa&lt;/p&gt;', N'data/images/granit/16_11_2011_165017_672.jpg', 2, 1, 242)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (243, 26, N'GHL40', N'&lt;p&gt;&nbsp;Violet &amp; Lilac&lt;/p&gt;', N'data/images/granit/16_11_2011_165057_239.jpg', 2, 1, 243)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (244, 26, N'GHL41', N'&lt;p&gt;&nbsp;Violet Khanh Hoa&lt;/p&gt;', N'data/images/granit/16_11_2011_165122_781.jpg', 2, 1, 244)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (245, 26, N'GHL42', N'&lt;p&gt;Violet&nbsp;&lt;span class=&#34;Apple-style-span&#34; style=&#34;color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: 16px; font-size: small; &#34;&gt;Mongolia&lt;/span&gt;&lt;/p&gt;', N'data/images/granit/16_11_2011_165749_273.jpg', 2, 1, 245)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (246, 26, N'GHL43', N'&lt;p&gt;&nbsp;White India&lt;/p&gt;', N'data/images/granit/16_11_2011_16590_415.jpg', 2, 1, 246)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (247, 26, N'GHL44', N'', N'data/images/granit/16_11_2011_165924_803.jpg', 2, 1, 247)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (248, 26, N'GHL45', N'&lt;p&gt;&nbsp;White Belhel&lt;/p&gt;', N'data/images/granit/16_11_2011_165952_50.jpg', 2, 1, 248)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (249, 26, N'GHL46', N'&lt;p&gt;White Binh Dinh&lt;/p&gt;', N'data/images/granit/00_11_2011_17022_649.jpg', 2, 1, 249)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (250, 26, N'GHL47', N'&lt;p&gt;&nbsp;White Kasmir&lt;/p&gt;', N'data/images/granit/00_11_2011_17055_632.jpg', 2, 1, 250)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (251, 26, N'GHL48', N'', N'data/images/granit/01_11_2011_17119_300.jpg', 2, 1, 251)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (252, 26, N'GHL49', N'&lt;p&gt;&nbsp;White salt Nghe An&lt;/p&gt;', N'data/images/granit/02_11_2011_17216_191.jpg', 2, 1, 252)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (253, 26, N'GHL50', N'&lt;p&gt;&nbsp;White salt&lt;/p&gt;', N'data/images/granit/02_11_2011_17248_906.jpg', 2, 1, 253)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (254, 26, N'GHL51', N'&lt;p&gt;&nbsp;White nepal&lt;/p&gt;', N'data/images/granit/03_11_2011_17311_723.jpg', 2, 1, 254)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (255, 26, N'GHL52', N'', N'data/images/granit/03_11_2011_17334_829.jpg', 2, 1, 255)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (256, 26, N'GHL53', N'', N'data/images/granit/03_11_2011_17354_617.jpg', 2, 1, 256)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (257, 26, N'GHL54', N'', N'data/images/granit/04_11_2011_17416_281.jpg', 2, 1, 257)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (258, 26, N'GHL55', N'', N'data/images/granit/04_11_2011_17439_795.jpg', 2, 1, 258)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (259, 26, N'GHL56', N'', N'data/images/granit/05_11_2011_1756_404.jpg', 2, 1, 259)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (260, 26, N'GHL57', N'', N'data/images/granit/05_11_2011_17532_765.jpg', 2, 1, 260)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (261, 26, N'GHL58', N'&lt;p&gt;&nbsp;Gold Binh Dinh&lt;/p&gt;', N'data/images/granit/05_11_2011_17553_839.jpg', 2, 1, 261)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (262, 26, N'GHL59', N'&lt;p&gt;&nbsp;Gold max&lt;/p&gt;', N'data/images/granit/06_11_2011_17622_13.jpg', 2, 1, 262)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (263, 26, N'GHL60', N'', N'data/images/granit/06_11_2011_17642_321.jpg', 2, 1, 263)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (264, 26, N'GHL61', N'&lt;p&gt;&nbsp;Gold multicolor&lt;/p&gt;', N'data/images/granit/07_11_2011_1776_281.jpg', 2, 1, 264)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (265, 26, N'GHL62', N'', N'data/images/granit/07_11_2011_17726_0.jpg', 2, 1, 265)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (266, 26, N'GHL63', N'&lt;p&gt;&nbsp;Gold China&lt;/p&gt;', N'data/images/granit/07_11_2011_17756_745.jpg', 2, 1, 266)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (267, 26, N'GHL64', N'', N'data/images/granit/08_11_2011_17819_186.jpg', 2, 1, 267)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (268, 26, N'GHL65', N'', N'data/images/granit/08_11_2011_17839_226.jpg', 2, 1, 268)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (269, 26, N'GHL66', N'', N'data/images/granit/09_11_2011_1790_673.jpg', 2, 1, 269)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (270, 26, N'GHL67', N'&lt;p&gt;&nbsp;green Con Dao&lt;/p&gt;', N'data/images/granit/09_11_2011_17926_128.jpg', 2, 1, 270)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (271, 26, N'GHL68', N'&lt;p&gt;&nbsp;Blue &amp; black&lt;/p&gt;', N'data/images/granit/09_11_2011_17956_191.jpg', 2, 1, 271)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (272, 26, N'GHL69', N'', N'data/images/granit/16_11_2011_171050_353.jpg', 2, 1, 272)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (273, 26, N'GHL70', N'&lt;p&gt;&nbsp;blue china&lt;/p&gt;', N'data/images/granit/16_11_2011_171213_940.jpg', 2, 1, 273)
SET IDENTITY_INSERT [dbo].[tbl_granit] OFF
SET IDENTITY_INSERT [dbo].[tbl_groupmember] ON 

INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (1, N'Quản lý hệ thống', N'', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (7, N'Administrator', N'', 2, 0, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (3, N'Group Đại lý', N'', 1, 0, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (4, N'Group Người đăng ký để đăng tin', N'', 1, 0, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_groupmember] OFF
SET IDENTITY_INSERT [dbo].[tbl_menu] ON 

INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (150, 0, 1, N'Yêu cầu khách hàng', N'arrow.png', N'Default.aspx?page=resquest&mod=resquest', 0, 150, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (2, 0, 1, N'Quản lý hệ thống', N'news_new.png', N'#', 1, 37, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (3, 2, 1, N'Danh sách người dùng', N'note_find.png', N'Default.aspx?page=user&mod=user', 1, 4, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (4, 2, 1, N'Phân quyền người dùng', N'mass_email.png', N'Default.aspx?page=group&mod=permission', 1, 3, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (27, 2, 1, N'Cấu hình website', N'briefcase.png', N'Default.aspx?page=siteinfo&mod=siteinfo', 1, 1, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (6, 5, 1, N'Giới thiệu', N'graduation_hat2.png', N'Default.aspx?page=gioi_thieu&mod=gioi_thieu', 0, 6, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (7, 5, 1, N'Đào tạo tuyển sinh', N'laptop2.png', N'Default.aspx?page=dao_tao_tuyen_sinh&mod=dao_tao_tuyen_sinh', 0, 7, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (8, 5, 1, N'Nghiên cứu khoa học', N'edit.png', N'Default.aspx?page=nghien_cuu_khoa_hoc&mod=nghien_cuu_khoa_hoc', 0, 8, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (9, 5, 1, N'Hợp tác Quốc tế', N'calendar_up.png', N'Default.aspx?page=hop_tac_quoc_te&mod=hop_tac_quoc_te', 0, 9, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (68, 0, 1, N'Danh sách bài viết', N'book_open.png', N'Default.aspx?page=news&mod=news', 1, 154, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (122, 0, 2, N'Sản phẩm', N'book_blue_find.png', N'Default.aspx?page=product&mod=product', 0, 122, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (125, 0, 2, N'Các loại đá', N'briefcase2_view.png', N'Default.aspx?page=granit&mod=granit', 0, 125, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (13, 5, 1, N'Thông tin đào tạo', N'checkin.png', N'Default.aspx?page=thong_tin_dao_tao&mod=thong_tin_dao_tao', 0, 13, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (14, 5, 1, N'Thông tin nội bộ', N'component.png', N'Default.aspx?page=thong_tin_noi_bo&mod=thong_tin_noi_bo', 0, 14, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (143, 0, 2, N'Danh sách cây menu', N'bookmark_preferences.png', N'Default.aspx?page=category_news&mod=news', 0, 143, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (151, 0, 1, N'Danh sách banner', N'briefcase_out.png', N'Default.aspx?page=banner&mod=banner', 1, 75, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (130, 0, 2, N'Danh sách bài viết', N'bookmark_add.png', N'Default.aspx?page=news&mod=news', 0, 130, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (37, 0, 1, N'Danh mục cây menu', N'book_blue_preferences.png', N'Default.aspx?page=category_news&mod=news', 1, 155, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (135, 89, 2, N'Cấu hình website', N'backup.png', N'Default.aspx?page=siteinfo&mod=siteinfo', 0, 90, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (26, 5, 1, N'Website thành viên', N'graduation_hat2.png', N'Default.aspx?page=weblink&mod=weblink', 0, 26, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (86, 0, 1, N'Sản phẩm', N'briefcase_out.png', N'Default.aspx?page=product&mod=product', 1, 151, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (89, 0, 2, N'Quản lý hệ thống', N'component.png', N'', 1, 89, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (90, 89, 2, N'Phân quyền người dùng', N'book_blue_preferences.png', N'Default.aspx?page=group&mod=permission', 1, 92, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (92, 89, 2, N'Danh sách người dùng', N'book_open.png', N'Default.aspx?page=user&mod=user', 0, 135, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (152, 2, 1, N'Danh sách menu', N'menus.png', N'Default.aspx?page=menu&mod=menu', 1, 152, 1, 1, 1, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (153, 151, 1, N'Danh sách loại banner', N'books.png', N'Default.aspx?page=category_banner&mod=banner', 1, 153, 1, 1, 1, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (155, 0, 1, N'Danh sách hóa đơn', N'book_blue_add.png', N'Default.aspx?page=hoadon&mod=hoadon', 1, 71, 1, 1, 1, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock]) VALUES (154, 0, 1, N'Danh sách khách hàng', N'businessman.png', N'Default.aspx?page=customer&mod=customer', 1, 73, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_menu] OFF
SET IDENTITY_INSERT [dbo].[tbl_news] ON 

INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (214, 36, 1, N'Đồng hồ Tissot - bước đột phá trong bước thiết kế đồng hồ', N'', N'&lt;p&gt;&nbsp;&lt;/p&gt;

&lt;p&gt;&lt;span style=&#34;font-size:medium&#34;&gt;&lt;span style=&#34;font-family:Times New Roman&#34;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - L&lt;/span&gt;&lt;/span&gt;&agrave; th&agrave;nh vi&ecirc;n tập đo&agrave;n Swatch Group, Thụy Sỹ; chuy&ecirc;n sản xuất d&ograve;ng đồng hồ cao cấp c&oacute; c&ocirc;ng nghệ hiện đại, vật liệu đặc biệt, chức năng ti&ecirc;n tiến c&ugrave;ng c&aacute;ch thiết kế v&ocirc; c&ugrave;ng đẹp mắt, l&ocirc;i cuốn, m&agrave; mức gi&aacute; cả ở tầm trung, ph&ugrave; hợp với t&uacute;i tiền của đại đa số người ti&ecirc;u d&ugrave;ng.&lt;/p&gt;

&lt;p&gt;&lt;span style=&#34;font-size:medium&#34;&gt;&lt;span style=&#34;font-family:Times New Roman&#34;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/span&gt;&lt;/span&gt;&nbsp;- L&agrave; nh&agrave; cung cấp đồng hồ bấm giờ ch&iacute;nh thức cho h&agrave;ng loạt c&aacute;c sự kiện thể thao lớn thế giới,&nbsp;&nbsp;bao gồm MotoGP, Kh&uacute;c C&ocirc;n Cầu (Ice Hockey), Đua Xe Đạp, Trượt Tuyết, Li&ecirc;n Đo&agrave;n B&oacute;ng Rổ Quốc tế (FiBa), Giải V&ocirc; Địch Đấu Kiếm Thế giới, b&oacute;ng rổ NBA,&hellip;; trong vai tr&ograve; l&agrave; nh&agrave; cung cấp v&agrave; gi&aacute;m s&aacute;t độ ch&iacute;nh x&aacute;c thời gian ho&agrave;n hảo cho c&aacute;c sự kiện thể thao lớn trong nhiều năm.&lt;/p&gt;

&lt;p&gt;&lt;span style=&#34;font-size:medium&#34;&gt;&lt;span style=&#34;font-family:Times New Roman&#34;&gt;&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&nbsp;&lt;/p&gt;', 1, N'data/images/news/slideshow_2_20_07_2017_151636_127.jpg', CAST(N'2011-11-26T00:00:00.000' AS DateTime), N'admin', 1, 215, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (217, 36, 1, N'Đồng hồ cao cấp - nhiều lựa chọn cho bạn', N'&lt;p&gt;nhiều lựa chọn cho bạn&lt;/p&gt;', N'&lt;p&gt;&nbsp;&nbsp;&nbsp;&lt;/p&gt;

&lt;p&gt;&nbsp; &nbsp;&nbsp; - Đồng hồ Rolex được chế t&aacute;c từ c&aacute;c nguy&ecirc;n liệu tốt nhất v&agrave; lắp r&aacute;p tỉ mỉ đến từng chi tiết. Mỗi chi tiết được thiết kế, ph&aacute;t triển, v&agrave; sản xuất với ti&ecirc;u chuẩn ch&iacute;nh x&aacute;c nhất.&lt;/p&gt;

&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp; Tại Rolex, ch&uacute;ng t&ocirc;i tin v&agrave;o duy tr&igrave; cam kết d&agrave;i hạn đối với c&aacute;c c&aacute; nh&acirc;n, tổ chức, sự kiện v&agrave; cơ quan đặc biệt trong c&aacute;c lĩnh vực kh&aacute;c nhau như th&aacute;m hiểm, nghệ thuật, văn h&oacute;a, khoa học, gi&aacute;o dục v&agrave; chế t&aacute;c đồng hồ.&lt;/p&gt;

&lt;p&gt;&nbsp;&lt;/p&gt;

&lt;p&gt;&nbsp;&lt;/p&gt;', 1, N'data/images/news/slideshow_1_20_07_2017_151624_97.jpg', CAST(N'2011-11-26T00:00:00.000' AS DateTime), N'admin', 1, 217, N'', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[tbl_news] OFF
SET IDENTITY_INSERT [dbo].[tbl_permission] ON 

INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (542, 15, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (543, 37, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (544, 38, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (545, 39, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (546, 2, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (547, 3, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (548, 4, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (549, 27, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1559, 128, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1560, 143, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1561, 130, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1562, 125, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1563, 122, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1564, 89, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1565, 92, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1566, 90, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1567, 135, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1408, 1, 2, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1691, 37, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1692, 68, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1693, 86, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1694, 151, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1695, 153, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1696, 154, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1697, 155, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1698, 2, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1699, 152, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1700, 3, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1701, 4, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1702, 27, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1703, 37, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1704, 68, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1705, 86, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1706, 151, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1707, 153, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1708, 154, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1709, 155, 4, 1)
SET IDENTITY_INSERT [dbo].[tbl_permission] OFF
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot]) VALUES (360, 71, N'Đồng hồ Colosseum', N'&lt;p&gt;Đường k&iacute;nh: 42mm&lt;br /&gt;
Độ d&agrave;y: 8.5mm&lt;br /&gt;
Chất liệu Vỏ: Th&eacute;p kh&ocirc;ng gỉ 316L&lt;br /&gt;
K&iacute;ch cỡ d&acirc;y: 20mm&lt;br /&gt;
Chất liệu d&acirc;y: D&acirc;y kim loại&lt;br /&gt;
Loại m&aacute;y: Miyota Quartz&lt;br /&gt;
Mặt k&iacute;nh: Sapphire&nbsp;&lt;br /&gt;
Chống nước : 5ATM&lt;br /&gt;
Subdial: Lịch ng&agrave;y &amp; Lịch 24h&lt;/p&gt;', N'data/images/product/BX_08_12_2018_1780_595.jpg', 1, 1, 360, N'data/images/product/BX_08_12_2018_1780_431.jpg', CAST(2800000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot]) VALUES (356, 15, N'Đồng hồ Rolex', N'', N'data/images/product/slideshow_1_20_07_2017_141353_635.jpg', 1, 1, 358, N'data/images/product/slideshow_1_20_07_2017_141354_457.jpg', CAST(5000000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot]) VALUES (357, 43, N'Dong ho Tissot', N'', N'data/images/product/slideshow_2_20_07_2017_141454_116.jpg', 1, 1, 357, N'data/images/product/slideshow_2_20_07_2017_141454_276.jpg', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot]) VALUES (358, 42, N'Đồng hồ đôi', N'', N'data/images/product/slideshow_3_20_07_2017_141543_869.jpg', 1, 1, 356, N'data/images/product/slideshow_3_20_07_2017_141543_705.jpg', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot]) VALUES (359, 66, N'Đồng hồ Đeo tay', N'&lt;p&gt;Fullbox&lt;/p&gt;', N'data/images/product/1-1_20_12_2018_235323_943.jpg', 1, 1, 359, N'data/images/product/1-2_20_12_2018_235323_943.jpg', CAST(550000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_product_cart] ON 

INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (38, 28, N'Đồng hồ Rolex', N'', N'data/images/product/slideshow_1_20_07_2017_141353_635.jpg', 1, 1, 38, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (39, 28, N'Đồng hồ đôi', N'', N'data/images/product/slideshow_3_20_07_2017_141543_869.jpg', 1, 1, 39, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (40, 29, N'Đồng hồ Rolex', N' sdfsf asdf asdf sdf sdf', N'data/images/product/slideshow_1_20_07_2017_141353_635.jpg', 1, 1, 40, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (41, 29, N'Đồng hồ đôi', N' sdfsf asdf asdf sdf sdf', N'data/images/product/slideshow_3_20_07_2017_141543_869.jpg', 1, 1, 41, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (42, 30, N'11111111111', N'', N'data/images/product/apple_ios-wallpaper-1920x1080_17_07_2017_091954_314.jpg', 1, 1, 42, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (43, 31, N'11111111111', N'', N'data/images/product/apple_ios-wallpaper-1920x1080_17_07_2017_091954_314.jpg', 1, 1, 43, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2, CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (44, 34, N'Đồng hồ Win10', N'', N'data/images/product/apple_ios-wallpaper-1920x1080_17_07_2017_091954_314.jpg', 1, 1, 44, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (45, 35, N'sfdf sd', N'', N'data/images/product/xperia_z_ultra-wallpaper-1920x1080_20_07_2017_094421_206.jpg', 1, 1, 45, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[tbl_product_cart] ([PK_ProductCartID], [FK_CustomerCartID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Img2], [C_GiaCu], [C_GiaMoi], [C_Hot], [C_SoLuong], [C_Price]) VALUES (45, 36, N'Đồng hồ Win10', N'', N'data/images/product/apple_ios-wallpaper-1920x1080_17_07_2017_091954_314.jpg', 1, 1, 45, N'', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2, CAST(100 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tbl_product_cart] OFF
SET IDENTITY_INSERT [dbo].[tbl_product_image] ON 

INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (1, 351, N'data/images/product/vforumvn--2_20170716082443.png', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (2, 351, N'data/images/product/vforumvn--3_20170716082444.jpg', 1, 1, 11, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (3, 351, N'data/images/product/vforumvn--3_20170716082444.png', 1, 1, 21, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (4, 351, N'data/images/product/vforumvn--4_20170716082444.jpg', 1, 1, 31, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (9, 352, N'data/images/product/vforumvn--33_20170716085550.jpg', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (10, 352, N'data/images/product/vforumvn--34_20170716085551.jpg', 1, 1, 11, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (8, 352, N'data/images/product/vforumvn--36_20170716085516.jpg', 1, 1, 11, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (11, 353, N'data/images/product/vforumvn--2_20170716210739.png', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (12, 354, N'data/images/product/all_new_htc_one_streaks-wallpaper-1920x1080_20170718105613.jpg', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (13, 354, N'data/images/product/default_os_x_lion-wallpaper-1920x1080_20170718105614.jpg', 1, 1, 11, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (14, 354, N'data/images/product/os_x_mountain_lion-wallpaper-1920x1080_20170718105616.jpg', 1, 1, 21, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (15, 354, N'data/images/product/stones_and_samsung_gadgets-wallpaper-1920x1080_20170718110848.jpg', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (16, 359, N'data/images/product/1-3_20181220235324.jpg', 1, 1, 1, NULL)
INSERT [dbo].[tbl_product_image] ([PK_ProductImageID], [FK_ProductID], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Name]) VALUES (17, 360, N'data/images/product/Dagger_300x_20181229170800.jpg', 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[tbl_product_image] OFF
SET IDENTITY_INSERT [dbo].[tbl_product_price] ON 

INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (3, N'Báo giá tháng 1', N'', 1, 1, 5, N'data/images/product/Thong_tu_01_18_09_2016_14543_600.doc')
INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (4, N'Báo giá tháng 2', N'', 1, 1, 4, N'')
INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (5, N'Báo giá tháng 3', N'', 1, 1, 3, N'data/images/product/mHMgW4gxJHDosyBdSBnaWHMgS5kb2N4_=_18_09_2016_145910_101.doc')
INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (6, N'Báo giá tháng 4', N'', 1, 1, 6, N'data/images/product/cuahang_11_10_2016_164412_794.jpg')
INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (7, N'Báo giá tháng 5', N'', 1, 1, 7, N'data/images/product/DeCuongTagetA2_11_10_2016_164455_243.pdf')
SET IDENTITY_INSERT [dbo].[tbl_product_price] OFF
INSERT [dbo].[tbl_siteinfo] ([SiteInfoID], [Email], [Counter], [Contact], [Footer], [Yahoo1], [Yahoo2], [Skype1], [Skype2], [Congty], [Diachi], [Dienthoai], [Mobile], [TieudeGioithieu], [Gioithieu1], [Gioithieu2], [FK_LangID], [C_Logo], [C_Copyright], [C_Title]) VALUES (2, N'hotro@dahoacuonghoanglong.com', 2006, N'&lt;h2&gt;HOANG LONG TRADING AND CONSTRUCTION JOINT STOCK COMPANY&lt;/h2&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Product showroom: &lt;/span&gt;Stores marble exporter DUY MANH&nbsp;&lt;/p&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Addrees:&lt;/span&gt; No 410/13B, ĐT743 Street, Dong Chieu, Tan Dong Hiep ward, Di An town, Binh Duong province.&lt;/p&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Tel/ Fax:&lt;/span&gt; 06503.775.400   -   &lt;span class=&#34;norB&#34;&gt;Mobile:&lt;/span&gt; 0987.783.970 - 0912.36.28.56&lt;/p&gt;
&lt;p style=&#34;text-align: left; &#34;&gt;&lt;i&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;(Near: VSIP, Song Than Industrial Park, Dong An Industrial Park)&lt;/i&gt;&lt;/p&gt;', N'&lt;p&gt;.&lt;/p&gt;', N'hbt_155', N'', N'hbt_155', N'', N'HOANG LONG TRADING AND CONSTRUCTION JOINT STOCK COMPANY', N'No 410/13B, ĐT743 Street, Dong Chieu, Tan Dong Hiep ward, Di An town, Binh Duong province. (Near: VSIP, Song Than IP, Dong An IP)', N'06503.775.400', N'0987.783.970 - 0912.36.28.56', N'Hoang Long Trading and Construction joint stock company', N'&lt;p&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;i&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;Hoang Long Trading and Construction joint stock company is professional on supplying and executing almost brands of granite stone, marble stone. They are inland&nbsp; produced and imported from countries which have famous natural granite and marble stone resources, such as: China, India and Italy,....&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;&lt;br /&gt;
&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hoang  Long Trading and Construction joint stock company is professional on  supplying and executing almost brands of granite stone, marble stone.  They are inland&nbsp; produced and imported from countries which have famous  natural granite and marble stone resources, such as: China, India and  Italy,....&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Organization of building process as: &lt;br /&gt;
&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;The front of a building&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Stairs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Perron&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Desktop stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tracery&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Bulletin board&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Floor a room with&nbsp;stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Balcony banisters&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tombstone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;text-align: justify; &#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; Our workmans team have labour experience, specialization level, execution level, cost justice and reputation quality. We hope we will serve all customer.&nbsp;Join us in making your house more luxury.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 2, NULL, NULL, NULL)
INSERT [dbo].[tbl_siteinfo] ([SiteInfoID], [Email], [Counter], [Contact], [Footer], [Yahoo1], [Yahoo2], [Skype1], [Skype2], [Congty], [Diachi], [Dienthoai], [Mobile], [TieudeGioithieu], [Gioithieu1], [Gioithieu2], [FK_LangID], [C_Logo], [C_Copyright], [C_Title]) VALUES (1, N'abc@gmail.com', 7024, N'&lt;h2&gt;C&Ocirc;NG TY TNHH MTV DV TM XD&lt;/h2&gt;', N'&lt;p&gt;.&lt;/p&gt;', N'hbt_155', N'', N'hbt_155', N'', N'CÔNG TY TNHH MTV DỊCH VỤ THƯƠNG MẠI XÂY DỰNG', N'Bình Dương (Gần Big C Dĩ An, KCN Sóng Thần)', N'06503.775.400', N'0912.36.28.56 - 0987.783.970', N'Nhà cung cấp chuyên nghiệp, nhiều năm kinh nghiệm trong nghề', N'&lt;p&gt;Giới thiệu ngắn&lt;/p&gt;
&lt;p&gt;Giới thiệu ngắn&lt;/p&gt;
&lt;p&gt;Giới thiệu ngắn&lt;/p&gt;
&lt;p&gt;Giới thiệu ngắn&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'&lt;p&gt;Giới thiệu chi tiết&lt;/p&gt;
&lt;p&gt;Giới thiệu chi tiết&lt;/p&gt;
&lt;p&gt;Giới thiệu chi tiết&lt;/p&gt;
&lt;p&gt;Giới thiệu chi tiết&lt;/p&gt;', 1, N'data/images/logo/logo_21_07_2017_112717_253.png', N'Copyright © 2017 OxyWatch.', N'OxyWatch')
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([PK_UserID], [C_UserName], [C_UserPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Add], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (8, N'admin', N'c80e999bdba0e8956428491050529392', 1, N'Administrator', N'info@gmail.com', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 8, 0, NULL)
INSERT [dbo].[tbl_user] ([PK_UserID], [C_UserName], [C_UserPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Add], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (9, N'nhuongnv', N'c4ca4238a0b923820dcc509a6f75849b', 1, N'', N'abc@gmai.com', 2, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 9, 0, NULL)
INSERT [dbo].[tbl_user] ([PK_UserID], [C_UserName], [C_UserPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Add], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (10, N'user', N'81dc9bdb52d04dc20036dbd8313ed055', 1, N'Nguyen Van A', N'user@gmail.com', 1, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 10, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
SET IDENTITY_INSERT [dbo].[tbl_user_groupmember] ON 

INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (22, 8, 1)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (11, 5, 3)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (23, 8, 7)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (12, 4, 3)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (25, 10, 4)
SET IDENTITY_INSERT [dbo].[tbl_user_groupmember] OFF
ALTER TABLE [dbo].[tbl_banner] ADD  CONSTRAINT [DF_tbl_banner_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_banner] ADD  CONSTRAINT [DF_tbl_banner_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_banner] ADD  CONSTRAINT [DF_tbl_banner_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_banner] ADD  CONSTRAINT [DF_tbl_banner_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_category_banner] ADD  CONSTRAINT [DF_tbl_category_banner_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_banner] ADD  CONSTRAINT [DF_tbl_category_banner_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_banner] ADD  CONSTRAINT [DF_tbl_category_banner_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_FK_ParentID]  DEFAULT ((0)) FOR [FK_ParentID]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Product]  DEFAULT ((0)) FOR [C_Product]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_PointUrl]  DEFAULT ((0)) FOR [C_PointUrl]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Granite]  DEFAULT ((0)) FOR [C_Granite]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_MenuNgang]  DEFAULT ((0)) FOR [C_MenuNgang]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_slide] ADD  CONSTRAINT [DF_tbl_category_slide_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_slide] ADD  CONSTRAINT [DF_tbl_category_slide_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_slide] ADD  CONSTRAINT [DF_tbl_category_slide_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_customer] ADD  CONSTRAINT [DF_tbl_customer_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_customer] ADD  CONSTRAINT [DF_tbl_customer_C_Permission]  DEFAULT ((0)) FOR [C_Permission]
GO
ALTER TABLE [dbo].[tbl_customer] ADD  CONSTRAINT [DF_tbl_customer_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_customer] ADD  CONSTRAINT [DF_tbl_customer_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_customer] ADD  CONSTRAINT [DF_tbl_customer_C_Change]  DEFAULT ((0)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_C_Permission]  DEFAULT ((0)) FOR [C_Permission]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_C_Change]  DEFAULT ((0)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_customer_cart] ADD  CONSTRAINT [DF_tbl_customer_cart_C_HinhThucThanhToan]  DEFAULT ((0)) FOR [C_HinhThucThanhToan]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_System]  DEFAULT ((0)) FOR [C_System]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Add]  DEFAULT ((0)) FOR [C_Add]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Edit]  DEFAULT ((0)) FOR [C_Edit]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Del]  DEFAULT ((0)) FOR [C_Del]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Lock]  DEFAULT ((0)) FOR [C_Lock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_View]  DEFAULT ((0)) FOR [C_View]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessLock]  DEFAULT ((0)) FOR [C_ProcessLock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessUnLock]  DEFAULT ((0)) FOR [C_ProcessUnLock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessDel]  DEFAULT ((0)) FOR [C_ProcessDel]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_FK_ParentID]  DEFAULT ((0)) FOR [FK_ParentID]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_FK_LangID]  DEFAULT ((0)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Active]  DEFAULT ((0)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Lock]  DEFAULT ((0)) FOR [C_Lock]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_FK_MenuID]  DEFAULT ((0)) FOR [FK_MenuID]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_FK_GroupMemberID]  DEFAULT ((0)) FOR [FK_GroupMemberID]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_C_Change]  DEFAULT ((1)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_GiaCu]  DEFAULT ((0)) FOR [C_GiaCu]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_GiaMoi]  DEFAULT ((0)) FOR [C_GiaMoi]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Hot]  DEFAULT ((0)) FOR [C_Hot]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CustomerCartID]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_GiaCu]  DEFAULT ((0)) FOR [C_GiaCu]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_GiaMoi]  DEFAULT ((0)) FOR [C_GiaMoi]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_Hot]  DEFAULT ((0)) FOR [C_Hot]
GO
ALTER TABLE [dbo].[tbl_product_cart] ADD  CONSTRAINT [DF_tbl_product_cart_C_SoLuong]  DEFAULT ((0)) FOR [C_SoLuong]
GO
ALTER TABLE [dbo].[tbl_product_image] ADD  CONSTRAINT [DF_tbl_product_image_FK_ProductID]  DEFAULT ((0)) FOR [FK_ProductID]
GO
ALTER TABLE [dbo].[tbl_product_image] ADD  CONSTRAINT [DF_tbl_product_image_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product_image] ADD  CONSTRAINT [DF_tbl_product_image_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product_image] ADD  CONSTRAINT [DF_tbl_product_image_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_resquest] ADD  CONSTRAINT [DF_tbl_resquest_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_siteinfo] ADD  CONSTRAINT [DF_tbl_siteinfo_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_slide] ADD  CONSTRAINT [DF_tbl_slide_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_slide] ADD  CONSTRAINT [DF_tbl_slide_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_slide] ADD  CONSTRAINT [DF_tbl_slide_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_slide] ADD  CONSTRAINT [DF_tbl_slide_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Permission]  DEFAULT ((0)) FOR [C_Permission]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Change]  DEFAULT ((0)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_user_groupmember] ADD  CONSTRAINT [DF_tbl_user_groupmember_FK_UserID]  DEFAULT ((0)) FOR [FK_UserID]
GO
ALTER TABLE [dbo].[tbl_user_groupmember] ADD  CONSTRAINT [DF_tbl_user_groupmember_FK_GroupMemberID]  DEFAULT ((0)) FOR [FK_GroupMemberID]
GO
