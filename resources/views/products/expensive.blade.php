@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Sản phẩm có giá > 100.000</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Tên</th>
                <th>Giá</th>
                <th>Danh mục</th>
            </tr>
        </thead>
        <tbody>
            @foreach($products as $p)
                <tr>
                    <td>{{ $p->name }}</td>
                    <td>{{ number_format($p->price, 0, ',', '.') }} đ</td>
                    <td>{{ $p->category->name ?? 'Không có' }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
