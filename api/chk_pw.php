<?php include_once "db.php";

$res=$User->count($_POST);//撈出前端收到使用者輸入的帳號和密碼

if($res){//如果有收到，則將前端的帳號資料存到session中
    $_SESSION['user']=$_POST['acc'];
}
echo $res;

//echo $User->count(['acc'=>$_POST['acc'],'pw'=>$_POST['pw']]);

/* echo $res; */

/* if($res>0){
    echo 1;
}else{
    echo 0;
} */

