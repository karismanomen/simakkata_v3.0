<?php

namespace App\Imports;

use App\Models\Dokumen;
use Maatwebsite\Excel\Concerns\ToModel;

class DokumenImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Dokumen([
            'id_dokumen'        => $row[0],
            'foto'          	=> $row[1],
            'nama_dokumen'      => $row[2],
            'tanggal_lahir' 	=> $row[3],
            'program_studi' 	=> $row[4],
            'dokumen'       	=> $row[5],
        ]);
    }
}
