<?php include_once "db.php";

$res=$User->count(['acc'=>$_POST['acc']]);//撈取帳號資料

if($res>0){//有撈到則印1，沒有則印0
    echo 1;
}else{
    echo 0;
}

