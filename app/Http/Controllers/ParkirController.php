<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use DateTime;
use Carbon\Carbon;
use App\Kendaraan;
use App\ParkirIn;
class ParkirController extends Controller
{
    public function index($nama){
        
    }

    public function show($id){
        $data = Kendaraan::find($id);
        $sendData = $data->no_polisi."|".$data->merktype."|".$data->jenis_model."|".$data->warna_kb."|".$data->foto;
        return $sendData;
    }

    public function cek($id){
        $data = ParkirIn::all()->where('no_stnk',$id)->first();
        // return $data;
        if($data == null){
            return "true";
        }else{
            $data = ParkirIn::all()->where('status','Tidak')->first();
            if($data != null){
                return $data->id;
            }else{
                return "true";
            }
        }
    }

    public function parkirin($id){
        DB::table('tb_parkir_in')->insert([
            'no_stnk'       => $id,
            'tanggal'       => DB::raw('DATE(NOW())'),
            'time_in'       => DB::raw('TIME(NOW())')
        ]);
        return 'sukses';
    }
    public function parkirout($id){
        date_default_timezone_set('Asia/Makassar'); 
        $data = ParkirIn::find($id);
        $data2 = Kendaraan::where('no',$data->no_stnk)->first();
        $datetime1 = new DateTime();
        $datetime2 = new DateTime($data->waktu_masuk);
        $interval = $datetime1->diff($datetime2);
        $durasi = $interval->format('%H:%I:%S');
        $biaya="";
        $jam = explode(':',$durasi);
        if($jam[0]>0){
            $biaya = 2000*$jam[0];
        }else{
            if($jam[1]>5){
                $biaya = 2000;
            }
        }
        DB::table('tb_parkir_out')->insert([
            'id_in'       => $id,
            'waktu_keluar'=> $datetime1->format('Y-m-d H:i:s'),
            'durasi'      => $durasi 
        ]);



        return $datetime1->format('Y-m-d H:i:s')."|".$datetime2->format('Y-m-d H:i:s')."|".$durasi."|".$biaya."|".$data2->foto;

    }
    public function parkirkeluar(){

    }
}
