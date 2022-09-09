<table class="table table-bordered table-hover">
    <thead>
        <tr>
            <th>No</th>
            <th>Item</th>
            <th>carateristicas</th>
            <th>Quitar</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($mantenimientos as $value) : ?>
            <tr>
                <td><?= $value->produId ?></td>
                <td><?= $value->produNombre ?></td>
                <td class="text-justify"><?= $value->carateristicas ?></td>
                <td class="text-justify"><a class="btn btn-primary" onclick="Quitar('<?= $value->id ?>')" data-toggle="modal" href='#modal-id'><i class="glyphicon glyphicon-trash"></i></a></td>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<script>
    function Quitar(val) {
        var id = val
        $.ajax({
            data: {
                productoId: id
            },
            type: "post",
            url: "?c=mantenimientos&a=quitar",

            success: function(resp) {
                Swal.fire({
                        title: "Estas seguro?",
                        text: "Esta acción no puede ser desecha",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "SI",
                        cancelButtonText: "No",
                        closeOnConfirm: false,
                        closeOnCancel: false,
                        //  timer: 1500
                    },

                    function(isConfirm) {
                        if (isConfirm) {
                            form.submit();
                            setTimeout(function() {
                                //window.location = '?c=indicadors&a=index';
                                window.location.reload(1);
                            }, 2000) // submitting the form when user press yes
                        } else {
                            swal.fire("Cancelado", ";)");
                        }
                    });


                setTimeout(function() {
                    //window.location = '?c=indicadors&a=index';
                   // window.location.reload(1);
                }, 2000)

            }
        });
    }
</script>