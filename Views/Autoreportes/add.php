<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">REGISTRO DEL EVENTO</h3>
	</div>
	<div class="panel-body">
		<form action="" name="formautoreporte" id="formautoreporte" method="post">
			<div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="col-sm-4">
						<div class="form-group">
							<div class="form-line">
								<label>Proceso Vinculado</label>
<<<<<<< HEAD
								<select name="procesos" id="procesos"  class="form-control" required>
									<option value="">Seleccionar</option>
									<?php foreach ($procesos as $proceso): ?>									
									<option value="<?=$proceso->id?>"><?=$proceso->Iniciales.'-'. $proceso->NombreProceso?></option>
									<?php endforeach;?>
=======
								<select name="proceso" id="proceso" class="form-control" required>
									<option value="">Seleccionar</option>
									<?php foreach ($procesos as $proceso) : ?>
										<option value="<?= $proceso->Iniciales ?>"><?= $proceso->Iniciales . '-' . $proceso->NombreProceso ?></option>
									<?php endforeach; ?>
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
								</select>
							</div>
						</div>
						<div class="form-group" id="responsable">
<<<<<<< HEAD
							
						</div>						
=======

						</div>
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<div class="form-line">
								<label>Clasificación del evento</label>
								<select name="evento" id="evento" class="form-control" required>
<<<<<<< HEAD
								<option value="">Seleccionar</option>
									<?php foreach ($cat_eventos as $cat_evento): ?>									
									<option value="<?=$cat_evento->sigla?>"><?=$cat_evento->sigla.'-'. $cat_evento->nombreevento?></option>
									<?php endforeach;?>
=======
									<option value="">Seleccionar</option>
									<?php foreach ($cat_eventos as $cat_evento) : ?>
										<option value="<?= $cat_evento->sigla ?>"><?= $cat_evento->sigla . '-' . $cat_evento->nombreevento ?></option>
									<?php endforeach; ?>
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
								</select>
							</div>
						</div>
						<div class="form-group" id="cat_evento">
<<<<<<< HEAD
							
=======
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<div class="form-line">
								<label>Sede y área del evento</label>
<<<<<<< HEAD
								<input name="" id="" cols="0" rows="0" class="form-control">
=======
								<input name="lugarEvento" id="lugarEvento" cols="0" rows="0" class="form-control">
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<div class="form-line">
								<label>Descripción del evento</label>
<<<<<<< HEAD
								<textarea name="" id="" cols="0" rows="0" class="form-control"></textarea>
							</div>
						</div>
					</div>					
				</div>
				<div class="col-md-12">
					<input type="button" id="guardar" class="btn btn-default btn-block" value="Validar">
=======
								<textarea name="descEvento" id="descEvento" cols="0" rows="0" class="form-control"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<input type="hidden" name="estado" id="estado" class="form-control" value="En Tramite">
					<input type="hidden" name="fechaRegistro" id="fechaRegistro" class="form-control" value="<?= date('Y-m-d') ?>">
					<input type="hidden" name="usuario" id="usuario" class="form-control" value="<?= $_SESSION['user']->FullName ?>">
					<input type="button" id="guardar" class="btn btn-default btn-block" value="Registrar">
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
				</div>
			</div>
		</form>
	</div>
</div>
<script>
<<<<<<< HEAD
    $('#procesos').on('change', function() {
       var proc = document.getElementById("procesos").value        
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=proceso_reponsable',
            data: {                
                proceso:proc,                
            },
           beforeSend: function() {
                $('#responsable').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
            },
            success: function(resp) {
                $('#responsable').html(resp);
                $('#respuesta').html("");
            }
        });
    });


		$('#evento').on('change', function() {
       var sigla = document.getElementById("evento").value        
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=evento',
            data: {                
                sigla:sigla,                
            },
           beforeSend: function() {
                $('#cat_evento').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
            },
            success: function(resp) {
                $('#cat_evento').html(resp);
                $('#').html("");
            }
        });
    });


    $(document).on('click', '#guardar', function(e) {
       // var data = $("#formResponder").serialize();
         var formData = new FormData($("#formSolicitud")[0]);
         
        $.ajax({
            url: "?c=solicitudes&a=Registrar",
            type: "POST",
            data: formData,
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                setTimeout(function() {
                    window.location = '?c=solicitudes&a=index';
                    // window.location.reload(1);
                }, 2000)

            }
        });
    });    
</script>

=======
	$('#proceso').on('change', function() {
		var proc = document.getElementById("proceso").value
		$.ajax({
			type: "POST",
			url: '?c=autoreportes&a=proceso_reponsable',
			data: {
				proceso: proc,
			},
			beforeSend: function() {
				$('#responsable').html("<h5 class='text-center'>  Cargando Información</h5>");
			},
			success: function(resp) {
				$('#responsable').html(resp);
				$('#respuesta').html("");
			}
		});
	});


	$('#evento').on('change', function() {
		var sigla = document.getElementById("evento").value
		$.ajax({
			type: "POST",
			url: '?c=autoreportes&a=evento',
			data: {
				sigla: sigla,
			},
			beforeSend: function() {
				$('#cat_evento').html("<h5 class='text-center'>  Cargando Información</h5>");
			},
			success: function(resp) {
				$('#cat_evento').html(resp);
				$('#').html("");
			}
		});
	});


	$(document).on('click', '#guardar', function(e) {
		// var data = $("#formResponder").serialize();
		var formData = new FormData($("#formautoreporte")[0]);

		$.ajax({
			url: "?c=autoreportes&a=Registrar",
			type: "POST",
			data: formData,
			contentType: false,
			cache: false,
			processData: false,
			success: function(data) {
				Swal.fire({
					icon: 'success',
					title: 'BIEN HECHO!!',
					timer: 1500
				}, )
				setTimeout(function() {
				   window.location = '?c=autoreportes&a=buscarIndex';
					// window.location.reload(1);
				}, 2000)

			}
		});
	});
</script>
>>>>>>> b9ab8a7f8347787494f360b9ec5764de210a568c
