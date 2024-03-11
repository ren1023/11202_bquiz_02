<fieldset>
    <legend>目前位置：首頁> 最新文章區</legend>
    <table style="width:95%;margin:auto">
        <tr>
            <th width="30%">標題</th>
            <th width="50%">內容</th>
            <th width="">
                </th>
        </tr>
        <?php
        $total = $News->count(['sh' => 1]);
        $div = 5;
        $pages = ceil($total / $div);
        $now = $_GET['p'] ?? 1; //現在所在的頁數，沒有的話就從第一頁開始
        $start = ($now - 1) * $div; //開始值
        $rows = $News->all(['sh' => 1], " limit $start,$div"); //從哪頁開始，要印出5筆資料
        foreach ($rows as $row) {
        ?>
            <tr>
                <td>
                    <div class='title' data-id="<?= $row['id']; ?>" style="cursor:pointer"><?= $row['title']; ?></div>
                </td>
                <td>
                    <div id="s<?= $row['id']; ?>"><?= mb_substr($row['news'], 0, 25); ?>...</div> <!-- //將文章內容顯示25個中文字 -->
                    <div id="a<?= $row['id']; ?>" style="display:none"><?= $row['news']; ?></div><!-- //將文章全部的內容先隱藏 -->

                </td>
                <td>
                    <span id=<?= $row['good']; ?>></span><img src="../icon/02B03.jpg" style="width:25px"><!-- //存按讚的資料 -->
                    <?php
                    if (isset($_SESSION['user'])){
                        if ($Log->count(['news' => $row['id'], 'acc' => $_SESSION['user']]) > 0) {
                            echo "<a href='Javascript:good({$row['id']})'>收回讚</a>";
                        } else {
                            echo "<a href='Javascript:good({$row['id']})'>讚</a>";
                        }
                    }
                    ?>

                </td>
            </tr>
        <?php
        }
        ?>
    </table>
    <div class="ct">
        <?php

        if ($now > 1) {
            $prev = $now - 1;
            echo " <a href='?do=$do&p=$prev'> < </a> ";
        }

        for ($i = 1; $i <= $pages; $i++) {
            $fontsize = ($now == $i) ? '24px' : '16px'; //i等於當前頁時，改變字型24px
            echo "<a href='?do=$do&p=$i' style='font-size:$fontsize'> $i <a/>";
        }

        if ($now < $pages) {
            $next = $now + 1;
            echo " <a href='?do=$do&p=$next'> > </a> ";
        }

        ?>

    </div>
</fieldset>
<script>
    // $(".title").on('click', (e) => { //點選最新文章的標題時，顯示全部的文章內容
    //     let id = $(e.target).data('id'); //$(e.target)等於$this
    //     $(`#s${id},#a${id}`).toggle(); //#s代表短文章，#a代表長文章，兩個一開始短文章顯示，長文章隱藏，點下目標後，兩個互相切換
    // })

    //寫法二：不使用箭頭函數的寫法：
    $(".title").on('click',function(e){
        let id=$(this).data('id');
        $(`#s${id},#a${id}`).toggle();
        // $('#s'+id+',#a'+id).toggle();//另一種寫法

    })

    // function good(news) {
    //     $.post("./api/good.php", {news}, () => {
    //         location.reload();
    //     })

    // }
</script>