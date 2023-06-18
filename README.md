# Laptop-Shop: Ứng dụng web quản lý laptop

## Mô tả
Laptop-Shop là một ứng dụng web được xây dựng bằng công nghệ Java JSP MVC2. Ứng dụng cho phép khách hàng xem danh sách laptop và admin thực hiện các hoạt động CRUD trên các thành phần của dự án.

## Cấu trúc dự án
- `/src/java`: Thư mục chứa mã nguồn Java.
  - `/com.laptop_shop.controller.admin`: Chứa các controller xử lý yêu cầu từ người dùng với quyền admin.
  - `/com.laptop_shop.controller.common`: Chứa các controller xử lý yêu cầu từ người dùng với quyền customer.
  - `/com.laptop_shop.model`: Chứa các model đại diện cho các đối tượng trong dự án.
  - `/com.laptop_shop.dao`: Chứa các DAO (Data Access Object) để thực hiện các hoạt động truy cập cơ sở dữ liệu.
  - `/com.laptop_shop.util`: Chứa các lớp tiện ích, ví dụ như lớp kết nối cơ sở dữ liệu.
- `/web`: Thư mục chứa các tệp JSP, CSS và hình ảnh.
  - `/WEB-INF`: Thư mục chứa các tệp cấu hình và tệp JSP được bảo vệ.
    - `/authen`: Chứa các tệp JSP hiển thị giao diện người dùng với vai trò Admin.
  - `/css`: Chứa các tệp CSS để tùy chỉnh giao diện người dùng.
  - `/img`: Chứa các hình ảnh sử dụng trong dự án.

## Chức năng
### Khách hàng
- Xem danh sách laptop: Khách hàng có thể xem danh sách các laptop có sẵn trong cửa hàng. Danh sách này hiển thị các thông tin như tên laptop, giá, hình ảnh và mô tả.

### Admin
- Quyền CRUD: Admin có quyền thực hiện các hoạt động CRUD trên các thành phần của dự án, bao gồm:
  - Quản lý danh sách laptop: Admin có thể thêm, sửa, xóa và xem thông tin chi tiết của các laptop. Các thông tin bao gồm tên laptop, giá, hình ảnh, mô tả và các thuộc tính khác.
  - Quản lý bảng thành phần khác: Admin có quyền thực hiện các hoạt động CRUD trên các bảng thành phần của dự án gồm: SanPham, DanhMuc, TaiKhoan, NhomTaiKhoan.

## Cài đặt
- Clone dự án từ repository: `https://github.com/khacodee/LaptopShop'
- Cấu hình cơ s

ở dữ liệu: Đảm bảo rằng bạn đã cấu hình cơ sở dữ liệu cho dự án và cung cấp các thông tin cần thiết trong file cấu hình.
- Sử dụng IDE như... (thiếu thông tin, vui lòng cung cấp thêm chi tiết).
