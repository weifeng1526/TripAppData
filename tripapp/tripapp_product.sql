-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tripapp
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prod_no` int NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(30) DEFAULT NULL,
  `prod_desc` text,
  `prod_price` int DEFAULT NULL,
  `prod_sta` tinyint(1) DEFAULT NULL,
  `prod_pic` blob,
  PRIMARY KEY (`prod_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'日本東京迪士尼五日遊','第1天\n台北╱日本．關東（成田國際空港）→日本國重要文化～【成田山新勝寺】→永旺夢樂城～【成田AEON】或 【幕張／東京商圈購物】\n早餐：甜蜜溫暖的家\n午餐：飛機上精緻套餐\n晚餐：方便遊玩～敬請自理\n成田花園／成田MYSTAY／幕張APA／或同級\n今日帶著一顆興奮的心，集合於桃園國際機場，由專員幫忙辦理出境手續，搭乘豪華客機飛往日本首都－「東京」．成田國際空港，在導遊的帶領下順序出關。\n\n隨即由專車搭載各位嘉賓前往\n【成田山新勝寺】是真言宗智山派大本山，作為日本不動尊信仰的總府祈願道場吸引了很多信眾。寬大的寺院內並立著各種新舊建築，江戶時代中期～末期的建築仁王門、三重塔、釋迦堂、額堂、光明堂共5棟已被指定為重要文化遺產。2007年還新建了山門。寺院內有大鯉魚悠然遊動的大庭園、書道美術館、歷史博物館、佛教圖書館等，不同的季節可以觀賞櫻花、藤花、紫陽花等，享受森林浴，秋季還可以觀賞紅葉。另外，800m長的參拜道兩邊旅館、餐館、禮品店等鱗次櫛比，在參拜之後逛店也是成田山參拜的樂趣之一。\n\n永旺夢樂城【成田AEON】美食街，居家日用必買清單，購物中心一站全包，超市也有好多熟食選擇，包含炸物、便當、壽司、麵包等等，土產區有大家愛買的零食、泡麵和飲料、琳瑯滿目的哇莎米零嘴、香鬆、沙拉醬，(包含服飾、玩具、遊戲場等等)，還有提供退稅服務。(若住宿地點於【幕張/東京】將調整為附近商圈購物。)\n\n\n第2天\n★箱根蘆之湖【海盜船】～船身仿中世紀造型，一覽箱根湖濱美景→【箱根神社】～古木參天、水上大鳥居→橫濱最夯購物點～【MITSUI OUTLET PARK 橫濱港灣】\n早餐：飯店內享用\n午餐：箱根鄉土料理\n晚餐：方便遊玩～敬請自理\n橫濱 東急REI／Techno Tower飯店／新橫濱王子／或同級\n專車路經箱根國立公園～\n搭乘【箱根海賊船】，在富士箱根國立公園中，以富士山為其背景，山色絕美，其中迷人的蘆之湖，是唯美的湖濱遊樂區，隨風漫遊，湖山相映、青松翠杉，景緻十分怡人。此湖是箱根旅遊的核心地區，您可在此享受片刻溫泉地區之風光。\n【特別說明】\n※海盜船如因天候因素(大風雨或濃霧等)影響而停駛，則退費日幣300元／人。\n※海盜船搭乘航線為 箱根町港→元箱根港，另海盜船外觀及船型依船班調度調整而有不同。\n\n前往【箱根神社】，感受山林間古剎的禪意，箱根神社它建於西元8世紀，位於蘆之湖南端的元箱根，箱根神社是當地人為了讓船隻下水前，祈求平安儀式而建，所以它正好在蘆之湖畔，是日本少數幾個在水邊的神社，每年7月31日，神社會舉行放水儀式，成千上萬的燈籠浮於水上，蔚為奇觀。神社正門外屹立了一棵一千五百年的古杉樹，充滿靈氣，見證了神社多年的人事變化。神社內寶物殿收藏有萬商人之木雕等重要文化財產。\n\n【MITSUI OUTLET PARK 橫濱港灣】距離橫濱市區商圈甚近，是一座位於港灣旁、面朝東京灣的OUTLET MALL。三個樓層組成的寬闊商場內，集結了眾多國內外名牌商品的店舖和餐飲店。從國際名牌到國內品牌，還有日本首次設店的新品牌，包含流行商品、生活雜貨用品店、餐飲店和咖啡廳等，選擇多樣豐富。一邊眺望亞洲最大型海景，一邊享受購物、用餐，還能在廣場體驗戶外活動等，位處海灣沿岸才能享有的特別時刻，也是吸引人的賣點之一。商場內充滿沿海地區特有的開放感氛圍。2020年6月，以「NEW MARINE LIFE」為概念，進行全面改裝更新後重新開幕。在綠意豐沛的空間裡設有可供休憩的空間，及在地名店集聚一堂的美食街。能度過美好時刻港灣餐廳和咖啡廳等，匯集眾多能滿足各種需求的店家也是一大特色。\n\n\n第3天\n全日從早到晚盡情暢遊～東京迪士尼渡假區： 迪士尼樂園DISNEY LAND 或 迪士尼海洋DISNEY SEA ～自由2選1(搭捷運電車、地下鐵或接駁巴士前往)\n早餐：飯店內享用\n午餐：方便遊玩∼敬請自理\n晚餐：方便遊玩∼敬請自理\n舞濱歐亞ANNEX／有明華盛頓／葛西飯店／或同級\n全天暢遊東京迪士尼樂園～\n※請於出團前７個工作天告知前往　迪士尼樂園　或　迪士尼海洋　，以便團體票券預約，如未於出團前７個工作天提出需求，將以『迪士尼樂園DISNEY LAND』預定門票，預約後無法臨時更改或變更樂園選項，需自行前往該樂園排隊且自費購買FIT個人票券入園，不便之處敬請見諒。※\n\nＡ．【迪士尼樂園】\n佔地25萬坪，大人小孩夢幻中的天堂，與米奇、米妮、唐老鴨、維尼熊一同遨遊於樂園，暢玩各式老少咸宜娛樂設施；午後時分，華麗花車以及各個耳熟能詳的卡通人物遊行街頭，讓您置身其中，重拾童年歡樂，晚上可觀賞迪士尼夜間千變萬化的魅力。\n\nＢ．【迪士尼海洋世界】\n占地22萬坪，整個樂園猶如座落於海上，可搭上蒸氣船遊走七個主題海港遊樂，另有結合光水音的豪華劇場秀、哥倫比亞號歌舞劇等娛樂表演節目。\n\n\n【迪士尼特別說明&退費說明】\n※請於「出團前７個工作天(不含週末及例假日)」告知正確年齡，退費金額於團體出發前由團費中扣除，「當地不予退費」，敬請瞭解。※\n\n※ 本日「不前往」迪士尼樂園\n●大人&占床小孩：每人退費台幣1800元\n●滿2歲～未滿12歲不佔床之小孩：每人退費台幣1000元\n●未滿2歲嬰兒：免票範圍不退費\n\n※ 本日「前往」迪士尼樂園\n●滿12歲～未滿18歲之佔床大人：每人退票差台幣300元(於當日領取迪士尼學生票)\n●滿4歲～未滿12歲之佔床小孩：每人退票差台幣800元 (於當日領取迪士尼孩童票)\n●滿2歲～未滿4歲之佔床小孩：每人退票差台幣1000元 (免票範圍，當日無票券)\n●滿2歲～未滿4歲之不佔床小孩：每人退票差台幣1000元 (免票範圍，當日無票券)\n●未滿2歲嬰兒：免票範圍不退費\n\n【特別說明】\n１．迪士尼規定不論是使用一日券或是兩日券，當天都不能跨區遊玩兩個樂園，如果一天內想要遊玩兩個樂園，請自費購買另一個樂園的門票。\n２．如因迪士尼臨時額滿限制入園，將無法自由選擇入園場所，敬請事先瞭解。\n３．樂園各項設施及表演節目、遊行或活動等，依天候、季節性及日期會有暫停、休止、保養等情形，詳細依樂園官網公告為主。（園區內各節目內容、時間隨季節變更，敬請於入園之後再確定節目表。）樂園偶有特殊包場活動關係，營業時間至下午或傍晚止的情形(如12月31日當日因團體票券之限制，營業時間皆至PM 6:00 止。\n\n\n第4天\n★常設都市型纜車～【橫濱高空纜車YOKOHAMA AIR CABIN(單程)】→明治、大正時代磚造建築～【橫濱紅磚倉庫】→免稅店購物→★【東京MIDTOWN日比谷】～美麗冬季浪漫聖誕燈節\n早餐：飯店內享用\n午餐：方便遊玩～敬請自理\n晚餐：方便遊玩～敬請自理\n舞濱歐亞ANNEX／有明華盛頓／葛西飯店／或同級\n【YOKOHAMA AIR CABIN(單程)】橫濱纜車是日本第一座常設的都市型纜車，位在臨海的橫濱市中心，纜車的運行路徑為櫻木町車站到複合式購物設施「YOKOHAMA WORLD PORTERS」的最短路線，全長約630公尺。整座纜車最高的地方離地約40公尺，乘客可以將美景全部收入眼中。車廂內最多可以同時容納8名乘客，設有空調，夏天也可以放心乘坐。另外，身障人士也可以直接坐在輪椅上，進入車廂中。\n【特別報告】\n※【橫濱高空纜車YOKOHAMA AIR CABIN(單程)】如遇空中纜車維修天候不佳或纜車停駅，改乘巴士前往【紅磚倉庫】並於外站退費纜車票大人日幣1000/人，未滿12歲孩童日幣500/人。\n\n【紅磚倉庫】橫濱紅磚倉庫因為時代變遷，隨著新港口移轉，一度處於荒廢狀態，直到橫濱市發起「創造振興港灣繁榮與文化空間」運動，將原本荒廢的古蹟重新設計，內部景觀煥然一新，成為代表橫濱的文化施設。\n\n接下來前往免稅店購物，您可在此選購日本最新品質最佳的商品回國饋贈親友。\n\n【東京MIDTOWN日比谷】位在有樂町、銀座徒步範圍內（日比谷中城）是一座結合了商辦大樓、 商店、餐廳 、美食休閒、藝術文化等功能的大型多功能複合式商業設施，是，地上35層、地下4層，地下1樓至地上3樓為購物商場，4樓和5樓為東寶電影院， 6樓為餐廳 。每年聖誕節前後，將會於商場及周邊舉辦冬季點燈活動，聖誕裝置與燈光秀處處充滿了巧思，從室內延伸至室外將日比谷冬季夜空魔幻之景(「HIBIYA Magic Time Illumination 2024」冬季點燈：2024/11/14～2025/2/28。)。\n\n\n第5天\nHOTEL→（如時間許可，自由前往購物廣場 或 市區自由活動）→成田國際空港／台北\n早餐：飯店內享用\n午餐：方便遊玩∼敬請自理／飛機上精緻套餐\n晚餐：飛機上精緻套餐／甜蜜溫暖的家\n甜蜜溫暖的家\n早餐後，整理行裝。\n\n依回程班機時間許可，自由活動。\n\n爾後前往成田國際空港，搭乘豪華客機飛返溫暖的家－台北，結束此次在日本愉快難忘的5日遊。\n∼ SWEET HOME ∼',36888,0,_binary 'https://res.klook.com/image/upload/q_85/c_fill,w_563/activities/aetyjas9q4xb8bnc94zr.jpg'),(2,'台中(武陵/新社/谷關','第1天\n台北出發→午餐 梨山賓館→最高海拔 櫻花秘境～福壽山千櫻園 欣賞6000株櫻花、鴛鴦湖景觀步道～3月海芋季→武陵賓館入住→飯店內中式自助晚餐\n早餐：敬請自理\n午餐：梨山賓館 4000/桌\n晚餐：武陵賓館中式自助晚餐550/人\n台中武陵農場國民賓館或同等級\n07:10【台北車站東三門集合】\n07:20【台北車站東三門出發】\n\n12:00-13:00【午餐-梨山賓館】\n是梨山地區最具代表性的特色旅館，位於台8線中橫公路海拔1935m處，是梨山地區的中心位置，更是當地指標建築。民國48年受已故總統蔣中正之命開始興建，於54年落成，為當地最早興建的旅館，也是早年蔣公巡視台灣時居住與接待國外賓客的主要行館之一，其古色古香的外觀已成為中橫的地標，同時大紅色的外觀建築特色與台北圓山、高雄圓山皆出自同一位建築師楊卓成之手，被稱為台灣三大宮殿旅館，也是台灣最高的宮殿旅館，更是認識台灣必遊的景點之一。\n\n13:20-16:00【福壽山千櫻園 欣賞6000株櫻花】\n欣賞深淺不一的漸層粉嫩花海，亦可俯瞰四周綿延的環繞山景。\n【櫻櫻期盼～千櫻園】佔地8公頃，種植多樣櫻花，包括緋寒櫻、昭和櫻、富士櫻、大島櫻等，總計約6000株，春季時綻放漸層粉嫩花海，搭配LOVE字樣休憩涼亭，營造浪漫氛圍。園內設有精心規劃的步道和觀景台，提供遊客無障礙賞櫻的好地點，遊客能抬頭欣賞深淺不一的漸層粉嫩花海，亦可俯瞰四周綿延的環繞山景。\n※若遇花季提早結束千櫻園關閉，改為前往福壽山農場參觀\n\n【福壽山農場-鴛鴦湖景觀步道-3月海芋季】最容易親近的海芋在這裡!!不用換上雨鞋就能走進海芋花海裡照相，遊客可以輕易地走到花海裡和海芋合照，就在鴛鴦湖步道，到農場不要錯過了唷!!\n位於合歡山與雪山群峰間，海拔高1800公尺至2580公尺間，福壽山農場佔地八百餘公頃，雲霧變化萬千，加上擁有獨特的田園景觀，由本場制高點遠瞰農場全景美不勝收，更有「台灣小瑞士」之稱。\n【鴛鴦湖景觀步道】步道入口的香草園、奇花異草館及海芋區外，靜靜眺望著寧靜雅致的鴛鴦湖，享受這片刻的悠閒與自得，繼續前行則可來到天然次生林區，在山林映著綠水間，體驗與山林交會的樂趣，而後沿著湖畔漫步回海芋區旁的鴛鴦亭稍事休息，亦可在此靜觀不知名的鳥兒與您分享山中的喜悅。\n【福壽山農場-松林步道】\n為場本部區外圍步道，全程約40分鐘，途中有生態池及眺望台，步道生態資源豐富，並可遠眺梨山、雪山山脈景色，春季可賞蘋果花、梨花等花景，步道周遭為原生二葉松樹林，漫步其中享受天然美景。\n\n福壽山農場之四季美\n由於福壽山農場四季景色皆不同：\n春季－三月桃花、四月梨花、蘋果花\n夏季－六月採茶、七月採桃、八月觀星\n秋季－九月採梨、十月採蘋及冬茶\n冬季－十二月賞楓、一月賞霧山、二月賞櫻梅\n\n17:10～17:10【武陵賓館辦理入住】\n\n17:30～18:30【晚餐-武陵賓館自助式晚餐】\n\n為提倡綠色環保，住宿客房不提供一次性備品(小毛巾、牙膏、牙刷、刮鬍刀、梳子、浴帽)，請旅客自行攜帶。\n\n**行程時間因平假日路況不一或有變動請以客服回覆及現場司機實際調配安排為主**\n\n\n第2天\n飯店出發→北谷遊園巴士-導覽解說(雪山登山口→露營區森林咖啡吧 →武陵茶莊)→武陵茶莊（午餐－贈送中式餐點）→武陵農場～南谷園區→Herbelle龍潭湖畔悠活園區→返回台北\n早餐：飯店內\n午餐：中式餐點 170/人\n晚餐：敬請自理\n07:00～08:00【飯店內享用早餐，08:00出發。】\n\n09:00～11:00【武陵農場-北谷園區行程(北谷遊園巴士生態導覽150元/人)】\n註：北谷半日遊採預約制，若預約額滿改退北谷半日遊費用150元，預約是否成功，仍需以客服人員回覆確認為準，不便之處，敬請見諒。\n武陵賓館出發→觀魚台(櫻花鉤吻鮭)→雪山登山口→露營區森林咖啡吧→武陵茶莊(全程遊園車約2小時)。(櫻花鉤吻鮭復育中心，有「國寶魚」之稱的櫻花鉤吻鮭是瀕臨絕種的保育類動物，從冰河時期至今，生存於武陵的七家灣溪流域，目前僅存約5千隻喔，雪山登山口海拔2140公尺，一覽台灣雪山山脈的核心。\n\n11:00～12:00【武陵茶莊野餐趣-中式餐點】\n\n12:00～13:30【武陵農場】\n武陵地區位於台灣中部，是由雪山山脈圍繞而成高海拔山區，環山環繞、谷豁棋布，也造設了武陵獨特、四季分明的桃花源地。武陵蘊藏種類繁多的植物相，山水間綠意盎然，孕育著蟲鳥魚獸等豐富的野生動物資源。計有蝶類８種、魚類４種、兩生類５種、爬蟲類１２種、鳥類７７種、哺乳類２３種，共計１２９種。在此棲息的陸封型台灣櫻花鉤吻鮭，是全球珍貴稀有的太平洋鮭魚，也是我國瀕臨絕種保育類的國寶魚。沿著七家灣溪走，景觀令人目不暇給，風景優美、山嵐水色，自然天成，匯集了大甲溪上游山林與溪流的自然元氣，武陵素有好山、好水、好魚而聞名於世。看山林，見水石，婀娜的曲流，寬懷的繚繞，繞出了武陵地區盎然的生命力。\n\n1月～2月: 梅花、臘梅\n2月: 賞櫻花\n3月: 賞桃花\n3月中旬～4月: 梨花、李花、蘋果花\n5月：紫藤、玫瑰\n6月～8月: 水蜜桃\n9月～10月: 水梨、蘋果、山茶花、鼠尾草、波斯菊、金針花等\n11月中旬～12月: 賞楓葉、銀杏\n12月下旬～1月: 楓葉、梅花、臘梅\n\n15:30～16:30 【Herbelle龍潭湖悠活園區】\nHerbelle龍潭湖悠活園區，是一處由台塑打造的Herbelle商品展示園區，外觀利用76個純白貨櫃打造全台最大貨櫃建築，提供台塑生技產品販售與試用。園區占地寬闊，並規畫大片草地、樹木環繞及輕食咖啡廳，走上二三樓觀景座位區還可以遠眺鄰近的龍潭湖，景色相當宜人。\n\n16:30～18:00 【返回台北車站東三門】',5688,0,_binary 'https://photo.settour.com.tw/900x600/https://www.settour.com.tw/ss_img/info/location/TXG/G0/TXG0000208/TXG0000208_131387.jpg'),(3,'韓國首爾賞櫻五日行','第1天\n桃園國際機場／仁川永宗島國際機場→松月洞童話村→韓劇【歡迎來到王之國】拍攝地~漢江新都Laveniche March Avenue金光水路~韓國小威尼斯【搭乘月亮或滿月圓型船(2-6人乙艘)】遊河 BR170 0730\n早餐：機上套餐\n午餐：白鍾元香港401 : 炸醬麵/炒瑪麵 + 糖醋肉(4人1份) ₩12000\n晚餐：活跳跳澎派海鮮刀削麵鍋(龍蝦+鮑魚+章魚+各式貝類)₩25000\n金浦MARINA BAY或 金浦RAMADN或 仁川RAMADA(改名仁川GLOUSTER) 或 安山SQUARE 或 仁川AIRSKY 或 同級\n【松月洞童話村】位於仁川中國城旁，在看到可愛的彩虹愛心拱門時，代表仁川童話村就抵達了，隨即開啟大家的童話世界之旅，整個街道充滿了童話的純真氣息，這裏的房子不像是其他的壁畫村，只是在房子上塗鴉，而是做立體的設計，有許許多多大家熟悉的童話主題，有白雪公主、灰姑娘、小紅帽與大野狼、長髮公主、拇指姑娘、綠野仙蹤、小木偶奇遇記…等，非常適合全家大小遊玩拍照的好地方。\n\n【漢江新都Laveniche March Avenue小威尼斯金光水路】～韓國小威尼斯、韓劇『愛麗絲Alice』『九尾狐』拍攝地~一條長達 1.1km的人工河流，兩岸環繞的商場、咖啡廳、餐廳，到晚上時河岸更會打上七彩的燈光，沿岸有各式的噴水設施十分浪漫，更連結著大公園，散步於此還可以呼吸到大自然散發的清新空氣！\n\n【搭乘月亮或滿月圓型船(2-6人乙艘)】遊河, 以「水城威尼斯」為主題的Laveniche沿著往返1.7公里的運河水道，連接著各式商店。以中央廣場為中心，運河兩旁有各種生活用品、餐廳及酒吧等，是個悠閒散步後可享受購物及療癒時光的最佳場所。\n\n\n第2天\n光明洞窟→稻花農夫體驗 (製作辣椒醬並帶回)→濟扶島海上纜車→安山五彩星光村\n早餐：飯店內早餐\n午餐：稻花拌飯₩8000\n晚餐：馬鈴薯燉鍋 +季節小菜 ₩12000\n金浦MARINA BAY或 金浦RAMADN或 仁川RAMADA(改名仁川GLOUSTER) 或 安山SQUARE 或 仁川AIRSKY 或 同級\n【光明洞窟】是由廢棄的礦坑改建而成，全長為7.8公里，深度275公尺。因為韓國人氣綜藝節目【Running Man】曾在此取景，而吸引了許多的觀光客，成為新興的熱門景點。也因洞窟內的溫度較低，吹起的陣陣涼風消除了夏日的炎熱，而在裡頭的各種設施更增添了探訪洞窟的樂趣。在洞窟內有洞窟水世界、洞窟藝術殿堂、黃金瀑布、黃金路以及黃金宮殿等不同的主題, 藉由各洞窟的壯麗風景及文化藝術，呈現出神秘又奇幻的氛圍。\n\n【稻花農夫體驗(辣椒醬DIY)】特別安排獨特的農夫體驗，在這裡您可以製作韓式辣椒醬DIY。\n\n【DIY韓式辣椒醬(每人乙罐)】將所有材料放入瓶子後，用精美的包裝袋包裝後，就是您遊韓最佳的伴手禮喔。\n\n【嶼海浪濟扶島海上纜車】與西海岸秀麗自然景觀相匹配的前谷港與濟扶島海面上設有2.12公里的韓國最長海上纜車，為融合自然與人的新地標。呈現濟扶島當地特色與美景的現代化面貌及功能，使其成為西海岸與首都圈的新興熱門景點。搭乘嶼海浪纜車可同時欣賞潮間帶與海景，最壯觀的景色出現於日落時段，能從高空俯瞰潮間帶則是嶼海浪纜車的獨到之處。兩側纜車站皆可搭乘，為能充分遊覽濟扶島與前谷港的西海岸景點。\n\n【安山五彩星光村】 位於京畿道安山市，距離仁川國際機場約1小時車程，是由大邱頗有名氣的星光村縮小版，將同樣浪漫的藝術燈飾造景搬至安山開設了第2間分館。總共佔地三千多坪，園區內可以劃分為兩個主題。首先映入眼簾的區域主要是以展示梵谷的畫作為主，除了梵谷的畫作，星光村的另一個主題就是四季公園，利用不同顏色的燈光來呈現出四個季節所相對應的氛圍，由10萬顆燈泡點亮夜空，共計500多件作品，粉色系代表生意盎然的春天、綠色代表生動的夏天、橘紅色代表楓紅的秋天以及白色代表冬季浪漫的雪白世界。在園區旁邊另外有個收費的室內鏡子迷宮，以愛麗絲夢遊仙境為故事情境，利用鏡子的反射錯視藝術，走進裡面成為大型鏡子迷宮，記得輕輕的走，免得一個不注意撞上大面玻璃。\n\n\n第3天\n日月樹木園→愛寶樂園+嚕嚕米四季花園+夢幻猴子谷+空中纜車+LOST VALLEY迷失的峽谷(含門票及自由券) (季節賞櫻)\n早餐：飯店內早餐\n午餐：樂園內含餐券\n晚餐：明倫進士烤肉吃到飽₩19900\n五星DOUBLE TREE BY HILTON (板橋希爾頓逸林酒店) 或SONO CALM GOYANG HOTEL 或 同級\n【韓劇《淚之女王》拍攝地~日月樹木園】近期韓國最熱門的樹木園，室內的唯美溫室花園就是《淚之女王》洪海仁和白賢祐尋找小浣熊的地方喔。\n\n【愛寶樂園(含門票及自由券)】－佔地面積達450萬餘坪的愛寶樂園，是結合休閒、娛樂、教育和文化於一身的渡假勝地。愛寶樂園主要是由環球市集、美洲探險、魔術天地、歐洲探險及野生動物園共5種主題園區所組成，每個園區都會隨著季節的不同展開各式歡樂慶典活動。環球市集裡處處可見伊斯蘭、西班牙、印度等世界各地新奇美麗又壯觀的建築物，可以說是歷史與文化的教育空間。擁有30餘種最新景點的美洲探險內，到處充滿冒險與刺激，以美國西部為背景深受年輕人歡迎。魔術天地則是擁有全球唯一以伊索寓言故事為主題設計而成的\"伊索童話村\"，同時也是小孩子們的最愛，在伊索童話村裡還有伊索老爺爺的餐廳，各個童話故事為主題的遊樂設施及龜兔賽跑庭院等，讓人彷彿置身於童話世界中一般。至於在歐洲探險區內，有著全球最高坡度，也是韓國首創的木製雲霄飛車\"T EXPRESS\"，許多喜好刺激的年輕人爭瘋前往搭乘。\"T EXPRESS\"也創下世界各地多項新紀錄，深受全球雲霄飛車迷們的好評，在77度陡坡上滑下的刺激體驗，以及過程長達3分鐘的快速感更是其最大特色。另外佔地1萬5千平方公尺，約210餘種,多隻動物所居住的野生動物園，也是來到愛寶樂園千萬不可以錯過的。有野生動物園專車載著遊客們近距離欣賞獅子、老虎、黑熊等猛獸實際生活面貌。此樂園不僅考慮年輕人喜歡追求刺激﹑驚險的遊樂項目，也兼顧到兒童與年長者只想「看」不敢「玩」的特性，為家庭式的遊樂園，可說是四季歡樂的國度。\n\n【季節性賞櫻★特別說明】\n★季節性賞櫻★\n★ 韓國賞櫻~暫定賞櫻期間：3月28到4月15日左右 (實際時間以韓國氣象局發佈為主) ★\n※賞櫻花景點會受當時、當地、天氣及外在因素有影響，若無法觀賞，會依原行程前往或給予當地導遊調整行程之權利，請於報名時特別注意並請見諒。※\n\n\n第4天\n韓流時尚彩妝店→神秘青瓦臺(入內參觀)→南山白帆廣場城牆路~眺望N首爾塔(季節賞櫻)→明洞商圈購物樂\n早餐：飯店內早餐\n午餐：百年土種~人蔘雞₩17000\n晚餐：逛街方便，每人發韓幣10,000元\n五星DOUBLE TREE BY HILTON (板橋希爾頓逸林酒店) 或SONO CALM GOYANG HOTEL 或 同級\n【韓流時尚彩妝店】相信愛美的女人們一定可以在這排選最新款最hito彩粧品，而除了購買外，讓您永遠跟上時代潮流尖端。\n\n【青瓦臺(入內參觀)】1948年至2022年的總統府，曾為韓國的最高權力象徵。青瓦台過去原來是高麗王朝的別宮，朝鮮時代沿用為景福宮後苑，之後因建築毀損，日據時期，日軍在這裡興建總督官邸，1948年韓國光復之後，歷任總統都在這裡辦公。睽違74年首度開放民眾參觀。青瓦臺由位於中央的本館、迎賓館、春秋館、綠地園、無窮花花園、七宮等所組成。建築的外觀各有其獨特之處，為了能突出韓國的特色，所有建築都是按照韓國傳統建築樣式建造，顯得典雅而美麗。本館的青瓦和屋最具特色的建築物，象徵青瓦臺的青瓦共有約15萬塊，每塊都經過窯燒，能承受使用100年以上，非常穩固。\n※青瓦台每日參觀名額有限，如預約額滿或是遇休館日將改為南山韓屋村參觀※\n\n【南山白凡廣場城牆路】(季節賞櫻)白凡廣場公園城墙路，又稱首爾要塞，也曾多次出現在韓劇梨泰院class劇中。白凡廣場公園位於前往首爾南山公園(中區會賢洞)的半山腰,公園其實是前往南山的登山路上,可沿路信步前往南山塔及漢陽都城城牆,是首爾人的散步熱點。\n\n【明洞商圈】明洞位於首爾市中區，是首爾具代表性的著名觀光景點之一，也是流行時尚的重鎮。許多年輕人都喜歡相約在此出遊。不僅可以購買服裝、鞋類、飾品等，還有非常多有名的餐廳及銀行和證券公司雲集於此。明洞的商品以中高檔為主。明洞大街兩旁有各式各樣的商店及綜合大型購物中心，附近還有樂天百貨、新世界百貨、美利來。\n\n\n第5天\n仁川永宗島國際機場／桃園國際機場\n早餐：飯店內用早餐\n溫暖的家\n前往機場，搭機返台結束愉快的韓國之旅。',32888,0,_binary 'https://photo.settour.com.tw/https://www.settour.com.tw/ss_img/info/location/ICN/N0/ICN0000339/ICN0000339_37799.jpg'),(4,'台北兩天一夜','台北熱門景點遊覽與美食饗宴',2688,0,_binary 'https://madisontaipei.com/wp-content/uploads/2016/11/02.jpg'),(5,'台中兩天一夜','台中知名美食與景點遊覽',1688,0,_binary 'https://zh-tw.skyticket.com/guide/wp-content/uploads/2021/02/shutterstock_1629189772.jpg'),(6,'台南三天兩夜','台南古蹟巡禮與小吃美食遊覽',2888,0,_binary 'https://cc.tvbs.com.tw/img/program/upload/2021/09/16/20210916101332-4a326f6e.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 11:55:54
