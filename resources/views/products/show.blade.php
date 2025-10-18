@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Chi tiết sản phẩm</h2>

    <div class="card shadow">
        <div class="card-body">
            <p><strong>Tên sản phẩm:</strong> {{ $product->name }}</p>
            <p><strong>Giá:</strong> {{ number_format($product->price, 0, ',', '.') }} đ</p>
            <p><strong>Tồn kho:</strong> 
                @if($product->stock > 0)
                    <span class="badge bg-success">{{ $product->stock }}</span>
                @else
                    <span class="badge bg-danger">Hết hàng</span>
                @endif
            </p>
            <p><strong>Danh mục:</strong> {{ $product->category->name ?? 'Không có' }}</p>
        </div>
    </div>

    <a href="{{ route('products.index') }}" class="btn btn-secondary mt-3">Quay lại danh sách</a>
</div>
@endsection
