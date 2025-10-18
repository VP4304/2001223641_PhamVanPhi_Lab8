@extends('layouts.app') 
{{-- Thay thế 'layouts.app' bằng tên file layout chính chứa Navbar của bạn --}}

@section('content')
    <div class="row mt-4">
        <div class="col-md-12">
            
            <h1 class="mb-4">Chào mừng đến với Hệ thống Quản lý Sinh viên và Sản phẩm</h1>
            <p class="lead">
                Đây là trang chủ của ứng dụng. Bạn có thể sử dụng thanh điều hướng phía trên để truy cập các chức năng chính:
            </p>

            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <a href="/products" class="text-decoration-none fw-bold">Products</a>: Xem, thêm, sửa, xóa danh sách các sản phẩm.
                </li>
                <li class="list-group-item">
                    <a href="/students" class="text-decoration-none fw-bold">Students</a>: Xem danh sách sinh viên và các môn học đã đăng ký.
                </li>
            </ul>

            <div class="alert alert-info mt-5" role="alert">
                <h4 class="alert-heading">Thông báo!</h4>
                <p>Hệ thống này được xây dựng bằng Bootstrap 5, đảm bảo giao diện đẹp và tương thích với mọi thiết bị.</p>
                <hr>
                <p class="mb-0">Hãy bắt đầu khám phá các tính năng của hệ thống!</p>
            </div>
            
        </div>
    </div>
@endsection