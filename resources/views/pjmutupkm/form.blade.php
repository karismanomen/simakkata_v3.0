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
                        <label for="pjmutupkm" class="col-lg-2 col-lg-offset-1 control-label">PJ Mutu Puskesmas</label>
                        <div class="col-lg-6">
                            <Select class="form-control" name="pjmutupkm" id="pjmutupkm">
                                <option value="Puskesmas Bantarkalong">Puskesmas Bantarkalong</option>
                                <option value="Puskesmas Bojongasih">Puskesmas Bojongasih</option>
                                <option value="Puskesmas Bojonggambir">Puskesmas Bojonggambir</option>
                                <option value="Puskesmas Ciawi">Puskesmas Ciawi</option>
                                <option value="Puskesmas Cibalong">Puskesmas Cibalong</option>
                                <option value="Puskesmas Cigalontang">Puskesmas Cigalontang</option>
                                <option value="Puskesmas Cikalong">Puskesmas Cikalong</option>
                                <option value="Puskesmas Cikatomas">Puskesmas Cikatomas</option>
                                <option value="Puskesmas Cineam">Puskesmas Cineam</option>
                                <option value="Puskesmas Cipatujah">Puskesmas Cipatujah</option>
                                <option value="Puskesmas Cisaruni">Puskesmas Cisaruni</option>
                                <option value="Puskesmas Cisayong">Puskesmas Cisayong</option>
                                <option value="Puskesmas Culamega">Puskesmas Culamega</option>
                                <option value="Puskesmas Gunungtanjung">Puskesmas Gunungtanjung</option>
                                <option value="Puskesmas Jamanis">Puskesmas Jamanis</option>
                                <option value="Puskesmas Jatiwaras">Puskesmas Jatiwaras</option>
                                <option value="Puskesmas Kadipaten">Puskesmas Kadipaten</option>
                                <option value="Puskesmas Karangjaya">Puskesmas Karangjaya</option>
                                <option value="Puskesmas Karangnunggal">Puskesmas Karangnunggal</option>
                                <option value="Puskesmas Leuwisari">Puskesmas Leuwisari</option>
                                <option value="Puskesmas Mangunreja">Puskesmas Mangunreja</option>
                                <option value="Puskesmas Manonjaya">Puskesmas Manonjaya</option>
                                <option value="Puskesmas Pagerageung">Puskesmas Pagerageung</option>
                                <option value="Puskesmas Pancatengah">Puskesmas Pancatengah</option>
                                <option value="Puskesmas Parungponteng">Puskesmas Parungponteng </option>
                                <option value="Puskesmas Puspahiang">Puskesmas Puspahiang</option>
                                <option value="Puskesmas Rajapolah">Puskesmas Rajapolah</option>
                                <option value="Puskesmas Salawu">Puskesmas Salawu</option>
                                <option value="Puskesmas Salopa">Puskesmas Salopa</option>
                                <option value="Puskesmas Sariwangi">Puskesmas Sariwangi</option>
                                <option value="Puskesmas Singaparna">Puskesmas Singaparna</option>
                                <option value="Puskesmas Sodonghilir">Puskesmas Sodonghilir</option>
                                <option value="Puskesmas Sukahening">Puskesmas Sukahening</option>
                                <option value="Puskesmas Sukaraja">Puskesmas Sukaraja</option>
                                <option value="Puskesmas Sukarame">Puskesmas Sukarame</option>
                                <option value="Puskesmas Sukaratu">Puskesmas Sukaratu</option>
                                <option value="Puskesmas Sukaresik">Puskesmas Sukaresik</option>
                                <option value="Puskesmas Tanjungjaya">Puskesmas Tanjungjaya</option>
                                <option value="Puskesmas Taraju">Puskesmas Taraju</option>
                                <option value="Puskesmas Tinewati">Puskesmas Tinewati</option>
                            </Select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nama" class="col-lg-2 col-lg-offset-1 control-label">Nama</label>
                        <div class="col-lg-6">
                            <input type="text" name="nama" id="nama" class="form-control" required autofocus>
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
                        <label for="pangkat" class="col-lg-2 col-lg-offset-1 control-label">Pangkat</label>
                        <div class="col-lg-6">
                        <Select class="form-control" name="pangkat" id="pangkat">
                                <option value="Pengatur Muda IIa">Pengatur Muda/IIa</option>
                                <option value="Pengatur Muda Tk I/IIb">Pengatur Muda Tk I/IIb</option>
                                <option value="Pengatur/IIc">Pengatur/IIc</option>
                                <option value="Pengatur Tk I/IId">Pengatur Tk I/IId</option>
                                <option value="Penata Muda/IIIa">Penata Muda/IIIa</option>
                                <option value="Penata Muda Tk I/IIIb">Penata Muda Tk I/IIIb</option>
                                <option value="Penata/IIIc">Penata/IIIc</option>
                                <option value="Penata Tk I/IIId">Penata Tk I/IIId</option>
                                <option value="Pembina/IVa">Pembina/IVa</option>
                                <option value="Pembina Tk I/IVb">Pembina Tk I/IVb</option>
                                <option value="Pembina Utama Muda/IVc">Pembina Utama Muda/IVc</option>
                                <option value="Pembina Utama Madya/IVd">Pembina Utama Madya/IVd</option>
                                <option value="Pembina Utama/IVe">Pembina Utama/IVe</option>
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
