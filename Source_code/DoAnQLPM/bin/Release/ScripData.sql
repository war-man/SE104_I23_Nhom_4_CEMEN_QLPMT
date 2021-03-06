USE [master]
GO
/****** Object:  Database [QLPM4]    Script Date: 6/30/2018 15:51:30 ******/
CREATE DATABASE [QLPM4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLPM4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLPM4.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLPM4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLPM4_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLPM4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPM4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPM4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPM4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPM4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPM4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPM4] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPM4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLPM4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPM4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPM4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPM4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPM4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPM4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPM4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPM4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPM4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLPM4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPM4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPM4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPM4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPM4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPM4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPM4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPM4] SET RECOVERY FULL 
GO
ALTER DATABASE [QLPM4] SET  MULTI_USER 
GO
ALTER DATABASE [QLPM4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPM4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLPM4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLPM4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLPM4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLPM4', N'ON'
GO
USE [QLPM4]
GO
/****** Object:  UserDefinedFunction [dbo].[fChuyenCoDauThanhKhongDau]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fChuyenCoDauThanhKhongDau](@inputVar NVARCHAR(MAX) )
    RETURNS NVARCHAR(MAX)
    AS
    BEGIN    
        IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
       
        DECLARE @RT NVARCHAR(MAX)
        DECLARE @SIGN_CHARS NCHAR(256)
        DECLARE @UNSIGN_CHARS NCHAR (256)
     
        SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
        SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
     
        DECLARE @COUNTER int
        DECLARE @COUNTER1 int
       
        SET @COUNTER = 1
        WHILE (@COUNTER <= LEN(@inputVar))
        BEGIN  
            SET @COUNTER1 = 1
            WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
            BEGIN
                IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
                BEGIN          
                    IF @COUNTER = 1
                        SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                    ELSE
                        SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                    BREAK
                END
                SET @COUNTER1 = @COUNTER1 +1
            END
            SET @COUNTER = @COUNTER +1
        END
        RETURN @inputVar
    END
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[MaBN] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NamSinh] [int] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPKB]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPKB](
	[MaCTPKB] [int] IDENTITY(1,1) NOT NULL,
	[MaPKB] [int] NOT NULL,
	[MaThuoc] [int] NOT NULL,
	[SLThuoc] [int] NOT NULL DEFAULT ((1)),
	[CachDung] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTPKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaPKB] [int] NOT NULL,
	[TienKham] [float] NOT NULL,
	[TienThuoc] [float] NOT NULL,
	[TongTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuKB]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKB](
	[MaPKB] [int] IDENTITY(1,1) NOT NULL,
	[MaBN] [int] NOT NULL,
	[LoaiBenh] [nvarchar](50) NOT NULL,
	[TrieuChung] [nvarchar](100) NOT NULL,
	[NgayKham] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyetDinh]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyetDinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SLBenhNhan] [int] NOT NULL,
	[TienKham] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[tenhienthi] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[TYPE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [int] IDENTITY(1,1) NOT NULL,
	[TenThuoc] [nvarchar](50) NOT NULL,
	[DonVi] [nvarchar](4) NOT NULL,
	[DonGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BenhNhan] ON 

INSERT [dbo].[BenhNhan] ([MaBN], [HoVaTen], [GioiTinh], [NamSinh], [DiaChi]) VALUES (2, N'Trần Nam Bàng', N'Nam', 1997, N'Bình Thạnh')
INSERT [dbo].[BenhNhan] ([MaBN], [HoVaTen], [GioiTinh], [NamSinh], [DiaChi]) VALUES (6, N'Nguyễn Quốc Đạt', N'Nam', 1996, N'603')
SET IDENTITY_INSERT [dbo].[BenhNhan] OFF
SET IDENTITY_INSERT [dbo].[CHITIETPKB] ON 

INSERT [dbo].[CHITIETPKB] ([MaCTPKB], [MaPKB], [MaThuoc], [SLThuoc], [CachDung]) VALUES (8, 9, 5, 1, N'21')
INSERT [dbo].[CHITIETPKB] ([MaCTPKB], [MaPKB], [MaThuoc], [SLThuoc], [CachDung]) VALUES (9, 9, 10, 1, N'21')
INSERT [dbo].[CHITIETPKB] ([MaCTPKB], [MaPKB], [MaThuoc], [SLThuoc], [CachDung]) VALUES (10, 9, 12, 1, N'21')
INSERT [dbo].[CHITIETPKB] ([MaCTPKB], [MaPKB], [MaThuoc], [SLThuoc], [CachDung]) VALUES (11, 9, 13, 1, N'21')
SET IDENTITY_INSERT [dbo].[CHITIETPKB] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaPKB], [TienKham], [TienThuoc], [TongTien]) VALUES (1, 9, 30000, 47600, 97600)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[PhieuKB] ON 

INSERT [dbo].[PhieuKB] ([MaPKB], [MaBN], [LoaiBenh], [TrieuChung], [NgayKham]) VALUES (2, 2, N'Dạ Dày', N'Đau Bụng', CAST(N'2018-04-25' AS Date))
INSERT [dbo].[PhieuKB] ([MaPKB], [MaBN], [LoaiBenh], [TrieuChung], [NgayKham]) VALUES (7, 6, N'ádsa', N'ádsa', CAST(N'2018-06-27' AS Date))
INSERT [dbo].[PhieuKB] ([MaPKB], [MaBN], [LoaiBenh], [TrieuChung], [NgayKham]) VALUES (8, 6, N'ádasdsa', N'ádsadsa', CAST(N'2018-06-27' AS Date))
INSERT [dbo].[PhieuKB] ([MaPKB], [MaBN], [LoaiBenh], [TrieuChung], [NgayKham]) VALUES (9, 6, N'ádasdsa', N'sadsad', CAST(N'2018-06-27' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuKB] OFF
SET IDENTITY_INSERT [dbo].[QuyetDinh] ON 

INSERT [dbo].[QuyetDinh] ([id], [SLBenhNhan], [TienKham]) VALUES (1, 30, 30000)
SET IDENTITY_INSERT [dbo].[QuyetDinh] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [username], [tenhienthi], [password], [TYPE]) VALUES (1, N'1', N'Test', N'1', 2)
INSERT [dbo].[TaiKhoan] ([id], [username], [tenhienthi], [password], [TYPE]) VALUES (2, N'admin', N'CEEM', N'admin', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[Thuoc] ON 

INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (1, N'Levothyroxine', N'Viên', 69000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (2, N'Memantine', N'Viên', 19000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (5, N'Zolpidem', N'Viên', 10000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (9, N'Eszopiclone', N'Chai', 20000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (10, N'Testosterone', N'Chai', 18200)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (12, N'Vitamin D', N'Viên', 4000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (13, N'Tiotropium', N'Chai', 15400)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonVi], [DonGia]) VALUES (14, N'Donepezil', N'Viên', 14000)
SET IDENTITY_INSERT [dbo].[Thuoc] OFF
ALTER TABLE [dbo].[CHITIETPKB]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([MaPKB])
REFERENCES [dbo].[PhieuKB] ([MaPKB])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETPKB] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[CHITIETPKB]  WITH CHECK ADD  CONSTRAINT [FK3] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETPKB] CHECK CONSTRAINT [FK3]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK4] FOREIGN KEY([MaPKB])
REFERENCES [dbo].[PhieuKB] ([MaPKB])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK4]
GO
ALTER TABLE [dbo].[PhieuKB]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuKB] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[BenhNhan]  WITH CHECK ADD  CONSTRAINT [cont1] CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[BenhNhan] CHECK CONSTRAINT [cont1]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [Cont2] CHECK  (([DonVi]=N'Viên' OR [DonVi]=N'Chai'))
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [Cont2]
GO
/****** Object:  StoredProcedure [dbo].[Delete BenhNhan]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Delete BenhNhan]
@key as int
AS
DELETE 
     FROM   BenhNhan
     WHERE  
     BenhNhan.MaBN = @key
GO
/****** Object:  StoredProcedure [dbo].[Delete ChiTietPhieuKham]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Delete ChiTietPhieuKham]
@key as int
AS
DELETE 
     FROM   CHITIETPKB
     WHERE  
     CHITIETPKB.MaCTPKB = @key
GO
/****** Object:  StoredProcedure [dbo].[Delete TaiKhoan]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Delete TaiKhoan]
@key as varchar(max)
AS
DELETE 
     FROM   TaiKhoan
     WHERE  
     TaiKhoan.username = @key
GO
/****** Object:  StoredProcedure [dbo].[Delete Thuoc]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Delete Thuoc]
@key as int
AS
DELETE 
     FROM   Thuoc
     WHERE  
     Thuoc.MaThuoc = @key
GO
/****** Object:  StoredProcedure [dbo].[Final add CTPhieuKham]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Final add CTPhieuKham]
as
SELECT MAX(MaCTPKB) AS MaCTPKB
FROM CHITIETPKB
GO
/****** Object:  StoredProcedure [dbo].[Final add PhieuKham]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Final add PhieuKham]
as
SELECT MAX(MaPKB) AS MaPKB
FROM PhieuKB
GO
/****** Object:  StoredProcedure [dbo].[Get Build]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Get Build]
@date as date, @maBN as int
as
select  Row_number() over(order by Thuoc.MaThuoc) STT,Thuoc.TenThuoc,Thuoc.DonGia,SLThuoc,(Thuoc.DonGia * B.SLThuoc) as Tien,B.MaPKB from (select CHITIETPKB.MaThuoc,CHITIETPKB.SLThuoc,CHITIETPKB.MaPKB from (select MaPKB from PhieuKB
where Day(PhieuKB.NgayKham) = Day(@date) and MONTH(PhieuKB.NgayKham) = MONTH(@date) and YEAR(PhieuKB.NgayKham) = YEAR(@date) and PhieuKB.MaBN = @maBN) A,CHITIETPKB
where A.MaPKB = CHITIETPKB.MaPKB) B,Thuoc
where B.MaThuoc = Thuoc.MaThuoc
GO
/****** Object:  StoredProcedure [dbo].[Sale by Bill]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sale by Bill]
@key as int
as
select Row_number() over(order by PhieuKB.NgayKham) STT,NgayKham,TienKham,TienThuoc,TongTien from PhieuKB,HoaDon
where PhieuKB.MaBN = @key and PhieuKB.MaPKB = HoaDon.MaPKB
GO
/****** Object:  StoredProcedure [dbo].[Sales by Month]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sales by Month]
@month	int
AS
select	Row_number() over(order by HoaDon.TongTien) STT,
		Day(PhieuKB.NgayKham) as Ngay,
		(select COUNT(*) from PhieuKB,BenhNhan where PhieuKB.MABN = BenhNhan.MaBN and MONTH(PhieuKB.NgayKham) = @month) as SoBenhNhan,
		HoaDon.TongTien as DoanhThu,
		(SELECT CAST(HoaDon.TongTien AS float) / 
		CAST((select SUM(TongTien) from PhieuKB,HoaDon 
		where PhieuKB.MaPKB = HoaDon.MaPKB and MONTH(PhieuKB.NgayKham) = @month ) AS float)) as TiLe
from PhieuKB,HoaDon
where PhieuKB.MaPKB = HoaDon.MaPKB and Month(PhieuKB.NgayKham) = @month
GO
/****** Object:  StoredProcedure [dbo].[Sales by Month Drug]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sales by Month Drug]
@moth int
AS
select Row_number() over(order by Thuoc.MaThuoc) STT,
		Thuoc.TenThuoc TenThuoc,
		Thuoc.DonVi DonVi,
		B.SoLuong SoLuong,
		B.SLDung SLDung
		from (select C.MaThuoc,sum(C.SLThuoc) SoLuong,count(C.MaThuoc) SLDung from (select Thuoc.MaThuoc,CHITIETPKB.SLThuoc from(select * from PhieuKB
			where MONTH(PhieuKB.NgayKham) = @moth) A,CHITIETPKB,Thuoc
			where A.MaPKB = CHITIETPKB.MaPKB and CHITIETPKB.MaThuoc = Thuoc.MaThuoc)  C
			Group by C.MaThuoc) B, Thuoc
		where B.MaThuoc = Thuoc.MaThuoc
GO
/****** Object:  StoredProcedure [dbo].[Sales by TenThuoc]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sales by TenThuoc]
as
select TenThuoc,MaThuoc from Thuoc
GO
/****** Object:  StoredProcedure [dbo].[Sales TenBenhNhan]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sales TenBenhNhan]
@key as int
as
Select HoVaTen from BenhNhan
where BenhNhan.MaBN = @key
GO
/****** Object:  StoredProcedure [dbo].[Search by Keyword]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search by Keyword]
@keyword as varchar(max)
AS
SELECT * 
FROM BenhNhan 
WHERE dbo.fChuyenCoDauThanhKhongDau(HoVaTen) LIKE  N'%'+@keyword+'%'
GO
/****** Object:  StoredProcedure [dbo].[Search by Keyword Account]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search by Keyword Account]
@keyword as varchar(max)
AS
SELECT * 
FROM TaiKhoan 
WHERE dbo.fChuyenCoDauThanhKhongDau(tenhienthi) LIKE  N'%'+@keyword+'%'
GO
/****** Object:  StoredProcedure [dbo].[Search by keyword Bill]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search by keyword Bill]
@key as int
as
select BenhNhan.HoVaTen,NgayKham from BenhNhan,PhieuKB
where PhieuKB.MaBN = BenhNhan.MaBN and BenhNhan.MaBN = @key
GO
/****** Object:  StoredProcedure [dbo].[Search by Keyword Drug]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search by Keyword Drug]
@keyword as varchar(max)
AS
SELECT * 
FROM Thuoc 
WHERE dbo.fChuyenCoDauThanhKhongDau(TenThuoc) LIKE  N'%'+@keyword+'%'
GO
/****** Object:  StoredProcedure [dbo].[Search Danh Sach CTPhieuKham by MaPKB]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search Danh Sach CTPhieuKham by MaPKB]
@key as int
as
select TenThuoc,SLThuoc,CachDung,MaCTPKB from (select MaThuoc, SLThuoc, CachDung,MaCTPKB from PhieuKB,CHITIETPKB 
where PhieuKB.MaPKB = CHITIETPKB.MaPKB and PhieuKB.MaPKB = @key) A, Thuoc
where A.MaThuoc = Thuoc.MaThuoc
GO
/****** Object:  StoredProcedure [dbo].[Search LoaiTK]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Search LoaiTK]
@key as varchar(max)
AS
select TYPE LoaiTK,tenhienthi TenHienThi from TaiKhoan
where TaiKhoan.username = @key
GO
/****** Object:  StoredProcedure [dbo].[Select QuyDinh]    Script Date: 6/30/2018 15:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Select QuyDinh]
as
select QuyetDinh.TienKham,QuyetDinh.SLBenhNhan from QuyetDinh
GO
USE [master]
GO
ALTER DATABASE [QLPM4] SET  READ_WRITE 
GO
