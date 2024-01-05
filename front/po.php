<style>
    .type-item{
        display: block;
        margin:2px 6px;
    }
    .types,.news-list{
        display: inline-block ;
        vertical-align: top;
    }
</style>
<div class="nav">目前位置>分類網誌> <span class="type">健康新知</span></div>

<fieldset class="types">
    <legend>分類網誌</legend>
<a class='type-item'>健康新知</a>  
<a class='type-item'>菸害防治</a>
<a class='type-item'>癌症防治</a>
<a class='type-item'>慢性病防治</a>
</fieldset>

<fieldset class='news-list'>
    <legend >文章列表</legend>
    <div class="list-items"></div>
    <div class="article"></div>

</fieldset>

<script>
    $('.type-item').on('click',function(){
        $('.type').text($(this).text());
    })

    

</script>