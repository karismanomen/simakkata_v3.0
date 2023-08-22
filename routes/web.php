<?php

use App\Http\Controllers\{
    DashboardController,
    DokumenController,
    KategoriController,
    KlinikController,
	Klinik2Controller,
    PendampingController,
    Pendamping2Controller,
    PjMutuKlinikController,
    PjMutuKlinik2Controller,
    PjMutuPuskesmasController,
    PjMutuPuskesmas2Controller,  
    PuskesmasController,
    Puskesmas2Controller,
    TpcbController,
    Tpcb2Controller,
    TpcbClusterController,
    Tpcb2ClusterController,
    TpcbFungsiController,
    Tpcb2FungsiController,
    UserController,
    SettingController,
    PDFController,
};

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//PDF
Route::get('/pdf/pendampingPDF', [PDFController::class, 'pendampingPDF']);
Route::get('/pdf/pjmutupkmPDF', [PDFController::class, 'pjmutupkmPDF']);
Route::get('/pdf/puskesmasPDF', [PDFController::class, 'puskesmasPDF']);
Route::get('/pdf/tpcbPDF', [PDFController::class, 'tpcbPDF']);

Route::get('/', function () {
    return redirect()->route('login');
});

Route::group(['middleware' => 'auth'], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::group(['middleware' => 'level:1'], function () {
        Route::get('/kategori/data', [KategoriController::class, 'data'])->name('kategori.data');
        Route::resource('/kategori', KategoriController::class);
      
        Route::get('/klinik/data', [KlinikController::class, 'data'])->name('klinik.data');
        Route::resource('/klinik', KlinikController::class);

        Route::get('/pendamping/data', [PendampingController::class, 'data'])->name('pendamping.data');
        Route::post('/pendamping/delete-selected', [PendampingController::class, 'deleteSelected'])->name('pendamping.delete_selected');
        Route::resource('/pendamping', PendampingController::class);
      
        Route::get('/pjmutuklinik/data', [PjMutuKlinikController::class, 'data'])->name('pjmutuklinik.data');
        Route::resource('/pjmutuklinik', PjMutuKlinikController::class);
      
        Route::get('/pjmutupkm/data', [PjMutuPuskesmasController::class, 'data'])->name('pjmutupkm.data');
        Route::resource('/pjmutupkm', PjMutuPuskesmasController::class);

        Route::get('/puskesmas/data', [PuskesmasController::class, 'data'])->name('puskesmas.data');
        Route::resource('/puskesmas', PuskesmasController::class);
     
        Route::get('/tpcb/data', [TpcbController::class, 'data'])->name('tpcb.data');
        Route::post('/tpcb/delete-selected', [TpcbController::class, 'deleteSelected'])->name('tpcb.delete_selected');
        Route::resource('/tpcb', TpcbController::class);

        Route::get('/tpcbfungsi', [TpcbFungsiController::class, 'index'])->name('tpcbfungsi.index');

        Route::get('/tpcbcluster', [TpcbClusterController::class, 'index'])->name('tpcbcluster.index');

        Route::get('/user/data', [UserController::class, 'data'])->name('user.data');
        Route::resource('/user', UserController::class);

        Route::get('/setting', [SettingController::class, 'index'])->name('setting.index');
        Route::get('/setting/first', [SettingController::class, 'show'])->name('setting.show');
        Route::post('/setting', [SettingController::class, 'update'])->name('setting.update');
       
      	Route::get('/dokumen/data', [KlinikController::class, 'data'])->name('dokumen.data');
        Route::resource('/dokumen', KlinikController::class);

    });

    Route::group(['middleware' => 'level:2'], function () {
        Route::get('/klinik2/data', [Klinik2Controller::class, 'data'])->name('klinik2.data');
        Route::resource('/klinik2', Klinik2Controller::class);  
      
        Route::get('/pendamping2/data', [Pendamping2Controller::class, 'data'])->name('pendamping2.data');
        Route::resource('/pendamping2', Pendamping2Controller::class);
      
        Route::get('/pjmutuklinik2/data', [PjMutuKlinik2Controller::class, 'data'])->name('pjmutuklinik2.data');
        Route::resource('/pjmutuklinik2', PjMutuKlinik2Controller::class);
      
        Route::get('/pjmutupkm2/data', [PjMutuPuskesmas2Controller::class, 'data'])->name('pjmutupkm2.data');
        Route::resource('/pjmutupkm2', PjMutuPuskesmas2Controller::class);

        Route::get('/puskesmas2/data', [Puskesmas2Controller::class, 'data'])->name('puskesmas2.data');
        Route::resource('/puskesmas2', Puskesmas2Controller::class);
      
        Route::get('/tpcb2/data', [Tpcb2Controller::class, 'data'])->name('tpcb2.data');
        Route::resource('/tpcb2', Tpcb2Controller::class);

        Route::get('/tpcb2fungsi', [Tpcb2FungsiController::class, 'index'])->name('tpcb2fungsi.index');

        Route::get('/tpcb2cluster', [Tpcb2ClusterController::class, 'index'])->name('tpcb2cluster.index');
    });

    Route::group(['middleware' => 'level:1,2'], function () {
        Route::get('/profil', [UserController::class, 'profil'])->name('user.profil');
        Route::post('/profil', [UserController::class, 'updateProfil'])->name('user.update_profil');
    });
});