-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-08 09:23:45
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db15`
--

-- --------------------------------------------------------

--
-- 資料表結構 `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `news` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `log`
--

INSERT INTO `log` (`id`, `news`, `acc`) VALUES
(2, 0, 'mem01'),
(10, 1, 'mem01'),
(11, 3, 'mem01'),
(12, 2, 'mem01'),
(14, 5, 'mem01');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `news` text NOT NULL,
  `sh` int(1) NOT NULL,
  `good` int(10) NOT NULL,
  `type` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `news`, `sh`, `good`, `type`) VALUES
(1, '缺乏運動已成為影響全球死亡率的第四大危險因子-國人無規律運動之比率高達72.2%(一)', '資料來源： 行政院衛生署國民健康局 \r\n發佈日期： 2012 / 10 / 07\r\n世界衛生組織指出運動不足已成全球第四大致死因素，每年有6%的死亡率與運動不足有關，僅次於高血壓（13％）、菸品使用（9％）及高血糖（6％）之後，有超過200萬死亡人數可歸因於靜態生活。世界上約60-85％的成人過著靜態生活，三分之二的兒童運動不足，未來都將影響健康並造成公共衛生問題。運動不足除了增加死亡率，還會使心血管疾病、糖尿病、肥胖的風險加倍，並增加大腸癌、高血壓、骨質疏鬆、脂質失調症（lipid disorders）、憂鬱、焦慮的風險。大約21-25％乳癌及大腸癌、27%糖尿病與30％的缺血性心臟病，係因運動不足所造成。許多國家運動不足的人口比率，也正不斷地增加，依據行政院體育委員會2011年運動城巿調查結果顯示，國人無規律運動習慣之比率高達72.2%。\r\n我國十大死因的危險因子皆與運動不足有關，運動的好處很多，可以預防慢性疾病，降低罹患癌症、跌倒的風險等。國家衛生研究院溫啟邦教授利用台灣一個大型的追蹤世代，分析各個不同運動量的健康效益。研究發現，與不運動的人相比，每天運動15分鐘(每週約90分鐘)是可以減少14%總死亡、10%癌症死亡及20%的心血管疾病死亡，延長3年壽命。這些好處不但適用於各個年齡層包括年青人、年老人，也適用於男性與女性，對有心血管疾病風險的人包括吸菸、肥胖者，也一樣有用。\r\n國民健康局鼓勵民眾養成規律運動習慣，對於預防心血管疾病、糖尿病、高血脂以及高血壓等，都有顯著的效益，並可降低罹患癌症的風險，加速代謝脂肪，強化肌肉組織與功能，維持健康體重，提高腦內啡的釋放，降低情緒壓力。一般而言，成人只要每週運動累積達150分鐘、兒童每日運動累積60分鐘，就能有足夠的運動量，建議成人每天運動30分鐘，可分段累積運動量，效果與一次做完一樣。例如上下班(學)通勤時間與中午休息時間分段進行，每次15分鐘分2次或是每次10分鐘分3次完成，只要每天持之以恆，健康體能就會大大地提昇。\r\n許多上班族時常抱怨沒時間或空間運動，國民健康局製作15分鐘「上班族健康操」，不受場地、服裝的限制，每天上、下午各跳15分鐘健康操，可消耗100大卡的熱量，持續1年，約可減少4公斤，不但消耗過多熱量，還能促進身體健康。國民健康局為幫助同仁達到規律運動，運用電腦提示系統，於每天上午9時45分及下午3時45分，電腦螢幕會自動跳出「上班族健康操」畫面，鼓勵同仁暫時放下手邊的工作，隨著音樂一起動一動。\r\n對於沒有運動習的民眾，「健走」也是很好的入門運動，衛生署國民健康局自91年起推動「每日一萬步 健康有保固」，「健走」是既簡單又輕鬆的運動，不需特殊裝備，只要穿著輕便服裝、運動鞋，運用「抬頭挺胸縮小腹、雙手微握放腰部、自然擺動肩放鬆、邁開腳步向前行」健走小口訣，以4公里/小時的速度，日行萬步，只要90分鐘，步行約6公里，就可以消耗約300大卡，走向健康。\r\n國民健康局並介紹運動生活化之小撇步，協助民眾落實生活化的運動。\r\n1. 從日常生活中找出時間來活動，例如：步行買午、晚餐、水果、日用品；步行去用餐；蹓狗。\r\n2. 外出或是上下班(學)不妨多多利用大眾運輸工具，讓自己提早出門提前一站下車，步行至目的地。\r\n3. 可以走樓梯就不要坐電梯，如果一下子沒辦法走這麼多樓梯，步行走上幾層樓後再搭乘電梯，慢慢增加自己的運動量。\r\n4. 多和家人到戶外活動，或騎腳踏車、打球等活動。\r\n5. 假日可以自己動手整理家裡、擦擦地板，也可以增加運動量!或利用掃地、拖地時加大動作幅度，那也是很好的身體活動。\r\n6. 在家裡、辦公室附近找方便的資源運動，包括公園、職場辦的課程、活動。\r\n7. 減少看電視、打電玩等靜態生活的時間。\r\n    民眾對運動如有疑問，可參考國民健康局肥胖防治網-「快樂動」(http://obesity.bhp.gov.tw)，亦可撥打免費市話健康體重管理電話諮詢服務，諮詢專線「0800-367-100（0800-瘦落去-要動動）」，也可利用國民健康局局網首頁或肥胖防治網問題諮詢專區的網路電話撥入功能，向客服人員諮詢關於運動、健康飲食及健康體重管理等相關疑問。', 1, 1, 1),
(2, '缺乏運動已成為影響全球死亡率的第四大危險因子-國人無規律運動之比率高達72.2%(二)', '資料來源： 行政院衛生署國民健康局 \r\n發佈日期： 2012 / 10 / 07\r\n世界衛生組織指出運動不足已成全球第四大致死因素，每年有6%的死亡率與運動不足有關，僅次於高血壓（13％）、菸品使用（9％）及高血糖（6％）之後，有超過200萬死亡人數可歸因於靜態生活。世界上約60-85％的成人過著靜態生活，三分之二的兒童運動不足，未來都將影響健康並造成公共衛生問題。運動不足除了增加死亡率，還會使心血管疾病、糖尿病、肥胖的風險加倍，並增加大腸癌、高血壓、骨質疏鬆、脂質失調症（lipid disorders）、憂鬱、焦慮的風險。大約21-25％乳癌及大腸癌、27%糖尿病與30％的缺血性心臟病，係因運動不足所造成。許多國家運動不足的人口比率，也正不斷地增加，依據行政院體育委員會2011年運動城巿調查結果顯示，國人無規律運動習慣之比率高達72.2%。\r\n我國十大死因的危險因子皆與運動不足有關，運動的好處很多，可以預防慢性疾病，降低罹患癌症、跌倒的風險等。國家衛生研究院溫啟邦教授利用台灣一個大型的追蹤世代，分析各個不同運動量的健康效益。研究發現，與不運動的人相比，每天運動15分鐘(每週約90分鐘)是可以減少14%總死亡、10%癌症死亡及20%的心血管疾病死亡，延長3年壽命。這些好處不但適用於各個年齡層包括年青人、年老人，也適用於男性與女性，對有心血管疾病風險的人包括吸菸、肥胖者，也一樣有用。\r\n國民健康局鼓勵民眾養成規律運動習慣，對於預防心血管疾病、糖尿病、高血脂以及高血壓等，都有顯著的效益，並可降低罹患癌症的風險，加速代謝脂肪，強化肌肉組織與功能，維持健康體重，提高腦內啡的釋放，降低情緒壓力。一般而言，成人只要每週運動累積達150分鐘、兒童每日運動累積60分鐘，就能有足夠的運動量，建議成人每天運動30分鐘，可分段累積運動量，效果與一次做完一樣。例如上下班(學)通勤時間與中午休息時間分段進行，每次15分鐘分2次或是每次10分鐘分3次完成，只要每天持之以恆，健康體能就會大大地提昇。\r\n許多上班族時常抱怨沒時間或空間運動，國民健康局製作15分鐘「上班族健康操」，不受場地、服裝的限制，每天上、下午各跳15分鐘健康操，可消耗100大卡的熱量，持續1年，約可減少4公斤，不但消耗過多熱量，還能促進身體健康。國民健康局為幫助同仁達到規律運動，運用電腦提示系統，於每天上午9時45分及下午3時45分，電腦螢幕會自動跳出「上班族健康操」畫面，鼓勵同仁暫時放下手邊的工作，隨著音樂一起動一動。\r\n對於沒有運動習的民眾，「健走」也是很好的入門運動，衛生署國民健康局自91年起推動「每日一萬步 健康有保固」，「健走」是既簡單又輕鬆的運動，不需特殊裝備，只要穿著輕便服裝、運動鞋，運用「抬頭挺胸縮小腹、雙手微握放腰部、自然擺動肩放鬆、邁開腳步向前行」健走小口訣，以4公里/小時的速度，日行萬步，只要90分鐘，步行約6公里，就可以消耗約300大卡，走向健康。\r\n國民健康局並介紹運動生活化之小撇步，協助民眾落實生活化的運動。\r\n1. 從日常生活中找出時間來活動，例如：步行買午、晚餐、水果、日用品；步行去用餐；蹓狗。\r\n2. 外出或是上下班(學)不妨多多利用大眾運輸工具，讓自己提早出門提前一站下車，步行至目的地。\r\n3. 可以走樓梯就不要坐電梯，如果一下子沒辦法走這麼多樓梯，步行走上幾層樓後再搭乘電梯，慢慢增加自己的運動量。\r\n4. 多和家人到戶外活動，或騎腳踏車、打球等活動。\r\n5. 假日可以自己動手整理家裡、擦擦地板，也可以增加運動量!或利用掃地、拖地時加大動作幅度，那也是很好的身體活動。\r\n6. 在家裡、辦公室附近找方便的資源運動，包括公園、職場辦的課程、活動。\r\n7. 減少看電視、打電玩等靜態生活的時間。\r\n    民眾對運動如有疑問，可參考國民健康局肥胖防治網-「快樂動」(http://obesity.bhp.gov.tw)，亦可撥打免費市話健康體重管理電話諮詢服務，諮詢專線「0800-367-100（0800-瘦落去-要動動）」，也可利用國民健康局局網首頁或肥胖防治網問題諮詢專區的網路電話撥入功能，向客服人員諮詢關於運動、健康飲食及健康體重管理等相關疑問。', 1, 1, 1),
(3, '菸害防治法規(一)', '第二十三條　　違反第五條或第十條第一項規定者，處新臺幣一萬元以上五萬元以下罰鍰，並得按次連續處罰。\r\n第二十四條　　製造或輸入違反第六條第一項、第二項或第七條第一項規定之菸品者，處新臺幣一百萬元以上五百萬元以下罰鍰，並令限期回收；屆期未回收者，按次連續處罰，違規之菸品沒入並銷毀之。\r\n販賣違反第六條第一項、第二項或第七條第一項規定之菸品者，處新臺幣一萬元以上五萬元以下罰鍰。\r\n第二十五條　　違反第八條第一項規定者，處新臺幣十萬元以上五十萬元以下罰鍰，並令限期申報；屆期未申報者，按次連續處罰。\r\n規避、妨礙或拒絕中央主管機關依第八條第二項規定所為之取樣檢查（驗）者，處新臺幣十萬元以上五十萬元以下罰鍰。\r\n第二十六條　　製造或輸入業者，違反第九條各款規定者，處新臺幣五百萬元以上二千五百萬元以下罰鍰，並按次連續處罰。\r\n廣告業或傳播媒體業者違反第九條各款規定，製作菸品廣告或接受傳播或刊載者，處新臺幣二十萬元以上一百萬元以下罰鍰，並按次處罰。\r\n違反第九條各款規定，除前二項另有規定者外，處新臺幣十萬元以上五十萬元以下罰鍰，並按次連續處罰。\r\n第二十七條　　違反第十一條規定者，處新臺幣二千元以上一萬元以下罰鍰。\r\n第二十八條　　違反第十二條第一項規定者，應令其接受戒菸教育；行為人未滿十八歲且未結婚者，並應令其父母或監護人使其到場。\r\n無正當理由未依通知接受戒菸教育者，處新臺幣二千元以上一萬元以下罰鍰，並按次連續處罰；行為人未滿十八歲且未結婚者，處罰其父母或監護人。\r\n第一項戒菸教育之實施辦法，由中央主管機關定之。\r\n第二十九條　　違反第十三條規定者，處新臺幣一萬元以上五萬元以下罰鍰。\r\n第三十條　　製造或輸入業者，違反第十四條規定者，處新臺幣一萬元以上五萬元以下罰鍰，並令限期回收；屆期未回收者，按次連續處罰。\r\n販賣業者違反第十四條規定者，處新臺幣一千元以上三千元以下罰鍰。\r\n第三十一條　　違反第十五條第一項或第十六條第一項規定者，處新臺幣二千元以上一萬元以下罰鍰。\r\n違反第十五條第二項、第十六條第二項或第三項規定者，處新臺幣一萬元以上五萬元以下罰鍰，並令限期改正；屆期未改正者，得按次連續處罰。\r\n第三十二條　　違反本法規定，經依第二十三條至前條規定處罰者，得併公告被處分人及其違法情形。\r\n第三十三條　　本法所定罰則，除第二十五條規定由中央主管機關處罰外，由直轄市、縣（市）主管機關處罰之。\r\n', 1, 1, 2),
(4, '菸害防治法規(二)', '第二十三條　　違反第五條或第十條第一項規定者，處新臺幣一萬元以上五萬元以下罰鍰，並得按次連續處罰。\r\n第二十四條　　製造或輸入違反第六條第一項、第二項或第七條第一項規定之菸品者，處新臺幣一百萬元以上五百萬元以下罰鍰，並令限期回收；屆期未回收者，按次連續處罰，違規之菸品沒入並銷毀之。\r\n販賣違反第六條第一項、第二項或第七條第一項規定之菸品者，處新臺幣一萬元以上五萬元以下罰鍰。\r\n第二十五條　　違反第八條第一項規定者，處新臺幣十萬元以上五十萬元以下罰鍰，並令限期申報；屆期未申報者，按次連續處罰。\r\n規避、妨礙或拒絕中央主管機關依第八條第二項規定所為之取樣檢查（驗）者，處新臺幣十萬元以上五十萬元以下罰鍰。\r\n第二十六條　　製造或輸入業者，違反第九條各款規定者，處新臺幣五百萬元以上二千五百萬元以下罰鍰，並按次連續處罰。\r\n廣告業或傳播媒體業者違反第九條各款規定，製作菸品廣告或接受傳播或刊載者，處新臺幣二十萬元以上一百萬元以下罰鍰，並按次處罰。\r\n違反第九條各款規定，除前二項另有規定者外，處新臺幣十萬元以上五十萬元以下罰鍰，並按次連續處罰。\r\n第二十七條　　違反第十一條規定者，處新臺幣二千元以上一萬元以下罰鍰。\r\n第二十八條　　違反第十二條第一項規定者，應令其接受戒菸教育；行為人未滿十八歲且未結婚者，並應令其父母或監護人使其到場。\r\n無正當理由未依通知接受戒菸教育者，處新臺幣二千元以上一萬元以下罰鍰，並按次連續處罰；行為人未滿十八歲且未結婚者，處罰其父母或監護人。\r\n第一項戒菸教育之實施辦法，由中央主管機關定之。\r\n第二十九條　　違反第十三條規定者，處新臺幣一萬元以上五萬元以下罰鍰。\r\n第三十條　　製造或輸入業者，違反第十四條規定者，處新臺幣一萬元以上五萬元以下罰鍰，並令限期回收；屆期未回收者，按次連續處罰。\r\n販賣業者違反第十四條規定者，處新臺幣一千元以上三千元以下罰鍰。\r\n第三十一條　　違反第十五條第一項或第十六條第一項規定者，處新臺幣二千元以上一萬元以下罰鍰。\r\n違反第十五條第二項、第十六條第二項或第三項規定者，處新臺幣一萬元以上五萬元以下罰鍰，並令限期改正；屆期未改正者，得按次連續處罰。\r\n第三十二條　　違反本法規定，經依第二十三條至前條規定處罰者，得併公告被處分人及其違法情形。\r\n第三十三條　　本法所定罰則，除第二十五條規定由中央主管機關處罰外，由直轄市、縣（市）主管機關處罰之。\r\n', 1, 0, 2),
(5, '降低罹癌風險 建構健康生活型態(一)', '癌症防治   三管齊下  Part 1 降低罹癌風險建構健康生活型態 \r\n\r\n撰文：徐文媛　諮詢對象：衛生署國民健康局副局長趙坤郁 \r\n\r\n致癌的因素很多，而且往往就存在於我們周遭環境及日常生活中。唯有正常飲食、適當運動、遠離致癌因子、養成健康行為與生活習慣，並改善生活環境品質，才能減少罹癌的危機。\r\n形塑健康生活新價值觀\r\n「健康生活型態」牽涉的範圍很廣，衛生署國民健康局副局長趙坤郁表示，做為國家癌症防治政策的一環，應優先選擇具實證研究基礎的指標，所以健康飲食、菸害防制、檳榔防制及建立運動習慣，都是目前積極推動的衛生政策。\r\n生活型態需要長時間建立，所以要改變民眾健康生活型態，必須設定出各項目標策略和衡量指標，設法營造有助達成目標的軟、硬體環境，這些工作往往需要跨部門，甚至從民間社團、社區等基層的參與，才能讓議題逐漸發酵，達到社會價值的建立及風氣的改變。例如在健康飲食方面，至少需要健康局與食品衛生處（未來即將成立的食品藥物管理局）合作，除了宣導正確的飲食習慣，也要為民眾吃的健康把關，避免汙染等有害食物流入巿面。\r\n在推廣動態生活，建立國人運動習慣上，透過訂定國人健康體能指標，調查全國及各縣巿的運動盛行率，並以每年提升0.5%為目標，結合體育主管單位及25縣巿政府同步進行政策的倡議及執行。以最容易、最安全的健走運動為例，現在11 月11日「健走日」已成為許多縣巿政府的重要活動；而去年健康局選擇竹北、屏東、新莊三個縣轄巿，調查健康體能自治性環境的策略指標及調查評估方法，也成為今年體委會要求各縣巿建置運動地圖時的重要參考。\r\n建構健康生活型態是「預防勝於治療」的積極實現，不只能降低罹癌風險，也有助降低其他現代文明病的發生，長期來看是最具經濟效益的健康投資。趙坤郁強調，在全球化浪潮下，我們的飲食、嗜好...等生活型態與西方國家愈來愈趨近，疾病型態也可能逐漸接近，必須及早提出因應措施。\r\n \r\n\r\n\r\n資料來源：行政院衛生署衛生報導139期\r\n上稿日期：2010/1/20\r\n', 1, 1, 3),
(6, '降低罹癌風險 建構健康生活型態(二)', '癌症防治   三管齊下  Part 1 降低罹癌風險建構健康生活型態 \r\n\r\n撰文：徐文媛　諮詢對象：衛生署國民健康局副局長趙坤郁 \r\n\r\n致癌的因素很多，而且往往就存在於我們周遭環境及日常生活中。唯有正常飲食、適當運動、遠離致癌因子、養成健康行為與生活習慣，並改善生活環境品質，才能減少罹癌的危機。\r\n形塑健康生活新價值觀\r\n「健康生活型態」牽涉的範圍很廣，衛生署國民健康局副局長趙坤郁表示，做為國家癌症防治政策的一環，應優先選擇具實證研究基礎的指標，所以健康飲食、菸害防制、檳榔防制及建立運動習慣，都是目前積極推動的衛生政策。\r\n生活型態需要長時間建立，所以要改變民眾健康生活型態，必須設定出各項目標策略和衡量指標，設法營造有助達成目標的軟、硬體環境，這些工作往往需要跨部門，甚至從民間社團、社區等基層的參與，才能讓議題逐漸發酵，達到社會價值的建立及風氣的改變。例如在健康飲食方面，至少需要健康局與食品衛生處（未來即將成立的食品藥物管理局）合作，除了宣導正確的飲食習慣，也要為民眾吃的健康把關，避免汙染等有害食物流入巿面。\r\n在推廣動態生活，建立國人運動習慣上，透過訂定國人健康體能指標，調查全國及各縣巿的運動盛行率，並以每年提升0.5%為目標，結合體育主管單位及25縣巿政府同步進行政策的倡議及執行。以最容易、最安全的健走運動為例，現在11 月11日「健走日」已成為許多縣巿政府的重要活動；而去年健康局選擇竹北、屏東、新莊三個縣轄巿，調查健康體能自治性環境的策略指標及調查評估方法，也成為今年體委會要求各縣巿建置運動地圖時的重要參考。\r\n建構健康生活型態是「預防勝於治療」的積極實現，不只能降低罹癌風險，也有助降低其他現代文明病的發生，長期來看是最具經濟效益的健康投資。趙坤郁強調，在全球化浪潮下，我們的飲食、嗜好...等生活型態與西方國家愈來愈趨近，疾病型態也可能逐漸接近，必須及早提出因應措施。\r\n \r\n\r\n\r\n資料來源：行政院衛生署衛生報導139期\r\n上稿日期：2010/1/20\r\n', 1, 0, 3),
(7, '長期憋尿 泌尿系統問題多 (一)', '資料來源：中央健康保險局雙月刊第98期\r\n上稿日期：2012/08/10\r\n文／游小雯\r\n諮詢／郭育成（台北市立聯合醫院陽明院區泌尿科主任）\r\n膀胱是中空、有彈性的肉囊， 約有400c.c.的容積，可暫存由腎臟製造、經輸尿管輸送下來的尿液。一般人排尿量每回約200到350c.c.，每天至少要有4到8次排尿次數才算正常；如果膀胱已存有近400c.c的尿液卻未排出，就會有尿很急、膀胱很脹的感覺，所謂的「憋尿」，就是讓膀胱經常撐在「脹滿」的狀態，沒有適時地清空排尿。「就像水溝的水沒有在流動一樣！」台北市立聯合醫院陽明院區泌尿科郭育成主任表示，把尿憋在膀胱中，就像是沒有流動的髒水，很容易滋生細菌及沉澱物，長期下來，不僅泌尿道易受感染、影響膀胱收縮力，甚至會造成腎臟永久傷害，不僅無法完全修復，還要終身小心照護。\r\n憋尿會憋出哪些毛病呢？\r\n「憋尿、排尿」這個看似簡單的動作，對身體健康卻有極大的影響，以下4項就是一般人最常憋出問題的病症：\r\n1、尿道感染：\r\n憋尿時，長時間無尿液經過尿道，無法將尿道開口的細菌沖走，大量細菌在尿道聚集，很容易引起發炎，尤其尿流不通暢的人（如前列腺肥大、障礙性排尿或結石），尿道感染的發生率，會比正常人高出許多。\r\n2、膀胱發炎：\r\n憋尿使膀胱長期脹大，膀胱壁血管受到壓迫，膀胱黏膜就會缺血，只要身體抵抗力差時，細菌趁虛而入即造成「急性膀胱炎」。膀胱炎發生時，膀胱壁變得較敏感，儘管積存的尿液不多，也會急著想上廁所，但一次卻只能尿出一點點；而大部份的膀胱炎，尿道粘膜通常也處於發炎狀態，所以會出現「燒灼感」，此外通常還會有「血尿」的情況發生。比較嚴重的膀胱炎甚至會發燒、併發腎臟炎等症狀。\r\n3、前列腺炎與副睪丸炎：\r\n男性若水份攝取不夠或憋尿使排尿次數過少，細菌就有機會透過尿道引發感染；嚴重的話，尿液甚至會經由輸精管倒流至前列腺或副睪丸，而引發前列腺炎或副睪丸炎，最嚴重可導致不孕，增加更多棘手的併發症。\r\n4、膀胱損傷：\r\n長期憋尿會使膀胱過度脹扯、壁肌肉層變薄，如果出現纖維化的情形會影響彈性，導致膀胱收縮力因此變差，而有疼痛、頻尿或尿不乾淨等後遺症；如果神經受損嚴重，膀胱括約肌無力，甚至會造成尿不出來的後果。平日勤保健，別讓憋尿造成終身遺憾許多上班族與公司主管，一忙或開會經常就是好幾個小時，為了不影響進度，常忘了上廁所，即使有尿意也盡量憋著，憋尿不只是造成泌尿系統發炎，尿液回流到腎臟也會造成腎積水引發尿毒症等併發症，最後很可能靠洗腎度日了！\r\n平日盡量力行以下4項原則：\r\n1、多喝水、不憋尿。\r\n2、注意個人衛生：如多淋浴少盆浴、女生在如廁後記得由前往後擦、性行為前後（不論男女）應注意會陰部、肛門口及尿道口的清潔工作。\r\n3、正常的飲食習慣及充分的休息與睡眠，以增加抵抗力及免疫力。\r\n4、多注意及控制易引發膀胱炎的疾病：如糖尿病、尿路結石、攝護腺肥大等。\r\n如果民眾發現自己解尿不舒服時，一定要在第一時間就診，讓醫師採用檢體對症下藥，只要沒有其他的特殊問題併存，同時能接受完整療程的抗生素治療，通常一星期左右即可痊癒。不過服藥的時間及用量絕對要遵照醫師囑咐，如果自行隨意停藥或不按時服用，很可能會造成殘存的細菌出現抗藥性，非但原本的症狀無法痊癒，還可能帶來慢性泌尿道發炎、尿路結石、腎臟功能受損等併發症，千萬要特別注意。', 1, 0, 4),
(8, '長期憋尿 泌尿系統問題多 (二)', '資料來源：中央健康保險局雙月刊第98期\r\n上稿日期：2012/08/10\r\n文／游小雯\r\n諮詢／郭育成（台北市立聯合醫院陽明院區泌尿科主任）\r\n膀胱是中空、有彈性的肉囊， 約有400c.c.的容積，可暫存由腎臟製造、經輸尿管輸送下來的尿液。一般人排尿量每回約200到350c.c.，每天至少要有4到8次排尿次數才算正常；如果膀胱已存有近400c.c的尿液卻未排出，就會有尿很急、膀胱很脹的感覺，所謂的「憋尿」，就是讓膀胱經常撐在「脹滿」的狀態，沒有適時地清空排尿。「就像水溝的水沒有在流動一樣！」台北市立聯合醫院陽明院區泌尿科郭育成主任表示，把尿憋在膀胱中，就像是沒有流動的髒水，很容易滋生細菌及沉澱物，長期下來，不僅泌尿道易受感染、影響膀胱收縮力，甚至會造成腎臟永久傷害，不僅無法完全修復，還要終身小心照護。\r\n憋尿會憋出哪些毛病呢？\r\n「憋尿、排尿」這個看似簡單的動作，對身體健康卻有極大的影響，以下4項就是一般人最常憋出問題的病症：\r\n1、尿道感染：\r\n憋尿時，長時間無尿液經過尿道，無法將尿道開口的細菌沖走，大量細菌在尿道聚集，很容易引起發炎，尤其尿流不通暢的人（如前列腺肥大、障礙性排尿或結石），尿道感染的發生率，會比正常人高出許多。\r\n2、膀胱發炎：\r\n憋尿使膀胱長期脹大，膀胱壁血管受到壓迫，膀胱黏膜就會缺血，只要身體抵抗力差時，細菌趁虛而入即造成「急性膀胱炎」。膀胱炎發生時，膀胱壁變得較敏感，儘管積存的尿液不多，也會急著想上廁所，但一次卻只能尿出一點點；而大部份的膀胱炎，尿道粘膜通常也處於發炎狀態，所以會出現「燒灼感」，此外通常還會有「血尿」的情況發生。比較嚴重的膀胱炎甚至會發燒、併發腎臟炎等症狀。\r\n3、前列腺炎與副睪丸炎：\r\n男性若水份攝取不夠或憋尿使排尿次數過少，細菌就有機會透過尿道引發感染；嚴重的話，尿液甚至會經由輸精管倒流至前列腺或副睪丸，而引發前列腺炎或副睪丸炎，最嚴重可導致不孕，增加更多棘手的併發症。\r\n4、膀胱損傷：\r\n長期憋尿會使膀胱過度脹扯、壁肌肉層變薄，如果出現纖維化的情形會影響彈性，導致膀胱收縮力因此變差，而有疼痛、頻尿或尿不乾淨等後遺症；如果神經受損嚴重，膀胱括約肌無力，甚至會造成尿不出來的後果。平日勤保健，別讓憋尿造成終身遺憾許多上班族與公司主管，一忙或開會經常就是好幾個小時，為了不影響進度，常忘了上廁所，即使有尿意也盡量憋著，憋尿不只是造成泌尿系統發炎，尿液回流到腎臟也會造成腎積水引發尿毒症等併發症，最後很可能靠洗腎度日了！\r\n平日盡量力行以下4項原則：\r\n1、多喝水、不憋尿。\r\n2、注意個人衛生：如多淋浴少盆浴、女生在如廁後記得由前往後擦、性行為前後（不論男女）應注意會陰部、肛門口及尿道口的清潔工作。\r\n3、正常的飲食習慣及充分的休息與睡眠，以增加抵抗力及免疫力。\r\n4、多注意及控制易引發膀胱炎的疾病：如糖尿病、尿路結石、攝護腺肥大等。\r\n如果民眾發現自己解尿不舒服時，一定要在第一時間就診，讓醫師採用檢體對症下藥，只要沒有其他的特殊問題併存，同時能接受完整療程的抗生素治療，通常一星期左右即可痊癒。不過服藥的時間及用量絕對要遵照醫師囑咐，如果自行隨意停藥或不按時服用，很可能會造成殘存的細菌出現抗藥性，非但原本的症狀無法痊癒，還可能帶來慢性泌尿道發炎、尿路結石、腎臟功能受損等併發症，千萬要特別注意。', 1, 0, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `que`
--

CREATE TABLE `que` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `vote` int(10) NOT NULL COMMENT '投票',
  `subject_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `que`
--

INSERT INTO `que` (`id`, `text`, `vote`, `subject_id`) VALUES
(1, '問題一：你最常做什麼運動來促進健康體能呢?', 8, 0),
(2, '1.健走或爬樓梯、慢跑等較不受時間、場地限制的運動。', 2, 1),
(3, '2.仰臥起坐、抬腿及伏地挺身、伸展操、瑜珈等室內運動。', 2, 1),
(4, '3.球類運動、游泳、跳舞、騎腳踏車等加強心肺功能的運動。', 2, 1),
(5, '4.舉重鍛鍊、彈力帶、啞鈴等運用輔助器材鍛鍊肌耐力的運動。', 2, 1),
(6, '問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?', 2, 0),
(7, '1.增加罹患冠狀動脈心臟病及罹病死亡之風險。', 1, 6),
(8, '2.對孩子的的健康會產生許多影響，例如容易咳嗽或打噴嚏、罹患氣喘或讓症狀更嚴重、會因刺激耳咽管，感染中耳炎、肺功能較差、容易罹患呼吸道疾病等。', 0, 6),
(9, '3.孕婦吸入二手菸易造成流產、早產、胎盤早期剝離、子宮感染等疾病。', 0, 6),
(10, '4.長期的暴露會造成更嚴重的胸腔問題和過敏症，還會增加心臟病和肺癌的罹患率。', 1, 6),
(11, '5.以上皆是。', 0, 6);

-- --------------------------------------------------------

--
-- 資料表結構 `total`
--

CREATE TABLE `total` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `total`
--

INSERT INTO `total` (`id`, `total`, `date`) VALUES
(1, 8, '2023-12-29'),
(2, 5, '2024-01-05'),
(3, 3, '2024-01-08');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `acc`, `pw`, `email`) VALUES
(1, 'test', '5678', 'test@labor.gov.tw'),
(2, 'admin', '1234', 'admin@labor.gov.tw'),
(3, 'kitty', '1234', 'kitty@gmail.com'),
(4, 'mem01', 'mem01', 'mem01@labor.gov.tw'),
(5, 'mem02', 'mem02', 'mem02@labor.gov.tw');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que`
--
ALTER TABLE `que`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `total`
--
ALTER TABLE `total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
