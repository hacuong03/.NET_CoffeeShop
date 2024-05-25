USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 16/05/2024 3:57:24 CH ******/
ALTER DATABASE [QuanLyQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyQuanCafe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUERY_STORE = OFF
GO
USE [QuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[tblChiTietHoaDonBan]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHoaDonBan](
	[MaHoaDonBan] [nvarchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[KhuyenMai] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietHoaDonNhap]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHoaDonNhap](
	[MaHoaDonNhap] [nvarchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TongTien] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCongDung]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCongDung](
	[MaCongDung] [nvarchar](50) NOT NULL,
	[TenCongDung] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCongDung] PRIMARY KEY CLUSTERED 
(
	[MaCongDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDonBan]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonBan](
	[MaHoaDonBan] [nvarchar](50) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_tblHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDonNhap]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonNhap](
	[MaHoaDonNhap] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TongTien] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoai]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoai](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [nchar](10) NOT NULL,
	[MaQue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQue]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQue](
	[MaQue] [nvarchar](50) NOT NULL,
	[TenQue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblQue] PRIMARY KEY CLUSTERED 
(
	[MaQue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 16/05/2024 3:57:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaLoai] [nvarchar](50) NOT NULL,
	[GiaNhap] [float] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[SoLuong] [float] NOT NULL,
	[MaCongDung] [nvarchar](50) NOT NULL,
	[HinhAnh] [image] NULL,
 CONSTRAINT [PK_tblSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B188', N'SP27', 4, 787489, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B2', N'SP35', 10, 522367, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B120', N'SP4', 3, 158335, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B116', N'SP23', 3, 233267, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B129', N'SP13', 1, 136502, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B7', N'SP15', 9, 676316, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B70', N'SP3', 4, 318491, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B42', N'SP8', 8, 647247, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B9', N'SP10', 3, 755004, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B129', N'SP31', 9, 296462, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B142', N'SP35', 5, 739684, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B114', N'SP32', 2, 270557, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B148', N'SP34', 8, 48309, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B134', N'SP32', 6, 694542, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B31', N'SP4', 3, 682139, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B132', N'SP13', 1, 500698, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B170', N'SP28', 2, 698823, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B39', N'SP24', 5, 533227, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B133', N'SP8', 9, 498425, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B147', N'SP31', 5, 829672, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B171', N'SP23', 9, 224109, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B63', N'SP17', 7, 941515, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B148', N'SP21', 6, 974671, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B187', N'SP37', 4, 265405, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B34', N'SP9', 7, 947680, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B71', N'SP36', 7, 902369, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B178', N'SP5', 8, 795715, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B48', N'SP20', 2, 144226, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B85', N'SP1', 8, 754734, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B54', N'SP22', 2, 808858, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B164', N'SP18', 8, 772148, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B158', N'SP34', 7, 261242, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B140', N'SP34', 7, 294116, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B121', N'SP34', 6, 598579, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B191', N'SP24', 8, 542982, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B22', N'SP27', 3, 935094, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B175', N'SP10', 9, 908844, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B72', N'SP16', 10, 71063, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B77', N'SP30', 4, 993826, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B137', N'SP3', 9, 424129, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B143', N'SP28', 4, 223933, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B96', N'SP19', 7, 692158, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B142', N'SP29', 7, 596036, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B85', N'SP22', 3, 948457, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B7', N'SP8', 7, 72077, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B137', N'SP20', 5, 270086, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B11', N'SP32', 10, 658159, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B32', N'SP35', 2, 92536, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B93', N'SP4', 6, 229164, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B152', N'SP20', 4, 50940, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B142', N'SP20', 4, 394139, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B63', N'SP3', 4, 996157, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B165', N'SP37', 7, 573936, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B4', N'SP10', 8, 842448, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B98', N'SP20', 3, 327875, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B188', N'SP19', 3, 52990, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B117', N'SP12', 8, 564525, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B101', N'SP7', 6, 523044, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B18', N'SP10', 9, 281646, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B153', N'SP12', 4, 583622, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B110', N'SP18', 1, 231877, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B30', N'SP4', 5, 757771, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B22', N'SP12', 9, 139929, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B186', N'SP7', 9, 439743, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B134', N'SP33', 4, 951053, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B115', N'SP13', 6, 749483, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B120', N'SP7', 1, 991538, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B112', N'SP35', 10, 974405, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B148', N'SP36', 2, 840224, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B135', N'SP14', 3, 865892, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B63', N'SP5', 2, 335210, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B75', N'SP35', 10, 750350, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B174', N'SP14', 3, 947184, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B196', N'SP6', 2, 437613, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B118', N'SP16', 2, 56854, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B29', N'SP17', 2, 672437, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B128', N'SP31', 6, 938787, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B144', N'SP4', 4, 351341, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B68', N'SP27', 4, 435293, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B138', N'SP3', 3, 560030, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B174', N'SP31', 3, 491642, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B19', N'SP17', 5, 813308, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B199', N'SP29', 8, 942019, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B17', N'SP10', 3, 600204, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B59', N'SP8', 3, 817938, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B26', N'SP18', 3, 92326, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B137', N'SP21', 5, 245265, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B177', N'SP21', 8, 404708, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B121', N'SP28', 3, 673494, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B73', N'SP1', 6, 184416, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B32', N'SP8', 5, 981059, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B189', N'SP17', 9, 817888, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B32', N'SP24', 9, 814892, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B168', N'SP12', 2, 329480, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B26', N'SP9', 4, 141078, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B4', N'SP8', 4, 567763, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B58', N'SP27', 1, 205495, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B186', N'SP30', 4, 559057, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B102', N'SP29', 3, 143560, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B159', N'SP36', 2, 684452, N'0         ')
GO
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B83', N'SP20', 2, 632894, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B150', N'SP15', 1, 525752, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B162', N'SP13', 1, 643025, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B148', N'SP36', 8, 668485, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B85', N'SP28', 10, 349750, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B112', N'SP12', 3, 60092, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B23', N'SP25', 4, 456742, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B109', N'SP10', 6, 86075, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B93', N'SP36', 2, 58380, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B61', N'SP10', 1, 83318, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B106', N'SP23', 9, 297927, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B147', N'SP22', 7, 265636, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B142', N'SP34', 5, 102422, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B19', N'SP36', 6, 868649, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B29', N'SP15', 7, 824612, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B155', N'SP11', 5, 238619, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B163', N'SP2', 6, 771337, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B146', N'SP15', 5, 600351, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B108', N'SP20', 9, 888826, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B164', N'SP33', 3, 879046, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B55', N'SP2', 4, 229301, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B156', N'SP33', 1, 687137, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B169', N'SP23', 2, 565142, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B92', N'SP9', 2, 88283, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B168', N'SP12', 10, 666684, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B91', N'SP19', 9, 462390, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B41', N'SP1', 4, 746024, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B82', N'SP30', 6, 558588, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B105', N'SP25', 4, 30941, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B56', N'SP23', 8, 202062, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B2', N'SP33', 7, 207728, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B99', N'SP11', 6, 979655, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B105', N'SP33', 9, 191836, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B3', N'SP20', 8, 616356, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B175', N'SP8', 6, 593155, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B36', N'SP18', 4, 65247, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B81', N'SP36', 4, 543632, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B173', N'SP26', 3, 644893, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B140', N'SP10', 5, 309555, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B31', N'SP13', 3, 621695, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B78', N'SP36', 4, 284571, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B27', N'SP33', 1, 632386, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B47', N'SP28', 3, 851926, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B128', N'SP37', 2, 705208, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B59', N'SP24', 7, 889818, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B86', N'SP12', 4, 249930, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B23', N'SP9', 7, 386700, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B105', N'SP20', 2, 492331, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B113', N'SP2', 2, 472666, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B97', N'SP23', 3, 178853, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B102', N'SP22', 3, 634141, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B77', N'SP10', 5, 929242, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B112', N'SP5', 5, 881918, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B43', N'SP27', 2, 499781, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B136', N'SP16', 2, 786638, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B112', N'SP4', 6, 331512, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B186', N'SP37', 8, 852146, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B19', N'SP13', 5, 686972, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B164', N'SP10', 8, 816017, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B19', N'SP3', 4, 128076, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B121', N'SP16', 2, 795668, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B182', N'SP1', 7, 101641, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B107', N'SP21', 2, 630589, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B8', N'SP30', 9, 72060, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B145', N'SP1', 1, 485782, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B164', N'SP32', 5, 660949, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B5', N'SP8', 5, 649282, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B25', N'SP27', 4, 551475, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B64', N'SP6', 8, 744883, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B165', N'SP5', 7, 943044, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B110', N'SP26', 5, 808756, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B188', N'SP32', 1, 140276, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B17', N'SP13', 6, 930767, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B72', N'SP25', 4, 282742, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B101', N'SP5', 1, 217117, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B163', N'SP8', 2, 460254, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B177', N'SP31', 1, 578657, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B60', N'SP16', 7, 428339, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B58', N'SP2', 1, 809854, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B111', N'SP34', 7, 870972, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B179', N'SP19', 7, 510772, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B180', N'SP29', 6, 416715, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B7', N'SP28', 8, 688359, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B189', N'SP6', 7, 475197, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B79', N'SP2', 8, 389356, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B153', N'SP13', 3, 72878, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B92', N'SP3', 8, 960070, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B177', N'SP24', 2, 53979, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B126', N'SP5', 7, 671379, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B146', N'SP20', 6, 414268, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B49', N'SP6', 4, 689152, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B65', N'SP30', 4, 395458, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B90', N'SP15', 8, 791631, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B8', N'SP34', 8, 287181, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B26', N'SP12', 8, 671151, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B82', N'SP20', 4, 980902, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B16', N'SP14', 7, 629023, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B72', N'SP18', 5, 751645, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B123', N'SP7', 6, 611592, N'0         ')
INSERT [dbo].[tblChiTietHoaDonBan] ([MaHoaDonBan], [MaSanPham], [SoLuong], [ThanhTien], [KhuyenMai]) VALUES (N'B167', N'SP32', 7, 868741, N'0         ')
GO
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N1', N'SP1', 120, N'CC1', N'20000000  ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N2', N'SP3', 211, N'CC2', N'32000000  ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N3', N'SP20', 310, N'CC3', N'20000000  ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N4', N'SP23', 21, N'CC4', N'10000000  ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N5', N'SP2', 21, N'CC5', N'21000000  ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N6', N'SP22', 202, N'CC6', N'5000000   ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N7', N'SP9', 211, N'CC7', N'2000000   ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N8', N'SP10', 150, N'CC7', N'2920000   ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N9', N'SP18', 29, N'CC1', N'2010000   ')
INSERT [dbo].[tblChiTietHoaDonNhap] ([MaHoaDonNhap], [MaSanPham], [SoLuong], [MaNhaCungCap], [TongTien]) VALUES (N'N10', N'SP20', 99, N'CC2', N'1000000   ')
GO
INSERT [dbo].[tblCongDung] ([MaCongDung], [TenCongDung]) VALUES (N'1', N'Sức Khỏe ')
INSERT [dbo].[tblCongDung] ([MaCongDung], [TenCongDung]) VALUES (N'2 ', N'Tỉnh Táo')
INSERT [dbo].[tblCongDung] ([MaCongDung], [TenCongDung]) VALUES (N'3 ', N'Tâm Trạng')
INSERT [dbo].[tblCongDung] ([MaCongDung], [TenCongDung]) VALUES (N'4 ', N'')
GO
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B1', CAST(N'2024-08-16' AS Date), N'NV3', N'K5', 322251)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B10', CAST(N'2024-07-24' AS Date), N'NV3', N'K8', 900343)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B100', CAST(N'2024-06-01' AS Date), N'NV3', N'K5', 760862)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B101', CAST(N'2024-08-14' AS Date), N'NV4', N'K8', 542943)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B102', CAST(N'2024-07-31' AS Date), N'NV4', N'K6', 778290)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B103', CAST(N'2024-06-11' AS Date), N'NV3', N'K10', 94580)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B104', CAST(N'2024-06-19' AS Date), N'NV2', N'K8', 403261)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B105', CAST(N'2024-07-07' AS Date), N'NV2', N'K4', 877460)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B106', CAST(N'2024-08-29' AS Date), N'NV4', N'K7', 200686)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B107', CAST(N'2024-07-31' AS Date), N'NV5', N'K2', 947940)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B108', CAST(N'2024-06-11' AS Date), N'NV5', N'K6', 540474)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B109', CAST(N'2024-08-08' AS Date), N'NV4', N'K8', 697204)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B11', CAST(N'2024-07-28' AS Date), N'NV4', N'K4', 580148)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B110', CAST(N'2024-07-21' AS Date), N'NV2', N'K5', 846776)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B111', CAST(N'2024-08-02' AS Date), N'NV4', N'K8', 970995)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B112', CAST(N'2024-09-02' AS Date), N'NV3', N'K3', 248992)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B113', CAST(N'2024-08-26' AS Date), N'NV4', N'K9', 179426)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B114', CAST(N'2024-06-02' AS Date), N'NV3', N'K4', 423594)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B115', CAST(N'2024-06-20' AS Date), N'NV2', N'K3', 362820)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B116', CAST(N'2024-08-11' AS Date), N'NV2', N'K1', 727577)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B117', CAST(N'2024-06-18' AS Date), N'NV4', N'K6', 538239)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B118', CAST(N'2024-08-10' AS Date), N'NV5', N'K9', 275906)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B119', CAST(N'2024-08-25' AS Date), N'NV1', N'K6', 418937)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B12', CAST(N'2024-07-17' AS Date), N'NV5', N'K5', 899065)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B120', CAST(N'2024-07-07' AS Date), N'NV5', N'K10', 222884)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B121', CAST(N'2024-08-13' AS Date), N'NV1', N'K9', 858211)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B122', CAST(N'2024-07-17' AS Date), N'NV3', N'K1', 734190)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B123', CAST(N'2024-06-08' AS Date), N'NV4', N'K6', 149139)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B124', CAST(N'2024-06-28' AS Date), N'NV4', N'K6', 914011)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B125', CAST(N'2024-09-06' AS Date), N'NV2', N'K6', 406063)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B126', CAST(N'2024-07-17' AS Date), N'NV3', N'K3', 689902)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B127', CAST(N'2024-07-19' AS Date), N'NV4', N'K9', 902468)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B128', CAST(N'2024-05-29' AS Date), N'NV4', N'K8', 64732)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B129', CAST(N'2024-08-11' AS Date), N'NV2', N'K7', 861941)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B13', CAST(N'2024-06-25' AS Date), N'NV3', N'K9', 584187)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B130', CAST(N'2024-06-17' AS Date), N'NV4', N'K4', 166913)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B131', CAST(N'2024-06-19' AS Date), N'NV4', N'K7', 597044)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B132', CAST(N'2024-05-30' AS Date), N'NV3', N'K8', 360604)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B133', CAST(N'2024-05-22' AS Date), N'NV1', N'K9', 935657)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B134', CAST(N'2024-07-01' AS Date), N'NV4', N'K8', 4178)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B135', CAST(N'2024-08-17' AS Date), N'NV3', N'K1', 897523)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B136', CAST(N'2024-08-05' AS Date), N'NV5', N'K2', 212110)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B137', CAST(N'2024-09-05' AS Date), N'NV3', N'K4', 956710)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B138', CAST(N'2024-08-28' AS Date), N'NV3', N'K7', 721874)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B139', CAST(N'2024-07-17' AS Date), N'NV2', N'K10', 412950)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B14', CAST(N'2024-07-06' AS Date), N'NV1', N'K4', 864234)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B140', CAST(N'2024-06-23' AS Date), N'NV3', N'K10', 773689)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B141', CAST(N'2024-09-05' AS Date), N'NV2', N'K5', 124486)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B142', CAST(N'2024-07-28' AS Date), N'NV3', N'K8', 260535)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B143', CAST(N'2024-07-16' AS Date), N'NV3', N'K4', 162469)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B144', CAST(N'2024-05-26' AS Date), N'NV2', N'K3', 962730)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B145', CAST(N'2024-09-05' AS Date), N'NV4', N'K6', 541348)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B146', CAST(N'2024-09-03' AS Date), N'NV4', N'K9', 246934)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B147', CAST(N'2024-07-22' AS Date), N'NV3', N'K5', 381051)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B148', CAST(N'2024-07-28' AS Date), N'NV3', N'K3', 679415)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B149', CAST(N'2024-07-08' AS Date), N'NV1', N'K5', 434679)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B15', CAST(N'2024-07-31' AS Date), N'NV1', N'K5', 809201)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B150', CAST(N'2024-07-07' AS Date), N'NV5', N'K8', 263327)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B151', CAST(N'2024-08-11' AS Date), N'NV4', N'K5', 902898)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B152', CAST(N'2024-06-25' AS Date), N'NV5', N'K9', 326457)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B153', CAST(N'2024-06-12' AS Date), N'NV5', N'K6', 924401)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B154', CAST(N'2024-09-06' AS Date), N'NV3', N'K2', 676295)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B155', CAST(N'2024-05-30' AS Date), N'NV2', N'K4', 103644)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B156', CAST(N'2024-06-14' AS Date), N'NV1', N'K8', 618467)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B157', CAST(N'2024-05-24' AS Date), N'NV3', N'K5', 27712)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B158', CAST(N'2024-06-07' AS Date), N'NV4', N'K6', 86243)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B159', CAST(N'2024-07-03' AS Date), N'NV2', N'K4', 989315)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B16', CAST(N'2024-08-01' AS Date), N'NV2', N'K4', 442593)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B160', CAST(N'2024-06-23' AS Date), N'NV1', N'K7', 506763)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B161', CAST(N'2024-08-03' AS Date), N'NV5', N'K2', 231898)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B162', CAST(N'2024-07-08' AS Date), N'NV2', N'K9', 847523)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B163', CAST(N'2024-06-28' AS Date), N'NV2', N'K1', 672806)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B164', CAST(N'2024-08-04' AS Date), N'NV2', N'K9', 806270)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B165', CAST(N'2024-07-25' AS Date), N'NV4', N'K9', 310930)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B166', CAST(N'2024-07-27' AS Date), N'NV3', N'K6', 464415)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B167', CAST(N'2024-08-25' AS Date), N'NV5', N'K5', 214509)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B168', CAST(N'2024-05-29' AS Date), N'NV4', N'K9', 462998)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B169', CAST(N'2024-07-15' AS Date), N'NV3', N'K8', 663853)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B17', CAST(N'2024-08-04' AS Date), N'NV2', N'K5', 657237)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B170', CAST(N'2024-05-27' AS Date), N'NV3', N'K5', 182473)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B171', CAST(N'2024-06-11' AS Date), N'NV4', N'K9', 285626)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B172', CAST(N'2024-07-16' AS Date), N'NV5', N'K2', 5366)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B173', CAST(N'2024-05-22' AS Date), N'NV4', N'K2', 318137)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B174', CAST(N'2024-05-24' AS Date), N'NV4', N'K3', 492358)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B175', CAST(N'2024-05-21' AS Date), N'NV5', N'K5', 220498)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B176', CAST(N'2024-07-24' AS Date), N'NV3', N'K9', 748349)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B177', CAST(N'2024-06-25' AS Date), N'NV3', N'K5', 907741)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B178', CAST(N'2024-08-09' AS Date), N'NV5', N'K4', 733332)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B179', CAST(N'2024-07-12' AS Date), N'NV2', N'K5', 870859)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B18', CAST(N'2024-05-21' AS Date), N'NV2', N'K5', 999343)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B180', CAST(N'2024-07-19' AS Date), N'NV4', N'K5', 870042)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B181', CAST(N'2024-07-11' AS Date), N'NV5', N'K3', 778547)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B182', CAST(N'2024-07-21' AS Date), N'NV4', N'K3', 375321)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B183', CAST(N'2024-07-28' AS Date), N'NV3', N'K6', 682884)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B184', CAST(N'2024-06-06' AS Date), N'NV2', N'K4', 778551)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B185', CAST(N'2024-08-17' AS Date), N'NV5', N'K3', 141178)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B186', CAST(N'2024-08-26' AS Date), N'NV3', N'K6', 135179)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B187', CAST(N'2024-08-23' AS Date), N'NV3', N'K6', 951585)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B188', CAST(N'2024-07-17' AS Date), N'NV1', N'K2', 203466)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B189', CAST(N'2024-07-17' AS Date), N'NV1', N'K7', 471488)
GO
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B19', CAST(N'2024-06-16' AS Date), N'NV4', N'K10', 587115)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B190', CAST(N'2024-05-30' AS Date), N'NV2', N'K10', 107377)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B191', CAST(N'2024-07-13' AS Date), N'NV2', N'K5', 149767)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B192', CAST(N'2024-07-03' AS Date), N'NV4', N'K8', 801945)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B193', CAST(N'2024-06-12' AS Date), N'NV4', N'K4', 377393)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B194', CAST(N'2024-07-15' AS Date), N'NV2', N'K8', 818307)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B195', CAST(N'2024-07-01' AS Date), N'NV3', N'K3', 359946)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B196', CAST(N'2024-06-21' AS Date), N'NV3', N'K1', 420421)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B197', CAST(N'2024-09-06' AS Date), N'NV2', N'K9', 160727)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B198', CAST(N'2024-07-30' AS Date), N'NV5', N'K9', 739652)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B199', CAST(N'2024-08-30' AS Date), N'NV5', N'K6', 60317)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B2', CAST(N'2024-08-02' AS Date), N'NV4', N'K6', 83064)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B20', CAST(N'2024-07-04' AS Date), N'NV1', N'K5', 70037)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B200', CAST(N'2024-07-01' AS Date), N'NV2', N'K5', 941254)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B21', CAST(N'2024-05-21' AS Date), N'NV5', N'K6', 192385)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B22', CAST(N'2024-08-13' AS Date), N'NV3', N'K4', 56430)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B23', CAST(N'2024-05-21' AS Date), N'NV3', N'K1', 7454)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B24', CAST(N'2024-08-16' AS Date), N'NV4', N'K9', 268726)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B25', CAST(N'2024-06-26' AS Date), N'NV2', N'K7', 191573)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B26', CAST(N'2024-06-10' AS Date), N'NV3', N'K9', 724529)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B27', CAST(N'2024-05-24' AS Date), N'NV4', N'K5', 928967)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B28', CAST(N'2024-08-20' AS Date), N'NV2', N'K8', 60804)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B29', CAST(N'2024-06-25' AS Date), N'NV5', N'K9', 339959)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B3', CAST(N'2024-07-12' AS Date), N'NV2', N'K7', 172906)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B30', CAST(N'2024-05-27' AS Date), N'NV4', N'K7', 756342)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B31', CAST(N'2024-07-20' AS Date), N'NV5', N'K3', 686218)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B32', CAST(N'2024-07-12' AS Date), N'NV2', N'K7', 936220)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B33', CAST(N'2024-06-24' AS Date), N'NV1', N'K8', 484552)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B34', CAST(N'2024-09-02' AS Date), N'NV3', N'K2', 574778)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B35', CAST(N'2024-05-24' AS Date), N'NV1', N'K7', 575654)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B36', CAST(N'2024-07-31' AS Date), N'NV4', N'K4', 121272)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B37', CAST(N'2024-08-24' AS Date), N'NV2', N'K7', 639992)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B38', CAST(N'2024-08-31' AS Date), N'NV3', N'K6', 727322)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B39', CAST(N'2024-06-09' AS Date), N'NV3', N'K1', 874117)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B4', CAST(N'2024-07-28' AS Date), N'NV3', N'K3', 604395)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B40', CAST(N'2024-08-17' AS Date), N'NV5', N'K8', 579938)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B41', CAST(N'2024-08-23' AS Date), N'NV5', N'K5', 260989)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B42', CAST(N'2024-08-08' AS Date), N'NV4', N'K8', 11133)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B43', CAST(N'2024-08-14' AS Date), N'NV3', N'K7', 392690)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B44', CAST(N'2024-06-28' AS Date), N'NV3', N'K2', 547190)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B45', CAST(N'2024-07-02' AS Date), N'NV4', N'K1', 657460)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B46', CAST(N'2024-05-30' AS Date), N'NV1', N'K3', 470223)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B47', CAST(N'2024-06-08' AS Date), N'NV3', N'K7', 957473)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B48', CAST(N'2024-07-17' AS Date), N'NV3', N'K1', 416492)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B49', CAST(N'2024-05-29' AS Date), N'NV4', N'K4', 990519)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B5', CAST(N'2024-08-31' AS Date), N'NV3', N'K6', 965165)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B50', CAST(N'2024-06-01' AS Date), N'NV3', N'K3', 958062)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B51', CAST(N'2024-07-08' AS Date), N'NV3', N'K9', 549654)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B52', CAST(N'2024-08-19' AS Date), N'NV4', N'K7', 321976)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B53', CAST(N'2024-06-27' AS Date), N'NV4', N'K5', 458210)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B54', CAST(N'2024-08-03' AS Date), N'NV3', N'K6', 383257)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B55', CAST(N'2024-06-02' AS Date), N'NV5', N'K10', 313846)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B56', CAST(N'2024-07-04' AS Date), N'NV4', N'K3', 656496)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B57', CAST(N'2024-08-28' AS Date), N'NV4', N'K5', 284965)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B58', CAST(N'2024-08-16' AS Date), N'NV5', N'K7', 135069)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B59', CAST(N'2024-07-26' AS Date), N'NV1', N'K4', 619509)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B6', CAST(N'2024-08-27' AS Date), N'NV3', N'K3', 395633)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B60', CAST(N'2024-06-20' AS Date), N'NV2', N'K7', 430660)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B61', CAST(N'2024-08-11' AS Date), N'NV4', N'K9', 161318)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B62', CAST(N'2024-08-31' AS Date), N'NV5', N'K8', 521217)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B63', CAST(N'2024-06-02' AS Date), N'NV2', N'K10', 625725)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B64', CAST(N'2024-07-16' AS Date), N'NV5', N'K3', 561614)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B65', CAST(N'2024-08-09' AS Date), N'NV3', N'K5', 279685)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B66', CAST(N'2024-07-04' AS Date), N'NV3', N'K8', 491554)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B67', CAST(N'2024-09-02' AS Date), N'NV4', N'K7', 395345)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B68', CAST(N'2024-09-04' AS Date), N'NV5', N'K9', 268988)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B69', CAST(N'2024-06-20' AS Date), N'NV3', N'K1', 439502)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B7', CAST(N'2024-07-27' AS Date), N'NV1', N'K1', 493970)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B70', CAST(N'2024-06-09' AS Date), N'NV3', N'K9', 813663)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B71', CAST(N'2024-08-16' AS Date), N'NV3', N'K3', 977888)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B72', CAST(N'2024-08-25' AS Date), N'NV2', N'K2', 10034)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B73', CAST(N'2024-07-17' AS Date), N'NV2', N'K6', 369098)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B74', CAST(N'2024-09-06' AS Date), N'NV2', N'K8', 610313)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B75', CAST(N'2024-07-07' AS Date), N'NV1', N'K4', 405635)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B76', CAST(N'2024-07-05' AS Date), N'NV4', N'K2', 841533)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B77', CAST(N'2024-08-10' AS Date), N'NV4', N'K9', 184718)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B78', CAST(N'2024-06-23' AS Date), N'NV4', N'K7', 51339)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B79', CAST(N'2024-09-05' AS Date), N'NV5', N'K4', 572070)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B8', CAST(N'2024-07-02' AS Date), N'NV1', N'K5', 258906)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B80', CAST(N'2024-05-27' AS Date), N'NV2', N'K7', 282356)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B81', CAST(N'2024-05-20' AS Date), N'NV2', N'K7', 799078)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B82', CAST(N'2024-09-05' AS Date), N'NV2', N'K2', 211945)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B83', CAST(N'2024-06-17' AS Date), N'NV4', N'K2', 53225)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B84', CAST(N'2024-07-15' AS Date), N'NV4', N'K2', 615257)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B85', CAST(N'2024-06-06' AS Date), N'NV4', N'K3', 816320)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B86', CAST(N'2024-08-07' AS Date), N'NV1', N'K5', 334628)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B87', CAST(N'2024-08-08' AS Date), N'NV4', N'K7', 796179)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B88', CAST(N'2024-07-04' AS Date), N'NV4', N'K4', 232599)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B89', CAST(N'2024-06-12' AS Date), N'NV1', N'K3', 411965)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B9', CAST(N'2024-06-22' AS Date), N'NV1', N'K7', 222716)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B90', CAST(N'2024-07-22' AS Date), N'NV1', N'K5', 797279)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B91', CAST(N'2024-06-22' AS Date), N'NV1', N'K2', 795075)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B92', CAST(N'2024-06-03' AS Date), N'NV3', N'K2', 588844)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B93', CAST(N'2024-08-16' AS Date), N'NV5', N'K9', 529698)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B94', CAST(N'2024-06-10' AS Date), N'NV5', N'K7', 769913)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B95', CAST(N'2024-08-02' AS Date), N'NV4', N'K4', 501022)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B96', CAST(N'2024-06-28' AS Date), N'NV1', N'K4', 929405)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B97', CAST(N'2024-07-19' AS Date), N'NV4', N'K9', 270914)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B98', CAST(N'2024-06-01' AS Date), N'NV4', N'K5', 881063)
INSERT [dbo].[tblHoaDonBan] ([MaHoaDonBan], [NgayBan], [MaNhanVien], [MaKhachHang], [TongTien]) VALUES (N'B99', CAST(N'2024-07-18' AS Date), N'NV5', N'K10', 936287)
GO
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N1', CAST(N'2024-05-16' AS Date), N'NV1', N'CC2', N'1000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N10', CAST(N'2024-01-03' AS Date), N'NV1', N'CC7', N'2100000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N2', CAST(N'2024-05-10' AS Date), N'NV1', N'CC1', N'2000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N3', CAST(N'2024-04-10' AS Date), N'NV2', N'CC1', N'5000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N4', CAST(N'2024-03-20' AS Date), N'NV3', N'CC5', N'2000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N5', CAST(N'2024-02-15' AS Date), N'NV2', N'CC3', N'7000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N6', CAST(N'2024-01-12' AS Date), N'NV5', N'CC4', N'2000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N7', CAST(N'2024-01-01' AS Date), N'NV4', N'CC7', N'4000000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N8', CAST(N'2024-02-20' AS Date), N'NV4', N'CC7', N'2300000   ')
INSERT [dbo].[tblHoaDonNhap] ([MaHoaDonNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap], [TongTien]) VALUES (N'N9', CAST(N'2024-02-10' AS Date), N'NV5', N'CC6', N'2000000   ')
GO
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K1 ', N'Dong Da')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K10 ', N'Thanh Xuan')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K11 ', N'Cau Giay ')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K12 ', N'Cau Giay')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K13 ', N'Hoan Kiem')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K14 ', N'Hoan Kiem')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K15 ', N'Dong Da')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K2 ', N'Thanh Xuan ')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K3 ', N'Dong Da')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K4 ', N'Bac Tu Liem')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K5 ', N'Nam Tu Liem')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K6 ', N'Hai Ba Trung')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'k7 ', N'Ba Dinh')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K8 ', N'Ba Dinh')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [DiaChi]) VALUES (N'K9 ', N'Tay Ho')
GO
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'', N'')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L1', N'Cà Phê Việt Nam ')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L2 ', N'Cà Phê Máy')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L3 ', N'Cold Brew')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L4 ', N'Trà Trái Cây')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L5', N'Macchiato')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L6', N'Cà Phê Xay Đá')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L7 ', N'Thức Uống Trái Cây')
INSERT [dbo].[tblLoai] ([MaLoai], [TenLoai]) VALUES (N'L8', N'Matcha - Socola')
GO
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC1', N'Trung Nguyên ', N'Sài Gòn', N'0123456789')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC2', N'Big C', N'Hà Nội', N'0987654321')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC3 ', N'Winmart', N'Nghệ An', N'0657893213')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC4', N'Vinamilk', N'Thanh Hóa', N'0928376472')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC5', N'TH Truemilk', N'Ninh Bình ', N'0928374778')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC6', N'Metro', N'Hà Nội', N'0293819929')
INSERT [dbo].[tblNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai]) VALUES (N'CC7', N'Maxximax', N'Thái Lan', N'0182828391')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [MaQue]) VALUES (N'NV1', N'Nguyễn Hữu Thắng', N'Thanh Xuan ', N'1         ', N'41')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [MaQue]) VALUES (N'NV2 ', N'Nguyễn Hải Sơn', N'Thanh Xuan', N'1         ', N'26')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [MaQue]) VALUES (N'NV3 ', N'Đỗ Việt Thành ', N'Thanh Xuan', N'1         ', N'56')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [MaQue]) VALUES (N'NV4 ', N'Kim Huệ', N'Dong Da', N'0         ', N'1')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [GioiTinh], [MaQue]) VALUES (N'NV5', N'Hà Trọng Cường', N'Dong Da', N'1         ', N'26')
GO
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'1', N'An Giang')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'10', N'Bình Phước	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'11', N'Bình Thuận	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'12', N'Cà Mau	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'13', N'Cao Bằng	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'14', N'Cần Thơ	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'15', N'Đà Nẵng	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'16', N'Đắk Lắk	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'17', N'Đắk Nông	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'18', N'Điện Biên	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'19', N'Đồng Nai	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'2 ', N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'20', N'Đồng Tháp	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'21', N'Gia Lai	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'22', N'Hà Giang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'23', N'Hà Nam	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'24', N'Hà Nội	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'25', N'Hà Tĩnh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'26', N'Hải Dương	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'27', N'Hải Phòng	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'28', N'Hòa Bình	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'29', N'Hồ Chí Minh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'3', N'Bạc Liêu	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'30', N'Hậu Giang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'31', N'Hưng Yên	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'32', N'Khánh Hòa	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'33', N'Kiên Giang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'34', N'Kon Tum	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'35', N'Lai Châu	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'36', N'Lào Cai	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'37', N'Lạng Sơn	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'38', N'Lâm Đồng	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'39', N'Long An	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'4', N'Bắc Kạn	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'40', N'Nam Định	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'41', N'Nghệ An	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'42', N'Ninh Bình	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'43', N'Ninh Thuận	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'44', N'Phú Thọ	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'45', N'Phú Yên	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'46', N'Quảng Bình	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'47', N'Quảng Nam	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'48', N'Quảng Ngãi	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'49', N'Quảng Ninh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'5', N'Bắc Giang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'50', N'Quảng Trị	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'51', N'Sóc Trăng	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'52', N'Sơn La	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'53', N'Tây Ninh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'54', N'Thái Bình	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'55', N'Thái Nguyên	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'56', N'Thanh Hóa	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'57', N'Thừa Thiên - Huế	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'58', N'Tiền Giang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'59', N'Trà Vinh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'6', N'Bắc Ninh	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'60', N'Tuyên Quang	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'61', N'Vĩnh Long	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'62', N'Vĩnh Phúc	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'63', N'Yên Bái	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'7', N'Bến Tre	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'8', N'Bình Dương	')
INSERT [dbo].[tblQue] ([MaQue], [TenQue]) VALUES (N'9', N'Bình Định	')
GO
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP1', N'Cà Phê Đen', N'L1', 20000, 29000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP10', N'Cold Brew Truyền Thống', N'L3', 45000, 55000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP11', N'Cold Brew Sữa Tươi', N'L3', 45000, 55000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP12', N'Cold Brew Cam Sả', N'L3', 45000, 55000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP13', N'Cold Brew Phúc Bồn Tử', N'L3', 40000, 50000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP14', N'Cold Brew Macchiato', N'L3', 50000, 60000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP15', N'Trà Đào Cam sả', N'L4', 45000, 55000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP16', N'Trà Oolong vải', N'L4', 45000, 55000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP17', N'Trà Oolong hạt sen', N'L4', 45000, 55000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP18', N'Trà Oolong phúc bồn tử', N'L4', 45000, 55000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP19', N'Trà Oolong Bưởi mặt ong', N'L4', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP2', N'Cà Phê Sữa ', N'L1 ', 20000, 29000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP20', N'Trà Lài Macchiato', N'L5', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP21', N'Trà đen macchiato', N'L5', 42000, 52000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP22', N'Trà Matcha macchiato', N'L5', 42000, 52000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP23', N'Trà cherry', N'L5', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP24', N'Trà xoài Macchiato', N'L5', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP25', N'Cà phê đá xay ', N'L6', 59000, 69000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP26', N'Trà cà phê đá xay', N'L6', 59000, 69000, 1, N'3', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP27', N'Sinh tố việt quất ', N'L7', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP28', N'Sinh tố cam xoài', N'L7', 50000, 60000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP29', N'Chanh sả đá xay', N'L7', 49000, 59000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP3', N'Bạc Sỉu', N'L1', 30000, 39000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP30', N'Đào việt quất đá xay ', N'L7', 49000, 59000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP31', N'Ổi Hồng việt quất đá xay ', N'L7', 49000, 59000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP32', N'Phúc bồn tử cam đá xay ', N'L7 ', 49000, 59000, 1, N'1', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP33', N'Matcha Latte', N'L8', 49000, 59000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP34', N'Socola', N'L8', 40000, 50000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP35', N'Matcha đá xay ', N'L8', 49000, 59000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP36', N'Cookies đá xay ', N'L8 ', 49000, 59000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP37', N'Socola đá xay ', N'L8', 49000, 59000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP4', N'Espresso', N'L2', 40000, 50000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP5', N'Americano', N'L2', 50000, 55000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP6', N'Latte', N'L2', 45000, 55000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP7', N'Cappuccino', N'L2', 40000, 50000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP8', N'Mocha', N'L2', 40000, 50000, 1, N'2', NULL)
INSERT [dbo].[tblSanPham] ([MaSanPham], [TenSanPham], [MaLoai], [GiaNhap], [GiaBan], [SoLuong], [MaCongDung], [HinhAnh]) VALUES (N'SP9', N'Caramel Macchiato', N'L2', 40000, 50000, 1, N'3', NULL)
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonBan_tblHoaDonBan] FOREIGN KEY([MaHoaDonBan])
REFERENCES [dbo].[tblHoaDonBan] ([MaHoaDonBan])
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan] CHECK CONSTRAINT [FK_tblChiTietHoaDonBan_tblHoaDonBan]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonBan_tblSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tblSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan] CHECK CONSTRAINT [FK_tblChiTietHoaDonBan_tblSanPham]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonNhap_tblHoaDonNhap] FOREIGN KEY([MaHoaDonNhap])
REFERENCES [dbo].[tblHoaDonNhap] ([MaHoaDonNhap])
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap] CHECK CONSTRAINT [FK_tblChiTietHoaDonNhap_tblHoaDonNhap]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonNhap_tblNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[tblNhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap] CHECK CONSTRAINT [FK_tblChiTietHoaDonNhap_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonNhap_tblSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tblSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap] CHECK CONSTRAINT [FK_tblChiTietHoaDonNhap_tblSanPham]
GO
ALTER TABLE [dbo].[tblHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonBan_tblKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tblKhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tblHoaDonBan] CHECK CONSTRAINT [FK_tblHoaDonBan_tblKhachHang]
GO
ALTER TABLE [dbo].[tblHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonBan_tblNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tblNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tblHoaDonBan] CHECK CONSTRAINT [FK_tblHoaDonBan_tblNhanVien]
GO
ALTER TABLE [dbo].[tblHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonNhap_tblNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[tblNhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[tblHoaDonNhap] CHECK CONSTRAINT [FK_tblHoaDonNhap_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonNhap_tblNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tblNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tblHoaDonNhap] CHECK CONSTRAINT [FK_tblHoaDonNhap_tblNhanVien]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblQue] FOREIGN KEY([MaQue])
REFERENCES [dbo].[tblQue] ([MaQue])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblQue]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblCongDung] FOREIGN KEY([MaCongDung])
REFERENCES [dbo].[tblCongDung] ([MaCongDung])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblCongDung]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tblLoai] ([MaLoai])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblLoai]
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanCafe] SET  READ_WRITE 
GO
