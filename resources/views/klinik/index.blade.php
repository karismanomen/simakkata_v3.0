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
            <div class="box">
                <div class="box-header with-border">
                    <button onclick="addForm('{{ route('klinik.store') }}')" class="btn btn-success btn-xs btn-flat"><i
                            class="fa fa-plus-circle"></i> Tambah Klinik</button>
                </div>
            </div>
      <div class="row"> 
            <div class="box-body table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <th>No</th>
                        <th>Klinik</th>
                        <th>Kode Klinik</th>
                        <th>Alamat</th>
                        <th>Dokter</th>
                        <th>Hasil Akre</th>
                        <th>Tahun Akre</th>
						<th>No Izin Klinik</th>
                        <th><i class="fa fa-cog"></i></th>
                    </thead>
                </table>
            </div>
        </div>
    </div>
   
    @includeIf('klinik.form')
@endsection

@push('scripts')
    <script>
        let table;
      
        $(function() {
            table = $('.table').DataTable({
                "iDisplayLength": 10,
                processing: true,
                autoWidth: false,
                ajax: {
                    url: '{{ route('klinik.data') }}',
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
                    {data: 'dokter', name: 'dokter' , width: '15%', class: 'text-center' },
                    {data: 'nilai_akre', name: 'nilai_akre' , width: '8%', class: 'text-center' },
                    {data: 'tahun_akre', name: 'tahun_akre' , width: '8%', class: 'text-center' },
                    {data: 'noizin', name: 'noizin' , width: '15%', class: 'text-center' },
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
            $('#modal-form .modal-title').text('Tambah Klinik');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name=nama_klinik]').focus();
        }

        function editForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit Klinik');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('put');
            $('#modal-form [name=nama_klinik]').focus();

            $.get(url)
                .done((response) => {
                    $('#modal-form [name=nama_klinik]').val(response.nama_klinik);
                    $('#modal-form [name=kode_klinik]').val(response.kode_klinik);
                    $('#modal-form [name=alamat]').val(response.alamat);
                    $('#modal-form [name=dokter]').val(response.dokter);
                    $('#modal-form [name=nilai_akre]').val(response.nilai_akre);              
                    $('#modal-form [name=tahun_akre]').val(response.tahun_akre);
                    $('#modal-form [name=noizin]').val(response.noizin);
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
