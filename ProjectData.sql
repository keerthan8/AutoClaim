USE [OnlineAutoClaim]
GO
/****** Object:  Table [dbo].[ClaimDetail]    Script Date: 15/08/2020 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClaimDetail](
	[Claim_Id] [int] IDENTITY(1,1) NOT NULL,
	[Reg_Id] [int] NULL,
	[Claim_Date] [date] NULL,
	[Accident_Date] [date] NULL,
	[Accident_Place] [varchar](50) NULL,
	[Accident_State] [varchar](50) NULL,
	[Estimated_Cost] [money] NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_ClaimDetail] PRIMARY KEY CLUSTERED 
(
	[Claim_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClaimStatusDetail]    Script Date: 15/08/2020 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClaimStatusDetail](
	[Claim_Status_id] [int] IDENTITY(1,1) NOT NULL,
	[Reg_Id] [int] NULL,
	[Claim_id] [int] NULL,
	[Vehicle_Number] [varchar](50) NULL,
	[Assurer_Status] [varchar](50) NULL,
	[Officer_Status] [varchar](50) NULL,
	[Auth_Status] [varchar](50) NULL,
	[Vehicle_id] [int] NULL,
 CONSTRAINT [PK_ClaimStatusDetail] PRIMARY KEY CLUSTERED 
(
	[Claim_Status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InsurerDetail]    Script Date: 15/08/2020 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InsurerDetail](
	[Reg_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Policy_Number] [int] NULL,
	[Password] [varchar](50) NULL,
	[Confirm_Password] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[State] [varchar](50) NULL,
	[Pin_Code] [int] NULL,
	[Country] [varchar](50) NULL,
	[Bank_Name] [varchar](50) NULL,
	[Bank_Branch] [varchar](50) NULL,
	[IFSC] [varchar](50) NULL,
	[Dl_No] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
	[DOB] [date] NULL,
	[Bank_AC_No] [numeric](18, 0) NULL,
	[Aadhar_No] [numeric](12, 0) NULL,
	[Contact_No] [numeric](12, 0) NULL,
 CONSTRAINT [PK_InsurerDetail] PRIMARY KEY CLUSTERED 
(
	[Reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Officers_Login]    Script Date: 15/08/2020 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Officers_Login](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Officer_Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Officer_Type] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
 CONSTRAINT [PK_Officers_Login] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicle_Detail]    Script Date: 15/08/2020 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehicle_Detail](
	[Vehicle_id] [int] IDENTITY(1,1) NOT NULL,
	[Reg_Id] [int] NULL,
	[Vehicle_Number] [varchar](50) NULL,
	[Vehicle_Name] [varchar](50) NULL,
	[Vehicle_Type] [varchar](50) NULL,
	[Bill] [image] NULL,
	[Model] [varchar](50) NULL,
	[Chassis_No] [varchar](50) NULL,
	[Engine_Number] [varchar](50) NULL,
 CONSTRAINT [PK_Vehicle_Detail] PRIMARY KEY CLUSTERED 
(
	[Vehicle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClaimDetail] ON 

INSERT [dbo].[ClaimDetail] ([Claim_Id], [Reg_Id], [Claim_Date], [Accident_Date], [Accident_Place], [Accident_State], [Estimated_Cost], [Description]) VALUES (1, 1, CAST(N'2020-01-20' AS Date), CAST(N'2020-01-18' AS Date), N'Madikeri', N'Karnataka', 200000.0000, N'Accident happens becouse of break Fail')
INSERT [dbo].[ClaimDetail] ([Claim_Id], [Reg_Id], [Claim_Date], [Accident_Date], [Accident_Place], [Accident_State], [Estimated_Cost], [Description]) VALUES (2, 2, CAST(N'2020-02-13' AS Date), CAST(N'2020-02-15' AS Date), N'Mysore', N'Karnataka', 500000.0000, N'Accident happens becouse of Over-speeding')
SET IDENTITY_INSERT [dbo].[ClaimDetail] OFF
SET IDENTITY_INSERT [dbo].[ClaimStatusDetail] ON 

INSERT [dbo].[ClaimStatusDetail] ([Claim_Status_id], [Reg_Id], [Claim_id], [Vehicle_Number], [Assurer_Status], [Officer_Status], [Auth_Status], [Vehicle_id]) VALUES (1, 1, 1, N'KA1198', N'Approved', N'Approved', N'working', 1)
INSERT [dbo].[ClaimStatusDetail] ([Claim_Status_id], [Reg_Id], [Claim_id], [Vehicle_Number], [Assurer_Status], [Officer_Status], [Auth_Status], [Vehicle_id]) VALUES (3, 2, 2, N'KA1289', N'Approved', N'working', N'Pending', 2)
SET IDENTITY_INSERT [dbo].[ClaimStatusDetail] OFF
SET IDENTITY_INSERT [dbo].[InsurerDetail] ON 

INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (1, N'Anu', 66789, N'Anu@', N'Anu@', 22, N'Female', N'#678,Madikeri', N'Karnataka', 571431, N'India', N'HDFC', N'Madikeri', N'HDFC0002', N'A9719U', N'active', N'Anu@gmail.com', CAST(N'1997-11-20' AS Date), CAST(545657899012345 AS Numeric(18, 0)), CAST(444455557878 AS Numeric(12, 0)), CAST(9845678901 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (2, N'Keerti', 66700, N'Keerti@', N'Keerti@', 23, N'Female', N'#789,Madikeri', N'Karnataka', 571456, N'India', N'City Bank', N'Madikeri', N'CBI00003', N'I9179K', N'active', N'keert2@gmail.com', CAST(N'1997-06-03' AS Date), CAST(543210987613579 AS Numeric(18, 0)), CAST(434356567878 AS Numeric(12, 0)), CAST(9110671234 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (3, N'Noor', 54321, N'noor@', N'noor@', 22, N'Female', N'#789,chikmaglur', N'Karnataka', 578934, N'India', N'Axis Bank', N'chikmaglur', N'ABI78783', N'RO99ON', N'active', N'noor@gmail.com', CAST(N'1997-08-16' AS Date), CAST(767688989045321 AS Numeric(18, 0)), CAST(563278964539 AS Numeric(12, 0)), CAST(1234567890 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (4, N'Suhas', 56789, N'suhas@', N'suhas@', 20, N'male', N'#543,chikmaglur', N'Karnataka', 569078, N'India', N'ICICI', N'chikmaglur', N'ICICI7772', N'HS9991', N'active', N'suhas@gmail.com', CAST(N'1999-07-17' AS Date), CAST(453644536567896 AS Numeric(18, 0)), CAST(333322221111 AS Numeric(12, 0)), CAST(9098765432 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (5, N'Ashwin', 12378, N'ashwinM', N'ashwinM', 23, N'male', N'#456,shivmogga', N'Karnataka', 571440, N'India', N'HDFC', N'shivmogga', N'HDFC8882', N'MA97HS', N'not-active', N'asw@gmail.com', CAST(N'1997-02-18' AS Date), CAST(565678980234567 AS Numeric(18, 0)), CAST(678998765467 AS Numeric(12, 0)), CAST(8088089876 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (6, N'Nandini', 34290, N'nandu', N'nandu', 24, N'Female', N'#756,Mysore', N'Karnataka', 578909, N'India', N'City Bank', N'Mysore', N'CBI75756', N'N7199A', N'active', N'nand@gmail.com', CAST(N'1997-10-19' AS Date), CAST(135792468034679 AS Numeric(18, 0)), CAST(727234256894 AS Numeric(12, 0)), CAST(7409667567 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (7, N'Radha', 45678, N'radha123', N'radha123', 23, N'Female', N'#555,udupi', N'Karnataka', 567432, N'India', N'Axis Bank', N'udupi', N'ABI55557', N'RA19AR', N'active', N'radha@gmail.com', CAST(N'1997-10-07' AS Date), CAST(909087657323451 AS Numeric(18, 0)), CAST(890110987056 AS Numeric(12, 0)), CAST(7788995555 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (8, N'Ravan', 667893, N'puttur', N'puttur', 23, N'male', N'NULL#665,puttur', N'Karnataka', 587964, N'India', N'ICICI', N'Puttur', N'ICICI2222', N'P1799K', N'not-active', N'ravan@gmail.com', CAST(N'1997-12-09' AS Date), CAST(435621247900005 AS Numeric(18, 0)), CAST(444413050937 AS Numeric(12, 0)), CAST(8899776654 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (9, N'Pooja', 967833, N'pooza', N'pooza', 25, N'Female', N'#985,Mysore', N'Karnataka', 567342, N'India', N'HDFC', N'Mysore', N'HDFC5552', N'P0506S', N'active', N'p_@gmail.com', CAST(N'1995-05-06' AS Date), CAST(500001000023457 AS Numeric(18, 0)), CAST(677689980980 AS Numeric(12, 0)), CAST(7878989856 AS Numeric(12, 0)))
INSERT [dbo].[InsurerDetail] ([Reg_id], [Name], [Policy_Number], [Password], [Confirm_Password], [Age], [Gender], [Address], [State], [Pin_Code], [Country], [Bank_Name], [Bank_Branch], [IFSC], [Dl_No], [Status], [Email_Id], [DOB], [Bank_AC_No], [Aadhar_No], [Contact_No]) VALUES (10, N'Vinay', 142084, N'vinayn', N'vinayn', 23, N'male', N'#765,Mysore', N'Karnataka', 512347, N'India', N'HDFC', N'Mysore', N'HDFC4442', N'V1421K', N'active', N'vinayak@gmail.com', CAST(N'1997-12-14' AS Date), CAST(509010203032251 AS Numeric(18, 0)), CAST(790843256678 AS Numeric(12, 0)), CAST(8978987656 AS Numeric(12, 0)))
SET IDENTITY_INSERT [dbo].[InsurerDetail] OFF
SET IDENTITY_INSERT [dbo].[Officers_Login] ON 

INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (1, N'Ashok Kumar', N'ashok@', N'Assure_Insurence_Officer', N'ashokkumar@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (2, N'Vinod', N'123vinod', N'Claim_Officer', N'vinod@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (3, N'Vijay', N'*vijayn', N'Assessor', N'vijay@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (4, N'Prema N', N'n123prema', N'Assessor', N'preman@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (5, N'Suresh S', N'suresh$', N'Claim_Authorizer', N'suresh@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (6, N'Sandya B', N'bsandya123', N'Claim_Officer', N'sandyab@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (7, N'Ramya', N'ram123$', N'Assure_Insurence_Officer', N'ramyapuc@gmail.com')
INSERT [dbo].[Officers_Login] ([Emp_Id], [Officer_Name], [Password], [Officer_Type], [Email_Id]) VALUES (8, N'Kavya', N'kavana84$', N'Claim_Authorizer', N'kavyakumari@gmail.com')
SET IDENTITY_INSERT [dbo].[Officers_Login] OFF
SET IDENTITY_INSERT [dbo].[Vehicle_Detail] ON 

INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (1, 1, N'KA1198', N'BMW', N'Car', 0x433A5C4458435C696D67312E504E47, N'BMW 3 Series', N'1GNCS18Z3MO115561', N'52WVC10338')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (2, 2, N'KA1289', N'Honda', N'Bike', 0x433A5C4458435C696D67322E504E47, N'Activa 6G', NULL, N'53DRH34209')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (3, 3, N'KA1377', N'Honda', N'Bike', 0x433A5C4458435C696D67332E504E47, N'Dio', NULL, N'64DRF46890')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (4, 4, N'KA1466', N'Bentley', N'Car', 0x433A5C4458435C696D67342E504E47, N'Bentley Bentayga', N'2HGCS18Z3MO115563', N'63YDD20449')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (5, 5, N'KA2345', N'Bajaj TVS', N'Bike', 0x433A5C4458435C696D67352E504E47, N'TVS Sport', NULL, N'56DRF56098')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (6, 6, N'KA1067', N'Audi', N'Car', 0x433A5C4458435C696D67362E504E47, N'Audi A6', N'2ADCS18Z3MO115563', N'74ZEF305548')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (7, 7, N'KA3423', N'Honda', N'Car', 0x433A5C4458435C696D67372E504E47, N'Honda Civic', N'2HGCS18Z3MO115553', N'65WCV23454')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (8, 8, N'KA6700', N'Royal Enfield Yamaha', N'Bike', 0x433A5C4458435C696D67382E504E47, N'Classic 350', NULL, N'45YCV89670')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (9, 9, N'KA6070', N'TVS', N'Bike', 0x433A5C4458435C696D67392E504E47, N'Jupiter', NULL, N'89WCV90675')
INSERT [dbo].[Vehicle_Detail] ([Vehicle_id], [Reg_Id], [Vehicle_Number], [Vehicle_Name], [Vehicle_Type], [Bill], [Model], [Chassis_No], [Engine_Number]) VALUES (10, 10, N'KA0032', N'Audi', N'Car', 0x433A5C4458435C696D6731302E504E47, N'Audi Q8', N'2ADCS18Z3MO115564', N'77VCD34568')
SET IDENTITY_INSERT [dbo].[Vehicle_Detail] OFF
ALTER TABLE [dbo].[ClaimDetail]  WITH CHECK ADD  CONSTRAINT [FK_ClaimDetail_InsurerDetail] FOREIGN KEY([Reg_Id])
REFERENCES [dbo].[InsurerDetail] ([Reg_id])
GO
ALTER TABLE [dbo].[ClaimDetail] CHECK CONSTRAINT [FK_ClaimDetail_InsurerDetail]
GO
ALTER TABLE [dbo].[ClaimStatusDetail]  WITH CHECK ADD  CONSTRAINT [FK_ClaimStatusDetail_ClaimDetail] FOREIGN KEY([Claim_id])
REFERENCES [dbo].[ClaimDetail] ([Claim_Id])
GO
ALTER TABLE [dbo].[ClaimStatusDetail] CHECK CONSTRAINT [FK_ClaimStatusDetail_ClaimDetail]
GO
ALTER TABLE [dbo].[ClaimStatusDetail]  WITH CHECK ADD  CONSTRAINT [FK_ClaimStatusDetail_InsurerDetail] FOREIGN KEY([Reg_Id])
REFERENCES [dbo].[InsurerDetail] ([Reg_id])
GO
ALTER TABLE [dbo].[ClaimStatusDetail] CHECK CONSTRAINT [FK_ClaimStatusDetail_InsurerDetail]
GO
ALTER TABLE [dbo].[ClaimStatusDetail]  WITH CHECK ADD  CONSTRAINT [FK_ClaimStatusDetail_Vehicle_Detail] FOREIGN KEY([Vehicle_id])
REFERENCES [dbo].[Vehicle_Detail] ([Vehicle_id])
GO
ALTER TABLE [dbo].[ClaimStatusDetail] CHECK CONSTRAINT [FK_ClaimStatusDetail_Vehicle_Detail]
GO
ALTER TABLE [dbo].[Officers_Login]  WITH CHECK ADD  CONSTRAINT [FK_Officers_Login_Officers_Login] FOREIGN KEY([Emp_Id])
REFERENCES [dbo].[Officers_Login] ([Emp_Id])
GO
ALTER TABLE [dbo].[Officers_Login] CHECK CONSTRAINT [FK_Officers_Login_Officers_Login]
GO
ALTER TABLE [dbo].[Vehicle_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Detail_InsurerDetail] FOREIGN KEY([Reg_Id])
REFERENCES [dbo].[InsurerDetail] ([Reg_id])
GO
ALTER TABLE [dbo].[Vehicle_Detail] CHECK CONSTRAINT [FK_Vehicle_Detail_InsurerDetail]
GO
