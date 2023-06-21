<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PjMutuPuskesmas extends Model
{
    use HasFactory;

    protected $table = 'pjmutupkm';
    protected $primaryKey = 'id_pjmutupkm';
    protected $guarded = [];
}
