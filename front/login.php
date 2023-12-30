
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
                        
                    }
                })
            }
        })}



      
</script>


