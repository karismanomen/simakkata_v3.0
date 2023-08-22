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
                        <label for="nama" class="col-lg-2 col-lg-offset-1 control-label">Nama</label>
                        <div class="col-lg-6">
                        <Select class="form-control" name="nama" id="nama">
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
                        <label for="kode_fasyankes" class="col-lg-2 col-lg-offset-1 control-label">Kode Fasyankes</label>
                        <div class="col-lg-6">
                            <input type="text" name="kode_fasyankes" id="kode_fasyankes" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="alamat" class="col-lg-2 col-lg-offset-1 control-label">Alamat</label>
                        <div class="col-lg-6">
                            <input type="text" name="alamat" id="alamat" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>     
                    <div class="form-group row">
                        <label for="email" class="col-lg-2 col-lg-offset-1 control-label">Email</label>
                        <div class="col-lg-6">
                            <input type="text" name="email" id="email" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>             	
                <div>                  
                  <div class="form-group row">
                    <label for="nilai_akre" class="col-lg-2 col-lg-offset-1 control-label">Nilai Akreditasi</label>
                    <div class="col-lg-6">
                        <Select class="form-control" name="nilai_akre" id="nilai_akre">
                            <option value="Dasar">Dasar</option>
                            <option value="Madya">Madya</option>
                            <option value="Utama">Utama</option>
                            <option value="Paripurna">Paripurna</option>
                        </Select>
                    </div>
                 </div>        
                  <div> 
                    <div class="form-group row">
                        <label for="tahun_akre" class="col-lg-2 col-lg-offset-1 control-label">Tahun Akreditasi</label>
                        <div class="col-lg-6">
                            <input type="text" name="tahun_akre" id="tahun_akre" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>  
                  </div>
                  <div> 
                    <div class="form-group row">
                        <label for="noizin" class="col-lg-2 col-lg-offset-1 control-label">No. Izin Puskesmas dan Tgl Terbit</label>
                        <div class="col-lg-6">
                            <input type="text" name="noizin" id="noizin" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>  
                  </div>
                  <div class="form-group row">
                    <label for="kawasan" class="col-lg-2 col-lg-offset-1 control-label">Kawasan</label>
                    <div class="col-lg-6">
                        <Select class="form-control" name="kawasan" id="kawasan">
                            <option value="Dasar">Perdesaan</option>
                            <option value="Madya">Perkotaan</option>
                            <option value="Utama">Terpencil</option>
                            <option value="Paripurna">-----</option>
                        </Select>
                    </div>
                 </div>
                  <div class="form-group row">
                    <label for="inap" class="col-lg-2 col-lg-offset-1 control-label">Rawat/Non Rawat Inap</label>
                    <div class="col-lg-6">
                        <Select class="form-control" name="inap" id="inap">
                            <option value="Rawat Inap">Rawat Inap</option>
                            <option value="Non Rawat Inap">Non Rawat Inap</option>
                        </Select>
                    </div>
                 </div>
                  <div class="form-group row">
                    <label for="poned" class="col-lg-2 col-lg-offset-1 control-label">PONED/Non PONED</label>
                    <div class="col-lg-6">
                        <Select class="form-control" name="poned" id="poned">
                            <option value="PONED">PONED</option>
                            <option value="Non PONED">Non PONED</option>
                        </Select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="blud" class="col-lg-2 col-lg-offset-1 control-label">BLUD/Non BLUD</label>
                    <div class="col-lg-6">
                        <Select class="form-control" name="blud" id="blud">
                            <option value="BLUD">BLUD</option>
                            <option value="Non BLUD">Non BLUD</option>
                        </Select>
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

