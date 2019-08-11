<?php
require_once('controllers/base_controller.php');
require_once('models/post.php');
require_once('models/category.php');

class PostsController extends BaseController
{
  function __construct()
  {
    $this->folder = 'posts';
  }

  public function index()
  {
    $posts = Post::all();
    $categories = Category::all();
    foreach($posts as $post){
      foreach($categories as $category){
        if($post->category_id == $category->id){
          $post->category_title = $category->title;
        }
      }
    }
    $this->render('index', ['posts' => $posts, 'categories' => $categories]);
  }

  public function create()
  {
    if (isset($_POST["save"])) {
      Post::create($_POST["category_id"], $_POST["title"], $_POST["body"]);
    }
    header('location: /index.php?controller=posts');
  }

  public function edit()
  {
    $post = Post::find($_GET['id']);
    $categories = Category::all();
    $this->render('edit', ['post' => $post, 'categories' => $categories]);
  }

  public function update()
  {
    if (isset($_POST["save"])) {
      Post::update($_POST["category_id"], $_POST["title"], $_POST["body"], $_GET['id']);
    }
    header('location: /index.php?controller=posts');
  }

  public function delete()
  {
    Post::delete($_GET['id']);
    header('location: /index.php?controller=posts');
  }
}
