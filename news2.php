<?php
    $isValid = true;
    $title = $_POST['title'];
    $publication = $_POST['publication'];
    //$publication = date('Y-m-d', strtotime($_POST['publication']));
    if(!$publication) {
        $publication = date('Y-m-d');
    }
    $status = $_POST['status'];
    $category_id = $_POST['category'];
    $content = $_POST['content'];;
    $author = $_POST['author'];;

    $host = 'localhost';
    $db = 'online';
    $user = 'root';
    $pass = '';
    $charset = 'utf8';

    $dsn = "mysql:host=$host;dbname=$db;charset=$charset";

    $opt = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];
    $pdo = new PDO($dsn, $user, $pass, $opt);

    $sql = "SELECT category_title FROM categories WHERE id = :category_id";
    $rows = $pdo->prepare($sql);
    $rows->execute(['category_id' => $category_id]);
    //$rows->execute(['category_title' => $category_title]);

    $row = $rows->fetch();

   


    echo json_encode(compact(['isValid'], ['title'], ['publication'], ['status'], ['category_id'], ['content'], ['author'], ['row']));
?>
