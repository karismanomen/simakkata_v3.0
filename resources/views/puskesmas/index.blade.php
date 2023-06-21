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
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header with-border">
                    <button onclick="addForm('{{ route('puskesmas.store') }}')" class="btn btn-success btn-xs btn-flat"><i
                            class="fa fa-plus-circle"></i> Tambah Puskesmas</button>
                </div>
            </div>
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
                        <th><i class="fa fa-cog"></i></th>                     
                    </thead>
                </table>
            </div>
        </div>
    </div>
   
    @includeIf('puskesmas.form')
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
                    url: '{{ route('puskesmas.data') }}',
                },
                columns: [{
                        data: 'DT_RowIndex',
                  		width: '1%',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'nama', name: 'nama' , width: '8%', class: 'text-left' },
                    {data: 'kode_fasyankes', name: 'kode_fasyankes' , width: '3%', class: 'text-center' },
                    {data: 'alamat', name: 'alamat' , width: '70%', class: 'text-justify' },
                    {data: 'nilai_akre', name: 'nilai_akre' , width: '3%', class: 'text-center' },
                    {data: 'tahun_akre', name: 'tahun_akre' , width: '3%', class: 'text-center' },
                    {data: 'noizin', name: 'noizin' , width: '10%', class: 'text-center' },
                    {data: 'kawasan', name: 'kawasan' , width: '5%', class: 'text-center' },
                    {data: 'inap', name: 'inap' , width: '3%', class: 'text-center' },
                    {data: 'poned', name: 'poned' , width: '3%', class: 'text-center' },
                    {data: 'blud', name: 'blud' , width: '3%', class: 'text-center' },
                    {data: 'wilayah', name: 'wilayah' , width: '10%', class: 'text-center' },                    
                    {data: 'latitude', name: 'latitude' , width: '5%', class: 'text-center' },
                    {data: 'longitude', name: 'longitude' , width: '5%', class: 'text-center' },
                    {
                        data: 'aksi',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                ]
            });
          
            $('#modal-form').validator().on('submit', function(e) {
                if (!e.preventDefault()) {
                    $.post($('#modal-form form').attr('action'), $('#modal-form form').serialize())
                        .done((response) => {
                            $('#modal-form').modal('hide');
                            table.ajax.reload();
                        })
                        .fail((errors) => {
                            alert('Tidak dapat menyimpan data');
                            return;
                        });
                }
            });
        });

        function addForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Tambah Puskesmas');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name=nama]').focus();
        }

        function editForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit Puskesmas');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('put');
            $('#modal-form [name=nama]').focus();

            $.get(url)
                .done((response) => {
                    $('#modal-form [name=nama]').val(response.nama);
                    $('#modal-form [name=kode_fasyankes]').val(response.kode_fasyankes);
                    $('#modal-form [name=alamat]').val(response.alamat);
                    $('#modal-form [name=nilai_akre]').val(response.nilai_akre);              
                    $('#modal-form [name=tahun_akre]').val(response.tahun_akre);
                    $('#modal-form [name=noizin]').val(response.noizin);
                    $('#modal-form [name=kawasan]').val(response.kawasan);
                    $('#modal-form [name=inap]').val(response.inap);
                    $('#modal-form [name=poned]').val(response.poned);              
                    $('#modal-form [name=blud]').val(response.blud);
                    $('#modal-form [name=wilayah]').val(response.wilayah);
                    $('#modal-form [name=latitude]').val(response.latitude);              
                    $('#modal-form [name=longitude]').val(response.longitude);
                })
                .fail((errors) => {
                    alert('Tidak dapat menampilkan data');
                    return;
                });
        }

        function deleteData(url) {
            if (confirm('Yakin ingin menghapus data terpilih?')) {
                $.post(url, {
                        '_token': $('[name=csrf-token]').attr('content'),
                        '_method': 'delete'
                    })
                    .done((response) => {
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menghapus data');
                        return;
                    });
            }
        }
    </script>
@endpush
