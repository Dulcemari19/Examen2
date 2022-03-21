@foreach($productos as $producto)
<br><br>
<hr>
<h6 style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Datos del Producto </h6>
<hr>
<table width="80%">
    <tr>
        <td> Clave: {{$producto->clave}} <br>
             Nombre {{$producto->nombre_producto}} <br>
            Costo: {{$producto->costo}} 
            total: <input type="text" name="total" readonly style="border: none;" id="total">
        <br> 
            <input type="text" name="costo" id="costo" hidden readonly value="{{$producto->costo}}">
            <input type="text" name="nombre_producto" hidden readonly id="nombre_producto" value="{{$producto->nombre_producto}}">
        </td>
    </tr>
    <tr>
        <td>Cantidad:<input type="text" name="cantidad" id="cantidad" onkeyup="Sumar()">
            <input type="submit" value="Realizar venta">
        </td>
    </tr>
    </form>
</table>
@endforeach
<script type="text/javascript">
    function Sumar() {
        var n1 = document.getElementById('cantidad').value;
        var n2 = document.getElementById('costo').value;
        var total = parseInt(n1) * parseInt(n2);
        if(total >= 0){
            document.getElementById("total").value = total;
        }else{
            var total = 0;
            document.getElementById("total").value = total;
            }
    }
</script>