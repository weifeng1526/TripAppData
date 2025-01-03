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
  mem_icon blob DEFAULT NULL,
  PRIMARY KEY (mem_no),
  unique key UK_mem_email(mem_email)
) ENGINE InnoDB; 

drop table if exists `bag_list`;
CREATE TABLE  bag_list(
  bl_memno int NOT NULL,
  bl_itemno int NOT NULL,
  bl_schno int NOT NULL,
  bl_ready boolean NOT NULL DEFAULT false,
  PRIMARY KEY (bl_memno , bl_schno,bl_itemno)
) ENGINE InnoDB; 

drop table if exists `item`;
CREATE TABLE  item(
  item_no int AUTO_INCREMENT NOT NULL,
  item_name varchar(10) NOT NULL,
  item_type tinyint NOT NULL DEFAULT 0,
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
  poi_pic VARCHAR(100) DEFAULT NULL,
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
  dst_start datetime DEFAULT NULL,
  dst_end datetime DEFAULT NULL,
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
  dst_no int NOT NULL,
  dr_text varchar(500) DEFAULT NULL,
  PRIMARY KEY (dr_no)
) ENGINE InnoDB;

-- ------------------------------------------------
 drop table if exists `cost_recd`;
 CREATE TABLE  cost_recd(
  cr_cost_no int AUTO_INCREMENT NOT NULL,
  sch_no int NOT NULL,
  dst_no int NOT NULL,
  cr_cost_type tinyint not NULL,
  cr_cost_item varchar(20) DEFAULT NULL,
  cr_cost_price DECIMAL(10,2) not NULL,
  cr_paid_by int not NULL,
  cr_cost_time datetime not NULL,
  cr_create_time datetime not NULL,
  cr_cost_loc varchar(20) DEFAULT NULL,
  cr_cost_pex decimal(10,2) not null,
  cr_cur varchar(10) not null,
  PRIMARY KEY (cr_cost_no),
  unique key UK_costrecd_createtime(cr_create_time)
) ENGINE InnoDB; 
 
 drop table if exists `balance`;
 CREATE TABLE  balance(
  cost_no int AUTO_INCREMENT NOT NULL,
  sch_no int NOT NULL,
  mem_no int DEFAULT NULL,
  cr_cost_splip DECIMAL(10,2) not NULL,
  PRIMARY KEY (cost_no)
) ENGINE InnoDB; 

drop table if exists `payment`;
CREATE TABLE  payment(
  mem_no int NOT NULL,
  sch_no int NOT NULL,
  cr_total_sum decimal(10,2) not NULL,
  PRIMARY KEY (mem_no,sch_no)
) ENGINE InnoDB; 

drop table if exists `deposit`;
CREATE TABLE  deposit(
  sch_no int NOT NULL,
  dp_no int NOT NULL,
  dp_record decimal(10,2) not NULL,
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

ALTER TABLE dest
ADD CONSTRAINT dest_poino_FK FOREIGN KEY (poi_no) REFERENCES poi(poi_no);

ALTER TABLE crew
ADD CONSTRAINT crew_schno_FK FOREIGN KEY (sch_no) REFERENCES sched(sch_no);

ALTER TABLE crew
ADD CONSTRAINT crew_memno_FK FOREIGN KEY (mem_no) REFERENCES member(mem_no);

ALTER TABLE dst_photo
ADD CONSTRAINT dstphoto_dstno_FK FOREIGN KEY (dst_no) REFERENCES dest(dst_no);

ALTER TABLE dst_record
ADD CONSTRAINT dstrecord_dstno_FK FOREIGN KEY (dst_no) REFERENCES dest(dst_no);

----------------------------------------------------------------------
ALTER TABLE cost_recd
ADD CONSTRAINT costrecd_schno_FK FOREIGN KEY (sch_no) REFERENCES sched (sch_no);

ALTER TABLE cost_recd
ADD CONSTRAINT costrecd_dstno_FK FOREIGN KEY (dst_no) REFERENCES dest (dst_no);

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
INSERT INTO `member` (mem_email, mem_name, mem_pw, mem_sta, mem_icon) VALUES
('alice@example.com', 'Alice', 'pass1234', 1, NULL),
('bob@example.com', 'Bob', 'pass5678', 1, NULL),
('cathy@example.com', 'Cathy', 'pass9101', 1, NULL),
('dave@example.com', 'Dave', 'pass1121', 1, NULL),
('eve@example.com', 'Eve', 'pass3141', 1, NULL); 

INSERT INTO `sched` 
(mem_no, sch_state, sch_name, sch_con, sch_start, sch_end, sch_cur, sch_pic, sch_last_edit) 
VALUES
(1, 1, '台北三天兩夜', '台北景點遊覽', '2024-01-01', '2024-01-03', 'TWD', NULL, NOW()),
(2, 1, '台中兩天一夜', '台中美食與景點', '2024-02-01', '2024-02-02', 'TWD', NULL, NOW());

INSERT INTO poi (poi_no, poi_add, poi_name, poi_lng, poi_lat, poi_lab, poi_pic, poi_rat, poi_hno, poi_phon, poi_bs, poi_nbs, poi_bd, poi_like)
VALUES
-- 台中行程相關景點
(1, '台中市中區中山路20號', '宮原眼科', 120.684307, 24.137286, '甜點, 打卡', 'miyahara.jpg', 4.6, NULL, NULL, '10:00:00', '22:00:00', '老街上的文創甜點店', 1),
(2, '台中市西區民權路', '草悟道', 120.660818, 24.151218, '散步, 拍照', 'calligraphy_greenway.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '藝術氛圍濃厚的步道', 1),
(3, '台中市西區公益路68號', '台中勤美誠品', 120.661504, 24.151583, '購物, 美食', 'eslite_cm.jpg', 4.6, NULL, '04-2328-1234', '11:00:00', '22:00:00', '時尚文創購物地點', 1),
(4, '台中市南屯區春安路56號', '彩虹眷村', 120.621635, 24.130156, '藝術, 拍照', 'rainbow_village.jpg', 4.5, NULL, NULL, '08:00:00', '18:00:00', '繽紛創意的藝術村', 1),
(5, '台中市西屯區福星路', '逢甲夜市', 120.642647, 24.176286, '美食, 夜市', 'fengjia.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台中知名夜市', 1),
(6, '台中市清水區美堤街', '高美濕地', 120.556153, 24.313156, '自然, 景觀', 'gaomei.jpg', 4.8, NULL, NULL, '05:00:00', '18:30:00', '濕地生態觀賞', 1),
(7, '台中市新社區中興嶺', '薰衣草森林', 120.847665, 24.210322, '放鬆, 拍照', 'lavender_forest.jpg', 4.6, NULL, '04-2581-1000', '09:00:00', '18:00:00', '浪漫自然景點', 1),
(8, '台中市北區育才北路', '一中街商圈', 120.683889, 24.153256, '購物, 美食', 'yizhong.jpg', 4.5, NULL, NULL, '10:00:00', '22:00:00', '學生愛逛的商圈', 1),
(9, '台中市北區館前路1號', '科學博物館', 120.662843, 24.157462, '科普, 教育', 'science_museum.jpg', 4.8, NULL, '04-2322-6940', '09:00:00', '17:00:00', '自然與科學探索', 1),

-- 台北行程相關景點
(10, '台北市信義區市府路45號', '台北101', 121.565417, 25.033968, '地標, 景點', 'taipei101.jpg', 4.7, NULL, '02-8101-7777', '11:00:00', '21:30:00', '台北地標建築', 1),
(11, '台北市信義區松山路', '象山', 121.573028, 25.027174, '健行, 拍照', 'xiangshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '台北市區的健行步道', 1),
(12, '台北市中正區中山南路21號', '中正紀念堂', 121.519301, 25.036798, '歷史, 文化', 'cksm.jpg', 4.6, NULL, '02-2343-1100', '09:00:00', '18:00:00', '台灣文化象徵', 1),
(13, '台北市士林區文林路', '士林夜市', 121.524077, 25.087570, '美食, 夜市', 'shilin.jpg', 4.7, NULL, NULL, '17:00:00', '00:00:00', '台北知名夜市', 1),
(14, '台北市北投區竹子湖路1-20號', '陽明山國家公園', 121.555618, 25.166113, '自然, 登山', 'yangmingshan.jpg', 4.8, NULL, NULL, '00:00:00', '23:59:59', '壯麗的自然景觀', 1),
(15, '台北市北投區中山路2號', '地熱谷', 121.501766, 25.137783, '溫泉, 景點', 'thermal_valley.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投地熱名勝', 1),
(16, '台北市士林區至善路二段221號', '故宮博物院', 121.548492, 25.102405, '文物, 歷史', 'national_palace.jpg', 4.9, NULL, '02-2881-2021', '09:00:00', '17:00:00', '世界知名文物館藏', 1),
(17, '台北市士林區中山北路5段60號', '士林官邸', 121.522634, 25.095654, '歷史, 園藝', 'shilin_residence.jpg', 4.6, NULL, NULL, '09:00:00', '17:00:00', '歷史與花園景觀', 1),
(18, '台北市北投區中山路2號', '北投溫泉博物館', 121.501766, 25.137783, '溫泉, 博物館', 'beitou_museum.jpg', 4.5, NULL, NULL, '09:00:00', '17:00:00', '北投溫泉文化展示', 1),
(19, '台北市大同區延平北路大稻埕', '大稻埕碼頭', 121.512701, 25.057183, '景觀, 商圈', 'dadaocheng.jpg', 4.4, NULL, NULL, '00:00:00', '23:59:59', '古早風情與商圈', 1),
(20, '台北市萬華區峨嵋街36號', '西門町', 121.506498, 25.042141, '購物, 娛樂', 'ximen.jpg', 4.5, NULL, NULL, '00:00:00', '23:59:59', '台北熱鬧商圈', 1);

-- 台中兩天一夜 (sch_no = 2)
INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
(2, 1, '宮原眼科', '台中市中區中山路20號', '甜點與打卡景點', '2024-12-01', '2024-12-01 10:00:00', '2024-12-01 11:00:00', '00:30:00'),
(2, 2, '草悟道', '台中市西區民權路', '散步與拍照', '2024-12-01', '2024-12-01 11:30:00', '2024-12-01 12:30:00', '00:30:00'),
(2, 3, '台中勤美誠品', '台中市西區公益路68號', '購物與午餐', '2024-12-01', '2024-12-01 13:00:00', '2024-12-01 14:30:00', '00:30:00'),
(2, 4, '彩虹眷村', '台中市南屯區春安路56號', '文創藝術', '2024-12-01', '2024-12-01 15:00:00', '2024-12-01 16:30:00', '00:30:00'),
(2, 5, '逢甲夜市', '台中市西屯區福星路', '美食與夜市文化', '2024-12-01', '2024-12-01 18:00:00', '2024-12-01 21:00:00', '01:00:00'),
(2, 6, '高美濕地', '台中市清水區美堤街', '自然景觀', '2024-12-02', '2024-12-02 08:00:00', '2024-12-02 10:00:00', '01:00:00'),
(2, 7, '薰衣草森林', '台中市新社區中興嶺', '放鬆與拍照', '2024-12-02', '2024-12-02 11:30:00', '2024-12-02 13:00:00', '01:00:00'),
(2, 8, '一中街商圈', '台中市北區育才北路', '購物與午餐', '2024-12-02', '2024-12-02 13:30:00', '2024-12-02 15:30:00', '00:30:00'),
(2, 9, '科學博物館', '台中市北區館前路1號', '科普與探索', '2024-12-02', '2024-12-02 16:00:00', '2024-12-02 18:30:00', '00:30:00');

-- 台北三天兩夜 (sch_no = 1)
INSERT INTO dest (sch_no, poi_no, dst_name, dst_addr, dst_dep, dst_date, dst_start, dst_end, dst_inr)
VALUES
(1, 10, '台北101', '台北市信義區市府路45號', '地標景點', '2024-12-01', '2024-12-01 09:30:00', '2024-12-01 11:30:00', '00:30:00'),
(1, 11, '象山', '台北市信義區松山路', '健行與拍照', '2024-12-01', '2024-12-01 12:00:00', '2024-12-01 13:30:00', '00:30:00'),
(1, 12, '中正紀念堂', '台北市中正區中山南路21號', '歷史與文化', '2024-12-01', '2024-12-01 14:30:00', '2024-12-01 16:30:00', '00:30:00'),
(1, 13, '士林夜市', '台北市士林區文林路', '美食與夜市文化', '2024-12-01', '2024-12-01 18:00:00', '2024-12-01 21:00:00', '01:00:00'),
(1, 14, '陽明山國家公園', '台北市北投區竹子湖路1-20號', '自然景觀', '2024-12-02', '2024-12-02 08:00:00', '2024-12-02 10:30:00', '01:00:00'),
(1, 15, '地熱谷', '台北市北投區中山路2號', '溫泉與拍照', '2024-12-02', '2024-12-02 11:30:00', '2024-12-02 13:00:00', '00:30:00'),
(1, 16, '故宮博物院', '台北市士林區至善路二段221號', '文物欣賞', '2024-12-02', '2024-12-02 14:00:00', '2024-12-02 16:30:00', '00:30:00'),
(1, 17, '士林官邸', '台北市士林區中山北路5段60號', '歷史與園藝', '2024-12-02', '2024-12-02 17:00:00', '2024-12-02 18:30:00', '00:30:00'),
(1, 18, '北投溫泉博物館', '台北市北投區中山路2號', '溫泉文化', '2024-12-03', '2024-12-03 09:30:00', '2024-12-03 11:30:00', '00:30:00'),
(1, 19, '大稻埕碼頭', '台北市大同區延平北路大稻埕', '景觀與午餐', '2024-12-03', '2024-12-03 12:00:00', '2024-12-03 14:00:00', '00:30:00'),
(1, 20, '西門町', '台北市萬華區峨嵋街36號', '購物與娛樂', '2024-12-03', '2024-12-03 15:00:00', '2024-12-03 17:30:00', '00:30:00');
