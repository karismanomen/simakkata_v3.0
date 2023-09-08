<?php

namespace App\Http\Controllers;

use PDF;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class TpcbFungsiController extends Controller
{
    public function index()
    {
        return view('tpcbfungsi.index');
    }
}