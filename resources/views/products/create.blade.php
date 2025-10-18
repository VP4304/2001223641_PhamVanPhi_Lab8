@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Thêm sản phẩm mới</h2>
    <form action="{{ route('products.store') }}" method="POST">
        @csrf
        <x-input label="Tên sản phẩm" name="name" />
        <x-input label="Giá" name="price" type="number" />
        <x-input label="Tồn kho" name="stock" type="number" />

        <div class="mb-3">
            <label for="category_id" class="form-label">Danh mục</label>
            <select name="category_id" id="category_id" class="form-select">
                <option value="">-- Chọn danh mục --</option>
                @foreach($categories as $c)
                    <option value="{{ $c->id }}">{{ $c->name }}</option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Lưu</button>
    </form>
</div>
@endsection
