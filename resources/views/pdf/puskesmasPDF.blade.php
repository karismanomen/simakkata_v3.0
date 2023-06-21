<head>
    <title>SIMAKKATA - Sistem Informasi Mutu Akreditasi Kabupaten Tasikmalaya.</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <h4>{{ $title }}</h4>
    <p>{{ $date }}</p>
    <p>Export Data Daftar Puskesmas di Lingkungan Dinas Kesehatan Kabupaten Tasikmalaya.</p>

    <table class="table table-bordered" width=100%>
        <tr>
            <th>No</th>
            <th>Kode fasyankes</th>
            <th>Nama</th>
            <th>Alamat</th>
            <th>Nilai Akre</th>
        </tr>
        @foreach ($users as $user)
            <tr>
                <td>{{ $user->id_pkm }}</td>
                <td>{{ $user->kode_fasyankes }}</td>
                <td>{{ $user->nama }}</td>
                <td>{{ $user->alamat }}</td>
                <td>{{ $user->nilai_akre }}</td>
            </tr>
        @endforeach
    </table>

</body>

</html>
