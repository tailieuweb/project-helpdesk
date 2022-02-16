Bước 1: xác nhận database
- Đúng với database trong file .env
- Xóa hết tất cả table trong database (phpMyAdmin)
- Chú ý: xóa 2 lần mới hết (user table vẫn còn)

Bước 2: Xóa hết migration trong thư mục database/migrations

Bước 3: Chạy lệnh
php artisan authentication:install

Bước 4: Kiểm tra đăng nhập
chạy lệnh: php artisan serve
Truy cập: http://127.0.0.1:8000

Đăng nhập: http://127.0.0.1:8000/admin
username: admin@admin.com
password: admin


Bước 5: Tạo migration trong Helpdesk
Tạo: foostart/package-helpdesk/database/migrations
php artisan vendor:publish --provider="Foostart\Helpdesk\HelpdeskServiceProvider" --force
php artisan migrate
