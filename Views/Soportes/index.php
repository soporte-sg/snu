<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">           
            <div class="body">
                <form id="frm-Usuario" action="?c=soportes&a=Subir" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id1" value="<?php echo $alm->id; ?>" />
                    <input name="usuario" value="<?php echo $alm->usuario; ?>" type="hidden" class="form-control" placeholder="" />
                    <input name="user" value="<?php echo $_REQUEST['id']; ?>" type="hidden" class="form-control" placeholder="" />
                    <input name="cedula" value="<?php echo $alm->cedula; ?>" type="hidden" class="form-control" placeholder="" />
                    <input name="usuario_tipo" value="<?php echo $alm->usuario_tipo; ?>" type="hidden" class="form-control" placeholder="" />
                    <div class="row clearfix">                        
                        <div class="col-sm-12">
                            <h1>Documentos Soporte</h1>
                        </div>
                        <hr>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Copia Cedula(150%)</label>
                                    <input name="file_cedula" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--cedula-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Seguridad Social</label>
                                    <input name="file_eps_afp" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--eps-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Certificado Policia Nacional</label>
                                    <input name="file_policia" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--policia-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Certificado Procuradoria</label>
                                    <input name="file_procuraduria" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--procura-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Certificado Contraloria</label>
                                    <input name="file_contraloria" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--contralo-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Referencia laboral</label>
                                    <input name="file_ref_laboral" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--laboral-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Diploma bachiller</label>
                                    <input name="file_diploma" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--diploma-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Acta Grado bachiller</label>
                                    <input name="file_acta" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--acta-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Libreta Militar</label>
                                    <input name="file_militar" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--formacion academica-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Formación Academica</label>
                                    <input name="file_facademico" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--libreta-->
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Recibo Servicios Publicos</label>
                                    <input name="file_servicios" type="file" value="" class="form-control" placeholder="" readonly />
                                </div>
                            </div>
                        </div>
                        <!--recibo-->
                        <div class="col-md-12">
                            <input type="submit" name="registro" class="btn btn-primary btn-block" value="Registrar" />
                        </div>
                </form>

                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_cedula.pdf';



                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_cedula.pdf" title="Cedula" data-toggle="popover" data-trigger="hover" data-content="Ver cedula" target="_blank">Copia Cedula(150%)</a>

                            <?php
                            } else {
                              //  echo "<strong>El Documento cedula no existe</strong>";
                            }

                            ?>
                        </div>
                    </div>

                </div>
                <!--cedula-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">
                            <?php

                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_eps_afp.pdf';

                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_eps_afp.pdf" title="Certificado EPS/Fondo de Pensiones" data-toggle="popover" data-trigger="hover" data-content="Certificado EPS/Fondo de Pensiones" target="_blank">Certificado EPS/Fondo de Pensiones</a>

                            <?php
                            } else {
                               // echo "<strong>El Documento Certificado EPS/Fondo de Pensiones no existe</strong>";
                            }

                            ?>



                        </div>
                    </div>
                </div>
                <!--eps-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php

                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_policia.pdf';
                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_policia.pdf" title="Archivo de antecedentes" data-toggle="popover" data-trigger="hover" data-content="Archivo de antecedentes" target="_blank">Archivo de Policia</a>

                            <?php
                            } else {
                              //  echo "<strong>El archivo de Policia no existe</strong>";
                            }

                            ?>




                        </div>
                    </div>
                </div>
                <!--policia-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_contraloria.pdf';
                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_contraloria.pdf" title="Archivo de antecedentes" data-toggle="popover" data-trigger="hover" data-content="Archivo de antecedentes" target="_blank">Archivo de Contraloria</a>

                            <?php
                            } else {
                               // echo "<strong>El archivo de contraloria no existe</strong>";
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <!--contralo-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php

                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_procuraduria.pdf';
                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_procuraduria.pdf" title="Archivo de antecedentes" data-toggle="popover" data-trigger="hover" data-content="Archivo de antecedentes" target="_blank">Archivo de Procuradoria</a>

                            <?php
                            } else {
                               // echo "<strong>El archivo de Procuradoria no existe</strong>";
                            }

                            ?>




                        </div>
                    </div>
                </div>
                <!--procura-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_ref_laboral.pdf';

                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_ref_laboral.pdf" title="Referencia laboral" data-toggle="popover" data-trigger="hover" data-content="Referencia laboral" target="_blank">Referencia laboral</a>

                            <?php
                            } else {
                              //  echo "<strong>Referencia laboral no existe</strong>";
                            }

                            ?>

                        </div>
                    </div>
                </div>
                <!--laboral-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_acta.pdf';

                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_acta.pdf" title="Diploma bachiller" data-toggle="popover" data-trigger="hover" data-content="Diploma bachiller" target="_blank">Acta bachiller</a>

                            <?php
                            } else {
                               // echo "<strong>Acta no existe</strong>";
                            }

                            ?>




                        </div>
                    </div>
                </div>
                <!--acta-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_diploma.pdf';

                            if (file_exists($nombre_fichero)) { ?>

                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_diploma.pdf" title="Diploma bachiller" data-toggle="popover" data-trigger="hover" data-content="Diploma bachiller" target="_blank">Diploma bachiller</a>

                            <?php
                            } else {
                             //   echo "<strong>Diploma no existe</strong>";
                            }

                            ?>




                        </div>
                    </div>
                </div>
                <!--diploma-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/Assets/soportes/' . $alm->cedula . '/file_facademico.pdf';

                            if (file_exists($nombre_fichero)) { ?>


                                <a href="Assets/soportes/Assets/soportes/<?php echo $alm->cedula; ?>/file_facademico.pdf" title="formacion Academica" data-toggle="popover" data-trigger="hover" data-content="Libreta Militar" target="_blank">Formaci贸n Academica</a>

                            <?php
                            } else {
//echo "<strong>Formaci贸n academica no existe</strong>";
                            }

                            ?>


                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/Assets/soportes/' . $alm->cedula . '/file_militar.pdf';

                            if (file_exists($nombre_fichero)) { ?>


                                <a href="Assets/soportes/Assets/soportes/<?php echo $alm->cedula; ?>/file_militar.pdf" title="Libreta Militar" data-toggle="popover" data-trigger="hover" data-content="Libreta Militar" target="_blank">Libreta Militar</a>

                            <?php
                            } else {
                               // echo "<strong>Libreta Militar no existe</strong>";
                            }

                            ?>


                        </div>
                    </div>
                </div>
                <!--libreta-->
                <div class="col-sm-2">
                    <div class="form-group">
                        <div class="form-line">

                            <?php
                            $nombre_fichero = 'Assets/soportes/' . $alm->cedula . '/file_servicios.pdf';

                            if (file_exists($nombre_fichero)) { ?>


                                <a href="Assets/soportes/<?php echo $alm->cedula; ?>/file_servicios.pdf" title="Libreta Militar" data-toggle="popover" data-trigger="hover" data-content="Libreta Militar" target="_blank">Servicios Publicos</a>

                            <?php
                            } else {
                               // echo "<strong>Servicios Publicos no existe</strong>";
                            }

                            ?>


                        </div>
                    </div>
                </div>
                <!--recibo-->

            </div>
        </div>
    </div>

</div>

</div>
</div>
</div>
</div>
<!-- #END# Textarea -->