<?php
require 'vendor/autoload.php';
use Ramsey\Uuid\Uuid;
try{
    echo "this is cicd";
    echo "<br>";
    echo "so, this is a success<br>";
    echo "hi, this is anupam mathur";
    echo "<br>";
    echo "it worked.. ";
    echo "hello";
    $uuid = Uuid::uuid4();
    echo "<br>UUID: ".$uuid->toString();
}catch(Exception $e){
    print_r($e->message);
}
?>