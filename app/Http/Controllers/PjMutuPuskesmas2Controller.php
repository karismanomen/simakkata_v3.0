<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\PjMutuPuskesmas;
use App\Models\Setting;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;


class PjMutuPuskesmas2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pjmutupkm.pjmutupkm2.index');
    }

    public function data()
    {
        $pjmutupkm = PjMutuPuskesmas::orderBy('pjmutupkm')->get();

        return datatables()
            ->of($pjmutupkm)
            ->addIndexColumn()
            ->make(true);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pjmutupkm = PjMutuPuskesmas::find($id);

        return response()->json($pjmutupkm);
    }
}
