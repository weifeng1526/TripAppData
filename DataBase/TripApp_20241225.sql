-- CREATE SCHEMA tripapp ;

drop table if exists `deposit`;
drop table if exists `payment`;
 drop table if exists `balance`;
 drop table if exists `cost_recd`;
drop table if exists `dst_record`;
drop table if exists `dst_photo`;
drop table if exists `dest`;
drop table if exists `ORDER`;
drop table if exists `notify`;
 drop table if exists `poi_type`;
drop table if exists `tur_fav`;
drop table if exists `bag_list`;
drop table if exists `product`;
drop table if exists `notify_type`;
drop table if exists `payment`;
drop table if exists `poi`;
drop table if exists `crew`;
drop table if exists `sched`;
drop table if exists `item`;
drop table if exists `member`;
CREATE TABLE  `member`(
  mem_no int AUTO_INCREMENT NOT NULL,
  mem_email varchar(20) NOT NULL ,
  mem_name varchar(10) DEFAULT NULL,
  mem_pw varchar(10) DEFAULT NULL,
  mem_sta tinyint DEFAULT 1,
  mem_icon varchar(20) DEFAULT NULL,
  PRIMARY KEY (mem_no),
  unique key UK_mem_email(mem_email)
) ENGINE InnoDB; 

drop table if exists `bag_list`;
CREATE TABLE  bag_list(
  bl_memno int NOT NULL,
  bl_schno int NOT NULL,
  bl_itemno int NOT NULL,
  bl_ready boolean DEFAULT false,
  PRIMARY KEY (bl_memno , bl_schno, bl_itemno)
) ENGINE InnoDB;

drop table if exists `item`;
CREATE TABLE  item(
  item_no int AUTO_INCREMENT NOT NULL,
  item_name varchar(10) NOT NULL,
  item_type tinyint DEFAULT 0,
  PRIMARY KEY (item_no)
) ENGINE InnoDB;

drop table if exists `tur_fav`;
CREATE TABLE  tur_fav(
  tf_mem_no int NOT NULL,
  tf_poi_no int NOT NULL,
  tf_folder_no int DEFAULT NULL,
  tf_folder varchar(20) DEFAULT NULL,
  PRIMARY KEY (tf_mem_no,tf_poi_no)
) ENGINE InnoDB; 
-- ---------------------------------------------
 drop table if exists `poi`;
 CREATE TABLE poi(
  poi_no int AUTO_INCREMENT NOT NULL,
  poi_add varchar(500) DEFAULT NULL,
  poi_name varchar(50) DEFAULT NULL,
  poi_lng DECIMAL(10,7) NOT NULL,
  poi_lat DECIMAL(10,7) NOT NULL,
  poi_lab VARCHAR(100) DEFAULT NULL,
  poi_pic VARCHAR(600) DEFAULT NULL,
  poi_rat double DEFAULT NULL,
  poi_hno varchar(20) DEFAULT NULL,
  poi_phon varchar(20) DEFAULT NULL,
  poi_bs TIME DEFAULT NULL,
  poi_nbs TIME DEFAULT NULL,
  poi_bd varchar(200) DEFAULT NULL,
  poi_like TINYINT DEFAULT NULL,
  PRIMARY KEY (poi_no)
) ENGINE InnoDB; 
 
 drop table if exists `poi_type`;
 CREATE TABLE poi_type(
  pt_no int NOT NULL,
  pt_type varchar(10)  NOT NULL
) ENGINE InnoDB; 
---------------------------------------------------------
drop table if exists `notify`;
CREATE TABLE  notify(
  ntf_no int AUTO_INCREMENT NOT NULL,
  nttp_no int NOT NULL,
  ntf_sdr int NOT NULL,
  ntf_rcv int NOT NULL,
  ntf_msg varchar(200) DEFAULT NULL,
  ntf_time datetime DEFAULT NULL,
  ntf_read boolean DEFAULT NULL,
  crew_no int NOT NULL,
  PRIMARY KEY (ntf_no)
) ENGINE InnoDB; 

drop table if exists `notify_type`;
CREATE TABLE  notify_type(
  nttp_no int NOT NULL,
  nttp_name varchar(20)  DEFAULT NULL,
  PRIMARY KEY (nttp_no)
) ENGINE InnoDB; 

-- --------------------------------------------------
drop table if exists `ORDER`;
CREATE TABLE  `ORDER`(
  ord_no int AUTO_INCREMENT NOT NULL,
  mem_no int DEFAULT NULL,
  prod_no int DEFAULT NULL,
  ord_dt datetime DEFAULT NULL,
  ord_tot DECIMAL(10,2) DEFAULT NULL,
  pay_sta tinyint DEFAULT NULL,
  PRIMARY KEY (ord_no)
) ENGINE InnoDB; 

drop table if exists `product`;
CREATE TABLE  product(
  prod_no int AUTO_INCREMENT NOT NULL,
  prod_name varchar(30) DEFAULT NULL,
  prod_desc text DEFAULT NULL,
  prod_price int DEFAULT NULL,
  prod_sta boolean DEFAULT NULL,
  prod_pic blob DEFAULT NULL,
  PRIMARY KEY (prod_no)
) ENGINE InnoDB; 


 -- --------------------------------------------------- 
drop table if exists `sched`;
CREATE TABLE  sched(
  sch_no int AUTO_INCREMENT NOT NULL,
  mem_no int DEFAULT NULL,
  sch_state tinyint DEFAULT NULL,
  sch_name varchar(30) DEFAULT NULL,
  sch_con varchar(30) DEFAULT NULL,
  sch_start date DEFAULT NULL,
  sch_end date DEFAULT NULL,
  sch_cur varchar(10) not NULL,
  sch_pic mediumblob default null,
  sch_last_edit datetime not null,
  PRIMARY KEY (sch_no)
) ENGINE InnoDB; 

drop table if exists `dest`;
create table dest(
  dst_no int AUTO_INCREMENT NOT NULL,
  sch_no int NOT NULL,
  poi_no int NOT NULL,
  dst_name varchar(50) DEFAULT NULL,
  dst_addr varchar(500) DEFAULT NULL,
  dst_pic mediumblob DEFAULT NULL,
  dst_dep varchar(500) DEFAULT NULL,
  dst_date date DEFAULT NULL,
  dst_start time DEFAULT NULL,
  dst_end time DEFAULT NULL,
  dst_inr time DEFAULT NULL,
  PRIMARY KEY (dst_no)
) ENGINE InnoDB; 

drop table if exists `crew`;
CREATE TABLE crew(
  crew_no int AUTO_INCREMENT NOT NULL,
  sch_no int NOT NULL,
  mem_no int DEFAULT NULL,
  crew_peri tinyint DEFAULT NULL,
  crew_ide tinyint DEFAULT NULL,
  crew_name varchar(10) DEFAULT NULL,
  crew_invited tinyint DEFAULT 0,
  PRIMARY KEY (crew_no)
) ENGINE InnoDB;

drop table if exists `dst_photo`;
CREATE TABLE dst_photo(
  dp_no int AUTO_INCREMENT NOT NULL,
  dst_no int NOT NULL,
  dp_pic mediumblob DEFAULT NULL,
  PRIMARY KEY (dp_no)
) ENGINE InnoDB;

drop table if exists `dst_record`;
CREATE TABLE dst_record(
  dr_no int AUTO_INCREMENT NOT NULL,
  mem_no int not NULL,
  dst_no int NOT NULL,
  dr_text varchar(500) DEFAULT NULL,
  PRIMARY KEY (dr_no)
) ENGINE InnoDB;

-- ------------------------------------------------
 drop table if exists `cost_recd`;
 CREATE TABLE  cost_recd(
  cr_cost_no int AUTO_INCREMENT NOT NULL,
  sch_no int NOT NULL,
  cr_cost_type tinyint not NULL,
  cr_cost_item varchar(20) DEFAULT NULL,
  cr_cost_price DECIMAL(10,2) not NULL,
  cr_paid_by int not NULL,
  cr_cost_time datetime not NULL default now(),
  cr_cost_loc varchar(20) DEFAULT NULL,
  cr_cost_pex boolean not null default false,
  cr_cur varchar(10) not null,
  cr_cur_record varchar(10) not null,
  PRIMARY KEY (cr_cost_no)
) ENGINE InnoDB; 
 
 drop table if exists `balance`;
 CREATE TABLE  balance(
  cost_no int NOT NULL,
  sch_no int NOT NULL,
  mem_no int DEFAULT NULL,
  cr_cost_splip DECIMAL(10,2) not NULL
) ENGINE InnoDB; 

drop table if exists `payment`;
CREATE TABLE  payment(
  mem_no int NOT NULL,
  sch_no int NOT NULL,
  cr_total_sum decimal(10,2) not NULL,
  cr_cur varchar(10) default null,
  PRIMARY KEY (mem_no,sch_no)
) ENGINE InnoDB; 

drop table if exists `deposit`;
CREATE TABLE  deposit(
  dp_no int auto_increment NOT NULL,
  sch_no int NOT NULL,
  dp_record decimal(10,2) not NULL,
  cr_cur_record varchar(10) not null,
  PRIMARY KEY (dp_no)
) ENGINE InnoDB; 
--------------------------------------------------------------------------- 
ALTER TABLE bag_list
ADD CONSTRAINT baglist_memno_FK FOREIGN KEY (bl_memno) REFERENCES member(mem_no);

ALTER TABLE bag_list
ADD CONSTRAINT baglist_itemno_FK FOREIGN KEY (bl_itemno) REFERENCES item(item_no);

ALTER TABLE bag_list
ADD CONSTRAINT baglist_schno_FK FOREIGN KEY (bl_schno) REFERENCES sched(sch_no);

ALTER TABLE tur_fav
ADD CONSTRAINT turfav_memno_FK FOREIGN KEY (tf_mem_no) REFERENCES member(mem_no);

ALTER TABLE tur_fav
ADD CONSTRAINT turfav_poino_FK FOREIGN KEY (tf_poi_no) REFERENCES poi(poi_no);
---------------------------------------------------------------------------- 
ALTER TABLE notify
ADD CONSTRAINT notify_nttpno_FK FOREIGN KEY (nttp_no) REFERENCES notify_type(nttp_no);

ALTER TABLE notify
ADD CONSTRAINT notify_ntfsdr_FK FOREIGN KEY (ntf_sdr) REFERENCES member(mem_no);

ALTER TABLE notify
ADD CONSTRAINT notify_ntfrcv_FK FOREIGN KEY (ntf_rcv) REFERENCES member(mem_no);

ALTER TABLE notify
ADD CONSTRAINT notify_crewno_FK FOREIGN KEY (crew_no) REFERENCES crew(crew_no);
-------------------------------------------------------------------------- 
ALTER TABLE `ORDER`
ADD CONSTRAINT ORDER_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE `ORDER`
ADD CONSTRAINT ORDER_prodno_FK FOREIGN KEY (prod_no) REFERENCES product(prod_no);
-------------------------------------------------------------------------- 
ALTER TABLE sched
ADD CONSTRAINT sched_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE dest
ADD CONSTRAINT dest_schno_FK FOREIGN KEY (sch_no) REFERENCES sched(sch_no);

-- ALTER TABLE dest
-- ADD CONSTRAINT dest_poino_FK FOREIGN KEY (poi_no) REFERENCES poi(poi_no);

ALTER TABLE crew
ADD CONSTRAINT crew_schno_FK FOREIGN KEY (sch_no) REFERENCES sched(sch_no);

ALTER TABLE crew
ADD CONSTRAINT crew_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE dst_photo
ADD CONSTRAINT dstphoto_dstno_FK FOREIGN KEY (dst_no) REFERENCES dest(dst_no);

ALTER TABLE dst_record
ADD CONSTRAINT dstrecord_dstno_FK FOREIGN KEY (dst_no) REFERENCES dest(dst_no);

ALTER TABLE dst_record
ADD CONSTRAINT dstrecord_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);
----------------------------------------------------------------------
ALTER TABLE cost_recd
ADD CONSTRAINT costrecd_schno_FK FOREIGN KEY (sch_no) REFERENCES sched (sch_no);

ALTER TABLE balance
ADD CONSTRAINT balance_costno_FK FOREIGN KEY (cost_no) REFERENCES cost_recd (cr_cost_no);

ALTER TABLE balance
ADD CONSTRAINT balance_schno_FK FOREIGN KEY (sch_no) REFERENCES sched (sch_no);

ALTER TABLE balance
ADD CONSTRAINT balance_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE payment
ADD CONSTRAINT payment_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE payment
ADD CONSTRAINT payment_schno_FK FOREIGN KEY (sch_no) REFERENCES sched (sch_no);

ALTER TABLE deposit
ADD CONSTRAINT deposit_schno_FK FOREIGN KEY (sch_no) REFERENCES sched (sch_no);
---------------------------------------------------------------------------

-- 會員資料
INSERT INTO member (mem_email, mem_name, mem_pw, mem_sta) VALUES
('ruby@tip102.com', 'ruby', '111111', 1),
('selin@tip102.com', 'sue', '222222', 1),
('aaron@tip102.com', 'aaron', '333333', 1),
('ashley@tip102.com', 'ashley', '444444', 1),
('leo@tip102.com', 'leo', '555555', 1),
('wayne@tip102.com', 'wayne', '666666', 1),
('jonas@tip102.com', 'jonas', '777777', 1),
('abc@tip102.com', 'abc', '888888', 1);

INSERT INTO member (mem_no, mem_email, mem_name, mem_pw, mem_sta) VALUES
(-1,'userNO@tip102.com', 'userNo', 'nnnnnn', 0);

INSERT INTO poi (poi_add, poi_name, poi_lng, poi_lat, poi_lab, poi_pic, poi_rat, poi_hno, poi_phon, poi_bs, poi_nbs, poi_bd, poi_like)
VALUES
-- 台中行程相關景點
( '台中市中區中山路20號', '宮原眼科', 120.684307, 24.137286, '甜點, 打卡', 'miyahara.jpg', 4.6, NULL, NULL, '10:00:00', '22:00:00', '老街上的文創甜點店', 1),
( '台中市西區民權路', '草悟道', 120.660818, 24.151218, '散步, 拍照', 'calligraphy_greenway.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '藝術氛圍濃厚的步道', 1),
( '台中市西區公益路68號', '台中勤美誠品', 120.661504, 24.151583, '購物, 美食', 'eslite_cm.jpg', 4.6, NULL, '04-2328-1234', '11:00:00', '22:00:00', '時尚文創購物地點', 1),
( '台中市南屯區春安路56號', '彩虹眷村', 120.621635, 24.130156, '藝術, 拍照', 'rainbow_village.jpg', 4.5, NULL, NULL, '08:00:00', '18:00:00', '繽紛創意的藝術村', 1),
( '台中市西屯區福星路', '逢甲夜市', 120.642647, 24.176286, '美食, 夜市', 'fengjia.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台中知名夜市', 1),
( '台中市清水區美堤街', '高美濕地', 120.556153, 24.313156, '自然, 景觀', 'gaomei.jpg', 4.8, NULL, NULL, '05:00:00', '18:30:00', '濕地生態觀賞', 1),
( '台中市新社區中興嶺', '薰衣草森林', 120.847665, 24.210322, '放鬆, 拍照', 'lavender_forest.jpg', 4.6, NULL, '04-2581-1000', '09:00:00', '18:00:00', '浪漫自然景點', 1),
( '台中市北區育才北路', '一中街商圈', 120.683889, 24.153256, '購物, 美食', 'yizhong.jpg', 4.5, NULL, NULL, '10:00:00', '22:00:00', '學生愛逛的商圈', 1),
( '台中市北區館前路1號', '科學博物館', 120.662843, 24.157462, '科普, 教育', 'science_museum.jpg', 4.8, NULL, '04-2322-6940', '09:00:00', '17:00:00', '自然與科學探索', 1),

-- 台北行程相關景點
( '台北市信義區市府路45號', '台北101', 121.565417, 25.033968, '地標, 景點', 'taipei101.jpg', 4.7, NULL, '02-8101-7777', '11:00:00', '21:30:00', '台北地標建築', 1),
( '台北市信義區松山路', '象山', 121.573028, 25.027174, '健行, 拍照', 'xiangshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '台北市區的健行步道', 1),
( '台北市中正區中山南路21號', '中正紀念堂', 121.519301, 25.036798, '歷史, 文化', 'cksm.jpg', 4.6, NULL, '02-2343-1100', '09:00:00', '18:00:00', '台灣文化象徵', 1),
( '台北市士林區文林路', '士林夜市', 121.524077, 25.087570, '美食, 夜市', 'shilin.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台北知名夜市', 1),
( '台北市北投區竹子湖路1-20號', '陽明山國家公園', 121.555618, 25.166113, '自然, 登山', 'yangmingshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '壯麗的自然景觀', 1),
( '台北市北投區中山路2號', '地熱谷', 121.501766, 25.137783, '溫泉, 景點', 'thermal_valley.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投地熱名勝', 1),
( '台北市士林區至善路二段221號', '故宮博物院', 121.548492, 25.102405, '文物, 歷史', 'national_palace.jpg', 4.9, NULL, '02-2881-2021', '09:00:00', '17:00:00', '世界知名文物館藏', 1),
( '台北市士林區中山北路5段60號', '士林官邸', 121.522634, 25.095654, '歷史, 園藝', 'shilin_residence.jpg', 4.6, NULL, NULL, '09:00:00', '17:00:00', '歷史與花園景觀', 1),
( '台北市北投區中山路2號', '北投溫泉博物館', 121.501766, 25.137783, '溫泉, 博物館', 'beitou_museum.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投溫泉文化展示', 1),
( '台北市大同區延平北路大稻埕', '大稻埕碼頭', 121.512701, 25.057183, '景觀, 商圈', 'dadaocheng.jpg', 4.4, NULL, NULL, '00:00:00', '23:59:59', '古早風情與商圈', 1),
( '台北市萬華區峨嵋街36號', '西門町', 121.506498, 25.042141, '購物, 娛樂', 'ximen.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '台北熱鬧商圈', 1);

INSERT INTO poi ( poi_add, poi_name, poi_lng, poi_lat, poi_lab, poi_pic, poi_rat, poi_hno, poi_phon, poi_bs, poi_nbs, poi_bd, poi_like)
VALUES
( '大阪府大阪市中央區道頓堀', '道頓堀', 135.5013, 34.6687, '觀光、餐飲', 'dotonbori.jpg', 4.5, NULL, '06-1234-5678', NULL, NULL, NULL, 50),
( '大阪府大阪市北區梅田', '梅田地鐵站', 135.4982, 34.7025, '交通樞紐', 'umeda_station.jpg', 4.3, NULL, '06-8765-4321', NULL, NULL, NULL, 30),
( '大阪府大阪市此花區櫻島2丁目1-33', '環球影城', 135.4322, 34.6654, '遊樂園', 'universal_studios.jpg', 4.8, NULL, '06-7890-1234', NULL, NULL, NULL, 100),
( '大阪府大阪市浪速區難波', '難波飯店', 135.5010, 34.6646, '住宿', 'namba_hotel.jpg', 4.0, NULL, '06-3456-7890', NULL, NULL, NULL, 20),
( '大阪府大阪市中央區心齋橋', '心齋橋', 135.5017, 34.6721, '購物', 'shinsaibashi.jpg', 4.4, NULL, '06-9876-5432', NULL, NULL, NULL, 70),
( '大阪府大阪市中央區道頓堀', '道頓堀', 135.5013, 34.6687, '觀光、餐飲', 'dotonbori.jpg', 4.5, NULL, '06-1234-5678', NULL, NULL, NULL, 50),
( '大阪府大阪市中央區日本橋', '黑門市場', 135.5065, 34.6651, '市場', 'kuromon_market.jpg', 4.6, NULL, '06-5678-9101', NULL, NULL, NULL, 60),
( '大阪府大阪市天王寺區悲田院町', '天王寺車站', 135.5195, 34.6551, '交通樞紐', 'tennoji_station.jpg', 4.2, NULL, '06-4321-8765', NULL, NULL, NULL, 40),
( '大阪府大阪市淀川區西中島', '新大阪旅館', 135.4992, 34.7301, '住宿', 'shin_osaka_inn.jpg', 4.1, NULL, '06-1234-5678', NULL, NULL, NULL, 25),
( '大阪府大阪市中央區心齋橋', '心齋橋', 135.5017, 34.6721, '購物', 'shinsaibashi.jpg', 4.4, NULL, '06-9876-5432', NULL, NULL, NULL, 70),

-- 台中行程相關景點

( '台中市中區中山路20號', '宮原眼科', 120.684307, 24.137286, '甜點, 打卡', 'miyahara.jpg', 4.6, NULL, NULL, '10:00:00', '22:00:00', '老街上的文創甜點店', 1),
( '台中市西區民權路', '草悟道', 120.660818, 24.151218, '散步, 拍照', 'calligraphy_greenway.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '藝術氛圍濃厚的步道', 1),
( '台中市西區公益路68號', '台中勤美誠品', 120.661504, 24.151583, '購物, 美食', 'eslite_cm.jpg', 4.6, NULL, '04-2328-1234', '11:00:00', '22:00:00', '時尚文創購物地點', 1),
( '台中市南屯區春安路56號', '彩虹眷村', 120.621635, 24.130156, '藝術, 拍照', 'rainbow_village.jpg', 4.5, NULL, NULL, '08:00:00', '18:00:00', '繽紛創意的藝術村', 1),
( '台中市西屯區福星路', '逢甲夜市', 120.642647, 24.176286, '美食, 夜市', 'fengjia.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台中知名夜市', 1),
( '台中市清水區美堤街', '高美濕地', 120.556153, 24.313156, '自然, 景觀', 'gaomei.jpg', 4.8, NULL, NULL, '05:00:00', '18:30:00', '濕地生態觀賞', 1),
( '台中市新社區中興嶺', '薰衣草森林', 120.847665, 24.210322, '放鬆, 拍照', 'lavender_forest.jpg', 4.6, NULL, '04-2581-1000', '09:00:00', '18:00:00', '浪漫自然景點', 1),
( '台中市北區育才北路', '一中街商圈', 120.683889, 24.153256, '購物, 美食', 'yizhong.jpg', 4.5, NULL, NULL, '10:00:00', '22:00:00', '學生愛逛的商圈', 1),
( '台中市北區館前路1號', '科學博物館', 120.662843, 24.157462, '科普, 教育', 'science_museum.jpg', 4.8, NULL, '04-2322-6940', '09:00:00', '17:00:00', '自然與科學探索', 1),

-- 台北行程相關景點
( '台北市信義區市府路45號', '台北101', 121.565417, 25.033968, '地標, 景點', 'taipei101.jpg', 4.7, NULL, '02-8101-7777', '11:00:00', '21:30:00', '台北地標建築', 1),
( '台北市信義區松山路', '象山', 121.573028, 25.027174, '健行, 拍照', 'xiangshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '台北市區的健行步道', 1),
( '台北市中正區中山南路21號', '中正紀念堂', 121.519301, 25.036798, '歷史, 文化', 'cksm.jpg', 4.6, NULL, '02-2343-1100', '09:00:00', '18:00:00', '台灣文化象徵', 1),
( '台北市士林區文林路', '士林夜市', 121.524077, 25.087570, '美食, 夜市', 'shilin.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台北知名夜市', 1),
( '台北市北投區竹子湖路1-20號', '陽明山國家公園', 121.555618, 25.166113, '自然, 登山', 'yangmingshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '壯麗的自然景觀', 1),
( '台北市北投區中山路2號', '地熱谷', 121.501766, 25.137783, '溫泉, 景點', 'thermal_valley.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投地熱名勝', 1),
( '台北市士林區至善路二段221號', '故宮博物院', 121.548492, 25.102405, '文物, 歷史', 'national_palace.jpg', 4.9, NULL, '02-2881-2021', '09:00:00', '17:00:00', '世界知名文物館藏', 1),
( '台北市士林區中山北路5段60號', '士林官邸', 121.522634, 25.095654, '歷史, 園藝', 'shilin_residence.jpg', 4.6, NULL, NULL, '09:00:00', '17:00:00', '歷史與花園景觀', 1),
( '台北市北投區中山路2號', '北投溫泉博物館', 121.501766, 25.137783, '溫泉, 博物館', 'beitou_museum.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投溫泉文化展示', 1),
( '台北市大同區延平北路大稻埕', '大稻埕碼頭', 121.512701, 25.057183, '景觀, 商圈', 'dadaocheng.jpg', 4.4, NULL, NULL, '00:00:00', '23:59:59', '古早風情與商圈', 1),
( '台北市萬華區峨嵋街36號', '西門町', 121.506498, 25.042141, '購物, 娛樂', 'ximen.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '台北熱鬧商圈', 1);

INSERT INTO sched (
   sch_no, mem_no, sch_state, sch_name, sch_con, sch_start, sch_end, sch_cur, sch_pic, sch_last_edit
) VALUES
(1, 1, 1, '台北之旅', '台灣', '2025-01-25', '2025-01-27', 'TWD', NULL, '2025-01-01 00:00:00'),
(2, 1, 1, '日本東京', '日本', '2024-12-05', '2024-12-07', 'JPY', NULL, '2024-11-30 00:00:00'),
(3, 1, 1, '台中探險', '台灣', '2025-02-25', '2025-02-27', 'TWD', NULL, '2025-02-02 00:00:00'),
(4, 1, 1, '沖繩海灘陽光假期', '日本', '2025-01-01', '2025-01-01', 'JPY', NULL, '2025-01-01 00:00:00'),
(5, 1, 1, '富士山健行挑戰', '日本', '2025-01-01', '2025-01-01', 'JPY', NULL, '2025-01-01 00:00:00'),
(6, 1, 1, '名古屋主題樂園與購物', '日本', '2025-01-01', '2025-01-01', 'JPY', NULL, '2025-01-01 00:00:00'),
(7, 1, 1, '奈良鹿與自然探索', '日本', '2025-01-01', '2025-01-01', 'JPY', NULL, '2025-01-01 00:00:00');

-- 台北三天兩夜 (sch_no = 1)
INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
(1, 10, '台北101', '台北市信義區市府路45號', '地標景點', '2025-01-25', '2025-01-25 09:30:00', '2025-01-25 11:30:00', '00:30:00'),
(1, 11, '象山', '台北市信義區松山路', '健行與拍照', '2025-01-25', '2025-01-25 12:00:00', '2025-01-25 13:30:00', '00:30:00'),
(1, 12, '中正紀念堂', '台北市中正區中山南路21號', '歷史與文化', '2025-01-25', '2025-01-25 14:30:00', '2025-01-25 16:30:00', '00:30:00'),
(1, 13, '士林夜市', '台北市士林區文林路', '美食與夜市文化', '2025-01-25', '2025-01-25 18:00:00', '2025-01-25 21:00:00', '01:00:00'),
(1, 14, '陽明山國家公園', '台北市北投區竹子湖路1-20號', '自然景觀', '2025-01-26', '2025-01-26 08:00:00', '2025-01-26 10:30:00', '01:00:00'),
(1, 15, '地熱谷', '台北市北投區中山路2號', '溫泉與拍照', '2025-01-26', '2025-01-26 11:30:00', '2025-01-26 13:00:00', '00:30:00'),
(1, 16, '故宮博物院', '台北市士林區至善路二段221號', '文物欣賞', '2025-01-26', '2025-01-26 14:00:00', '2025-01-26 16:30:00', '00:30:00'),
(1, 17, '士林官邸', '台北市士林區中山北路5段60號', '歷史與園藝', '2025-01-26', '2025-01-26 17:00:00', '2025-01-26 18:30:00', '00:30:00'),
(1, 18, '北投溫泉博物館', '台北市北投區中山路2號', '溫泉文化', '2025-01-27', '2025-01-27 09:30:00', '2025-01-27 11:30:00', '00:30:00'),
(1, 19, '大稻埕碼頭', '台北市大同區延平北路大稻埕', '景觀與午餐', '2025-01-27', '2025-01-27 12:00:00', '2025-01-27 14:00:00', '00:30:00'),
(1, 20, '西門町', '台北市萬華區峨嵋街36號', '購物與娛樂', '2025-01-27', '2025-01-27 15:00:00', '2025-01-27 17:30:00', '00:30:00');

-- 日本東京 (sch_no = 2)
INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
    (2, 1, '道頓堀', '大阪府大阪市中央區道頓堀', '大阪', '2023-11-20', '12:00:00', '12:30:00', '01:30:00'),
    (2, 2, '梅田地鐵站', '大阪府大阪市北區梅田', '大阪', '2023-11-20', '14:00:00', '14:30:00', '19:30:00'),
    (2, 3, '環球影城', '大阪府大阪市此花區櫻島2丁目1-33', '大阪', '2023-11-21', '10:00:00', '18:00:00', '00:00:00'),
    (2, 4, '難波飯店', '大阪府大阪市浪速區難波', '大阪', '2023-11-21', '18:00:00', '19:00:00', '20:00:00'),
    (2, 5, '心齋橋', '大阪府大阪市中央區心齋橋', '大阪', '2023-11-22', '15:00:00', '16:00:00', '03:00:00'),
    (2, 6, '道頓堀', '大阪府大阪市中央區道頓堀', '大阪', '2023-11-22', '19:00:00', '20:00:00', '01:00:00'),
    (2, 7, '黑門市場', '大阪府大阪市中央區日本橋', '大阪', '2023-11-23', '09:00:00', '09:30:00', '07:30:00'),
    (2, 8, '天王寺車站', '大阪府大阪市天王寺區悲田院町', '大阪', '2023-11-23', '17:00:00', '18:00:00', '24:00:00'),
    (2, 9, '新大阪旅館', '大阪府大阪市淀川區西中島', '大阪', '2023-11-24', '18:00:00', '19:00:00', '01:00:00'),
    (2, 10, '心齋橋', '大阪府大阪市中央區心齋橋', '大阪', '2023-11-24', '20:00:00', '21:00:00', "00:00:00");

-- 台中兩天一夜 (sch_no = 3)
INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
(3, 1, '宮原眼科', '台中市中區中山路20號', '甜點與打卡景點', '2025-02-25', '2025-02-25 10:00:00', '2025-02-25 11:00:00', '00:30:00'),
(3, 2, '草悟道', '台中市西區民權路', '散步與拍照', '2025-02-25', '2025-02-25 11:30:00', '2025-02-25 12:30:00', '00:30:00'),
(3, 3, '台中勤美誠品', '台中市西區公益路68號', '購物與午餐', '2025-02-25', '2025-02-25 13:00:00', '2025-02-25 14:30:00', '00:30:00'),
(3, 4, '彩虹眷村', '台中市南屯區春安路56號', '文創藝術', '2025-02-25', '2025-02-25 15:00:00', '2025-02-25 16:30:00', '00:30:00'),
(3, 5, '逢甲夜市', '台中市西屯區福星路', '美食與夜市文化', '2025-02-25', '2025-02-25 18:00:00', '2025-02-25 21:00:00', '01:00:00'),
(3, 6, '高美濕地', '台中市清水區美堤街', '自然景觀', '2025-02-26', '2025-02-26 08:00:00', '2025-02-26 10:00:00', '01:00:00'),
(3, 7, '薰衣草森林', '台中市新社區中興嶺', '放鬆與拍照', '2025-02-26', '2025-02-26 11:30:00', '2025-02-26 13:00:00', '01:00:00'),
(3, 8, '一中街商圈', '台中市北區育才北路', '購物與午餐', '2025-02-26', '2025-02-26 13:30:00', '2025-02-26 15:30:00', '00:30:00'),
(3, 9, '科學博物館', '台中市北區館前路1號', '科普與探索', '2025-02-26', '2025-02-26 16:00:00', '2025-02-26 18:30:00', '00:30:00');

INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
    (2, 1, '道頓堀', '大阪府大阪市中央區道頓堀', '大阪', '2023-11-20', '12:00:00', '12:30:00', '01:30:00'),
    (2, 2, '梅田地鐵站', '大阪府大阪市北區梅田', '大阪', '2023-11-20', '14:00:00', '14:30:00', '19:30:00'),
    (2, 3, '環球影城', '大阪府大阪市此花區櫻島2丁目1-33', '大阪', '2023-11-21', '10:00:00', '18:00:00', '00:00:00'),
    (2, 4, '難波飯店', '大阪府大阪市浪速區難波', '大阪', '2023-11-21', '18:00:00', '19:00:00', '20:00:00'),
    (2, 5, '心齋橋', '大阪府大阪市中央區心齋橋', '大阪', '2023-11-22', '15:00:00', '16:00:00', '03:00:00'),
    (2, 6, '道頓堀', '大阪府大阪市中央區道頓堀', '大阪', '2023-11-22', '19:00:00', '20:00:00', '01:00:00'),
    (2, 7, '黑門市場', '大阪府大阪市中央區日本橋', '大阪', '2023-11-23', '09:00:00', '09:30:00', '07:30:00'),
    (2, 8, '天王寺車站', '大阪府大阪市天王寺區悲田院町', '大阪', '2023-11-23', '17:00:00', '18:00:00', '24:00:00'),
    (2, 9, '新大阪旅館', '大阪府大阪市淀川區西中島', '大阪', '2023-11-24', '18:00:00', '19:00:00', '01:00:00'),
    (2, 10, '心齋橋', '大阪府大阪市中央區心齋橋', '大阪', '2023-11-24', '20:00:00', '21:00:00', "00:00:00");

-- 旅記
INSERT INTO dst_record (mem_no, dst_no, dr_text) 
VALUES (1 ,10 ,'101好高');

-- 會員行程
INSERT INTO sched (mem_no, sch_state, sch_name, sch_con, sch_start, sch_end, sch_cur, sch_pic, sch_last_edit)
VALUES
-- Member 1 trips
(1, 1, '京都文化巡禮', '日本', '2025-01-15', '2025-01-18', 'JPY', NULL, '2025-01-09 00:00:00'),
(1, 0, '台南美食假期', '台灣', '2025-02-10', '2025-02-12', 'TWD', NULL, '2025-01-09 00:00:00'),
(1, 1, '紐約藝術探索', '美國', '2025-03-20', '2025-03-25', 'USD', NULL, '2025-01-09 00:00:00'),
(1, 0, '巴黎購物冒險', '法國', '2025-04-05', '2025-04-10', 'EUR', NULL, '2025-01-09 00:00:00'),
(1, 1, '沖繩海灘假期', '日本', '2025-05-15', '2025-05-20', 'JPY', NULL, '2025-01-09 00:00:00'),
(1, 0, '雪梨自然探索', '澳洲', '2025-06-05', '2025-06-10', 'AUD', NULL, '2025-01-09 00:00:00'),
(1, 1, '台中夜市巡遊', '台灣', '2025-07-10', '2025-07-12', 'TWD', NULL, '2025-01-09 00:00:00'),
(1, 0, '倫敦歷史探索', '英國', '2025-08-15', '2025-08-20', 'GBP', NULL, '2025-01-09 00:00:00'),
-- Member 2 trips
(2, 1, '東京購物假期', '日本', '2025-01-10', '2025-01-15', 'JPY', NULL, '2025-01-09 00:00:00'),
(2, 0, '高雄探索之旅', '台灣', '2025-02-05', '2025-02-08', 'TWD', NULL, '2025-01-09 00:00:00'),
(2, 1, '布里斯本動物園假期', '澳洲', '2025-03-01', '2025-03-05', 'AUD', NULL, '2025-01-09 00:00:00'),
(2, 0, '舊金山城市假期', '美國', '2025-04-10', '2025-04-15', 'USD', NULL, '2025-01-09 00:00:00'),
(2, 1, '巴黎文化巡遊', '法國', '2025-05-25', '2025-05-30', 'EUR', NULL, '2025-01-09 00:00:00'),
-- Member 3 trips
(3, 0, '北海道滑雪冒險', '日本', '2025-01-05', '2025-01-10', 'JPY', NULL, '2025-01-09 00:00:00'),
(3, 1, '宜蘭冷泉探索', '台灣', '2025-02-15', '2025-02-18', 'TWD', NULL, '2025-01-09 00:00:00'),
(3, 0, '洛杉磯娛樂假期', '美國', '2025-03-05', '2025-03-10', 'USD', NULL, '2025-01-09 00:00:00'),
-- Member 4 trips
(4, 1, '富士山健行假期', '日本', '2025-04-01', '2025-04-03', 'JPY', NULL, '2025-01-09 00:00:00'),
(4, 0, '高雄港口假期', '台灣', '2025-05-10', '2025-05-15', 'TWD', NULL, '2025-01-09 00:00:00'),
(4, 1, '阿姆斯特丹郊外探險', '荷蘭', '2025-06-20', '2025-06-25', 'EUR', NULL, '2025-01-09 00:00:00'),
(4, 0, '巴塞隆納建築巡遊', '西班牙', '2025-07-01', '2025-07-05', 'EUR', NULL, '2025-01-09 00:00:00'),
-- Member 5 trips
(5, 0, '雪梨夜市假期', '澳洲', '2025-08-10', '2025-08-15', 'AUD', NULL, '2025-01-09 00:00:00'),
(5, 1, '沖繩文化探索', '日本', '2025-09-05', '2025-09-08', 'JPY', NULL, '2025-01-09 00:00:00'),
-- Member 6 trips
(6, 1, '京都櫻花巡禮', '日本', '2025-01-25', '2025-01-30', 'JPY', NULL, '2025-01-09 00:00:00'),
(6, 0, '巴黎浪漫假期', '法國', '2025-02-20', '2025-02-25', 'EUR', NULL, '2025-01-09 00:00:00'),
(6, 1, '倫敦購物假期', '英國', '2025-03-15', '2025-03-20', 'GBP', NULL, '2025-01-09 00:00:00'),
-- Member 7 trips
(7, 0, '花蓮太魯閣假期', '台灣', '2025-04-01', '2025-04-05', 'TWD', NULL, '2025-01-09 00:00:00'),
(7, 1, '橫濱夜景探索', '日本', '2025-05-10', '2025-05-15', 'JPY', NULL, '2025-01-09 00:00:00'),
(7, 0, '柏林歷史巡禮', '德國', '2025-06-01', '2025-06-05', 'EUR', NULL, '2025-01-09 00:00:00'),
(7, 1, '雪梨動物園假期', '澳洲', '2025-07-10', '2025-07-15', 'AUD', NULL, '2025-01-09 00:00:00');

-- 旅行群組
INSERT INTO crew (sch_no, mem_no, crew_peri, crew_ide, crew_name, crew_invited) VALUES
(1, 1, 1, 1, '台北之旅', 3),
(1, 2, 2, 2, '台北之旅', 3),
(2, 1, 2, 2, '日本東京', 3),
(2, 3, 1, 1, '日本東京', 3),
(2, 4, 1, 1, '日本東京', 3),
(3, 5, 2, 2, '台中探險', 3),
(3, 1, 1, 1, '台中探險', 3),
(4, 6, 2, 1, '東京美食之旅', 3),
(4, 8, 2, 1, '東京美食之旅', 3),
(5, 1, 1, 2, '大阪之旅', 3);

-- 消費紀錄
INSERT INTO cost_recd (
    cr_cost_no, sch_no, cr_cost_type, cr_cost_item, cr_cost_price, cr_paid_by, cr_cost_time, cr_cost_loc, cr_cost_pex, cr_cur, cr_cur_record) VALUES
    (1, 1, 1, '午餐', 500, 1, '2023-11-20 12:00:00', '101', 0, 'TWD', 'TWD'),
    (2, 1, 2, '地鐵', 200, 2, '2023-11-20 14:00:00', '台北車站', 1, 'TWD', 'TWD'),
    (3, 1, 3, '兒童樂園門票', 2500, 1, '2023-11-21 10:00:00', '貓空纜車', 0, 'TWD', 'TWD'),
    (4, 1, 4, '飯店住宿', 3000, 1, '2023-11-21 18:00:00', '深坑', 1, 'TWD', 'TWD'),
    (5, 1, 5, '伴手禮', 1000, 1, '2023-11-22 15:00:00', '淡水', 0, 'TWD', 'TWD'),
    (6, 2, 6, '章魚燒', 300, 3, '2023-11-22 19:00:00', '道頓堀', 0, 'TWD', 'JPY'),
    (7, 2, 2, '電車', 150, 3, '2023-11-23 09:00:00', '天王寺', 1, 'TWD', 'JPY'),
    (8, 2, 4, '旅館住宿', 2500, 3, '2023-11-23 17:00:00', '新大阪', 0, 'TWD', 'JPY'),
    (9, 2, 1, '晚餐', 600, 4, '2023-11-24 18:00:00', '黑門市場', 1, 'TWD', 'JPY'),
    (10, 2, 5, '藥妝', 800, 1, '2023-11-24 20:00:00', '心齋橋', 0, 'TWD', 'TWD'),
    (11, 2, 5, '找鹿', 200, 1, '2023-11-24 21:00:00', '奈良', 0, 'TWD', 'TWD'),
    (12, 5, 5, '住宿', 3000, 1, '2023-11-24 21:00:00', '奈良', 0, 'TWD', 'JPY');
    
-- 統計結果   
INSERT INTO BALANCE (cost_no, sch_no, mem_no, cr_cost_splip) VALUES
    (10, 2, -1, 0),
    (1, 1, 1, 500),
    (1, 1, 2, 0),
    (10, 2, -1, 0),
    (2, 1, 1, 0),
    (2, 1, 2, 200),
    (10, 2, -1, 0),
    (3, 1, 1, 2500),
    (3, 1, 2, 0), 
    (10, 2, -1, 0),
    (4, 1, 1, 3000),
    (4, 1, 2, 0), 
    (10, 2, -1, 0),
    (5, 1, 1, 1000),
    (5, 1, 2, 0),
    (10, 2, -1, 0),
    (6, 2, 3, 300),
    (6, 2, 4, 0),
    (6, 2, 5, 0),
    (10, 2, -1, 0),
    (7, 2, 3, 150),
    (7, 2, 4, 0),
    (7, 2, 5, 0),
    (10, 2, -1, 0),
    (8, 2, 3, 2500),
    (8, 2, 4, 0), 
    (8, 2, 5, 0),
    (10, 2, -1, 0),
    (9, 2, 3, 0),
    (9, 2, 4, 600),
    (9, 2, 5, 0),
    (10, 2, -1, 0),
    (10, 2, 3, 0),
    (10, 2, 4, 0),
    (10, 2, 5, 800),
    (10, 2, -1, 0),
    (10, 2, 3, 0),
    (10, 2, 4, 0),
    (10, 2, 5, 0);

-- 結算清單 
INSERT INTO PAYMENT (mem_no, sch_no, cr_total_sum) VALUES
    (-1, 1, 0),
    (1, 1, 5500),
    (2, 1, 1700),
    (-1, 2, 200),
    (3, 2, 2950),
    (4, 2, 600),
    (5, 2,  800);
    
-- 公費儲值    
INSERT INTO DEPOSIT (sch_no, dp_no, dp_record,cr_cur_record) 
VALUES
    (1, 1, 1000 ,'TWD'),
    (1, 2, 2000,'TWD'),
    (2, 3, 500,'TWD'),
    (2, 4, 10000,'TWD'),
    (2, 5,  2000,'TWD');

-- ITEM物品清單 
INSERT INTO item (item_name, item_type) VALUES
('短袖', 1),
('長褲', 1),
('外套', 1),
('背包', 2),
('太陽眼鏡', 2),
('錢包', 8),
('護照', 8),
('牙刷', 4),
('洗髮精', 4),
('乳液', 5),
('口紅', 5),
('手機', 6),
('充電線', 6),
('繃帶', 7),
('止痛藥', 7),
('筆記本', 8),
('雨傘', 2),
('鞋子', 1),
('襪子', 1),
('體香劑', 3),
('梳子', 3),
('平板電腦', 6),
('插頭轉接器', 6),
('保濕乳', 5),
('防曬乳液', 5),
('原子筆', 8),
('記事本', 8),
('帽子', 2),
('手套', 1),
('圍巾', 1),
('洗面乳', 4),
('刮鬍刀', 4),
('行動電源', 6),
('耳機', 6),
('感冒藥', 7),
('創可貼', 7),
('證件', 8),
('護手霜', 5),
('粉底液', 5),
('保溫瓶', 2),
('運動鞋', 1),
('手帕', 3),
('卸妝油', 5),
('牙膏', 4),
('毛巾', 4),
('筆電', 6),
('數據線', 6),
('藥膏', 7),
('眼藥水', 7),
('護照套', 8),
('短袖上衣', 1),
('內衣', 1),
('睡衣', 1),
('水壺', 2),
('手錶', 2),
('卡夾', 8),
('證件套', 8),
('沐浴乳', 4),
('潤髮乳', 4),
('防曬霜', 5),
('眉筆', 5),
('行動電話', 6),
('筆電充電器', 6),
('退燒藥', 7),
('跌打膏', 7),
('書籍', 8),
('登機證', 8),
('防水袋', 2),
('運動服', 1),
('拖鞋', 1),
('護唇膏', 3),
('髮箍', 3),
('相機', 6),
('記憶卡', 6),
('抗生素', 7),
('繃帶', 7),
('機票', 8),
('眉夾', 5),
('蜜粉餅', 5),
('飲料瓶', 2),
('高跟鞋', 1),
('手套', 3),
('去光水', 5),
('洗衣精', 4),
('抹布', 4),
('電子書閱讀器', 6),
('藍牙耳機', 6),
('止癢藥膏', 7),
('維他命', 7),
('合約', 8),
('筆記型電腦', 6),
('遮陽帽', 2),
('圓領衫', 1),
('棉拖鞋', 1),
('護目鏡', 3),
('紗布', 7),
('瑞士刀', 2),
('萬用插座', 6),
('身分證', 8),
('保濕噴霧', 5);

-- 個別行李清單 
INSERT INTO bag_list (bl_memno, bl_schno, bl_itemno, bl_ready) VALUES
(1, 1, 53, 1),
(1, 1, 25, 0),
(1, 1, 76, 1),
(1, 1, 34, 0),
(1, 1, 62, 1),
(1, 1, 89, 0),
(1, 1, 11, 1),
(1, 1, 61, 0),
(1, 1, 77, 1),
(1, 1, 19, 0),
(1, 1, 50, 1),
(1, 1, 40, 0),
(1, 1, 83, 1),
(1, 1, 91, 0),
(1, 1, 29, 1),

(1, 2, 70, 0),
(1, 2, 80, 1),
(1, 2, 47, 0),
(1, 2, 53, 1),
(1, 2, 22, 0),
(1, 2, 8, 1),
(1, 2, 5, 0),
(1, 2, 58, 1),
(1, 2, 64, 0),
(1, 2, 92, 1),
(1, 2, 85, 0),
(1, 2, 9, 1),
(1, 2, 44, 0),
(1, 2, 15, 1),
(1, 2, 100, 0),
(1, 2, 26, 1),

(1, 3, 12, 1),
(1, 3, 98, 0),
(1, 3, 71, 1),
(1, 3, 43, 0),
(1, 3, 66, 1),
(1, 3, 4, 0),
(1, 3, 59, 1),
(1, 3, 55, 0),
(1, 3, 90, 1),
(1, 3, 82, 0),
(1, 3, 13, 1),
(1, 3, 75, 0),
(1, 3, 60, 1),
(1, 3, 74, 0),
(1, 3, 81, 1),

(1, 4, 95, 1),
(1, 4, 78, 0),
(1, 4, 17, 1),
(1, 4, 84, 0),
(1, 4, 37, 1),
(1, 4, 3, 0),
(1, 4, 72, 1),
(1, 4, 7, 0),
(1, 4, 50, 1),
(1, 4, 16, 0),
(1, 4, 18, 1),
(1, 4, 45, 0),
(1, 4, 49, 1),

(1, 5, 63, 1),
(1, 5, 28, 0),
(1, 5, 69, 1),
(1, 5, 57, 0),
(1, 5, 73, 1),
(1, 5, 48, 0),
(1, 5, 36, 1),
(1, 5, 79, 0),
(1, 5, 85, 1),
(1, 5, 91, 0),
(1, 5, 33, 1),

(1, 6, 99, 1),
(1, 6, 10, 0),
(1, 6, 41, 1),
(1, 6, 93, 0),
(1, 6, 56, 1),
(1, 6, 84, 0),
(1, 6, 50, 1),
(1, 6, 48, 0),
(1, 6, 67, 1),
(1, 6, 24, 0),

(1, 7, 44, 1),
(1, 7, 38, 0),
(1, 7, 67, 1),
(1, 7, 26, 0),
(1, 7, 91, 1),
(1, 7, 5, 0),
(1, 7, 82, 1),
(1, 7, 16, 0),
(1, 7, 70, 1),
(1, 7, 11, 0),
(1, 7, 98, 1),
(1, 7, 9, 0),
(1, 7, 76, 1),
(1, 7, 27, 0),

(1, 8, 36, 1),
(1, 8, 1, 0),
(1, 8, 60, 1),
(1, 8, 15, 0),
(1, 8, 82, 1),
(1, 8, 57, 0),
(1, 8, 50, 1),
(1, 8, 68, 0),
(1, 8, 92, 1),
(1, 8, 72, 0),
(1, 8, 4, 1),
(1, 8, 48, 0),
(1, 8, 63, 1),
(1, 8, 39, 0),
(1, 8, 20, 1),

(2, 9, 67, 1),
(2, 9, 3, 0),
(2, 9, 51, 1),
(2, 9, 29, 0),
(2, 9, 16, 1),
(2, 9, 72, 0),
(2, 9, 88, 1),
(2, 9, 14, 0),
(2, 9, 47, 1),
(2, 9, 32, 0),
(2, 9, 26, 1),
(2, 9, 39, 0),
(2, 9, 6, 1),
(2, 9, 21, 0),
(2, 9, 49, 1),

(2, 10, 12, 0),
(2, 10, 85, 1),
(2, 10, 43, 0),
(2, 10, 35, 1),
(2, 10, 70, 0),
(2, 10, 68, 1),
(2, 10, 79, 0),
(2, 10, 55, 1),
(2, 10, 31, 0),
(2, 10, 23, 1),
(2, 10, 74, 0),
(2, 10, 10, 1),
(2, 10, 22, 0),
(2, 10, 50, 1),
(2, 10, 9, 0),

(2, 11, 54, 1),
(2, 11, 71, 0),
(2, 11, 38, 1),
(2, 11, 34, 0),
(2, 11, 73, 1),
(2, 11, 20, 0),
(2, 11, 78, 1),
(2, 11, 48, 0),
(2, 11, 46, 1),
(2, 11, 58, 0),
(2, 11, 59, 1),
(2, 11, 11, 0),
(2, 11, 24, 1),
(2, 11, 40, 0),
(2, 11, 33, 1),

(2, 12, 52, 0),
(2, 12, 63, 1),
(2, 12, 25, 0),
(2, 12, 42, 1),
(2, 12, 18, 0),
(2, 12, 37, 1),
(2, 12, 60, 0),
(2, 12, 61, 1),
(2, 12, 27, 0),
(2, 12, 56, 1),
(2, 12, 17, 0),
(2, 12, 30, 1),
(2, 12, 75, 0),
(2, 12, 65, 1),
(2, 12, 44, 0),

(2, 13, 66, 1),
(2, 13, 8, 0),
(2, 13, 69, 1),
(2, 13, 13, 0),
(2, 13, 82, 1),
(2, 13, 4, 0),
(2, 13, 64, 1),
(2, 13, 18, 0),
(2, 13, 62, 1),
(2, 13, 19, 0),
(2, 13, 41, 1),
(2, 13, 36, 0),
(2, 13, 5, 1),
(2, 13, 77, 0),
(2, 13, 57, 1),
(2, 13, 53, 0),

(3, 14, 45, 1),
(3, 14, 17, 0),
(3, 14, 91, 1),
(3, 14, 62, 0),
(3, 14, 78, 1),
(3, 14, 85, 0),
(3, 14, 33, 1),
(3, 14, 29, 0),
(3, 14, 59, 1),
(3, 14, 68, 0),
(3, 14, 40, 1),
(3, 14, 56, 0),
(3, 14, 66, 1),
(3, 14, 75, 0),
(3, 14, 53, 1),

(3, 15, 24, 1),
(3, 15, 10, 0),
(3, 15, 57, 1),
(3, 15, 76, 0),
(3, 15, 47, 1),
(3, 15, 61, 0),
(3, 15, 21, 1),
(3, 15, 52, 0),
(3, 15, 80, 1),
(3, 15, 7, 0),
(3, 15, 67, 1),
(3, 15, 19, 0),
(3, 15, 72, 1),
(3, 15, 9, 0),
(3, 15, 49, 1),

(3, 16, 8, 1),
(3, 16, 73, 0),
(3, 16, 39, 1),
(3, 16, 34, 0),
(3, 16, 46, 1),
(3, 16, 48, 0),
(3, 16, 25, 1),
(3, 16, 77, 0),
(3, 16, 64, 1),
(3, 16, 18, 0),
(3, 16, 30, 1),
(3, 16, 82, 0),
(3, 16, 69, 1),
(3, 16, 84, 0),
(3, 16, 50, 1),

(4, 17, 11, 1),
(4, 17, 88, 0),
(4, 17, 21, 1),
(4, 17, 59, 0),
(4, 17, 67, 1),
(4, 17, 45, 0),
(4, 17, 52, 1),
(4, 17, 73, 0),
(4, 17, 30, 1),
(4, 17, 10, 0),
(4, 17, 60, 1),
(4, 17, 12, 0),
(4, 17, 18, 1),
(4, 17, 39, 0),
(4, 17, 68, 1),

(4, 18, 77, 0),
(4, 18, 49, 1),
(4, 18, 35, 0),
(4, 18, 66, 1),
(4, 18, 24, 0),
(4, 18, 62, 1),
(4, 18, 19, 0),
(4, 18, 27, 1),
(4, 18, 25, 0),
(4, 18, 71, 1),
(4, 18, 40, 0),
(4, 18, 41, 1),
(4, 18, 50, 0),
(4, 18, 37, 1),
(4, 18, 63, 0),

(4, 19, 28, 1),
(4, 19, 51, 0),
(4, 19, 8, 1),
(4, 19, 69, 0),
(4, 19, 9, 1),
(4, 19, 48, 0),
(4, 19, 57, 1),
(4, 19, 16, 0),
(4, 19, 17, 1),
(4, 19, 43, 0),
(4, 19, 26, 1),
(4, 19, 54, 0),
(4, 19, 64, 1),
(4, 19, 53, 0),
(4, 19, 36, 1),

(4, 20, 74, 0),
(4, 20, 3, 1),
(4, 20, 58, 0),
(4, 20, 65, 1),
(4, 20, 15, 0),
(4, 20, 20, 1),
(4, 20, 34, 0),
(4, 20, 31, 1),
(4, 20, 23, 0),
(4, 20, 5, 1),
(4, 20, 70, 0),
(4, 20, 14, 1),
(4, 20, 4, 0),
(4, 20, 22, 1),

(5, 21, 42, 1),
(5, 21, 31, 0),
(5, 21, 79, 1),
(5, 21, 48, 0),
(5, 21, 50, 1),
(5, 21, 18, 0),
(5, 21, 45, 1),
(5, 21, 26, 0),
(5, 21, 23, 1),
(5, 21, 29, 0),

(5, 22, 40, 1),
(5, 22, 55, 0),
(5, 22, 58, 1),
(5, 22, 10, 0),
(5, 22, 63, 1),
(5, 22, 32, 0),
(5, 22, 75, 1),
(5, 22, 39, 0),

(6, 23, 74, 0),
(6, 23, 67, 1),
(6, 23, 37, 0),
(6, 23, 71, 1),
(6, 23, 45, 0),
(6, 23, 5, 1),
(6, 23, 26, 0),
(6, 23, 59, 1),
(6, 23, 41, 0),
(6, 23, 76, 1),
(6, 23, 80, 0),
(6, 23, 6, 1),
(6, 23, 9, 0),

(6, 24, 68, 1),
(6, 24, 30, 0),
(6, 24, 18, 1),
(6, 24, 51, 0),
(6, 24, 44, 1),
(6, 24, 72, 0),
(6, 24, 13, 1),
(6, 24, 38, 0),

(6, 25, 49, 1),
(6, 25, 7, 0),
(6, 25, 32, 1),
(6, 25, 64, 0),
(6, 25, 29, 1),
(6, 25, 19, 0),
(6, 25, 62, 1),
(6, 25, 33, 0),

(7, 26, 13, 0),
(7, 26, 19, 1),
(7, 26, 24, 0),
(7, 26, 31, 1),
(7, 26, 75, 0),
(7, 26, 65, 1),
(7, 26, 78, 0),
(7, 26, 10, 1),
(7, 26, 55, 0),
(7, 26, 46, 1),
(7, 26, 59, 0),
(7, 26, 12, 1),
(7, 26, 43, 0),
(7, 26, 36, 1),

(7, 27, 73, 0),
(7, 27, 34, 1),
(7, 27, 30, 0),
(7, 27, 16, 1),
(7, 27, 66, 0),
(7, 27, 21, 1),
(7, 27, 50, 0),
(7, 27, 63, 1),
(7, 27, 3, 0),
(7, 27, 48, 1),
(7, 27, 14, 0),
(7, 27, 56, 1),

(7, 28, 49, 0),
(7, 28, 67, 1),
(7, 28, 68, 0),
(7, 28, 37, 1),
(7, 28, 71, 0),
(7, 28, 18, 1),
(7, 28, 82, 0),
(7, 28, 77, 1),
(7, 28, 62, 0),
(7, 28, 47, 1),
(7, 28, 26, 0),
(7, 28, 35, 1),

(7, 29, 81, 0),
(7, 29, 27, 1),
(7, 29, 6, 0),
(7, 29, 11, 1),
(7, 29, 72, 0),
(7, 29, 60, 1),
(7, 29, 25, 0),
(7, 29, 61, 1);