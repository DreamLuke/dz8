<?php
    $isValid = true;
    $title = $_POST['title'];
    $publication = $_POST['publication'];
    //$publication = date('Y-m-d', strtotime($_POST['publication']));
    if(!$publication) {
        $publication = date('Y-m-d');
    }
    $status = $_POST['status'];
    $category = $_POST['category'];
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

    
    if($title && $content) {
        $sql = "INSERT INTO news SET title = :title, publication = :publication, status = :status, category = :category, content = :content, author = :author";
        $rows = $pdo->prepare($sql);
        $rows->execute(['title' => $title, 'publication' => $publication, 'status' => $status, 'category' => $category, 'content' => $content, 'author' => $author]);
    } else {
        $isValid = false;
    }


    echo json_encode(compact(['isValid'], ['title'], ['publication'], ['status'], ['category'], ['content'], ['author']));
?>
