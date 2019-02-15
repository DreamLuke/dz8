<?php

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

?>

<?php

$sql = "SELECT title, content FROM news";
$rows = $pdo->query($sql);

while($row = $rows->fetch()){?>
    <!-- <a href= 'view.php?id=<?php echo $row['id']; ?>'>' <?php echo $row['title']; ?></a> -->
    <a href= 'view.php?title=<?php echo $row['title']; ?>'>' <?php echo $row['title']; ?></a>
    <br>
<?php }
?>
