<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    protected $table = 'tb_stnk';
    protected $primaryKey = 'no';
    protected $timestaps = false;
}
