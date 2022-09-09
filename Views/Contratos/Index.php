<section>
    <div class="row">
        <div class="col-md-12">            
            <div class="col-md-4">
                <div class="panel-body">
                <label><i class="glyphicon glyphicon-search"></i> BUSCAR</label>               
                <input type="search" onkeyup="Buscar()" class="form-control" name="buscar" id="buscar">
                <label></label>  
                <div id="cargando"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel-body">
                <label><i class="glyphicon glyphicon-search"></i> BUSCAR</label>              
                <select name="estado" onchange="BuscarEst()" id="estado" class="form-control">
                    <option value="">Seleccionar</option>
                    <option value="1">Aspirantes</option>
                    <option value="2">Seleccionados</option>
                    <option value="3">Contratados</option>
                    <option value="4">Rechazado</option>
                </select>
                <label></label>  
                <div id="cargando1"></div>
                </div>
            </div> 
                      
        </div>
        <div class="col-md-12" id="resultado">            
        </div>
    </div>
</section>
<script>
function Buscar(){
    var data= document.getElementById("buscar").value
    var long =data.length;
    if(long >= 4){
    $.ajax({
            type: "POST",
            url: '?c=contratacion&a=buscar',
            data: {
               data:data 
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Buscando a:"+data+"</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);                
            }
        });
     
    }else{

        $('#cargando').html("<h5 class='text-center'>Buscando a:"+data+"</h5>");
    }
      
}
function BuscarEst(){
    var data= document.getElementById("estado").value
    
    if(data > 0){
    $.ajax({
            type: "POST",
            url: '?c=contratacion&a=buscarEst',
            data: {
               data:data 
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Buscando a:"+data+"</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);                
            }
        });
     
    }else{

        $('#resultado').html("<h5 class='text-center'>Buscando a:"+data+"</h5>");
    }
      
}
</script>