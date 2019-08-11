<div class="row wrapper border-bottom white-bg page-heading">
  <div class="col-lg-9">
    <h2>Tìm kiếm bài viết</h2>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item">
        Tìm kiếm
      </li>
      <li class="breadcrumb-item active">
        <strong>Tìm kiếm bài viết</strong>
      </li>
    </ol>
  </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
  <div class="row">
    <div class="col-lg-12">
      <div class="ibox ">
        <div class="ibox-content">
          <h2>
            Results found for: <span class="text-navy"><?php echo $name ?></span>
          </h2>
          <small></small>

          <div class="search-form">
            <form action="/index.php?controller=pages&action=result" method="post">
              <div class="input-group">
                <input type="text" value="<?php echo $name ?>" name="search" class="form-control form-control-lg">
                <div class="input-group-btn">
                  <button class="btn btn-lg btn-primary" type="submit">
                    Search
                  </button>
                </div>
              </div>

            </form>
          </div>
          <?php
          foreach ($posts as $post)
          echo '<div class="hr-line-dashed"></div>
          <div class="search-result">
            <h3><a href="/index.php?controller=posts&action=edit&id=' . $post->id . '">'.$post->title.'</a></h3>
            <a href="/index.php?controller=posts&action=edit&id=' . $post->id . '" class="search-link">Edit</a>
            <p>
            '.$post->body.'
            </p>
          </div>';
          ?>

        </div>
      </div>
    </div>
  </div>