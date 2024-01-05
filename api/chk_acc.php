<!-- 這頁的功能：確認使用者的帳號是否存在 -->
<?php include_once "db.php";


// $_POST['acc'];//從reg.php送來的
// dd($_POST['acc']);

$res =$User->count(['acc'=>$_POST['acc']]); //去撈User的資料表中的acc欄位，並統計是否大於0，如果是，表示帳號已存在

if($res>0){
    echo 1;//表示存在，帳號重覆了
}else{
    echo 0;
}