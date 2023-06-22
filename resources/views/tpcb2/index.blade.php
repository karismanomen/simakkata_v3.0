@extends('layouts.master')

@section('title')
    Daftar TPCB
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar TPCB</li>
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body table-responsive">
                    <form action="" method="post" class="form-tpcb">
                        @csrf
                        <table class="table table-striped table-bordered">
                            <thead class=>
                                <th width="1%">No</th>
                                <th>Nama</th>
                                <th>NIP</th>
                                <th>Jabatan Akreditasi</th>
                                <th>Cluster</th>
                                <th>Pangkat</th>
                                <th>Golongan</th>
                                <th>Wilayah Binaan</th>
                            </thead>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        let table;

        $(function() {
            table = $('.table').DataTable({
                "iDisplayLength": 15,
                processing: true,
                autoWidth: false,
                ajax: {
                    url: '{{ route('tpcb2.data') }}',
                },
                columns: [{
                        data: 'DT_RowIndex',
                        class: 'text-left',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'nama_tpcb', name: 'nama_tpcb' , width: '15%', class: 'text-left' },
                    {data: 'nip', name: 'nip' , width: '15%', class: 'text-left' },
                    {data: 'jabatan_akre', name: 'jabatan_akre' , width: '15%', class: 'text-left' },
                    {data: 'cluster', name: 'cluster' , width: '15%', class: 'text-left' },
                    {data: 'pangkat', name: 'pangkat' , width: '15%', class: 'text-left' },
                    {data: 'golongan', name: 'golongan' , width: '15%', class: 'text-left' },
                    {data: 'wilayah', name: 'wilayah' , width: '15%', class: 'text-left' },
                ]
            });

        });
    </script>
@endpush
