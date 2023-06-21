<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PjMutuKlinik extends Model
{
    use HasFactory;

    protected $table = 'pjmutuklinik';
    protected $primaryKey = 'id_pjmutuklinik';
    protected $guarded = [];
}
