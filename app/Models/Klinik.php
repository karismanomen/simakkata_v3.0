<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Klinik extends Model
{
    use HasFactory;

    protected $table = 'klinik';
    protected $primaryKey = 'id_klinik';
    protected $guarded = [];
}
