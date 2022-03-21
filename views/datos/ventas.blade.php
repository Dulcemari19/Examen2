<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   </head>
<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-hover">
                <thead>
                    <h4 style= "text-align:justify">Ventas Realizadas</h4>
                    <tr>
                        <th>#</th>
                        <th>Tienda</th>
                        <th>Producto</th>
                        <th>Costo</th>
                        <th>Cantidad</th>
                        <th>Descuento</th>
                        <th>SubTotal</th>
                        <th>Total</th>
                    </tr>
                    <tr

                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($ventas as $venta)
                    <tr>
                        <td>{{$venta->id_venta}}</td>
                        <td>{{$venta->created_at}}</td>
                        <td>{{$venta->tienda}}</td>
                        <td>{{$venta->producto}}</td>
                        <td>{{$venta->costo}}</td>
                        <td>{{$venta->cantidad}}</td>
                       <td>{{$venta->total}}</td>
                    </tr> 
                  
                     
                    @endforeach
                </tbody>
            </table>
      </div>
    </div>
</body>
</html>
