@extends('layouts.master')

@section('title')
    Daftar Puskesmas
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar Puskesmas</li>
@endsection

@section('content')
Kriteria Kawasan Berdasarkan SK
		Keputusan Bupati Tasikmalaya Nomor : 440.7/Kep.317-Diskes/2016 Tentang Penetapan Kategori dan Wilayah Binaan Pusat Kesehatan Masyarakat Berdasarkan Karakteristik Wilayah Kerja Bupati Tasikmalaya.
      <div class="row"> 
            <div class="box-body table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <th>No</th>
                        <th>Puskesmas</th>
                        <th>Kode Faskes</th>
                        <th>Alamat</th>
                        <th>Hasil Akre</th>
                        <th>Tahun Akre</th>
						<th>No Izin Puskesmas</th>
                        <th>Kriteria Kawasan</th>
                        <th>Non / Rawat Inap</th>
                      	<th>Non / Poned</th>
                        <th>Non / BLUD</th>
                      	<th>Wilayah Kerja</th>
                      	<th>Latitude</th>
                        <th>Longitude</th>                 
                    </thead>
                </table>
            </div>
        </div>
@endsection

@push('scripts')
    <script>
        let table;

        $(function() {
            table = $('.table').DataTable({
                "iDisplayLength": 50,
                processing: true,
                autoWidth: false,
                ajax: {
                    url: '{{ route('puskesmas2.data') }}',
                },
                columns: [{
                        data: 'DT_RowIndex',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'nama', name: 'nama' , width: '10%', class: 'text-left' },
                    {data: 'kode_fasyankes', name: 'kode_fasyankes' , width: '5%', class: 'text-center' },
                    {data: 'alamat', name: 'alamat' , width: '75%', class: 'text-justify' },
                    {data: 'nilai_akre', name: 'nilai_akre' , width: '3%', class: 'text-center' },
                    {data: 'tahun_akre', name: 'tahun_akre' , width: '3%', class: 'text-center' },
                    {data: 'noizin', name: 'noizin' , width: '10%', class: 'text-center' },
                    {data: 'kawasan', name: 'kawasan' , width: '10%', class: 'text-center' },
                    {data: 'inap', name: 'inap' , width: '3%', class: 'text-center' },
                    {data: 'poned', name: 'poned' , width: '3%', class: 'text-center' },
                    {data: 'blud', name: 'blud' , width: '3%', class: 'text-center' },
                    {data: 'wilayah', name: 'wilayah' , width: '10%', class: 'text-center' },                    
                    {data: 'latitude', name: 'latitude' , width: '5%', class: 'text-center' },
                    {data: 'longitude', name: 'longitude' , width: '5%', class: 'text-center' },
                ]
            });
        });
    </script>
@endpush
