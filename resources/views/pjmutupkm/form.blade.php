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
                                <option value="Bantarkalong">Bantarkalong</option>
                                <option value="Bojongasih">Bojongasih</option>
                                <option value="Bojonggambir">Bojonggambir</option>
                                <option value="Ciawi">Ciawi</option>
                                <option value="Cibalong">Cibalong</option>
                                <option value="Cigalontang">Cigalontang</option>
                                <option value="Cikalong">Cikalong</option>
                                <option value="Cikatomas">Cikatomas</option>
                                <option value="Cineam">Cineam</option>
                                <option value="Cipatujah">Cipatujah</option>
                                <option value="Cisaruni">Cisaruni</option>
                                <option value="Cisayong">Cisayong</option>
                                <option value="Culamega">Culamega</option>
                                <option value="Gunungtanjung">Gunungtanjung</option>
                                <option value="Jamanis">Jamanis</option>
                                <option value="Jatiwaras">Jatiwaras</option>
                                <option value="Kadipaten">Kadipaten</option>
                                <option value="Karangjaya">Karangjaya</option>
                                <option value="Karangnunggal">Karangnunggal</option>
                                <option value="Leuwisari">Leuwisari</option>
                                <option value="Mangunreja">Mangunreja</option>
                                <option value="Manonjaya">Manonjaya</option>
                                <option value="Pagerageung">Pagerageung</option>
                                <option value="Pancatengah">Pancatengah</option>
                                <option value="Parungponteng">Parungponteng </option>
                                <option value="Puspahiang">Puspahiang</option>
                                <option value="Rajapolah">Rajapolah</option>
                                <option value="Salawu">Salawu</option>
                                <option value="Salopa">Salopa</option>
                                <option value="Sariwangi">Sariwangi</option>
                                <option value="Singaparna">Singaparna</option>
                                <option value="Sodonghilir">Sodonghilir</option>
                                <option value="Sukahening">Sukahening</option>
                                <option value="Sukaraja">Sukaraja</option>
                                <option value="Sukarame">Sukarame</option>
                                <option value="Sukaratu">Sukaratu</option>
                                <option value="Sukaresik">Sukaresik</option>
                                <option value="Tanjungjaya">Tanjungjaya</option>
                                <option value="Taraju">Taraju</option>
                                <option value="Tinewati">Tinewati</option>
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
                                <option value=" - "> - </option>
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
