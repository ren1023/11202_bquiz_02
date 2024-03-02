<?php include_once "db.php";
// 文章管理處理顯示與刪除功能
if(isset($_POST['id'])){ //先確認是否有id這個值，如有，就執行以下程式
    foreach($_POST['id'] as $id){ //以foreach將id讀出

        if(isset($_POST['del']) && in_array($id,$_POST['del'])){ //如果是del，且id和del有在array中，就執行以下
            $News->del($id);
        }else{
            $news=$News->find($id); //使用id找到這筆資料，
            $news['sh']=(isset($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;//判斷如果有在sh值存在，且id和sh有在陣列中，sh欄位的值為1，是顯示的意思
            $News->save($news);//將值寫入資料庫
        }

    }

}

to("../back.php?do=news");