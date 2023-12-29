<?php include_once "db.php";

// $_POST['acc'];//從reg.php送來的

$res =$User->count(['acc'=>$_POST['acc']]);

if($res>0){
    echo 1;//表示存在，帳號重覆了
}else{
    echo 0;
}