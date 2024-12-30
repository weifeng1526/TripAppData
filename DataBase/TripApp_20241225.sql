drop table if exists `member`;
CREATE TABLE  `member`(
  mem_no int AUTO_INCREMENT NOT NULL,
  mem_email varchar(20) NOT NULL ,
  mem_name varchar(10) DEFAULT NULL,
  mem_pw varchar(10) DEFAULT NULL,
  mem_sta tinyint DEFAULT NULL,
  mem_icon blob DEFAULT NULL,
  PRIMARY KEY (mem_no),
  unique key UK_mem_email(mem_email)
) ENGINE InnoDB; 

drop table if exists `bag_list`;
CREATE TABLE  bag_list(
  bl_memno int NOT NULL,
  bl_itemno int NOT NULL,
  bl_schno int NOT NULL,
  bl_ready boolean DEFAULT false,
  PRIMARY KEY (bl_memno , bl_schno,bl_itemno)
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
  nttp_no varchar(10) NOT NULL,
  ntf_sdr int NOT NULL,
  ntf_rcv int NOT NULL,
  ntf_msg varchar(200) DEFAULT NULL,
  ntf_time datetime DEFAULT NULL,
  ntf_read boolean DEFAULT NULL,
  PRIMARY KEY (ntf_no)
) ENGINE InnoDB; 

drop table if exists `notify_type`;
CREATE TABLE  notify_type(
  nttp_no varchar(10) NOT NULL,
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
  PRIMARY KEY (sch_no),
  unique key UK_sched_cur(sch_cur)
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