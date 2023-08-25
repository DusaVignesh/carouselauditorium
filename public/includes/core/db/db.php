<?php 

$dsn = 'mysql:host=localhost; dbname=claimz';
$user = 'root';
$password = '';


try{
    $pdo = new PDO($dsn, $user, $password);
}catch(PDOException $e){
    echo 'connection error! ' . $e;
}	

?>