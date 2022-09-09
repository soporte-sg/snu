<div class="row">    
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">        
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <label for="sede" class="col-sm-2">Sedes</label>            
            <select name="sede" id="sede" class="form-control" required="required">
                <option value="">Seleccionar</option>
                <?php foreach($sedes as $value):?>
                    <option value="<?=$value->id?>"><?=$value->nombre?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-8 col-lg-8">            
        <label for="sede" class="col-sm-2">Ubicaciones</label>  
        <div id="ubi"></div>          
        </div>
    </div>
    <script>    
    $('#sede').on('change', function() {
        var id = document.getElementById("sede").value
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=descripcion',
            data: {
                sede_id: id
            },            
            success: function(resp) {
                $('#ubi').html(resp);
                
            }
        });
    });

</script>

















