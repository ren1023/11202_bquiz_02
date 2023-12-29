<fieldset>
    <legend>會員註冊</legend>
    <span style="color:red;">*請設定您要註冊的帳號及密碼(最長12個字元)</span>
    <table>
        <tr>
            <td class="clo">Step1:登入帳號</td>
            <td><input type="text" name="acc" id="acc"></td>
        </tr>
        <tr>
            <td class="clo">Step2:登入密碼</td>
            <td><input type="password" name="pw" id="pw"></td>
        </tr>
        <tr>
            <td class="clo">Step3:再次確認密碼</td>
            <td><input type="password" name="pw2" id="pw2"></td>
        </tr>
        <tr>
            <td class="clo">Step4:信箱(忘記密碼時使用)</td>
            <td><input type="text" name="email" id="email"></td>
        </tr>
        <tr>
            <td >
                <input type="button" value="註冊" onclick="reg()">
                <input type="reset" value="清除">
            </td>
            <td></td>
        </tr>
    </table>
</fieldset>
<script>
function reg(){
//宣告js的物件儲存資料
    let user={acc:$("#acc").val(),
              pw:$("#pw").val(),
              pw2:$("#pw2").val(),
              email:$("#email").val()
    }
    // console.log(user); //在console中確認是否有吃到輸入的值

    // 判斷是否有空白
    if(user.acc!='' && user.pw!='' && user.pw2!='' && user.email!=''){ //判斷4個欄位的值不能是空白
        if(user.pw == user.pw2){  //確認2次輸入的密碼是否正確
            $.post("./api/chk_acc.php",{acc:user.acc},(res)=>{//去後端確認帳號是否存在
                if(parseInt(res)==1){ //將res的結果解析成整數
                    // console.log(parseInt(res)); 可以在console裡看到回傳值是1
                    alert("帳號重覆");
                    
                }else{
                    // 註冊新帳號
                }
            })

        }else{
            alert("密碼錯誤，請重新輸入");
        }
    }else{
        alert("不可空白");
    }
}


    
</script>