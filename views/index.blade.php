<!DOCTYPE html>
<html lang="es">
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Examen2</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    </style>
    <script src="{{asset('js/jquery-3.6.0.min.js')}}"></script>
</head>

<body>
    <br>
    <h2>Examen 2</h2>
    <hr>
    <h5>Dulce Maria Sevilla Ortiz </h5>
    <hr>
    <br>
    <form action="{{route('guardar_venta')}}" method="post" enctype="multipart/form-data">
        @csrf
        <center>
            <div>
                <table width="80%">
                    <tr>
                        <td>Tiendas:
                            <br>
                            <select style="width:500px" name="id_tienda" id="tienda">
                                <option value="0">-- Seleccione una tienda --</option>
                                @foreach($tiendas as $tienda)
                                <option value="{{$tienda->id_tienda}}">{{$tienda->nombre_tienda}}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="productos"></div>
                        </td>
                    </tr>
                </table>
                <tr>
                    <div id="formulario_venta">
    </form>
    </div>
    </tr><br><br><br>
    <div id="table-content"> </div>
    </div>

    </center>
</body>
<script type="text/javascript">
    $(document).ready(function() {
        $("#tienda").change(function() {
         var valtienda = $("#tienda").val();
            if (valtienda == 0) {
                
               } else {
                $('#productos').load("productos?id_tienda=" + valtienda).serialize();
            }
        });
    });
</script>

<script type="text/javascript">
    $(document).ready(function() {
        var refreshId = setInterval(function() {
            $('#table-content').load("{{route('ventas')}}");
        }, 1000);
    });
</script>

</html>;