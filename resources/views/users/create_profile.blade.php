<!DOCTYPE html>
<html>
<head>
    <title>Tạo Profile</title>
</head>
<body>
    <h1>Tạo Profile cho {{ $user->name }}</h1>

    <form action="{{ route('users.storeProfile', $user->id) }}" method="POST">
        @csrf
        <label>Địa chỉ:</label>
        <input type="text" name="address" required><br><br>

        <label>Số điện thoại:</label>
        <input type="text" name="phone" required><br><br>

        <button type="submit">Lưu</button>
    </form>
</body>
</html>
