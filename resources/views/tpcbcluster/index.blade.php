@extends('layouts.master')

@section('title')
Tugas TPCB
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Tugas TPCB</li>
@endsection

@section('content')

<h1 class='text-center'>Tugas TPCB</h1>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-header text-center bg-primary"><b>Tugas Ketua Tim TPCB</b></div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tbody>
                            <td>1</td>
                            <td>Memimpin anggota tim untuk mempelajari kembali rencana pembinaan yang telah disusun dan membuat penjadwalan pembinaan bersama.</td>
                        </tbody>
                        <tbody>
                            <td>2</td>
                            <td>Menjelaskan kembali tujuan pembinaan terpadu dan menyosialisasikan kepada anggota tim.</td>
                        </tbody>
                        <tbody>
                            <td>3</td>
                            <td>Memutuskan prioritas dan strategi pembinaan cluster binaan bersama angota tim.</td>
                        </tbody>
                        <tbody>
                            <td>4</td>
                            <td>Mengoordinasikan anggota tim untuk melaksanakan rencana pembinaan sesuai jadwal yang telah disepakati berdasarkan urutan prioritas.</td>
                        </tbody>
                        <tbody>
                            <td>5</td>
                            <td>Memimpin pembinaan ke cluster binaan, baik melalui forum pertemuan pembahasan, mekanisme umpan balik maupun kunjungan ke lapangan.</td>
                        </tbody>
                        <tbody>
                            <td>6</td>
                            <td>Melakukan evaluasi terhadap hasil pembinaan dan menyusun rencana tindak lanjut pembinaan.</td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card">
                <div class="card-header text-center bg-primary"><b>Tugas Anggota Tim TPCB</b></div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tbody>
                            <td>1</td>
                            <td>Membuat jadwal pembinaan sesuai arahan ketua tim dan kesepakatan Bersama.</td>
                        </tbody>
                        <tbody>
                            <td>2</td>
                            <td>Memahami tujuan pembinaan terpadu.</td>
                        </tbody>
                        <tbody>
                            <td>3</td>
                            <td>Menyusun prioritas dan strategi pembinaan cluster sesuai arahan ketua tim.</td>
                        </tbody>
                        <tbody>
                            <td>4</td>
                            <td>Menyiapkan bahan pembinaan dan menyerahkan bahan ke ketua tim. Bahan pembinaan berdasarkan hasil analisis data sesuai hasil excersise pada rapat koordinasi.</td>
                        </tbody>
                        <tbody>
                            <td>5</td>
                            <td>Melaksanakan pembinaan ke cluster binaan bersama ketua tim.</td>
                        </tbody>
                        <tbody>
                            <td>6</td>
                            <td>Merangkum hasil temuan yang didapatkan pada waktu pelaksanaan pembinaan, menyusun laporan pembinaan untuk diserahkan ke ketua Tim.</td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
