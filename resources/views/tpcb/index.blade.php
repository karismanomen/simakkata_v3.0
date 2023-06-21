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
                <div class="box-header with-border">
                    <div class="btn-group">
                        <button onclick="addForm('{{ route('tpcb.store') }}')" class="btn btn-success btn-xs btn-flat"><i
                                class="fa fa-plus-circle"></i> Tambah TPCB</button>
                        <button onclick="deleteSelected('{{ route('tpcb.delete_selected') }}')"
                            class="btn btn-danger btn-xs btn-flat"><i class="fa fa-trash"></i> Hapus TPCB</button>
                    </div>
                </div>
                <div class="box-body table-responsive">
                    <form action="" method="post" class="form-tpcb">
                        @csrf
                        <table class="table table-striped table-bordered">
                            <thead class=>
                                <th width="2%">
                                    <input type="checkbox" name="select_all" id="select_all">
                                </th>
                                <th width="1%">No</th>
                                <th>Nama</th>
                                <th>NIP</th>
                                <th>Jabatan Akreditasi</th>
                                <th>Cluster</th>
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

    @includeIf('tpcb.form')
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
                    url: '{{ route('tpcb.data') }}',
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
                    {data: 'nama_tpcb', name: 'nama_tpcb' , width: '15%', class: 'text-left' },
                    {data: 'nip', name: 'nip' , width: '10%', class: 'text-left' },
                    {data: 'jabatan_akre', name: 'jabatan_akre' , width: '10%', class: 'text-left' },
                    {data: 'cluster', name: 'cluster' , width: '5%', class: 'text-left' },
                    {data: 'pangkat', name: 'pangkat' , width: '7%', class: 'text-left' },
                    {data: 'golongan', name: 'golongan' , width: '5%', class: 'text-left' },
                    {data: 'telepon', name: 'telepon' , width: '10%', class: 'text-left' },
                    {data: 'email', name: 'email' , width: '10%', class: 'text-left' },
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

            $('[name=select_all]').on('click', function() {
                $(':checkbox').prop('checked', this.checked);
            });
        });

        function addForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Tambah TPCB');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name=nama_tpcb]').focus();
        }

        function editForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit Tpcb');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('put');
            $('#modal-form [name=nama_tpcb]').focus();

            $.get(url)
                .done((response) => {
                    $('#modal-form [name=id_kategori]').val(response.id_kategori);
                    $('#modal-form [name=nama_tpcb]').val(response.nama_tpcb);
                    $('#modal-form [name=nip]').val(response.nip);
                    $('#modal-form [name=jabatan_akre]').val(response.jabatan_akre);
                    $('#modal-form [name=cluster]').val(response.cluster);
                    $('#modal-form [name=pangkat]').val(response.pangkat);
                    $('#modal-form [name=golongan]').val(response.golongan);
                    $('#modal-form [name=telepon]').val(response.telepon);
                    $('#modal-form [name=email]').val(response.email);
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

        function deleteSelected(url) {
            if ($('input:checked').length > 1) {
                if (confirm('Yakin ingin menghapus data terpilih?')) {
                    $.post(url, $('.form-tpcb').serialize())
                        .done((response) => {
                            table.ajax.reload();
                        })
                        .fail((errors) => {
                            alert('Tidak dapat menghapus data');
                            return;
                        });
                }
            } else {
                alert('Pilih data yang akan dihapus');
                return;
            }
        }
    </script>
@endpush
