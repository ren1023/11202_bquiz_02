    <!-- - 後台_文章管理頁面 -->
    <form method="post" action="./api/edit_news.php"> <!-- ?表示是當前的頁面 -->
        <table style="width:75%; text-align: center;">
            <tbody>
                <tr>
                    <td>編號</td>
                    <td style="width: 75%;">標題</td>
                    <td>顯示</td>
                    <td>刪除</td>
                </tr>
                <!-- 將資料顯示在畫面上 -->
                <?php
                $total = $News->count(); //從db撈出總筆數
                $div = 3; //每3筆，換一頁
                $pages = ceil($total / $div);   //共需多少頁 8/3=2.6，故pages=3
                $now = $_GET['p'] ?? 1; //如果值不存在，則預設為第1頁
                $start = ($now - 1) * $div;  //計算開始值
                $rows = $News->all(" limit $start,$div");  //limit前建議有空白，第一頁：從第0筆開始，印0,1,2,3,4共5筆資料筆資料；第2頁時，從第5筆開始，印5,6,7,8,9共5筆資料
                foreach ($rows as $idx => $row) {
                ?>
                    <tr>
                        <td>
                            <?= $idx + 1 + $start; ?> <!-- 以前用的是id，但因為id不會連續，故改用idex -->
                        </td>
                        <td>
                            <?= $row['title']; ?>
                        </td>
                        <td>
                            <input type="checkbox" name="sh[]" value="<?= $row['id']; ?>" <?= ($row['sh'] == 1) ? 'checked' : ''; ?>>
                        </td>
                        <td>
                            <input type="checkbox" name="del[]" value="<?= $row['id']; ?>">
                            <input type="hidden" name="id[]" value="<?=$row['id']?>">
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
        <div class="ct">
            <?php

            if ($now-1 > 0) {  //當 當前頁大於1時，則往下執行
                $prev = $now - 1;  //上一頁=當前頁-1
                echo " <a href='?do=$do&p=$prev'><</a> "; //連結到 當前頁的do=news?p=1...2...3...
            }


            for ($i = 1; $i <= $pages; $i++) {
                $fontsize = ($now == $i) ? '22px' : '16px';  //將當前頁$now == $i，則改變style將字變大
                echo "<a href='?do=$do&p=$i' style='font-size:$fontsize'> $i <a/>";
            }


            if ($now+1 < $pages) {
                $next = $now + 1;  //下一頁
                echo " <a href='?do=$do&p=$next'> > </a> ";
            }

            ?>

        </div>
        
        <div class="ct">
        <input type="submit" value="修改確定">
        </div>
    </form>