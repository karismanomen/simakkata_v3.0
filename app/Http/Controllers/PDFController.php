<?php
  
namespace App\Http\Controllers;
  
use PDF;
use App\Models\User;
use App\Models\Pendamping;
use App\Models\Puskesmas;
use Illuminate\Http\Request;
use App\Models\PjMutuPuskesmas;
use App\Models\Tpcb;
use App\Models\Klinik;
  
class PDFController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    //**export pdf pendamping
    public function pendampingPDF()
    {
        $pendamping = Pendamping::get();
  
        $data = [
            'title' => 'Selamat Datang di Aplikasi SIMAKKATA',
            'date' => date('m/d/Y'),
            'users' => $pendamping
        ]; 
            
        $pdf = PDF::loadView('pdf\pendampingPDF', $data);
     
        return $pdf->download('Simakkata-Pendamping.pdf');
    }

    //**export pdf pjmutupkm
    public function pjmutupkmPDF()
    {
        $pjmutupkm = PjMutuPuskesmas::get();
  
        $data = [
            'title' => 'Selamat Datang di Aplikasi SIMAKKATA',
            'date' => date('m/d/Y'),
            'users' => $pjmutupkm
        ]; 
            
        $pdf = PDF::loadView('pdf\pjmutupkmPDF', $data);
     
        return $pdf->download('Simakkata-PjuMutupkm.pdf');
    }

        //**export pdf puskesmas
        public function puskesmasPDF()
    {
        $puskesmas = Puskesmas::get();
      
        $data = [
            'title' => 'Selamat Datang di Aplikasi SIMAKKATA',
            'date' => date('m/d/Y'),
            'users' => $puskesmas
        ]; 

        $pdf = PDF::loadView('pdf\puskesmasPDF', $data);
         
        return $pdf->download('Simakkata-Puskesmas.pdf');
    }

        //**export pdf tpcb
        public function tpcbPDF()
    {
        $tpcb = Tpcb::get();
      
        $data = [
            'title' => 'Selamat Datang di Aplikasi SIMAKKATA',
            'date' => date('m/d/Y'),
            'users' => $tpcb
        ]; 

        $pdf = PDF::loadView('pdf\tpcbPDF', $data);
         
        return $pdf->download('Simakkata-TPCB.pdf');
    }    
          //**export pdf klinik
        public function kriteriaPDF()
    {
        $klinik = Klinik::get();
      
        $data = [
            'title' => 'Selamat Datang di Aplikasi SIMAKKATA',
            'date' => date('m/d/Y'),
            'users' => $klinik
        ]; 

        $pdf = PDF::loadView('pdf\klinikPDF', $data);
         
        return $pdf->download('Simakkata-Klinik.pdf');
    }    
}
