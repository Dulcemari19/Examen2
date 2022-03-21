<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\tienda;
use App\Models\ventas;
use App\Models\productos;

class examen2 extends Controller
{
    public function consultiendas()
    {
        $tiendas = tienda::all();
        $ventas = ventas::all();
        return view("index")
            ->with(['tiendas' => $tiendas])
            ->with(['ventas' => $ventas]);
    }

    public function ventas()
    {
        $ventas = ventas::orderBy('id_venta', 'DESC')->get();
        return view("datos.ventas")
            ->with(['ventas' => $ventas]);
    }

    public function productos(Request $request)
    {
        $id_tienda = $request->get('id_tienda');
        $productos = productos::select('*')->where('id_tienda', '=', $id_tienda)->get();
        return view("datos.productos")
            ->with(['productos' => $productos]);
    }

    public function formulario_venta(Request $request)
    {
        $id_producto = $request->get('id_producto');
        $productos = productos::select('*')->where('id_producto', '=', $id_producto)->get();
        return view("datos.formulario_venta")
            ->with(['productos' => $productos]);
    }

    public function guardar_venta(Request $request)
    {
        $id_tienda = $request['id_tienda'];
        $tiendas = tienda::select('*')->where('id_tienda', '=', $id_tienda)->get();
        foreach ($tiendas as $tienda) 
        {
            $nomtienda = $tienda->nombre_tienda;
        }

        $venta = ventas::create(array(
            'producto' => $request['nombre_producto'],
            'tienda' => $nomtienda,
            'precio' => $request['precio'],
            'cantidad' => $request['cantidad'],
            'total' => $request['total']
        ));
    }
}
