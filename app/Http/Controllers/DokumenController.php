<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Dokumen;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class DokumenController extends Controller
{
    public function index()
    {
        return view('dokumen.index');
    }

    public function data()
    {
        $dokumen = Dokumen::orderBy('nama_dokumen', 'asc')->get();

        return datatables()
            ->of($dokumen)
            ->addIndexColumn()
            ->addColumn('aksi', function ($dokumen) {
                return '
                <div class="btn-group">
                    <button type="button" onclick="editForm(`'. route('dokumen.update', $dokumen->id_dokumen) .'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" onclick="deleteData(`'. route('dokumen.destroy', $dokumen->id_dokumen) .'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
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
        $dokumen = Dokumen::create($request->all());

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
        $dokumen = Dokumen::find($id);

        return response()->json($dokumen);
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
        $dokumen = Dokumen::find($id)->update($request->all());

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
        $dokumen = Dokumen::find($id)->delete();

        return response(null, 204);
    }
    
}
