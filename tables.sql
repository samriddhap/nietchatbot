
CREATE DATABASE [Intrusiondetection]
 
USE [Intrusiondetection]

CREATE TABLE [dbo].[country](
	[id] [int] NOT NULL,
	[iso] [char](2) NOT NULL,
	[name] [varchar](80) NOT NULL,
	[nicename] [varchar](80) NOT NULL,
	[iso3] [char](3) NULL,
	[numcode] [int] NULL,
	[phonecode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Intrudorip]    Script Date: 21-11-2016 17:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intrudorip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Intrudorip] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 21-11-2016 17:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Emailid] [varchar](50) NULL,
	[Contactno] [varchar](100) NULL,
	[Ip] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[Profilepicture] [varchar](500) NULL,
	[MacAddress] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Share]    Script Date: 21-11-2016 17:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Friendid] [varchar](50) NULL,
	[Filename] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Intrudorip] ON 

INSERT [dbo].[Intrudorip] ([Id], [Intrudorip]) VALUES (3, N'fe80::d1b5:66b9:561:4096%12')
INSERT [dbo].[Intrudorip] ([Id], [Intrudorip]) VALUES (2003, N'fe80::1075:3d7e:3f57:fe92%13')
INSERT [dbo].[Intrudorip] ([Id], [Intrudorip]) VALUES (2004, N'fe80::1075:3d7e:3f57:fe92%13')
INSERT [dbo].[Intrudorip] ([Id], [Intrudorip]) VALUES (2005, N'fe80::1075:3d7e:3f57:fe92%13')
INSERT [dbo].[Intrudorip] ([Id], [Intrudorip]) VALUES (2006, N'fe80::1075:3d7e:3f57:fe92%13')
SET IDENTITY_INSERT [dbo].[Intrudorip] OFF
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (1, N'Neeru', N'neeru@123', N'neeruyadav63@gmail.com', N'9266395816', N'98078.456', N'Approved', N'banner.png', NULL)
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (2, N'Anjali', N'anjali@123', N'anjali@gmail.com', N'9971630012', N'678.098.67.87', N'Approved', N'banne1r.png', NULL)
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (3, N'abc', N'abc@123', N'abc@gmail.com', N'99999900', N'890.09.98.09', N'Approved', N'banne1r.png', NULL)
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (4, N'xyz', N'abc@123', N'xyz@gmail.com', N'999999990', N'9999.99.99', N'Approved', N'banne1r.png', NULL)
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (5, N'xyz', N'abc@123', N'xyz@gmail.com', N'9999999990', N'fe80::1075:3d7e:3f57:fe92%13', N'Reject', N'banne1r.png', N'B8EE6548424D')
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (1004, N'abcd', N'abcd', N'ab12@gmail.com', N'9599929953', N'fe80::1075:3d7e:3f57:fe92%13', N'Approved', N'arrow.gif', N'B8EE6548424D')
INSERT [dbo].[Registration] ([ID], [Username], [Password], [Emailid], [Contactno], [Ip], [Status], [Profilepicture], [MacAddress]) VALUES (1005, NULL, NULL, NULL, NULL, NULL, N'Pending', NULL, N'')
SET IDENTITY_INSERT [dbo].[Registration] OFF
SET IDENTITY_INSERT [dbo].[Share] ON 

INSERT [dbo].[Share] ([Id], [Friendid], [Filename]) VALUES (1, N'anjali@gmail.com', N'arrow.gif')
INSERT [dbo].[Share] ([Id], [Friendid], [Filename]) VALUES (2, N'anjali@gmail.com', N'Hydrangeas.jpg')
INSERT [dbo].[Share] ([Id], [Friendid], [Filename]) VALUES (3, N'abc@gmail.com', N'banne1r.png')
INSERT [dbo].[Share] ([Id], [Friendid], [Filename]) VALUES (4, N'abc@gmail.com', N'banne1r.png')
INSERT [dbo].[Share] ([Id], [Friendid], [Filename]) VALUES (1003, N'abc@gmail.com', N'arrow.gif')
SET IDENTITY_INSERT [dbo].[Share] OFF
ALTER TABLE [dbo].[country] ADD  DEFAULT (NULL) FOR [iso3]
GO
ALTER TABLE [dbo].[country] ADD  DEFAULT (NULL) FOR [numcode]
GO
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registration_Design]  DEFAULT ('Pending') FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [Intrusiondetection] SET  READ_WRITE 
GO
