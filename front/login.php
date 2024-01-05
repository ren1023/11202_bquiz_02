<!-- 會員登入頁面 -->
<fieldset>

    <legend>會員登入</legend>
    <table>
        <tr>
            <td class='clo'>帳號</td>
            <td><input type="text" name="acc" id="acc"></td>
        </tr>
        <tr>
            <td class='clo'>密碼</td>
            <td><input type="password" name="pw" id="pw"></td>
        </tr>
        <tr>
            <td>
                <input type="button" value="登入" onclick="login()">
                <input type="reset" value="清除">
            </td>
            <td>
                <a href="?do=forget">忘記密碼</a> |
                <a href="?do=reg">尚未註冊</a>
            </td>
        </tr>
    </table>
</fieldset>
<script>
    
<<<<<<< HEAD
    function login() { // 定義一個名為login的函數，用於處理使用者登入
    // 向'./api/chk_acc.php'發送POST請求，帶有用戶輸入的帳號（acc），並處理返回的結果
    $.post('./api/chk_acc.php', {acc: $("#acc").val()}, (res) => {
        if (parseInt(res) == 0) {
            alert('查無帳號'); // 如果返回結果是0，表示查無帳號，顯示警告
        } else {
            // 如果帳號存在，則再次發送POST請求到'./api/chk_pw.php'，這次帶有帳號和密碼，並處理返回的結果
            $.post('./api/chk_pw.php',
                {acc: $("#acc").val(), pw: $("#pw").val()},
                (res) => {
                    if (parseInt(res) == 1) { // 如果返回結果是1，表示密碼正確
                        if ($("#acc").val() == 'admin') {
                            location.href = 'back.php'; // 如果帳號是admin，則導向後台頁面
                        } else {
                            console.log({acc: $("#acc").val(), pw: $("#pw").val()}); // 否則在控制台輸出帳號和密碼（通常用於調試）
                            // location.href = 'index.php'; // 註解掉的代碼，通常表示導向到首頁，但被註解掉了，所以不會執行
                        }
                    } else {
                        alert("密碼錯誤"); // 如果返回結果不是1，表示密碼錯誤，顯示警告
                        console.log({acc: $("#acc").val(), pw: $("#pw").val()}); // 在控制台輸出帳號和密碼（通常用於調試）
=======
    function login() { 
        $.post('./api/chk_acc.php',{acc:$("#acc").val()},(res)=>{//透過chk_acc.php去資料庫撈是否有此帳號
            console.log($("#acc").val());
            if(parseInt(res)==0){//當count的回應是0時，則查無此帳號
                alert('查無帳號');
            }else{ //當count的回應是1時，則透過chk_pw.php去檢查帳號和密碼
                $.post('./api/chk_pw.php',
                    {acc:$("#acc").val(),pw:$("#pw").val()},                    
                    (res)=>{
                    if(parseInt(res)==1){  //當帳號和密碼檢查正確時，再確認帳號是否為admin
                        if($("#acc").val()=='admin'){ //如果帳號是admin時，就連至back.php的頁面
                            location.href='back.php'
                        }else{  //帳號如果不是 admin時，就連至index.php的頁面
                            location.href='index.php'
                        }
                        // console.log({acc:$("#acc").val(),pw:$("#pw").val()})
                    }else{  //當帳號和密碼錯誤時，就警示密碼錯誤
                        console.log({acc:$("#acc").val(),pw:$("#pw").val()})
                        alert("密碼錯誤")
                        
>>>>>>> e14c931838711c60cbd6effb934f103de8d17ffe
                    }
                }
            )
        }
    })
}




      
</script>


