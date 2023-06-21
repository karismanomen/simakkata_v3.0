<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\PjMutuKlinik;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class PjMutuKlinikController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pjmutuklinik.index');
    }

    public function data()
    {
        $pjmutuklinik = PjMutuKlinik::orderBy('pjmutuklinik')->get();

        return datatables()
            ->of($pjmutuklinik)
            ->addIndexColumn()
            ->addColumn('select_all', function ($pendamping) {
                return '
                    <input type="checkbox" name="id_pjmutuklinik[]" value="'. $pendamping->id_pjmutuklinik .'">
                ';
            })
            ->addColumn('pjmutuklinik', function ($pjmutuklinik) {
                return '<span class="label label-success">'. $pjmutuklinik->pjmutuklinik .'<span>';
            })
            ->addColumn('aksi', function ($pjmutuklinik) {
                return '
                <div class="btn-group">
                    <button type="button" onclick="editForm(`'. route('pjmutuklinik.update', $pjmutuklinik->id_pjmutuklinik) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" onclick="deleteData(`'. route('pjmutuklinik.destroy', $pjmutuklinik->id_pjmutuklinik) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            })
            ->rawColumns(['aksi', 'select_all', 'pjmutuklinik'])
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $pjmutuklinik = PjMutuKlinik::latest()->first() ?? new PjMutuKlinik();
        
        $pjmutuklinik = new PjMutuKlinik();
        $pjmutuklinik->pjmutuklinik = $request->pjmutuklinik;
        $pjmutuklinik->nama = $request->nama;
        $pjmutuklinik->nip = $request->nip;
        $pjmutuklinik->pangkat = $request->pangkat;
        $pjmutuklinik->golongan = $request->golongan;
        $pjmutuklinik->telepon = $request->telepon;
        $pjmutuklinik->email = $request->email;        
        $pjmutuklinik->save();

        return response()->json('Data berhasil disimpan', 200);
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

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $pjmutuklinik = PjMutuKlinik::find($id)->update($request->all());

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pjmutuklinik = PjMutuKlinik::find($id);
        $pjmutuklinik->delete();

        return response(null, 204);
    }
}
