<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\PjMutuPuskesmas;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class PjMutuPuskesmasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pjmutupkm.index');
    }

    public function data()
    {
        $pjmutupkm = PjMutuPuskesmas::orderBy('pjmutupkm')->get();

        return datatables()
            ->of($pjmutupkm)
            ->addIndexColumn()
            ->addColumn('select_all', function ($pendamping) {
                return '
                    <input type="checkbox" name="id_pjmutupkm[]" value="'. $pendamping->id_pjmutupkm .'">
                ';
            })
            ->addColumn('pjmutupkm', function ($pjmutupkm) {
                return '<span class="label label-success">'. $pjmutupkm->pjmutupkm .'<span>';
            })
            ->addColumn('aksi', function ($pjmutupkm) {
                return '
                <div class="btn-group">
                    <button type="button" onclick="editForm(`'. route('pjmutupkm.update', $pjmutupkm->id_pjmutupkm) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" onclick="deleteData(`'. route('pjmutupkm.destroy', $pjmutupkm->id_pjmutupkm) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            })
            ->rawColumns(['aksi', 'select_all', 'pjmutupkm'])
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
        $pjmutupkm = PjMutuPuskesmas::latest()->first() ?? new PjMutuPuskesmas();
        
        $pjmutupkm = new PjMutuPuskesmas();
        $pjmutupkm->pjmutupkm = $request->pjmutupkm;
        $pjmutupkm->nama = $request->nama;
        $pjmutupkm->nip = $request->nip;
        $pjmutupkm->pangkat = $request->pangkat;
        $pjmutupkm->telepon = $request->telepon;
        $pjmutupkm->email = $request->email;        
        $pjmutupkm->save();

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
        $pjmutupkm = PjMutuPuskesmas::find($id);

        return response()->json($pjmutupkm);
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
        $pjmutupkm = PjMutuPuskesmas::find($id)->update($request->all());

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
        $pjmutupkm = PjMutuPuskesmas::find($id);
        $pjmutupkm->delete();

        return response(null, 204);
    }
}
