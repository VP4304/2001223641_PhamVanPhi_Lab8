@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Số sản phẩm theo danh mục</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Danh mục</th>
                <th>Số sản phẩm</th>
            </tr>
        </thead>
        <tbody>
            @foreach($categories as $c)
                <tr>
                    <td>{{ $c->name }}</td>
                    <td>{{ $c->products_count }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
