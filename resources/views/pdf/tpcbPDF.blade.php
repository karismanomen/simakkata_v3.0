<!DOCTYPE html>
<html>

<head>
    <title>SIMAKKATA - Sistem Informasi Mutu Akreditasi Kabupaten Tasikmalaya.</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <h3>{{ $title }}</h3>
    <p>{{ $date }}</p>
    <p>Export Data Daftar TPCB Akreditasi Dinas Kesehatan Kabupaten Tasikmalaya.</p>

    <table class="table table-bordered" width=100%>
        <tr>
            <th>Nama</th>
            <th>NIP</th>
            <th>Jabatan Akre</th>
            <th>Pangkat</th>
            <th>Golongan</th>
            <th>Telepon</th>
        </tr>
        @foreach ($users as $user)
            <tr>
                <td>{{ $user->nama_tpcb }}</td>
                <td>{{ $user->nip }}</td>
                <td>{{ $user->jabatan_akre }}</td>
                <td>{{ $user->pangkat }}</td>
                <td>{{ $user->golongan }}</td>
                <td>{{ $user->telepon }}</td>
            </tr>
        @endforeach
    </table>

</body>

</html>
