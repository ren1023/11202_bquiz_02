<?php
date_default_timezone_set("Asia/Taipei");
session_start();
class DB
{
    protected $dsn = "mysql:host=localhost;charset=utf8;dbname=db15";
    //protected $dsn = "mysql:host=localhost;charset=utf8;dbname=bquiz";
    protected $pdo;
    protected $table;
    public function __construct($table)
    {
        $this->table = $table;
        //$this->pdo=new PDO($this->dsn,'s1120401','s1120401');
        $this->pdo = new PDO($this->dsn, 'root', '');
    }
    function all($where = '', $other = '')
    {
        $sql = "select * from `$this->table` ";
        $sql = $this->sql_all($sql, $where, $other);
        return  $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }
    function count($where = '', $other = '')
    {
        $sql = "select count(*) from `$this->table` ";
        $sql = $this->sql_all($sql, $where, $other);
        return  $this->pdo->query($sql)->fetchColumn();
    }
    private function math($math, $col, $array = '', $other = '')
    {
        $sql = "select $math(`$col`)  from `$this->table` ";
        $sql = $this->sql_all($sql, $array, $other);
        return $this->pdo->query($sql)->fetchColumn();
    }
    function sum($col = '', $where = '', $other = '')
    {
        return  $this->math('sum', $col, $where, $other);
    }
    function max($col, $where = '', $other = '')
    {
        return  $this->math('max', $col, $where, $other);
    }
    function min($col, $where = '', $other = '')
    {
        return  $this->math('min', $col, $where, $other);
    }
    function find($id)
    {
        $sql = "select * from `$this->table` ";
        if (is_array($id)) {
            $tmp = $this->a2s($id);
            $sql .= " where " . join(" && ", $tmp);
        } else if (is_numeric($id)) {
            $sql .= " where `id`='$id'";
        }
        //echo 'find=>'.$sql;
        $row = $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    function save($array)
    {
        if (isset($array['id'])) {
            $sql = "update `$this->table` set ";
            if (!empty($array)) {
                $tmp = $this->a2s($array);
            }
            $sql .= join(",", $tmp);
            $sql .= " where `id`='{$array['id']}'";
            echo $sql;
        } else {
            $sql = "insert into `$this->table` ";
            $cols = "(`" . join("`,`", array_keys($array)) . "`)";
            $vals = "('" . join("','", $array) . "')";
            $sql = $sql . $cols . " values " . $vals;

            //執行結果：insert into `total` (`total`,`date`) values ('1','2023-12-30')
            echo $sql;

        }
        return $this->pdo->exec($sql);
    }
    function del($id)
    {
        $sql = "delete from `$this->table` where ";
        if (is_array($id)) {
            $tmp = $this->a2s($id);
            $sql .= join(" && ", $tmp);
        } else if (is_numeric($id)) {
            $sql .= " `id`='$id'";
        }
        //echo $sql;
        return $this->pdo->exec($sql);
    }
    /**
     * 可輸入各式SQL語法字串並直接執行
     */
    function q($sql)
    {
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }
    private function a2s($array)
    {
        foreach ($array as $col => $value) {
            $tmp[] = "`$col`='$value'";
        }
        return $tmp;
    }
    private function sql_all($sql, $array, $other)
    {
        if (isset($this->table) && !empty($this->table)) {
            if (is_array($array)) {
                if (!empty($array)) {
                    $tmp = $this->a2s($array);
                    $sql .= " where " . join(" && ", $tmp);
                }
            } else {
                $sql .= " $array";
            }
            $sql .= $other;
            // echo 'all=>'.$sql;
            // $rows = $this->pdo->query($sql)->fetchColumn();
            return $sql;
        }
    }
}

function dd($array)
{
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}

function to($url)
{
    header("location:$url");
}

$Total = new DB('total');
$User = new DB('user');

//*****測試資料區_start/
// $find=$User->find(['id'=>1]);
// dd($find);

// $total= $Total-> find(['date'=> date('Y-m-d')]); 
//         dd($total);
// $total=$Total->save(['total'=>1,'date'=>date('Y-m-d')]);
// dd($total);
//*****測試資料區_end/

// 記錄每日進站人數
if(!isset($_SESSION['visited'])) {//設定有進站的狀態，當visited不存在時(在C:\xampp\tmp下有sess_XXX檔案，記錄session資料中有visited這個欄位來記錄訪問資訊)
    if($Total->count(['date'=> date('Y-m-d')])>0){ //日期欄位是今天，統計大於0時，
        $total= $Total-> find(['date'=> date('Y-m-d')]); //撈取日期是今天的這一筆資料，欄位包含了id,total,date三個欄位
        $total['total']++;//$total這筆資料的'total'欄位，+1
        $Total->save($total);//再將這筆資料存入資料庫       
    }else{
        $Total->save(['total'=>1,'date'=>date('Y-m-d')]);
    }
    $_SESSION['visited']=1;
}

?>
