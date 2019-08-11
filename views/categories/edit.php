<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Sửa chuyên mục</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="/">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a>Chuyên mục</a>
            </li>
            <li class="breadcrumb-item active">
                <strong>Sửa chuyên mục</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Sửa chuyên mục</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <?php
                    echo '
                    <form action="/index.php?controller=categories&action=update&id='.$category->id.'" method="POST" enctype="multipart/form-data">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="title">Title</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" id="title" name="title" value="' . $category->title . '" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-primary pull-right" name="save">Xác nhận</button>
                            </div>
                        </div>
                    </form>';
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>