<fieldset>
    <legend>目前位置：首頁> 人氣文章區</legend>
    <table style="width:95%;margin:auto">
        <tr>
            <th width="30%">標題</td>
            <th width="50%">內容</td>
            <th width="">人氣</td>
        </tr>
        <?php 
            $total = $News->count(['sh' => 1]);
            $div = 5;
            $pages = ceil($total / $div);
            $now = $_GET['p'] ?? 1;
            $start = ($now - 1) * $div;
            // $news = $News->all("limit $start,$div");

            $rows=$News-> all(['sh'=>1]," order by `good` desc  limit $start,$div");//先排序後再取資料
            foreach($rows as $row){
            ?>
        <tr start='<?= $start + 1; ?>'>          
            <td><?= $row['title'];?></td>
            <td><?=mb_substr($row['news'],0,25);?>...</td>
            <td></td>
        </tr>
        <?php
            }
        ?>
    </table>
    <div class="ct">
		<?php

		if ($now > 1) {
			$prev = $now - 1;
			echo " <a href='?do=$do&p=$prev'><</a> ";
		}

		for ($i = 1; $i <= $pages; $i++) {
			$fontsize = ($now == $i) ? '24px' : '16px';
			echo "<a href='?do=$do&p=$i' style='font-size:$fontsize'> $i <a/>";
		}

		if ($now < $pages) {
			$next = $now + 1;
			echo " <a href='?do=$do&p=$next'> > </a> ";
		}
		?>

	</div>
</fieldset>