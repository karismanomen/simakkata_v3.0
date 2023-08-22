<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\TpcbFungsi;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class TpcbFungsiController extends Controller
{
    public function index()
    {
        return view('tpcbfungsi.index');
    }
}