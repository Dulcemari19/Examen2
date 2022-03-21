<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productos extends Model
{
    use HasFactory;

    protected $table = 'tb_productos';

    protected $fillable = [
        'nombre_producto',
        'precio',
        'stock',
        'foto',
        'id_sucursal',
        'estatus'
    ];
}
