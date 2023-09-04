<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Klinik;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class KlinikController extends Controller
{
    public function index()
    {
        return view('klinik.index');
    }

    public function data()
    {
        $klinik = Klinik::orderBy('nama_klinik', 'asc')->get();

        return datatables()
            ->of($klinik)
            ->addIndexColumn()
            ->addColumn('aksi', function ($klinik) {
                return '
                <div class="btn-group">
                    <button type="button" onclick="editForm(`'. route('klinik.update', $klinik->id_klinik) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" onclick="deleteData(`'. route('klinik.destroy', $klinik->id_klinik) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';
            })
            ->rawColumns(['aksi'])
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
        $klinik = Klinik::create($request->all());

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $klinik = Klinik::find($id);

        return response()->json($klinik);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $klinik = Klinik::find($id)->update($request->all());

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $klinik = Klinik::find($id)->delete();

        return response(null, 204);
    }
    
}