USE [CMS]
GO
/****** Object:  Table [dbo].[tblDanhMuc]    Script Date: 6/18/2023 11:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhMuc](
	[madm] [nvarchar](5) NOT NULL,
	[tendm] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[dactinh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhomTaiKhoan]    Script Date: 6/18/2023 11:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomTaiKhoan](
	[nhomtk] [nvarchar](5) NOT NULL,
	[mota] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhomtk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 6/18/2023 11:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[masp] [nvarchar](5) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[hinhanh] [nvarchar](100) NULL,
	[trangthai] [bit] NULL,
	[madm] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 6/18/2023 11:48:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[tentk] [nvarchar](10) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[email] [nvarchar](50) NULL,
	[nhomtk] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[tentk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai], [dactinh]) VALUES (N'LAP01', N'Laptop Dell', 1, NULL)
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai], [dactinh]) VALUES (N'LAP02', N'Laptop HP', 1, NULL)
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai], [dactinh]) VALUES (N'LAP03', N'Laptop Lenovo', 1, NULL)
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai], [dactinh]) VALUES (N'LAP04', N'Laptop Asus', 1, NULL)
INSERT [dbo].[tblDanhMuc] ([madm], [tendm], [trangthai], [dactinh]) VALUES (N'LAP05', N'Laptop Acer', 1, NULL)
GO
INSERT [dbo].[tblNhomTaiKhoan] ([nhomtk], [mota], [trangthai]) VALUES (N'AD', N'Quản Trị Viên', 1)
INSERT [dbo].[tblNhomTaiKhoan] ([nhomtk], [mota], [trangthai]) VALUES (N'KH', N'Khách Hàng', 1)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AC02', N'Acer Aspire 3 A315-23', N'CPU AMD Ryzen 3 3250U, RAM 4GB, 1TB HDD, VGA AMD Radeon Graphics, màn hình 15.6 inch', 47, 7990000, N'https://skditta.com/wp-content/uploads/2020/12/Acer-Aspire-3-A315-23-3.jpg', 1, N'LAP05')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AC03', N'Acer Nitro 5 AN515-45-R6SS', N'CPU AMD Ryzen 5 5600H, RAM 8GB, 512GB SSD, VGA Nvidia GeForce GTX 1650 4GB, màn hình 15.6 inch', 25, 20990000, N'https://m.media-amazon.com/images/I/71gD-Iw5mbS.jpg', 1, N'LAP05')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AC04', N'Acer Aspire 7 A715-75G-50SA', N'CPU Intel Core i5-10300H, RAM 8GB, 512GB SSD, VGA Nvidia GeForce GTX 1650Ti 4GB, màn hình 15.6 inch', 20, 15990000, N'https://tse4.mm.bing.net/th?id=OIP.0yhMtJa3kEj7IdZcOCVZaQHaE2&pid=Api&P=0', 1, N'LAP05')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS01', N'Asus Vivobook X510UA', N'Laptop 15.6 inch, Intel Core i3-8130U, RAM 4GB, SSD 128GB', 10, 12990, N'https://tse4.mm.bing.net/th?id=OIP.mChlwlGRHxiBgs09x8OjFwHaE9&pid=Api&P=0', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS02', N'Asus ZenBook 14 UX425', N'Laptop 14 inch, Intel Core i5-1135G7, RAM 8GB, SSD 512GB', 10, 22490, N'https://tse1.mm.bing.net/th?id=OIP.FoNCrz_qAEzyjPiQPuRgIAHaE9&pid=Api&P=0', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS03', N'Asus ROG Strix G15 G513', N'Laptop gaming 15.6 inch, Intel Core i7-10750H, RAM 16GB, SSD 512GB, NVIDIA RTX 2070', 10, 54990, N'https://tse3.mm.bing.net/th?id=OIP.T5wIElGJw5D9Y86Xg8p5IQHaFN&pid=Api&P=0', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS04', N'Asus TUF Gaming A15 FA506', N'Laptop gaming 15.6 inch, AMD Ryzen 5 4600H, RAM 8GB, SSD 512GB, NVIDIA GTX 1650', 10, 20990, N'https://www.apollo.pl/gfx/apollo/_thumbs/sklep_oferta/000/224/568/90nr03n1_3,rH17n6ummWegVo8.png', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS05', N'Asus Chromebook Flip C434', N'Laptop 14 inch, Intel Core m3-8100Y, RAM 4GB, eMMC 64GB', 10, 12990, N'https://c1.neweggimages.com/ProductImageCompressAll1280/AKVUS191205FiLol.jpg', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS06', N'Asus VivoBook S14 S433EA', N'Laptop 14 inch, Intel Core i5-1135G7, RAM 8GB, SSD 512GB', 10, 16990, N'https://tse4.explicit.bing.net/th?id=OIP.LQagw7RROdRGOsfaSzLNLgHaFz&pid=Api&P=0', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'AS07', N'Asus ExpertBook P2 P2451FA', N'Laptop 14 inch, Intel Core i5-10210U, RAM 8GB, SSD 512GB', 10, 16990, N'https://tse2.mm.bing.net/th?id=OIP.2jF1TF30XMVsYwjr8QXeVAHaE0&pid=Api&P=0', 1, N'LAP04')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'Dell1', N'Dell XPS 13', N'Màn hình 13.3 inch, CPU Intel Core i7, RAM 16GB, SSD 1TB', 19, 33990000, N'https://tse2.mm.bing.net/th?id=OIP.yteU-WQwKjnPl9hD7cbujwHaF3&pid=Api&P=0', 1, N'LAP01')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'Dell2', N'Dell Inspiron 15 7501', N'Màn hình 15.6 inch, CPU Intel Core i5, RAM 8GB, SSD 512GB', 15, 18990000, N'https://tse2.mm.bing.net/th?id=OIP.ZI277EeLpaySsDNNDzYJSwHaEg&pid=Api&P=0', 1, N'LAP01')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'Dell3', N'Dell G5 15 SE', N'Màn hình 15.6 inch, CPU AMD Ryzen 7, RAM 16GB, SSD 1TB', 25, 26990000, N'https://tse1.mm.bing.net/th?id=OIP.5bg9Pquy6M9hKplCAvmllwHaE3&pid=Api&P=0', 1, N'LAP01')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'Dell4', N'Dell Latitude 14 5411', N'Màn hình 14 inch, CPU Intel Core i7, RAM 16GB, SSD 512GB', 10, 32990000, N'https://tse1.mm.bing.net/th?id=OIP.MMy8IjpHCT02xSKm4vwz3AHaFj&pid=Api&P=0', 1, N'LAP01')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'Dell5', N'Dell Precision 5550', N'Màn hình 15.6 inch, CPU Intel Core i9, RAM 32GB, SSD 1TB', 8, 59990000, N'https://tse2.mm.bing.net/th?id=OIP.vtBAkssr-BrYjKYSBz0uOAHaEK&pid=Api&P=0', 1, N'LAP01')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'HP01', N'HP Spectre x360', N'Laptop 2 trong 1 (convertible laptop) cao cấp của hãng HP', 15, 42990000, N'https://i1.wp.com/witchdoctor.co.nz/wp-content/uploads/2019/08/HP-SPectre-x360-1.jpg?ssl=1', 1, N'LAP02')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'HP02', N'HP Envy 13', N'Laptop màn hình kích thước 13.3 inch, độ phân giải Full HD hoặc 4K, đảm bảo hiển thị hình ảnh sắc nét, chân thật', 20, 23990000, N'https://store.hp.com/UKStore/Html/Merch/Images/c06031232_1750x1285.jpg', 1, N'LAP02')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'HP03', N'HP Omen 15', N'Laptop có thiết kế với đường nét cứng cáp, mạnh mẽ, với màu đen chủ đạo tạo nên vẻ đẹp sang trọng và đầy sức hút', 10, 31990000, N'http://store.hp.com/SpainStore/Html/Merch/Images/c05508406_1750x1285.jpg', 1, N'LAP02')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'HP04', N'HP Pavilion 15', N'Laptop  có màn hình kích thước 15.6 inch, độ phân giải Full HD hoặc 4K, đảm bảo hiển thị hình ảnh sắc nét, chân thật', 25, 14990000, N'https://tse3.mm.bing.net/th?id=OIP.qcNPuPJojLbi1zCF-TEK6wHaGS&pid=Api&P=0', 1, N'LAP02')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'LEN01', N'Lenovo IdeaPad 5 15ITL05', N'Intel Core i5 1135G7, 8GB RAM, 512GB SSD, Intel Iris Xe Graphics, 15.6 inch Full HD', 50, 19990000, N'https://www.techno-us.store/images/virtuemart/product/20210531_014303.jpg', 1, N'LAP03')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'LEN02', N'Lenovo IdeaPad Gaming 3 15IMH05', N'Intel Core i5 10300H, 8GB RAM, 512GB SSD, NVIDIA GeForce GTX 1650 Ti, 15.6 inch Full HD 144Hz', 30, 27990000, N'https://tse4.mm.bing.net/th?id=OIP.86zL85wVd7vAf9tvGqT9ywHaFV&pid=Api&P=0', 1, N'LAP03')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'LEN03', N'Lenovo ThinkPad X1 Carbon Gen 8', N'Intel Core i7 10510U, 16GB RAM, 512GB SSD, Intel UHD Graphics, 14 inch Full HD', 20, 49990000, N'https://tse3.mm.bing.net/th?id=OIP.vy1Dwk9T5qCv9gRMWCUpGAHaFs&pid=Api&P=0', 1, N'LAP03')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'LEN04', N'Lenovo ThinkBook 15 G2 ITL', N'Intel Core i5 1135G7, 8GB RAM, 512GB SSD, Intel Iris Xe Graphics, 15.6 inch Full HD', 40, 17990000, N'https://www.dateks.lv/images/pic/2400/2400/337/782.jpg', 1, N'LAP03')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'LEN05', N'Lenovo IdeaPad Slim 5 Pro 16ACH6', N'AMD Ryzen 7 5800H, 16GB RAM, 512GB SSD, NVIDIA GeForce GTX 1650, 16 inch WQXGA', 25, 32990000, N'http://compro.vn/uploads/product/20210923210448_75ZSm7vZFj.jpg', 1, N'LAP03')
GO
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin1', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin2', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin3', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin4', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin5', N'12345', 1, N'admin@example.com', N'AD')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'kh1', N'12345', 1, N'kh1@example.com', N'KH')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'kh2', N'12345', 1, N'kh1@example.com', N'KH')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'kh3', N'12345', 1, N'kh1@example.com', N'KH')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'kh4', N'12345', 1, N'kh1@example.com', N'KH')
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD FOREIGN KEY([madm])
REFERENCES [dbo].[tblDanhMuc] ([madm])
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD FOREIGN KEY([nhomtk])
REFERENCES [dbo].[tblNhomTaiKhoan] ([nhomtk])
GO
