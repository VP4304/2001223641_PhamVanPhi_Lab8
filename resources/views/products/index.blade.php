@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Danh sách sản phẩm</h2>
        <div class="d-flex gap-2">
            <a href="{{ route('products.create') }}" class="btn btn-primary">
                <i class="bi bi-plus-circle"></i> Thêm sản phẩm mới
            </a>
          <a href="{{ route('products.expensive') }}" class="btn btn-outline-danger">Giá > 100.000</a>
<a href="{{ route('products.countByCategory') }}" class="btn btn-outline-secondary">Đếm theo danh mục</a>

            </a>
        </div>
    </div>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="card shadow">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Tồn kho</th>
                            <th>Danh mục</th>
                            <th class="text-center">Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($products as $p)
                            <tr>
                                <td>{{ $p->name }}</td>
                                <td>{{ number_format($p->price, 0, ',', '.') }} đ</td>
                                <td class="text-center">
                                    @if($p->stock > 0)
                                        <span class="badge bg-success">{{ $p->stock }}</span>
                                    @else
                                        <span class="badge bg-danger">Hết hàng</span>
                                    @endif
                                </td>
                                <td>
                                    <span class="badge bg-secondary">
                                        {{ $p->category ? $p->category->name : 'Không có' }}
                                    </span>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('products.show', $p->id) }}" class="btn btn-sm btn-info">Xem</a>
                                    <a href="{{ route('products.edit', $p->id) }}" class="btn btn-sm btn-warning">Sửa</a>
                                    <form action="{{ route('products.destroy', $p->id) }}" method="POST" style="display:inline-block">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-sm btn-danger" onclick="return confirm('Xóa sản phẩm này?')">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5" class="text-center">Không có sản phẩm nào.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="mt-4">
        {{ $products->links() }}
    </div>
</div>
@endsection
