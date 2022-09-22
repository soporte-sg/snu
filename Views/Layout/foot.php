</div>
</section>
<!-- Jquery Core Js -->
<script src="Assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap Core Js -->
<script src="Assets/plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js 
<script src="Assets/plugins/bootstrap-select/js/bootstrap-select.js"></script>-->

<!-- Slimscroll Plugin Js -->
<script src="Assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<!-- Waves Effect Plugin Js -->
<!-- <script src="Assets/plugins/node-waves/waves.js"></script> -->

<!-- Jquery DataTable Plugin Js -->
<script src="Assets/plugins/jquery-datatable/jquery.dataTables.js"></script>
<script src="Assets/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<!-- <script src="Assets/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="Assets/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script> -->
<script>
    $(document).ready(function() {
        //  jQuery.noConflict();
        $('#table').DataTable({
            order: [
                [3, 'desc'],
                [0, 'desc']
            ],
            "language": {
                "lengthMenu": "Mostrar _MENU_ Registros por pagina",
                "zeroRecords": "Nada se encontro",
                "info": "Mostrando pag _PAGE_ de _PAGES_",
                "infoEmpty": "No hay registros disponibles",
                "infoFiltered": "(filtered from _MAX_ total records)",
                "search": "Filtrar:",
                "responsive": true,
                "autoWidth": true,
                paginate: {
                    previous: '‹‹',
                    next: '››'
                },

            }
        });

        $('#tableDoc').DataTable({
            order: [
                [0, 'asc'],
            ],
            "language": {
                "lengthMenu": "Mostrar _MENU_ Registros por pagina",
                "zeroRecords": "Nada se encontro",
                "info": "Mostrando pag _PAGE_ de _PAGES_",
                "infoEmpty": "No hay registros disponibles",
                "infoFiltered": "(filtered from _MAX_ total records)",
                "search": "Filtrar:",
                "responsive": true,
                "autoWidth": true,
                paginate: {
                    previous: '‹‹',
                    next: '››'
                },
            }
        });

        $('#tableCliente').DataTable({
            // order: [[3, 'desc'], [0, 'desc']],
            "language": {
                "lengthMenu": "Mostrar _MENU_ Registros por pagina",
                "zeroRecords": "Nada se encontro",
                "info": "Mostrando pag _PAGE_ de _PAGES_",
                "infoEmpty": "No hay registros disponibles",
                "infoFiltered": "(filtered from _MAX_ total records)",
                "search": "Filtrar:",
                "responsive": true,
                "autoWidth": true,
                paginate: {
                    previous: '‹‹',
                    next: '››'
                },

            }
        });
        
        $('#tableCargo').DataTable({
             order: [[0, 'asc'], ],
            "language": {
                "lengthMenu": "Mostrar _MENU_ Registros por pagina",
                "zeroRecords": "Nada se encontro",
                "info": "Mostrando pag _PAGE_ de _PAGES_",
                "infoEmpty": "No hay registros disponibles",
                "infoFiltered": "(filtered from _MAX_ total records)",
                "search": "Filtrar:",
                "responsive": true,
                "autoWidth": true,
                paginate: {
                    previous: '‹‹',
                    next: '››'
                },

            }
        });
    });
</script>
<!-- Custom Js -->
<script src="Assets/js/admin.js"></script>
<script src="Assets/js/pages/tables/jquery-datatable.js"></script>
<!-- Demo Js -->
<script src="Assets/js/demo.js"></script>
</body>
</html>