<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Bài viết</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="/">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a>Bài viết</a>
            </li>
            <li class="breadcrumb-item active">
                <strong>Danh sách bài viết</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">
        <!-- <h2></h2>
        <a href="/index.php?controller=posts&action=addPost">
            <button class="btn btn-primary pull-right">Thêm bài viết</button>
        </a> -->
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Thêm bài viết</h5>
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
                    <form action="/index.php?controller=posts&action=create" method="POST" enctype="multipart/form-data">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="category">Category</label>
                            <div class="col-sm-10">
                                <select name="category_id" data-placeholder="Choose a category..." class="chosen-select" tabindex="2">
                                    <option value="">Select</option>
                                    ';
                                    foreach ($categories as $category)
                                        echo '<option value="'.$category->id.'">'.$category->title.'</option>';
                                    echo '
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="title">Title</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" id="title" name="title" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="body">Body</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="body" id="body" required></textarea>
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
        <div class="col-lg-12">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Danh sách bài viết</h5>
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
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th style="width: 40%;">Body</th>
                                    <th>Category</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($posts as $post)
                                    echo '
                                <tr>
                                    <td>' . $post->id . '</td>
                                    <td>' . $post->title . '</td>
                                    <td>' . $post->body . '</td>
                                    <td>' . $post->category_title . '</td>
                                    <td>
                                        <a href="/index.php?controller=posts&action=edit&id=' . $post->id . '">
                                            <button class="btn btn-warning">Sửa</button>
                                        </a>
                                        <a href="/index.php?controller=posts&action=delete&id=' . $post->id . '">
                                          <button class="btn btn-danger">Xóa</button>
                                        </a>
                                    </td>
                                </tr>';
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>