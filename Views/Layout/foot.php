</div>
</section>
<!-- Jquery Core Js -->
<script src="Assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap Core Js -->
<script src="Assets/plugins/bootstrap/js/bootstrap.js"></script>
<!-- Select Plugin Js 
    <script src="Assets/plugins/bootstrap-select/js/bootstrap-select.js"></script>
-->
<!-- Slimscroll Plugin Js -->
<script src="Assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="Assets/plugins/node-waves/waves.js"></script>

<!-- jQuery-->
<script src="Assests/plugins/jquery/jquery.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="Assests/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="Assests/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="Assests/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="Assests/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="Assests/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="Assests/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="Assests/plugins/jszip/jszip.min.js"></script>
<script src="Assests/plugins/pdfmake/pdfmake.min.js"></script>
<script src="Assests/plugins/pdfmake/vfs_fonts.js"></script>
<script src="Assests/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="Assests/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="Assests/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- Custom Js -->
<script src="Assets/js/admin.js"></script>
<script src="Assets/js/pages/index.js"></script>
<!-- Demo Js -->
<script src="Assets/js/demo.js"></script>

<!-- Page specific script -->
<script>
    $(document).ready(function() {
    $('#table').DataTable( {
        order: [[3, 'desc'], [0, 'desc']],
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
            next:     '››'
        },

        }
    } );
} );
    // $(function() {
    //     $("#example1").DataTable({

    //         language: {
    //             search: "Buscar:",
    //             paginate: {
    //         previous: '‹',
    //         next:     '›'
    //     },
    //     aria: {
    //         paginate: {
    //             previous: 'Anterior',
    //             next:     'Siguiente'
    //         }
    //     }
    //         },
    //         "responsive": true,
    //         "lengthChange": false,
    //         "autoWidth": true,
    //         "buttons": ["copy", "csv", "excel", "pdf", "print"]
    //     }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    // });
</script>
</body>

</html>