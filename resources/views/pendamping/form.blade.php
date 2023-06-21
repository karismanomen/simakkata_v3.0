<div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="modal-form">
    <div class="modal-dialog modal-lg" role="document">
        <form action="" method="post" class="form-horizontal">
            @csrf
            @method('post')

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="id_kategori" class="col-lg-2 col-lg-offset-1 control-label">Kategori
                            Akreditasi</label>
                        <div class="col-lg-6">
                            <select name="id_kategori" id="id_kategori" class="form-control" required>
                                <option value="">Pilih Kategori</option>
                                @foreach ($kategori as $key => $item)
                                    <option value="{{ $key }}">{{ $item }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nama_pendamping" class="col-lg-2 col-lg-offset-1 control-label">Nama</label>
                        <div class="col-lg-6">
                            <input type="text" name="nama_pendamping" id="nama_pendamping" class="form-control"
                                required autofocus>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nip" class="col-lg-2 col-lg-offset-1 control-label">NIP</label>
                        <div class="col-lg-6">
                            <input type="text" name="nip" id="nip" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="jabatan_akre" class="col-lg-2 col-lg-offset-1 control-label">Jabatan
                            Akreditasi</label>
                        <div class="col-lg-6">
                            <Select class="form-control" name="jabatan_akre" id="jabatan_akre">
                                <option value="Pendamping UKM">Pendamping UKM</option>
                                <option value="Pendamping UKP">Pendamping UKP</option>
                                <option value="Pendamping Admen">Pendamping Admen</option>
                                <option value="Tim Pembina Cluster Binaan"> Tim Pembina Cluster Binaan</option>
                            </Select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="pangkat" class="col-lg-2 col-lg-offset-1 control-label">Pangkat</label>
                        <div class="col-lg-6">
                            <Select class="form-control" name="pangkat" id="pangkat" required>
                                <option value="Juru Muda">Juru Muda</option>
                                <option value="Juru Muda Tk I">Juru Muda Tk I</option>
                                <option value="Juru">Juru</option>
                                <option value="Juru Tk I">Juru Tk I</option>
                                <option value="Pengatur Muda">Pengatur Muda</option>
                                <option value="Pengatur Muda Tk I">Pengatur Muda Tk I</option>
                                <option value="Pengatur">Pengatur</option>
                                <option value="Pengatur Tk I">Pengatur Tk I</option>
                                <option value="Penata Muda">Penata Muda</option>
                                <option value="Penata Muda Tk I">Penata Muda Tk I</option>
                                <option value="Penata">Penata</option>
                                <option value="Penata Tk I">Penata Tk I</option>
                                <option value="Pembina">Pembina</option>
                                <option value="Pembina Tk I">Pembina Tk I</option>
                                <option value="Pembina Utama Muda">Pembina Utama Muda</option>
                                <option value="Pembina Utama Madya">Pembina Utama Madya</option>
                                <option value="Pembina Utama">Pembina Utama</option>
                                <option value="Dan Lain-lain">Dan Lain-lain</option>
                            </Select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="golongan" class="col-lg-2 col-lg-offset-1 control-label">Golongan</label>
                        <div class="col-lg-6">
                            <Select class="form-control" name="golongan" id="golongan" required>
                                <option value="IIa">Ia</option>
                                <option value="IIb">Ib</option>
                                <option value="IIc">Ic</option>
                                <option value="IId">Id</option>
                                <option value="IIa">IIa</option>
                                <option value="IIb">IIb</option>
                                <option value="IIc">IIc</option>
                                <option value="IId">IId</option>
                                <option value="IIIa">IIIa</option>
                                <option value="IIIb">IIIb</option>
                                <option value="IIIc">IIIc</option>
                                <option value="IIId">IIId</option>
                                <option value="IVa">IVa</option>
                                <option value="IVb">IVb</option>
                                <option value="IVc">IVc</option>
                                <option value="IVd">IVd</option>
                                <option value="IVd">IVd</option>
                                <option value="Dan Lain-lain">Dan Lain-lain</option>
                            </Select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="telepon" class="col-lg-2 col-lg-offset-1 control-label">Telepon</label>
                        <div class="col-lg-6">
                            <input type="text" name="telepon" id="telepon" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="email" class="col-lg-2 col-lg-offset-1 control-label">Email</label>
                        <div class="col-lg-6">
                            <input type="text" name="email" id="email" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-sm btn-flat btn-primary"><i class="fa fa-save"></i> Simpan</button>
                    <button type="button" class="btn btn-sm btn-flat btn-warning" data-dismiss="modal"><i
                            class="fa fa-arrow-circle-left"></i> Batal</button>
                </div>
            </div>
        </form>
    </div>
</div>
