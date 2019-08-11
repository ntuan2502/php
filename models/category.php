<?php
class Category
{
  public $id;
  public $title;

  function __construct($id, $title)
  {
    $this->id = $id;
    $this->title = $title;
  }

  static function all()
  {
    $list = [];
    $db = DB::getInstance();
    $req = $db->query('SELECT * FROM categories');

    foreach ($req->fetchAll() as $item) {
      $list[] = new Category($item['id'], $item['title']);
    }

    return $list;
  }

  static function find($id)
  {
    $db = DB::getInstance();
    $req = $db->prepare('SELECT * FROM categories WHERE id = :id');
    $req->execute(array('id' => $id));

    $item = $req->fetch();
    if (isset($item['id'])) {
      return new Category($item['id'], $item['title']);
    }
    return null;
  }

  static function create($title)
  {
    $db = DB::getInstance();
    $title = strip_tags($title);
    $req = $db->prepare("INSERT INTO categories (title) VALUES (:title)");
    $req->execute(array(':title' => $title));
  }

  static function update($title, $id)
  {
    $db = DB::getInstance();
    $title = strip_tags($title);
    $req = $db->prepare("UPDATE categories SET title = :title WHERE id = :id");
    $req->execute(array(':title' => $title, 'id' => $id));
  }

  static function delete($id)
  {
    $db = DB::getInstance();
    $req = $db->prepare('DELETE FROM categories WHERE id = :id');
    $req->execute(array('id' => $id));
  }
}
