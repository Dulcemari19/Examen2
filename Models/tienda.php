<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tienda extends Model
{
    use HasFactory;
    protected $table = 'tb_tienda';

    protected $fillable = [
        'nombre_tienda'
    ];
}