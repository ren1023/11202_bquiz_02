<!-- 問卷後台 頁面-->
<fieldset>
    <legend>新增問卷</legend>
    <form action="./api/add_que.php" method="post">
    <div style="display: flex;">
        <div>問卷名稱</div>
        <div>
            <input type="text" name="subject" >
        </div>
    </div>
    <div >
        <div id="opt">選項
            <input type="text" name="option[]" > <!-- 有多個選項 -->
            <input type="button" value="更多" onclick="more()">
        </div>
    </div>
    <div class="ct">
        <input type="submit" value="送出"> 
        <input type="reset" value="清空">
    </div>
    </form>
</fieldset>
<script>
    function more(){//在id=opt的前面，塞入更多選項
        let opt=`
        <div id="opt">選項
            <input type="text" name="option[]" >
        </div>
        `
        $("#opt").before(opt);
    }
</script>