<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Klinik;
use App\Models\PjMutuKlinik;
use App\Models\PjMutuPuskesmas;
use App\Models\Pendamping;
use App\Models\Puskesmas;
use App\Models\Tpcb;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $kategori = Kategori::count();
		$klinik = Klinik::count();    
        $pendamping = Pendamping::count();
        $pkm = Puskesmas::count();      
		$pjmutuklinik = PjMutuKlinik::count();  
        $pjmutupkm = PjMutuPuskesmas::count();
        $tpcb = Tpcb::count();

        if (auth()->user()->level == 1) {
            return view('dashboard.admin', compact('kategori', 'klinik', 'pendamping', 'pkm', 'pjmutupkm', 'pjmutuklinik', 'tpcb'));
        } else {
            return view('dashboard.pendamping', compact('kategori', 'klinik', 'pendamping', 'pkm', 'pjmutupkm', 'pjmutuklinik', 'tpcb'));
        }
    }
}
