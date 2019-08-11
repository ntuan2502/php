<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link href="assets/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/admin/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="assets/admin/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="assets/admin/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="assets/admin/css/animate.css" rel="stylesheet">
    <link href="assets/admin/css/style.css" rel="stylesheet">

    <link href="assets/admin/css/plugins/dataTables/datatables.min.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="assets/admin/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="assets/admin/css/plugins/select2/select2.min.css" rel="stylesheet">
    <link href="assets/admin/css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
    <link href="assets/admin/css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">
    <link href="assets/admin/css/plugins/select2/select2.min.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="">
                        <a href="/">
                            <i class="fa fa-gear"></i>
                            <span class="nav-label">Tìm kiếm</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="/index.php?controller=categories">
                            <i class="fa fa-gear"></i>
                            <span class="nav-label">Chuyên mục</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="/index.php?controller=posts">
                            <i class="fa fa-gear"></i>
                            <span class="nav-label">Bài viết</span>
                        </a>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" action="#">
                            <div class="form-group">
                            </div>
                        </form>
                    </div>
                </nav>
            </div>

            <?= @$content ?>

            <div class="footer">
                <div class="float-right">
                    <strong>
                        PixioStudio
                    </strong>
                </div>
                <div>
                    <strong>Copyright</strong> <a href="https://www.facebook.com/ntuan.2502" target="_blank">NAT</a> &copy; 2019
                </div>
            </div>
        </div>

    </div>

    <!-- Mainly scripts -->
    <script src="assets/admin/js/jquery-3.1.1.min.js"></script>
    <script src="assets/admin/js/popper.min.js"></script>
    <script src="assets/admin/js/bootstrap.js"></script>
    <script src="assets/admin/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/admin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="assets/admin/js/plugins/flot/jquery.flot.js"></script>
    <script src="assets/admin/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="assets/admin/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="assets/admin/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="assets/admin/js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="assets/admin/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="assets/admin/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="assets/admin/js/inspinia.js"></script>
    <script src="assets/admin/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="assets/admin/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="assets/admin/js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="assets/admin/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="assets/admin/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="assets/admin/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="assets/admin/js/plugins/toastr/toastr.min.js"></script>

    <!-- Tags Input -->
    <script src="assets/admin/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

    <!-- <script src="assets/js/link.js"></script> -->

    <script src="assets/admin/js/plugins/dataTables/datatables.min.js"></script>
    <script src="assets/admin/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>

    <!-- Sweet alert -->
    <script src="assets/admin/js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Select2 -->
    <script src="assets/admin/js/plugins/select2/select2.full.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>

    <!-- Chosen -->
    <script src="assets/admin/js/plugins/chosen/chosen.jquery.js"></script>
    <script>
        $('.chosen-select').chosen({
            width: "100%"
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [{
                        extend: 'copy'
                    },
                    {
                        extend: 'csv'
                    },
                    {
                        extend: 'excel',
                        title: 'ExampleFile'
                    },
                    {
                        extend: 'pdf',
                        title: 'ExampleFile'
                    },

                    {
                        extend: 'print',
                        customize: function(win) {
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                        }
                    }
                ]
            });
        });
    </script>
</body>

</html>