<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\TpcbCluster;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class Tpcb2ClusterController extends Controller
{
    public function index()
    {
        return view('tpcb2cluster.index');
    }
}