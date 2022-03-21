Productos:
<br>
<select name="id_producto" id="id_producto" style="width: 500px;">
    <option value="0">--seleccione un producto --</option>
    @foreach($productos as $producto)
    <option value="{{$producto->id_producto}}">{{$producto->nombre_producto}}</option>
    @endforeach
</select>


<script type="text/javascript">
    $(document).ready(function(){
        $("#id_producto").change(function(){
        var producto = $("#id_producto").val();
        if(producto == 0){
            $("#info01").empty();
            $("#info02").empty();
        }else{
            $('#formulario_venta').load("{{ route('formulario_venta') }}?id_producto=" + producto);
        }
    });
  });
</script> 