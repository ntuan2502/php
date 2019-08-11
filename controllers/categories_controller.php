<?php
require_once('controllers/base_controller.php');
require_once('models/category.php');

class CategoriesController extends BaseController
{
  function __construct()
  {
    $this->folder = 'categories';
  }

  public function index()
  {
    $categories = Category::all();
    $data = array('categories' => $categories);
    $this->render('index', $data);
  }

  public function create()
  {
    if (isset($_POST["save"])) {
      Category::create($_POST["title"]);
    }
    header('location: /index.php?controller=categories');
  }

  public function edit()
  {
    $category = Category::find($_GET['id']);
    $data = array('category' => $category);
    $this->render('edit', $data);
  }

  public function update()
  {
    if (isset($_POST["save"])) {
      Category::update($_POST["title"], $_GET['id']);
    }
    header('location: /index.php?controller=categories');
  }

  public function delete()
  {
    Category::delete($_GET['id']);
    header('location: /index.php?controller=categories');
  }
}
