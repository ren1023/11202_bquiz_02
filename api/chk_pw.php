<!-- // 此頁功能：確認帳號和密碼是否存在 -->
<?php include_once "db.php";

<<<<<<< HEAD


$res = $User->count($_POST);//等於下一行的寫法，因為接到剛好就是這兩個欄位
=======
$res = $User->count($_POST);//去撈User表單，並統計，結果會是0或1
//等於下一行的寫法，因為接到剛好就是這兩個欄位
>>>>>>> e14c931838711c60cbd6effb934f103de8d17ffe
// echo $User->find(['acc'=>$_POST['acc'],'pw'=>$_POST['pw']]);
// if($result>0){
//     echo 1;
// }else{
//     echo 0;
// }

if($res){
    $_SESSION['user']=$_POST['acc'];//紀錄登入狀態
}
echo $res;