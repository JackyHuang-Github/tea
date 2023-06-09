USE [web111b_16_tea]
GO
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [DF_Drinks_SaleDate]
GO
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [DF__Drinks__Price__37C5420D]
GO
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [DF_Drinks_ProductName]
GO
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [DF_Drinks_ProductNo]
GO
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [DF_Drinks_CodeNo]
GO
/****** Object:  Index [PK_Drinks]    Script Date: 2023/6/13 下午 03:41:45 ******/
ALTER TABLE [dbo].[Drinks] DROP CONSTRAINT [PK_Drinks]
GO
/****** Object:  Table [dbo].[Drinks]    Script Date: 2023/6/13 下午 03:41:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Drinks]') AND type in (N'U'))
DROP TABLE [dbo].[Drinks]
GO
/****** Object:  Table [dbo].[Drinks]    Script Date: 2023/6/13 下午 03:41:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drinks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NOT NULL,
	[ProductNo] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Price] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Drinks] ON 

INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (1, N'Fresh', N'Fresh001', N'金桔檸檬', 65, CAST(N'2023-05-31' AS Date), N'新鮮金桔汁搭配上鮮榨檸檬汁，酸甜滋味給您滿滿的surprise！', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (2, N'Fresh', N'Fresh002', N'炸彈檸檬冰沙', 70, CAST(N'2023-05-31' AS Date), N'整顆新鮮檸檬原汁原味入茶，獨家直擊，超完美比例最好喝！', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (3, N'Fresh', N'Fresh003', N'鮮果百香綠', 65, CAST(N'2023-05-31' AS Date), N'喝起來略帶有淡淡茉莉香氣綠茶搭配新鮮百香原汁，特別獻給愛嚐鮮的您！', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (4, N'Fresh', N'Fresh004', N'檸檬青', 65, CAST(N'2023-05-31' AS Date), N'檸檬汁搭配各式甘醇茗茶，酸甜口感一次滿足。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (5, N'Fresh', N'Fresh005', N'檸檬蜂蜜', 70, CAST(N'2023-05-31' AS Date), N'以蜂蜜代替果糖，香甜蜂蜜搭配檸檬汁，給愛喝酸甜的您不一樣的選擇。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (6, N'Fresh', N'Fresh006', N'檸檬蜂蜜蘆薈', 80, CAST(N'2023-05-31' AS Date), N'清新爽口、微酸微甜，吃得到粒粒分明的蘆薈，夏季消暑的沁涼推薦。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (13, N'Special', N'Special001', N'寒天愛玉', 70, CAST(N'2023-05-31' AS Date), N'寒天採用紅藻萃取而成，搭配滑嫩愛玉，舊雨新知必點的暢銷飲品。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (14, N'Special', N'Special002', N'寒天愛玉小紫蘇', 105, CAST(N'2023-05-31' AS Date), N'寒天愛玉遇上小紫蘇，彈牙Q嫩的寒天晶球一吃就上癮，完美口感，給您超幸福的甜蜜滋味。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (15, N'Special', N'Special003', N'膠原愛玉', 80, CAST(N'2023-05-31' AS Date), N'採用天然竹炭粉與膠原製成的晶球凍，以單茶為基底搭配愛玉，幸福口感甜蜜滿分。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (16, N'Special', N'Special004', N'膠原愛玉小紫蘇', 90, CAST(N'2023-05-31' AS Date), N'咕溜順口的小紫蘇搭配滑嫩愛玉與獨賣膠原晶鑽口感豐富，經典熱銷。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (17, N'Special', N'Special005', N'檸檬愛玉', 80, CAST(N'2023-05-31' AS Date), N'含有膳食纖維的檸檬愛玉，酸甜滋味加上愛玉清爽的口感，給您暑氣全消。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (18, N'Special', N'Special006', N'檸檬愛玉小紫蘇', 100, CAST(N'2023-05-31' AS Date), N'滑嫩愛玉搭上咕溜小紫蘇，豐富口感，具飽足感，清爽酸甜，舊雨新知的熱銷經典。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (7, N'Tea', N'Tea001', N'台灣高山青', 60, CAST(N'2023-05-31' AS Date), N'茶品甘醇、茶香四溢、清涼暢飲、絕對消暑。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (8, N'Tea', N'Tea002', N'四季烏龍', 70, CAST(N'2023-05-31' AS Date), N'嚴選台灣茶葉，喝起來清香回甘，值得您一再品嚐。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (9, N'Tea', N'Tea003', N'茉莉綠茶', 75, CAST(N'2023-05-31' AS Date), N'帶有淡淡茉莉清香，半糖好喝，無糖甘醇。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (10, N'Tea', N'Tea004', N'桔香冰梅綠', 65, CAST(N'2023-05-31' AS Date), N'金桔梅子巧妙搭配，酸甜口味，甘醇順口，炎夏消暑的美好選擇。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (11, N'Tea', N'Tea005', N'糖心蜜紅茶', 65, CAST(N'2023-05-31' AS Date), N'純手工現煮糖蜜，純粹融合香茗茶品，口感滑順，宛如青春詩篇。', N'')
INSERT [dbo].[Drinks] ([Id], [CodeNo], [ProductNo], [ProductName], [Price], [SaleDate], [DetailText], [Remark]) VALUES (12, N'Tea', N'Tea006', N'蜂蜜綠茶', 75, CAST(N'2023-05-31' AS Date), N'香甜蜂蜜將綠茶的風味升至全新境界，讓你的五感有新鮮體驗。', N'')
SET IDENTITY_INSERT [dbo].[Drinks] OFF
GO
/****** Object:  Index [PK_Drinks]    Script Date: 2023/6/13 下午 03:41:45 ******/
ALTER TABLE [dbo].[Drinks] ADD  CONSTRAINT [PK_Drinks] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Drinks] ADD  CONSTRAINT [DF_Drinks_CodeNo]  DEFAULT ('') FOR [CodeNo]
GO
ALTER TABLE [dbo].[Drinks] ADD  CONSTRAINT [DF_Drinks_ProductNo]  DEFAULT ('') FOR [ProductNo]
GO
ALTER TABLE [dbo].[Drinks] ADD  CONSTRAINT [DF_Drinks_ProductName]  DEFAULT ('') FOR [ProductName]
GO
ALTER TABLE [dbo].[Drinks] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Drinks] ADD  CONSTRAINT [DF_Drinks_SaleDate]  DEFAULT (getdate()) FOR [SaleDate]
GO
