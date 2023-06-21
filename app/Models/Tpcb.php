<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tpcb extends Model
{
    use HasFactory;

    protected $table = 'tpcb';
    protected $primaryKey = 'id_tpcb';
    protected $guarded = [];
}
