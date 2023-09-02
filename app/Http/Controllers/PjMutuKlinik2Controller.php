<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\PjMutuKlinik;
use App\Models\Setting;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;


class PjMutuKlinik2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pjmutuklinik.pjmutuklinik2.index');
    }

    public function data()
    {
        $pjmutuklinik = PjMutuKlinik::orderBy('pjmutuklinik')->get();

        return datatables()
            ->of($pjmutuklinik)
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
        $pjmutuklinik = PjMutuKlinik::find($id);

        return response()->json($pjmutuklinik);
    }
}
