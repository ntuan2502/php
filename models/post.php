<?php
class Post
{
  public $id;
  public $category_id;
  public $title;
  public $body;

  function __construct($id, $category_id, $title, $body)
  {
    $this->id = $id;
    $this->category_id = $category_id;
    $this->title = $title;
    $this->body = $body;
  }

  static function all()
  {
    $list = [];
    $db = DB::getInstance();
    $req = $db->query('SELECT * FROM posts');

    foreach ($req->fetchAll() as $item) {
      $list[] = new Post($item['id'], $item['category_id'], $item['title'], $item['body']);
    }

    return $list;
  }

  static function find($id)
  {
    $db = DB::getInstance();
    $req = $db->prepare('SELECT * FROM posts WHERE id = :id');
    $req->execute(array('id' => $id));

    $item = $req->fetch();
    if (isset($item['id'])) {
      return new Post($item['id'], $item['category_id'], $item['title'], $item['body']);
    }
    return null;
  }

  static function create($category_id, $title, $body)
  {
    $db = DB::getInstance();
    $category_id = strip_tags($category_id);
    $title = strip_tags($title);
    $body = strip_tags($body);
    $req = $db->prepare("INSERT INTO posts (category_id, title, body) VALUES (:category_id, :title, :body)");
    $req->execute(array(':category_id' => $category_id, ':title' => $title, ':body' => $body));
  }

  static function update($category_id, $title, $body, $id)
  {
    $db = DB::getInstance();
    $category_id = strip_tags($category_id);
    $title = strip_tags($title);
    $body = strip_tags($body);
    $req = $db->prepare("UPDATE posts SET category_id = :category_id, title = :title, body = :body WHERE id = :id");
    $req->execute(array(':category_id' => $category_id, ':title' => $title, ':body' => $body, 'id' => $id));
  }

  static function delete($id)
  {
    $db = DB::getInstance();
    $req = $db->prepare('DELETE FROM posts WHERE id = :id');
    $req->execute(array('id' => $id));
  }

  static function findName($title)
  {
    $list = [];
    $db = DB::getInstance();
    $req = $db->prepare('SELECT * FROM posts WHERE title LIKE "%'.$title.'%"');
    $req->execute(array('title' => $title));

    foreach ($req->fetchAll() as $item) {
      $list[] = new Post($item['id'], $item['category_id'], $item['title'], $item['body']);
    }
    return $list;
  }
}
