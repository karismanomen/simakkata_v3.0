@extends('layouts.master')

@section('title')
    Daftar Klinik
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar Klinik</li>
@endsection

@section('content')
	<div class="row">
        <div class="col-lg-12">
            <div class="box-body table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <th>No</th>
                        <th>Klinik</th>
                        <th>Kode Klinik</th>
                        <th>Alamat</th>
                        <th>Hasil Akre</th>
                        <th>Tahun Akre</th>
						<th>No Izin Klinik</th>
                    </thead>
                </table>
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
                    url: '{{ route('klinik2.data') }}',
                },
                columns: [{
                        data: 'DT_RowIndex',
                  		width: '1%',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'nama_klinik', name: 'nama_klinik' , width: '20%', class: 'text-left' },
                    {data: 'kode_klinik', name: 'kode_klinik' , width: '10%', class: 'text-center' },
                    {data: 'alamat', name: 'alamat' , width: '30%', class: 'text-justify' },
                    {data: 'nilai_akre', name: 'nilai_akre' , width: '8%', class: 'text-center' },
                    {data: 'tahun_akre', name: 'tahun_akre' , width: '8%', class: 'text-center' },
                    {data: 'noizin', name: 'noizin' , width: '15%', class: 'text-center' },
                ]
            });
        });
    </script>
@endpush
