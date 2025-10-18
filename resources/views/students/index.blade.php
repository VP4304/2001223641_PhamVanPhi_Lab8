@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2>Danh sách sinh viên kèm số lượng và môn học đã đăng ký</h2>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Tên sinh viên</th>
                <th>Email</th>
                <th>Số môn học</th>
                <th>Danh sách môn học</th>
            </tr>
        </thead>
        <tbody>
            @foreach($students as $index => $s)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $s->name }}</td>
                    <td>{{ $s->email }}</td>
                    <td class="text-center">
                        <span class="badge bg-primary">{{ $s->courses_count }}</span>
                    </td>
                    <td>
                        @if($s->courses->isNotEmpty())
                            <ul class="mb-0">
                                @foreach($s->courses as $course)
                                    <li>{{ $course->name }}</li>
                                @endforeach
                            </ul>
                        @else
                            <em>Chưa đăng ký môn nào</em>
                        @endif
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
