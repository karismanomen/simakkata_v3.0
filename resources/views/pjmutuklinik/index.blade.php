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
                <div class="box-header with-border">
                    <button onclick="addForm('{{ route('pjmutuklinik.store') }}')" class="btn btn-success btn-xs btn-flat"><i
                            class="fa fa-plus-circle"></i> Tambah PJ Mutu Klinik</button>
                </div>
                <div class="box-body table-responsive">
                    <form action="" method="post" class="form-pjmutuklinik">
                        @csrf
                        <table class="table table-striped table-bordered">
                            <thead>
                                <th width="5%">
                                    <input type="checkbox" name="select_all" id="select_all">
                                </th>
                                <th width="1%">No</th>
                                <th>PJ Mutu Klinik</th>
                                <th>Nama</th>
                                <th>NIP</th>
                                <th>Pangkat</th>
                                <th>Golongan</th>
                                <th>Telepon</th>
                                <th>Email</th>
                                <th width="4%"><i class="fa fa-cog"></i></th>
                            </thead>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>

    @includeIf('pjmutuklinik.form')
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
                    url: '{{ route('pjmutuklinik.data') }}',
                },
                columns: [{
                        data: 'select_all',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                    {
                        data: 'DT_RowIndex',
                        class: 'text-center',
                        searchable: false,
                        sortable: false
                    },
                    {data: 'pjmutuklinik', name: 'pjmutuklinik' , width: '15%', class: 'text-left' },
                    {data: 'nama', name: 'nama' , width: '20%', class: 'text-left' },
                    {data: 'nip', name: 'nip' , width: '10%', class: 'text-center' },
                    {data: 'pangkat', name: 'pangkat' , width: '7%', class: 'text-cleft' },
                    {data: 'golongan', name: 'golongan' , width: '5%', class: 'text-center' },
                    {data: 'telepon', name: 'telepon' , width: '10%', class: 'text-center' },
                    {data: 'email', name: 'email' , width: '15%', class: 'text-left' },
                    {
                        data: 'aksi',
                        class:'text-center',
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

            $('[name=select_all]').on('click', function() {
                $(':checkbox').prop('checked', this.checked);
            });
        });

        function addForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Tambah PJ Mutu Klinik');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name=nama]').focus();
        }

        function editForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit PJ Mutu');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('put');
            $('#modal-form [name=nama]').focus();

            $.get(url)
                .done((response) => {
                    $('#modal-form [name=pjmutuklinik]').val(response.pjmutuklinik);
                    $('#modal-form [name=nama]').val(response.nama);
                    $('#modal-form [name=nip]').val(response.nip);
                    $('#modal-form [name=pangkat]').val(response.pangkat);
                    $('#modal-form [name=golongan]').val(response.golongan);
                    $('#modal-form [name=telepon]').val(response.telepon);
                    $('#modal-form [name=alamat]').val(response.email);
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
