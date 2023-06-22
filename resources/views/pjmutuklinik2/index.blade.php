@extends('layouts.master')

@section('title')
    Daftar PJ Mutu Klinik
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar PJ Mutu Klinik</li>
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-body table-responsive">
                    <form action="" method="post" class="form-pjmutuklinik">
                        @csrf
                        <table class="table table-striped table-bordered">
                            <thead>
                                <th width="1%">No</th>
                                <th>PJ Mutu Klinik</th>
                                <th>Nama</th>
                                <th>NIP</th>
                                <th>Pangkat</th>
                                <th>Telepon</th>
                                <th>Email</th>
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
                    url: '{{ route('pjmutuklinik2.data') }}',
                },
                columns: [{
                        data: 'DT_RowIndex',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'pjmutuklinik', name: 'pjmutuklinik' , width: '15%', class: 'text-left' },
                    {data: 'nama', name: 'nama' , width: '20%', class: 'text-left' },
                    {data: 'nip', name: 'nip' , width: '10%', class: 'text-center' },
                    {data: 'pangkat', name: 'pangkat' , width: '7%', class: 'text-cleft' },
                    {data: 'telepon', name: 'telepon' , width: '10%', class: 'text-center' },
                    {data: 'email', name: 'email' , width: '15%', class: 'text-left' },
                ]
            });
        });
    </script>
@endpush
