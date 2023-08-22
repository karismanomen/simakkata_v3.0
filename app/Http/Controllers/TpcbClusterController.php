<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\TpcbCluster;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class TpcbClusterController extends Controller
{
    public function index()
    {
        return view('tpcbcluster.index');
    }
}