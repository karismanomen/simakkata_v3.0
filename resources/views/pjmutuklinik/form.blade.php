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
                        <label for="pjmutuklinik" class="col-lg-2 col-lg-offset-1 control-label">PJ Mutu Klinik</label>
                        <div class="col-lg-6">
                            <Select class="form-control" name="pjmutuklinik" id="pjmutuklinik">
                                <option value="Klinik Bantarkalong">Klinik Bantarkalong</option>
                                <option value="Klinik Bojongasih">Klinik Bojongasih</option>
                                <option value="Klinik Bojonggambir">Klinik Bojonggambir</option>
                                <option value="Klinik Ciawi">Klinik Ciawi</option>
                                <option value="Klinik Cibalong">Klinik Cibalong</option>
                                <option value="Klinik Cigalontang">Klinik Cigalontang</option>
                                <option value="Klinik Cikalong">Klinik Cikalong</option>
                                <option value="Klinik Cikatomas">Klinik Cikatomas</option>
                                <option value="Klinik Cineam">Klinik Cineam</option>
                                <option value="Klinik Cipatujah">Klinik Cipatujah</option>
                                <option value="Klinik Cisaruni">Klinik Cisaruni</option>
                                <option value="Klinik Cisayong">Klinik Cisayong</option>
                                <option value="Klinik Culamega">Klinik Culamega</option>
                                <option value="Klinik Gunungtanjung">Klinik Gunungtanjung</option>
                                <option value="Klinik Jamanis">Klinik Jamanis</option>
                                <option value="Klinik Jatiwaras">Klinik Jatiwaras</option>
                                <option value="Klinik Kadipaten">Klinik Kadipaten</option>
                                <option value="Klinik Karangjaya">Klinik Karangjaya</option>
                                <option value="Klinik Karangnunggal">Klinik Karangnunggal</option>
                                <option value="Klinik Leuwisari">Klinik Leuwisari</option>
                                <option value="Klinik Mangunreja">Klinik Mangunreja</option>
                                <option value="Klinik Manonjaya">Klinik Manonjaya</option>
                                <option value="Klinik Pagerageung">Klinik Pagerageung</option>
                                <option value="Klinik Pancatengah">Klinik Pancatengah</option>
                                <option value="Klinik Parungponteng">Klinik Parungponteng </option>
                                <option value="Klinik Puspahiang">Klinik Puspahiang</option>
                                <option value="Klinik Rajapolah">Klinik Rajapolah</option>
                                <option value="Klinik Salawu">Klinik Salawu</option>
                                <option value="Klinik Salopa">Klinik Salopa</option>
                                <option value="Klinik Sariwangi">Klinik Sariwangi</option>
                                <option value="Klinik Singaparna">Klinik Singaparna</option>
                                <option value="Klinik Sodonghilir">Klinik Sodonghilir</option>
                                <option value="Klinik Sukahening">Klinik Sukahening</option>
                                <option value="Klinik Sukaraja">Klinik Sukaraja</option>
                                <option value="Klinik Sukarame">Klinik Sukarame</option>
                                <option value="Klinik Sukaratu">Klinik Sukaratu</option>
                                <option value="Klinik Sukaresik">Klinik Sukaresik</option>
                                <option value="Klinik Tanjungjaya">Klinik Tanjungjaya</option>
                                <option value="Klinik Taraju">Klinik Taraju</option>
                                <option value="Klinik Tinewati">Klinik Tinewati</option>
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
