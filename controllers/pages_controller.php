<?php
require_once('controllers/base_controller.php');
require_once('models/post.php');

class PagesController extends BaseController
{
  function __construct()
  {
    $this->folder = 'pages';
  }

  public function home()
  {
    $this->render('home');
  }

  public function result()
  {
    $posts = Post::findName($_REQUEST['search']);
    $this->render('result', ['posts' => $posts, 'name' => $_REQUEST['search']]);
  }

  public function error()
  {
    $this->render('error');
  }
}
