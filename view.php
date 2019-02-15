<?php
    $title = $_GET['title'];

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


    $sql = "SELECT content FROM news WHERE title = :title";
    $rows = $pdo->prepare($sql);
    $rows->execute(['title' => $title]);
?>


<?php
    while ($row = $rows->fetch()) {?>
        <div class="content"><?php echo $row['content'] ?></div>
    <?php }
?>
