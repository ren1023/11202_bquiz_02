<!-- 將使用者的註冊資料，存入資料庫 -->
<?php include_once "db.php";

// $_POST['acc'];
unset($_POST['pw2']);
$User->save($_POST);//儲存整個資料，不包含pw2這個值
//這個執行結果是1，有一筆資料影響，表示成功；0表示沒有資料影響，這個要注意，為了要在時間內完成，所以這個就沒有做檢查
//不用to去原頁面喔！！因為是使用ajax