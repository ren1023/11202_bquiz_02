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
                <input type="reset" value="清除"></td>
            <td>
                <a href="?do=forget">忘記密碼</a> | <a href="?do=reg">尚未註冊</a>
            </td>
        </tr>
    </table>
</fieldset>
<script>
function login(){
    $.post('./api/chk_acc.php',{acc:$("#acc").val()},(res)=>{ //使用post取得帳號資料並確認是否有此帳號
        if(parseInt(res)==0){
            alert("查無帳號")
        }else{
            $.post('./api/chk_pw.php', //使用post的方式取得密碼
                   {acc:$("#acc").val(),pw:$("#pw").val()}, //提供網頁端收到的帳號和密碼
                   (res)=>{
                        if(parseInt(res)==1){ //因為驗證的結果是0或1，故轉為int的型式來判斷
                            if($("#acc").val()=='admin'){ //如果是管理者登入，則連線到back.php
                                location.href='back.php'
                            }else{
                                location.href='index.php' //如果不是，就連到首頁
                            }
                        }else{
                            alert("密碼錯誤")
                        }
            })
        }
    })
}
</script>