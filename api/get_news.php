<?php include_once "db.php";

$news=$News->find($_GET['id']);
echo nl2br($news['news']);

/**它的作用是将字符串中的换行符（\n）转换为 HTML 的换行标签（<br> 或 <br />），以便在网页上正确显示换行。这个函数名来自“New Line to Break”，直译为“新行转换为换行符”。 */
