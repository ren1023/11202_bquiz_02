﻿<?php include_once "./api/db.php";?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0039) -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>健康促進網</title>
	<link href="./css/css.css" rel="stylesheet" type="text/css">
	<script src="./js/jquery-1.9.1.min.js"></script>
	<script src="./js/js.js"></script>
</head>

<body>
	<div id="alerr"
		style="background:rgba(51,51,51,0.8); color:#FFF; min-height:100px; width:300px; position:fixed; display:none; z-index:9999; overflow:auto;">
		<pre id="ssaa"></pre>
	</div>
	<iframe name="back" style="display:none;"></iframe>
	<div id="all">
		<div id="title">
			<?=date('Y-m-d l');?> |  <!-- 在網頁上呈現今日的日期和英文的星期 -->
			今日瀏覽: <?=$Total->find(['date'=>date('Y-m-d')])['total'];?> |  <!-- 去Total的資料表搜尋total這個欄位，且日期是今日的值 -->
			累積瀏覽: <?=$Total->sum('total');?> <!-- 去Total這個資料表將total這個欄位的值加總 -->
			<a href="index.php" style="float: right;">回首頁</a>
		</div>
		<div id="title2" title="健康促進網-回首頁">
			<img src="./102202/02B01.jpg" alt="">
		</div>
		<div id="mm">
			<div class="hal" id="lef">
				<a class="blo" href="?do=po">分類網誌</a>
				<a class="blo" href="?do=news">最新文章</a>
				<a class="blo" href="?do=pop">人氣文章</a>
				<a class="blo" href="?do=know">講座訊息</a>
				<a class="blo" href="?do=que">問卷調查</a>
			</div>
			<div class="hal" id="main">
				<div>
					<marquee style="width:78%; display:inline-block;">請民眾踴躍投稿電子報，讓電子報成為大家相互交流、分享的園地！詳見最新文章</marquee>
					<span style="width:20%; display:inline-block;">
						<a href="?do=login">會員登入</a>
					</span>
					<div class="">
					<?php 
					$do=$_GET['do']?? 'main';//如果有$_GET['do']，就給值=main
					$file="./front/{$do}.php";//將do放在檔案$file中
					if(file_exists($file)){ //如果有$file檔案
						include $file; //將就do=xx的這個檔案，引入到這個位置
					}else{
						include "./front/main.php"; //如果檔案不存在，則直接引入首頁在這個位置
					}
					?>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom">
			本網站建議使用：IE9.0以上版本，1024 x 768 pixels 以上觀賞瀏覽 ， Copyright © 2012健康促進網社群平台 All Right Reserved
			<br>
			服務信箱：health@test.labor.gov.tw<img src="./home_files/02B02.jpg" width="45">
		</div>
	</div>

</body>

</html>