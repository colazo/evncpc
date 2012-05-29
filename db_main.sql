/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : db_main

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2012-05-23 14:07:23
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `barang`
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plu` varchar(20) DEFAULT NULL,
  `descp` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga` float(12,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PLU` (`plu`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO barang VALUES ('1', '88822', 'MES SYRUP MARJAN PARCEL', 'PCS', '22000');
INSERT INTO barang VALUES ('2', '20070', 'VTI.SARUNG TANGAN KOMBINASI RRT', 'PC S', '14700');
INSERT INTO barang VALUES ('3', '20068', 'VTI.SARUNG TANGAN BINTIK KUNING', 'PC S', '5000');
INSERT INTO barang VALUES ('4', '20069', 'VTI.SARUNG TANGAN KARET', 'PC S', '7700');
INSERT INTO barang VALUES ('5', '20066', 'VTI.DRAWER 15 PCS', 'PC S', '37800');
INSERT INTO barang VALUES ('6', '20065', 'VTI.PLASTIK MINI BOX MK03 (18 COM)', 'PC S', '17500');
INSERT INTO barang VALUES ('7', '20057', 'VTI.PAKET KOSANGGAS AUTOMATIC 1,6 M', 'PC S', '64400');
INSERT INTO barang VALUES ('8', '91508', ' ZAK.KELUARGA SUCI NABI SAW', 'PCS', '25000');
INSERT INTO barang VALUES ('9', '79907', ' ZAK. THE FROZEN LILY', 'PCS', '25000');
INSERT INTO barang VALUES ('10', '95017', ' THE FORBIDDEN WINE (SIMPONI KEABADIAN CINTA)', 'PCS', '32500');
INSERT INTO barang VALUES ('11', '95001', ' ZAK.LONDON WILD ROSE', 'PCS', '32500');
INSERT INTO barang VALUES ('12', '98989', ' LEM SETAN', 'PCS', '6000');
INSERT INTO barang VALUES ('13', '01389', 'ORSO M.02 KAUS KAKI', 'PCS', '9400');
INSERT INTO barang VALUES ('14', '99070', ' BUKU.QTEACH.ENSIKLOPEDIA TOKOH PENDIDIKAN', 'PCS', '43000');
INSERT INTO barang VALUES ('15', '99081', ' BUKU.QTEACH PENGEMBANGAN KURIKULUM', 'PCS', '39000');
INSERT INTO barang VALUES ('16', '01699', 'TRUK SHOVEL EXPRESS BON-BON', 'PCS', '8050');
INSERT INTO barang VALUES ('17', '01702', 'PILOT G2 PEN', 'BH', '13545');
INSERT INTO barang VALUES ('18', '99067', ' BUKU.QTEACH.MANAJEMEN PEMBELAJARAN', 'PCS', '39500');
INSERT INTO barang VALUES ('19', '15350', 'BK.MIZAN. MENJINAKKAN MARAH DAN BENCI', 'PCS', '19500');
INSERT INTO barang VALUES ('20', '15349', 'BK.MIZAN. TERAPI MENYUCIKAN HATI 2', 'PCS', '31500');
INSERT INTO barang VALUES ('21', '15346', 'TOHA.BK. MUNAJAT SUARA HATI', 'PCS', '25000');
INSERT INTO barang VALUES ('22', '01986', 'ORSO L.02 KAUS KAKI', 'PCS', '10400');
INSERT INTO barang VALUES ('23', '15340', 'BK. ESQ  POWER PUTIH', 'PCS', '40000');
INSERT INTO barang VALUES ('24', '20055', 'VTI.WINDOW ENTRY ALARM', 'PC S', '7700');
INSERT INTO barang VALUES ('25', '99048', ' BUKU.QTEACH.METODOLOGI PEMBELAJARAN', 'PCS', '32500');
INSERT INTO barang VALUES ('26', '99043', ' BUKU.QTEACH.AL-QURAN MEMBANGUN', 'PCS', '58500');
INSERT INTO barang VALUES ('27', '99037', ' BUKU.QTEACH.TEOLOGI ISLAM RASIONAL', 'PCS', '47500');
INSERT INTO barang VALUES ('28', '15336', 'TOHA MEMBELAH LAUTAN JILBAB', 'PCS', '22000');
INSERT INTO barang VALUES ('29', '15333', 'TOHA MUSAFIR CINTA', 'PCS', '38000');
INSERT INTO barang VALUES ('30', '03002', 'ORSO L.01 KAUS KAKI', 'PCS', '9000');
INSERT INTO barang VALUES ('31', '15332', 'TOHA SYAHADAT CINTA', 'PCS', '54000');
INSERT INTO barang VALUES ('32', '15328', 'TOHA DZIKIR-DZIKIR CINTA', 'PCS', '38000');
INSERT INTO barang VALUES ('33', '15325', ' BK. ESQ 165 BIRU', 'PCS', '45000');
INSERT INTO barang VALUES ('34', '88735', 'CASABLANCA BODY MIST SPORTY 100 ML', 'PCS', '7985');
INSERT INTO barang VALUES ('35', '15324', 'BK. MIZAN.  BUKU PINTAR REMAJA GAUL', 'PCS', '47500');
INSERT INTO barang VALUES ('36', '15320', ' BK.GADING .MUSANG YANG LICIK', 'PCS', '22500');
INSERT INTO barang VALUES ('37', '98141', 'MQB BUKU CARA GAMPANG BAYAR HUTANG', 'PCS', '6900');
INSERT INTO barang VALUES ('38', '04188', 'DAIMARU OPP TAN 2\" X 100Y ISOLATIF', 'ROLL', '9700');
INSERT INTO barang VALUES ('39', '80907', 'DISC.9WALI WISATA HATI MENGUBAH LANGIT', 'PCS', '18900');
INSERT INTO barang VALUES ('40', '88140', ' JILBAB', 'PCS', '36500');
INSERT INTO barang VALUES ('41', '15315', 'BK. MIZAN  KEMBALIKAN ANAKKU', 'PCS', '29500');
INSERT INTO barang VALUES ('42', '04962', 'BINDER MICKEY MAP', 'PCS', '15500');
INSERT INTO barang VALUES ('43', '15296', 'BK. MIZAN  TENTARA LANGINT DI KARBALA', 'PCS', '29500');
INSERT INTO barang VALUES ('44', '15270', 'BK. MIZAN.  RAHASIA HALAL & HARAM', 'PCS', '44500');
INSERT INTO barang VALUES ('45', '15259', 'BK. MIZAN.  MUKJIZAT SABAR', 'PCS', '34000');
INSERT INTO barang VALUES ('46', '15253', 'BK.MIZAN ENSIKLOPEDI ILMU DALAM ALQURAN', 'PCS', '69000');
INSERT INTO barang VALUES ('47', '15245', 'BK. MIZAN.  SURAT CINTA AL-GHAZALI', 'PCS', '26500');
INSERT INTO barang VALUES ('48', '05807', 'STANDARD POLOS 200 LBR EKSPEDISI', 'BH', '11850');
INSERT INTO barang VALUES ('49', '15241', 'BK. MIZAN.  AZAB YANG DISEGERAKAN DIDUNIA', 'PCS', '39500');
INSERT INTO barang VALUES ('50', '15235', 'BK. MIZAN.  MENAKLUKKAN 7 PENYAKIT JIWA', 'PCS', '26000');
INSERT INTO barang VALUES ('51', '80249', 'DISC.9WALI ORIENTASI SUFISTIK CAK NUR', 'PCS', '22800');
INSERT INTO barang VALUES ('52', '20050', 'VTI.TOOL BOX 12,5 IN 2002', 'PC S', '37800');
INSERT INTO barang VALUES ('53', '20053', 'VTI.TOOL BOX B 410', 'PC S', '63000');
INSERT INTO barang VALUES ('54', '06772', 'ORSO HK-2 KAUS KAKI', 'PCS', '9800');
INSERT INTO barang VALUES ('55', '20043', 'VTI.LEM KACA KECIL', 'PC S', '6300');
INSERT INTO barang VALUES ('56', '20044', 'VTI.SOLDERAN LISTRIK 40 W', 'PC S', '9500');
INSERT INTO barang VALUES ('57', '15225', ' BK. KUKU SI PUTRI RAJA', 'PCS', '12800');
INSERT INTO barang VALUES ('58', '20041', 'VTI.LEM KACA BESAR', 'PC S', '11200');
INSERT INTO barang VALUES ('59', '07140', 'BUNGA MATAHARI SAMPUL MICA KWARTO SAMPUL BUKU', 'BKS', '10800');
INSERT INTO barang VALUES ('60', '15217', 'BK.GADING PUTRI SARI & 7 KURCACI', 'PCS', '8500');
INSERT INTO barang VALUES ('61', '15216', 'BK. GADING TUJUH BUNGA AJAIB', 'PCS', '8500');
INSERT INTO barang VALUES ('62', '15215', 'BK.GADING KISAH NLAYAN DAN IKAN BERSISIK EMAS', 'PCS', '8500');
INSERT INTO barang VALUES ('63', '15202', 'MIZAN. MUKJIZAT CINTA RASUL', 'PCS', '69000');
INSERT INTO barang VALUES ('64', '15201', 'BK. ESQ  KURMA ( KISAH UNTUK REMAJA )', 'PCS', '30000');
INSERT INTO barang VALUES ('65', '15189', 'MIZAN. BELAJAR MDH HRF ALQURAN(NEW)', 'PCS', '17500');
INSERT INTO barang VALUES ('66', '15176', 'BK.MIZAN. BB.BENTUK MENGENAL SAYURAN', 'PCS', '19500');
INSERT INTO barang VALUES ('67', '08043', 'GENLITE STEKER HP ALAT-ALAT ELEKTRONIK', 'PCS', '8400');
INSERT INTO barang VALUES ('68', '15175', 'BK.MIZAN. HOW TO LOVE ALLAH', 'PCS', '52000');
INSERT INTO barang VALUES ('69', '15168', 'BK.MIZAN. TYA.MANUSIA BISA MEMBUAT RUMAH', 'PCS', '11000');
INSERT INTO barang VALUES ('70', '15158', 'MIZAN. 99 TOKOH MUSLIM DUNIA FOR KIDS', 'PCS', '57500');
INSERT INTO barang VALUES ('71', '08542', 'SNOWMAN MARKER HITAM TINTA', 'BH', '7800');
INSERT INTO barang VALUES ('72', '15121', 'MIZAN. PENUNTUN:JANGAN TAKUT MERRIED', 'PCS', '39900');
INSERT INTO barang VALUES ('73', '15115', 'BK.MIZAN. MANUSIA BISA BUAT GARAM', 'PCS', '11000');
INSERT INTO barang VALUES ('74', '15110', 'BK.MIZAN. MANUSIA BISA BUAT TEMPE', 'PCS', '11000');
INSERT INTO barang VALUES ('75', '15108', 'BK.MIZAN. ALLAH MENCIPTAKAN SABUN', 'PCS', '9000');
INSERT INTO barang VALUES ('76', '15098', 'BK.MIZAN. BALITA:KAKI SIAPA INI?', 'PCS', '14500');
INSERT INTO barang VALUES ('77', '15096', 'BK.MIZAN. BALITA:TELINGA SIAPA INI :', 'PCS', '11000');
INSERT INTO barang VALUES ('78', '15094', 'BK.MIZAN. BALITA: MATA SIAPA INI :', 'PCS', '11000');
INSERT INTO barang VALUES ('79', '15087', 'BK.MIZAN. BALITA:JEJAK KAKI SIAPA INI?', 'PCS', '11000');
INSERT INTO barang VALUES ('80', '15042', 'BK.MIZAN.  ALAT TRANSPORTASI', 'PCS', '9500');
INSERT INTO barang VALUES ('81', '15019', 'BK.MIZAN. BALITA: MENGENAL WARNA', 'PCS', '9500');
INSERT INTO barang VALUES ('82', '14990', 'BK.MIZAN. BALITA:MENGENAL HRF HIJAIYYAH', 'PCS', '12500');
INSERT INTO barang VALUES ('83', '09922', 'SILVER HC 13/14 KAUS KAKI', 'BH', '6750');
INSERT INTO barang VALUES ('84', '14986', 'BK.MIZAN. DOBAL.CAPUNG BERSAYAP SATU', 'PCS', '9000');
INSERT INTO barang VALUES ('85', '10124', 'TOPAIN STEKER ARDE ALAT-ALAT ELEKTRONIK', 'BH', '5900');
INSERT INTO barang VALUES ('86', '14984', 'MIZAN. PENUNTUN TAFSIR CINTA', 'PCS', '20000');
INSERT INTO barang VALUES ('87', '14969', 'BK.MIZAN. PENUNTUN DOA,YUK!', 'PCS', '12000');
INSERT INTO barang VALUES ('88', '14968', 'MIZAN. NODE DILATASI MEMORI', 'PCS', '28000');
INSERT INTO barang VALUES ('89', '80791', 'DISC.9WALI PEMIKIRAN HASAN AL-BANNA DALAM..', 'PCS', '29400');
INSERT INTO barang VALUES ('90', '11817', 'SAPU TANGAN LAKI-LAKI WARNA SAPU TANGAN', 'BH', '7500');
INSERT INTO barang VALUES ('91', '20038', 'VTI.LEM AUTO SEALER BESAR', 'PC S', '11200');
INSERT INTO barang VALUES ('92', '20039', 'VTI.LEM AUTO SEALER KECIL', 'PC S', '6300');
INSERT INTO barang VALUES ('93', '11863', 'YAMURA BIRU TINTA', 'PCS', '6500');
INSERT INTO barang VALUES ('94', '11891', 'BOXY PEN', 'PCS', '5210');
INSERT INTO barang VALUES ('95', '20036', 'VTI.LEM AICA AIBON 100 CC', 'PC S', '12000');
INSERT INTO barang VALUES ('96', '14943', 'BK. MIZAN DARI PENJARA TALIBAN MNJ IMAN', 'PCS', '25000');
INSERT INTO barang VALUES ('97', '14940', 'BK. MIZAN RAHASIA SUKSES EKONOMI CINA', 'PCS', '54900');
INSERT INTO barang VALUES ('98', '14932', 'BK. MIZAN.  NERAKA GUANTANAMO', 'PCS', '46000');
INSERT INTO barang VALUES ('99', '14916', 'BK. MIZAN.  LENTERA HATI  ( HC )', 'PCS', '59500');
INSERT INTO barang VALUES ('100', '94881', ' KISAH-KISAH ALLAH', 'PCS', '36000');
INSERT INTO barang VALUES ('101', '22870', 'ZAKIA  DEAUGHTER OF GOD', 'PCS', '65000');
INSERT INTO barang VALUES ('102', '13071', 'WORLD POLO MEN SOCK KAUS KAKI', 'PCS', '12000');
INSERT INTO barang VALUES ('103', '79912', ' ZAK.LOVES COMES HOMES', 'PCS', '35000');
INSERT INTO barang VALUES ('104', '14907', 'BK. GADING 5000 NAMA BAYI PILIHAN UNTK  BAYI ANDA', 'PCS', '21000');
INSERT INTO barang VALUES ('105', '13210', 'DAIICHI LINEN TAPE 1Ã‚Â«\" ISOLATIF', 'ROLL', '5250');
INSERT INTO barang VALUES ('106', '14905', 'BK.GADING ALPHABET WITH ABJAD DAN GAMBAR', 'PCS', '7000');
INSERT INTO barang VALUES ('107', '13515', 'SAPU TANGAN LAKI-LAKI GM SAPU TANGAN', 'PCS', '8670');
INSERT INTO barang VALUES ('108', '14902', 'MIZAN. AKU INGIN BUNUH HARRY POTTER', 'PCS', '34500');
INSERT INTO barang VALUES ('109', '14889', 'RINY SERIAL RUMAH TAMAN KERING', 'PCS', '24500');
INSERT INTO barang VALUES ('110', '14888', 'RINY SERIAL RUMAH RUANG KELUARGA', 'PCS', '19500');
INSERT INTO barang VALUES ('111', '14164', 'TEROPONG CANDY BON-BON', 'PCS', '5750');
INSERT INTO barang VALUES ('112', '14885', 'MIZAN. 24 JAM JAGOAN NULIS CERPEN', 'PCS', '28500');
INSERT INTO barang VALUES ('113', '14870', 'BK.MIZAN. BERTOBATLAH!SEBELUM TERLAMBAT', 'PCS', '24000');
INSERT INTO barang VALUES ('114', '14867', 'BK.MIZAN. 12 PERINGATAN BAGI PELAKU DOSA', 'PCS', '19500');
INSERT INTO barang VALUES ('115', '14863', 'BK. MIZAN.  TAFSIR CINTA TEBARKAN KEBAJIKAN', 'PCS', '69500');
INSERT INTO barang VALUES ('116', '14859', 'BK.MIZAN. DOA AJARAN RASUL', 'PCS', '31500');
INSERT INTO barang VALUES ('117', '14856', 'BK.MIZAN. KUPAS TUNTAS MENSTRUASI', 'PCS', '10000');
INSERT INTO barang VALUES ('118', '15544', 'BOB POLOS TIPIS C/P/H KAUS KAKI', 'PCS', '6885');
INSERT INTO barang VALUES ('119', '15588', 'TENG TENG PATEN SNACK(BUATAN PABRIK)', 'BH', '13470');
INSERT INTO barang VALUES ('120', '14855', 'BK.MIZAN. 31 ETIKA GAUL ISLAMI', 'PCS', '6800');
INSERT INTO barang VALUES ('121', '14854', 'BK.MIZAN. LELUCON 1001 MALAM', 'PCS', '24800');
INSERT INTO barang VALUES ('122', '14853', 'BK. MIZAN.  PARENTING GUIDE', 'PCS', '44500');
INSERT INTO barang VALUES ('123', '14852', 'BK.MIZAN. BK KERJA MULTIPLE INTELEGENCES', 'PCS', '52000');
INSERT INTO barang VALUES ('124', '14846', 'BK.MIZAN. EINSTEIN TAK PERNAH MENGHAFAL', 'PCS', '59000');
INSERT INTO barang VALUES ('125', '14843', 'BK.MIZAN. NERAKA MANAGEMEN', 'PCS', '39000');
INSERT INTO barang VALUES ('126', '14842', 'BK. MIZAN.  CARA BARU MENGASAH OTAK', 'PCS', '57000');
INSERT INTO barang VALUES ('127', '14839', 'BK.MIZAN MASIH CUMA BISA DI REPL-MIMPI', 'PCS', '26000');
INSERT INTO barang VALUES ('128', '20027', 'VTI.KUAS CAT 711 HITAM 3 IN', 'PC S', '6500');
INSERT INTO barang VALUES ('129', '20029', 'VTI.KUAS CAT 711 HITAM 4 IN', 'PC S', '8400');
INSERT INTO barang VALUES ('130', '88478', ' BACALAH DENGAN NAMA TUHANMU', 'PCS', '32000');
INSERT INTO barang VALUES ('131', '80823', 'DISC.9WALI MENARI MENGHAPIRI TUHAN', 'PCS', '25875');
INSERT INTO barang VALUES ('132', '89277', ' PERANG DAN AGAMA', 'PCS', '9300');
INSERT INTO barang VALUES ('133', '91404', ' AKHLAK UTK SEMUA', 'PCS', '15000');
INSERT INTO barang VALUES ('134', '91146', ' SERI TAFSIR UTK ANAK MUDA ; SURAH YUSUF', 'PCS', '26000');
INSERT INTO barang VALUES ('135', '14814', 'BK.MIZAN. AKU BISA PAKAI KAOS KAKI', 'PCS', '9000');
INSERT INTO barang VALUES ('136', '14811', 'BK.MIZAN. AKU SAYANG NENEK', 'PCS', '9000');
INSERT INTO barang VALUES ('137', '91501', ' ZAK.TANGGA-TANGGA LANGIT', 'PCS', '36000');
INSERT INTO barang VALUES ('138', '90792', ' MENJADI ORANG TUA PENDIDIK', 'PCS', '24000');
INSERT INTO barang VALUES ('139', '90765', ' ZAK.SANTUNLAH ; ETIKA KESEHARIAN', 'PCS', '26000');
INSERT INTO barang VALUES ('140', '14804', 'BK.MIZAN. AKU SUKA GOSOK GIGI', 'PCS', '9000');
INSERT INTO barang VALUES ('141', '17693', 'SAPU TANGAN WANITA KEMBANG SAPU TANGAN', 'BH', '5200');
INSERT INTO barang VALUES ('142', '14793', 'MIZAN. THE MIRACLE OF DATES', 'PCS', '29000');
INSERT INTO barang VALUES ('143', '14785', 'BK.MIZAN KHADIJAH DRAMA CINTA S. NABI', 'PCS', '63000');
INSERT INTO barang VALUES ('144', '14779', 'BK. MIZAN.  APA YANG DIPERSEMBAHKAN ORANG TUA WAFA', 'PCS', '32000');
INSERT INTO barang VALUES ('145', '14777', 'MIZAN. MUKJIZAT GERAK & BACAAN SHOLAT', 'PCS', '26000');
INSERT INTO barang VALUES ('146', '18275', 'SAPU TANGAN WANITA GARIS SAPU TANGAN', 'PCS', '5200');
INSERT INTO barang VALUES ('147', '14776', 'BK. MIZAN.  NEW POTRET SEHARI-HARI KHOMEINI', 'PCS', '30000');
INSERT INTO barang VALUES ('148', '20024', 'VTI.KRAN TEMBOK STANG', 'PC S', '29000');
INSERT INTO barang VALUES ('149', '20022', 'VTI.KRAN TAMAN STANG', 'PC S', '28000');
INSERT INTO barang VALUES ('150', '20021', 'VTI.KRAN BEBEK STANG', 'PC S', '42000');
INSERT INTO barang VALUES ('151', '20018', 'VTI.KOSANGGAS + METER KM-900 BLISTER', 'PC S', '51800');
INSERT INTO barang VALUES ('152', '20019', 'VTI.KOSANGGAS OTOMATIS  KM-900 BLISTER', 'PC S', '42000');
INSERT INTO barang VALUES ('153', '14761', 'MIZAN. A THOUSAND SPLENDID SUNS', 'PCS', '49000');
INSERT INTO barang VALUES ('154', '91225', ' RATU ADIL', 'PCS', '34000');
INSERT INTO barang VALUES ('155', '95460', ' KELUARGA & ANAK BERMASALAH', 'PCS', '44000');
INSERT INTO barang VALUES ('156', '79905', ' ZAK.DALAM BUAIAN NABI', 'PCS', '35000');
INSERT INTO barang VALUES ('157', '50231', ' ZAK.KISAH-KISAH MANUSIA SUCI', 'PCS', '35000');
INSERT INTO barang VALUES ('158', '19459', 'PARUTAN KEJU STELL PARUTAN', 'BH', '5850');
INSERT INTO barang VALUES ('159', '91588', ' ZAK.KISAH-KISAH KSATRIA SURGA', 'PCS', '29900');
INSERT INTO barang VALUES ('160', '19673', 'DAIMARU OPP CLEAR 2\" X 100Y ISOLATIF', 'PCS', '9700');
INSERT INTO barang VALUES ('161', '91205', ' ZAK.PENDIDIKAN SEKS UNTUK ANAK DALAM ISLAM', 'PCS', '42500');
INSERT INTO barang VALUES ('162', '91096', ' WARISAN ISLAM TENTANG HAK AZASI', 'PCS', '16000');
INSERT INTO barang VALUES ('163', '98969', ' BUKU.QTEACH.POLITIK HUKUM ISLAM', 'PCS', '32000');
INSERT INTO barang VALUES ('164', '98965', ' BUKU.QTEACH.HUKUM PERWAKAFAN DI IND', 'PCS', '37000');
INSERT INTO barang VALUES ('165', '98998', ' BUKU.QTEACH.MANAJEMEN LEMBAGA PENDIDIKAN', 'PCS', '47000');
INSERT INTO barang VALUES ('166', '80612', 'DISC.9WALI HADIST PENUNTUN AKHLAK&ETIKA-TIGA', 'PCS', '24375');
INSERT INTO barang VALUES ('167', '81003', 'DISC.9WALI MELAMAR DEMOKRASI DINAMIKA...', 'PCS', '24375');
INSERT INTO barang VALUES ('168', '20272', 'DODO 8 OZ BEAR BOTOL SUSU', 'PCS', '14850');
INSERT INTO barang VALUES ('169', '89082', ' KEADILAN DAN HIDAYAH', 'PCS', '19000');
INSERT INTO barang VALUES ('170', '18571', 'ZAKIA  AGAMA POLITIK', 'PCS', '29000');
INSERT INTO barang VALUES ('171', '18559', 'ZAKIA  KAFILAH BUDAYA', 'PCS', '27000');
INSERT INTO barang VALUES ('172', '20017', 'VTI.KAPE CAT STENLIS GAGANG KARET 2,5 IN', 'PC S', '11550');
INSERT INTO barang VALUES ('173', '20984', 'PLAY BOY MEN SOCK KAUS KAKI', 'PCS', '11000');
INSERT INTO barang VALUES ('174', '58100', 'TIARA.PISAU CARPET (ALAT TUKANG)', ' PCS', '7000');
INSERT INTO barang VALUES ('175', '04876', 'MARKPLUS. WINNING THE MOM MARKET', 'PCS', '45000');
INSERT INTO barang VALUES ('176', '04887', 'MARKPLUS. MARKETING IN VENUS(BOOK)', 'PCS', '45000');
INSERT INTO barang VALUES ('177', '25147', 'TOHA.SENI MENGHADAPI ANAK BANDEL', ' PCS', '29000');
INSERT INTO barang VALUES ('178', '14733', 'TOHA MISTERY OF LOVE IN ISLAM', 'PCS', '27300');
INSERT INTO barang VALUES ('179', '20015', 'VTI.GLUE GUN 15 W', 'PC S', '12600');
INSERT INTO barang VALUES ('180', '20016', 'VTI.GLUE GUN 40 W', 'PC S', '17500');
INSERT INTO barang VALUES ('181', '20013', 'VTI.GEMBOK PANJANG KUNINGAN 50 MM', 'PC S', '26250');
INSERT INTO barang VALUES ('182', '20011', 'VTI.GEMBOK KUNINGAN 60 MM BLISTER', 'PC S', '23100');
INSERT INTO barang VALUES ('183', '20012', 'VTI.GEMBOK PANJANG 40 MM KUNING', 'PC S', '21000');
INSERT INTO barang VALUES ('184', '14728', 'TOHA WANITA SYURGA', 'PCS', '19000');
INSERT INTO barang VALUES ('185', '14714', 'BK. ESQ  BUKU SAKU ESQ FOR KIDS', 'PCS', '20000');
INSERT INTO barang VALUES ('186', '14713', 'BK. ESQ  FINANCIAL QUOTIENT', 'PCS', '37500');
INSERT INTO barang VALUES ('187', '14710', 'BK. ESQ  EMAIL DARI TANAH SUCI', 'PCS', '40000');
INSERT INTO barang VALUES ('188', '14709', 'BK. ESQ  99 TIPS SUKSES MENUJU BAHAGIA', 'PCS', '27000');
INSERT INTO barang VALUES ('189', '14706', 'BK. ESQ  FOR TEENS', 'PCS', '30000');
INSERT INTO barang VALUES ('190', '14691', 'BK. MIZAN.  REVLS BERPIKIR EDWARD DE BONO', 'PCS', '63500');
INSERT INTO barang VALUES ('191', '20010', 'VTI.GEMBOK KUNINGAN 50 MM BLISTER', 'PC S', '18900');
INSERT INTO barang VALUES ('192', '20008', 'VTI.GEMBOK KUNINGAN 30 MM BLISTER', 'PC S', '10500');
INSERT INTO barang VALUES ('193', '20009', 'VTI.GEMBOK KUNINGAN 40 MM BLISTER', 'PC S', '14000');
INSERT INTO barang VALUES ('194', '14687', 'TOHA JILBAB ITU CAHAYAMU', 'PCS', '22000');
INSERT INTO barang VALUES ('195', '20007', 'VTI.GEMBOK KUNINGAN 25 MM BLISTER', 'PC S', '7700');
INSERT INTO barang VALUES ('196', '14683', 'BK.MIZAN CHOCOLAT', 'PCS', '57500');
INSERT INTO barang VALUES ('197', '14681', 'MIZAN. 40 DAYS IN EUROPE', 'PCS', '68000');
INSERT INTO barang VALUES ('198', '14680', 'MIZAN. THE COLD BLOOD', 'PCS', '55000');
INSERT INTO barang VALUES ('199', '23387', 'SILVER OX FA 8 KAUS KAKI', 'BH', '6750');
INSERT INTO barang VALUES ('200', '14675', 'MIZAN. FAMILLIONAIRE !!', 'PCS', '28000');

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO ci_sessions VALUES ('29aff6ab8ecea0aae7a3a2208bdf54f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.168 Safari/535.19', '1337752442', '');
INSERT INTO ci_sessions VALUES ('6004c677add25b7f59e4abff3fe9e851', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.168 Safari/535.19', '1337756674', 0x613A343A7B733A393A22757365725F64617461223B733A303A22223B733A373A22757365725F6964223B733A313A2231223B733A383A22757365726E616D65223B733A343A22726F6F74223B733A363A22737461747573223B733A313A2231223B7D);
INSERT INTO ci_sessions VALUES ('60fd22f812d2e403cc21ee76e2bb6bbe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.168 Safari/535.19', '1337752510', '');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abc` varchar(150) NOT NULL,
  `vietnamese` varchar(150) NOT NULL,
  `CountryCode` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO countries VALUES ('1', 'Afghanistan', 'Afghanistan', 'Afghanistan', 'AFG');
INSERT INTO countries VALUES ('2', 'Åland', 'Åland', 'Åland', 'ALA');
INSERT INTO countries VALUES ('3', 'Albania', 'Albania', 'Albania', 'ALB');
INSERT INTO countries VALUES ('4', 'Algeria', 'Algeria', 'Algeria', 'DZA');
INSERT INTO countries VALUES ('5', 'American Samoa', 'American Samoa', 'Samoa thuộc Mỹ', 'ASM');
INSERT INTO countries VALUES ('6', 'Andorra', 'Andorra', 'Andorra', 'AND');
INSERT INTO countries VALUES ('7', 'Angola', 'Angola', 'Angola', 'AGO');
INSERT INTO countries VALUES ('8', 'Anguilla', 'Anguilla', 'Anguilla', 'AIA');
INSERT INTO countries VALUES ('9', 'Antarctica', 'Antarctica', 'Nam Cực', 'ATA');
INSERT INTO countries VALUES ('10', 'Antigua and Barbuda', 'Antigua and Barbuda', 'Antigua và Barbuda', 'ATG');
INSERT INTO countries VALUES ('368', 'Argentina', 'Argentina', 'Argentina', 'ARG');
INSERT INTO countries VALUES ('369', 'Armenia', 'Armenia', 'Armenia', 'ARM');
INSERT INTO countries VALUES ('370', 'Aruba', 'Aruba', 'Aruba', 'ABW');
INSERT INTO countries VALUES ('371', 'Australia', 'Australia', 'Úc', 'AUS');
INSERT INTO countries VALUES ('372', 'Austria', 'Austria', 'Áo', 'AUT');
INSERT INTO countries VALUES ('373', 'Azerbaijan', 'Azerbaijan', 'Azerbaijan', 'AZE');
INSERT INTO countries VALUES ('374', 'Bahamas', 'Bahamas', 'Bahamas', 'BHS');
INSERT INTO countries VALUES ('375', 'Bahrain', 'Bahrain', 'Bahrain', 'BHR');
INSERT INTO countries VALUES ('376', 'Bangladesh', 'Bangladesh', 'Bangladesh', 'BGD');
INSERT INTO countries VALUES ('377', 'Barbados', 'Barbados', 'Barbados', 'BRB');
INSERT INTO countries VALUES ('378', 'Belarus', 'Belarus', 'Belarus', 'BLR');
INSERT INTO countries VALUES ('379', 'Belgium', 'Belgium', 'Bỉ', 'BEL');
INSERT INTO countries VALUES ('380', 'Belize', 'Belize', 'Belize', 'BLZ');
INSERT INTO countries VALUES ('381', 'Benin', 'Benin', 'Benin', 'BEN');
INSERT INTO countries VALUES ('382', 'Bermuda', 'Bermuda', 'Bermuda', 'BMU');
INSERT INTO countries VALUES ('383', 'Bhutan', 'Bhutan', 'Bhutan', 'BTN');
INSERT INTO countries VALUES ('384', 'Bolivia', 'Bolivia', 'Bolivia', 'BOL');
INSERT INTO countries VALUES ('385', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'Bosnia và Herzegovina', 'BIH');
INSERT INTO countries VALUES ('386', 'Botswana', 'Botswana', 'Botswana', 'BWA');
INSERT INTO countries VALUES ('387', 'Bouvet Island', 'Bouvet Island', 'Đảo Bouvet', 'BVT');
INSERT INTO countries VALUES ('388', 'Brazil', 'Brazil', 'Brazil', 'BRA');
INSERT INTO countries VALUES ('389', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'Anh Ấn Độ Dương Territory', 'IOT');
INSERT INTO countries VALUES ('390', 'Brunei Darussalam', 'Brunei Darussalam', 'Bru-nây Đa-ru-sa-lam', 'BRN');
INSERT INTO countries VALUES ('391', 'Bulgaria', 'Bulgaria', 'Bulgaria', 'BGR');
INSERT INTO countries VALUES ('392', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'BFA');
INSERT INTO countries VALUES ('393', 'Burundi', 'Burundi', 'Burundi', 'BDI');
INSERT INTO countries VALUES ('394', 'Cambodia', 'Cambodia', 'Cam-pu-chia', 'KHM');
INSERT INTO countries VALUES ('395', 'Cameroon', 'Cameroon', 'Cameroon', 'CMR');
INSERT INTO countries VALUES ('396', 'Canada', 'Canada', 'Canada', 'CAN');
INSERT INTO countries VALUES ('397', 'Cape Verde', 'Cape Verde', 'Cape Verde', 'CPV');
INSERT INTO countries VALUES ('398', 'Cayman Islands', 'Cayman Islands', 'Quần đảo Cayman', 'CYM');
INSERT INTO countries VALUES ('399', 'Central African Republic', 'Central African Republic', 'Cộng hòa trung phi', 'CAF');
INSERT INTO countries VALUES ('400', 'Chad', 'Chad', 'Cá hồng', 'TCD');
INSERT INTO countries VALUES ('401', 'Chile', 'Chile', 'Chile', 'CHL');
INSERT INTO countries VALUES ('402', 'China', 'China', 'Trung Quốc', 'CHN');
INSERT INTO countries VALUES ('403', 'Christmas Island', 'Christmas Island', 'Đảo Christmas', 'CXR');
INSERT INTO countries VALUES ('404', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'Quần đảo Cocos (Keeling) Quần đảo', 'CCK');
INSERT INTO countries VALUES ('405', 'Colombia', 'Colombia', 'Colombia', 'COL');
INSERT INTO countries VALUES ('406', 'Comoros', 'Comoros', 'Comoros', 'COM');
INSERT INTO countries VALUES ('407', 'Congo (Brazzaville)', 'Congo (Brazzaville)', 'Congo (Brazzaville)', 'COG');
INSERT INTO countries VALUES ('408', 'Congo (Kinshasa)', 'Congo (Kinshasa)', 'Congo (Kinshasa)', 'COD');
INSERT INTO countries VALUES ('409', 'Cook Islands', 'Cook Islands', 'Quần đảo Cook', 'COK');
INSERT INTO countries VALUES ('410', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'CRI');
INSERT INTO countries VALUES ('411', 'Côte d\'Ivoire', 'Côte d\'Ivoire', 'Côte d\'Ivoire', 'CIV');
INSERT INTO countries VALUES ('412', 'Croatia', 'Croatia', 'Crô-a-ti-a', 'HRV');
INSERT INTO countries VALUES ('413', 'Cuba', 'Cuba', 'Cuba', 'CUB');
INSERT INTO countries VALUES ('414', 'Cyprus', 'Cyprus', 'Cyprus', 'CYP');
INSERT INTO countries VALUES ('415', 'Czech Republic', 'Czech Republic', 'Cộng hòa Séc', 'CZE');
INSERT INTO countries VALUES ('416', 'Denmark', 'Denmark', 'Đan Mạch', 'DNK');
INSERT INTO countries VALUES ('417', 'Djibouti', 'Djibouti', 'Djibouti', 'DJI');
INSERT INTO countries VALUES ('418', 'Dominica', 'Dominica', 'Dominica', 'DMA');
INSERT INTO countries VALUES ('419', 'Dominican Republic', 'Dominican Republic', 'Dominican Republic', 'DOM');
INSERT INTO countries VALUES ('420', 'Ecuador', 'Ecuador', 'Ecuador', 'ECU');
INSERT INTO countries VALUES ('421', 'Egypt', 'Egypt', 'Ai Cập', 'EGY');
INSERT INTO countries VALUES ('422', 'El Salvador', 'El Salvador', 'El Salvador', 'SLV');
INSERT INTO countries VALUES ('423', 'Equatorial Guinea', 'Equatorial Guinea', 'Equatorial Guinea', 'GNQ');
INSERT INTO countries VALUES ('424', 'Eritrea', 'Eritrea', 'Eritrea', 'ERI');
INSERT INTO countries VALUES ('425', 'Estonia', 'Estonia', 'E-xtô-ni-a', 'EST');
INSERT INTO countries VALUES ('426', 'Ethiopia', 'Ethiopia', 'Ethiopia', 'ETH');
INSERT INTO countries VALUES ('427', 'Falkland Islands', 'Falkland Islands', 'Quần đảo Falkland', 'FLK');
INSERT INTO countries VALUES ('428', 'Faroe Islands', 'Faroe Islands', 'Quần đảo Faroe', 'FRO');
INSERT INTO countries VALUES ('429', 'Fiji', 'Fiji', 'Fiji', 'FJI');
INSERT INTO countries VALUES ('430', 'Finland', 'Finland', 'Phần Lan', 'FIN');
INSERT INTO countries VALUES ('431', 'France', 'France', 'Pháp', 'FRA');
INSERT INTO countries VALUES ('432', 'French Guiana', 'French Guiana', 'Guiana thuộc Pháp', 'GUF');
INSERT INTO countries VALUES ('433', 'French Polynesia', 'French Polynesia', 'Polynesia thuộc Pháp', 'PYF');
INSERT INTO countries VALUES ('434', 'French Southern Lands', 'French Southern Lands', 'Phía Nam của Pháp Lands', 'ATF');
INSERT INTO countries VALUES ('435', 'Gabon', 'Gabon', 'Gabon', 'GAB');
INSERT INTO countries VALUES ('436', 'Gambia', 'Gambia', 'Gambia', 'GMB');
INSERT INTO countries VALUES ('437', 'Georgia', 'Georgia', 'Georgia', 'GEO');
INSERT INTO countries VALUES ('438', 'Germany', 'Germany', 'Đức', 'DEU');
INSERT INTO countries VALUES ('439', 'Ghana', 'Ghana', 'Ghana', 'GHA');
INSERT INTO countries VALUES ('440', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'GIB');
INSERT INTO countries VALUES ('441', 'Greece', 'Greece', 'Hy Lạp', 'GRC');
INSERT INTO countries VALUES ('442', 'Greenland', 'Greenland', 'Greenland', 'GRL');
INSERT INTO countries VALUES ('443', 'Grenada', 'Grenada', 'Grenada', 'GRD');
INSERT INTO countries VALUES ('444', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe', 'GLP');
INSERT INTO countries VALUES ('445', 'Guam', 'Guam', 'Guam', 'GUM');
INSERT INTO countries VALUES ('446', 'Guatemala', 'Guatemala', 'Guatemala', 'GTM');
INSERT INTO countries VALUES ('447', 'Guernsey', 'Guernsey', 'Guernsey', 'GGY');
INSERT INTO countries VALUES ('448', 'Guinea', 'Guinea', 'Guinea', 'GIN');
INSERT INTO countries VALUES ('449', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bissau', 'GNB');
INSERT INTO countries VALUES ('450', 'Guyana', 'Guyana', 'Guyana', 'GUY');
INSERT INTO countries VALUES ('451', 'Haiti', 'Haiti', 'Haiti', 'HTI');
INSERT INTO countries VALUES ('452', 'Heard and McDonald Islands', 'Heard and McDonald Islands', 'Heard và quần đảo McDonald', 'HMD');
INSERT INTO countries VALUES ('453', 'Honduras', 'Honduras', 'Honduras', 'HND');
INSERT INTO countries VALUES ('454', 'Hong Kong', 'Hong Kong', 'Hong Kong', 'HKG');
INSERT INTO countries VALUES ('455', 'Hungary', 'Hungary', 'Hungary', 'HUN');
INSERT INTO countries VALUES ('456', 'Iceland', 'Iceland', 'Iceland', 'ISL');
INSERT INTO countries VALUES ('457', 'India', 'India', 'Ấn Độ', 'IND');
INSERT INTO countries VALUES ('458', 'Indonesia', 'Indonesia', 'Indonesia', 'IDN');
INSERT INTO countries VALUES ('459', 'Iran', 'Iran', 'Iran', 'IRN');
INSERT INTO countries VALUES ('460', 'Iraq', 'Iraq', 'Iraq', 'IRQ');
INSERT INTO countries VALUES ('461', 'Ireland', 'Ireland', 'Ireland', 'IRL');
INSERT INTO countries VALUES ('462', 'Isle of Man', 'Isle of Man', 'Isle of Man', 'IMN');
INSERT INTO countries VALUES ('463', 'Israel', 'Israel', 'Israel', 'ISR');
INSERT INTO countries VALUES ('464', 'Italy', 'Italy', 'Ý', 'ITA');
INSERT INTO countries VALUES ('465', 'Jamaica', 'Jamaica', 'Jamaica', 'JAM');
INSERT INTO countries VALUES ('466', 'Japan', 'Japan', 'Nhật Bản', 'JPN');
INSERT INTO countries VALUES ('467', 'Jersey', 'Jersey', 'Jersey', 'JEY');
INSERT INTO countries VALUES ('468', 'Jordan', 'Jordan', 'Jordan', 'JOR');
INSERT INTO countries VALUES ('469', 'Kazakhstan', 'Kazakhstan', 'Kazakhstan', 'KAZ');
INSERT INTO countries VALUES ('470', 'Kenya', 'Kenya', 'Kenya', 'KEN');
INSERT INTO countries VALUES ('471', 'Kiribati', 'Kiribati', 'Kiribati', 'KIR');
INSERT INTO countries VALUES ('472', 'Korea, North', 'Korea, North', 'Hàn Quốc, Bắc', 'PRK');
INSERT INTO countries VALUES ('473', 'Korea, South', 'Korea, South', 'Hàn Quốc, Nam', 'KOR');
INSERT INTO countries VALUES ('474', 'Kuwait', 'Kuwait', 'Kuwait', 'KWT');
INSERT INTO countries VALUES ('475', 'Kyrgyzstan', 'Kyrgyzstan', 'Kyrgyzstan', 'KGZ');
INSERT INTO countries VALUES ('476', 'Laos', 'Laos', 'Lào', 'LAO');
INSERT INTO countries VALUES ('477', 'Latvia', 'Latvia', 'Latvia', 'LVA');
INSERT INTO countries VALUES ('478', 'Lebanon', 'Lebanon', 'Lebanon', 'LBN');
INSERT INTO countries VALUES ('479', 'Lesotho', 'Lesotho', 'Lesotho', 'LSO');
INSERT INTO countries VALUES ('480', 'Liberia', 'Liberia', 'Liberia', 'LBR');
INSERT INTO countries VALUES ('481', 'Libya', 'Libya', 'Libya', 'LBY');
INSERT INTO countries VALUES ('482', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'LIE');
INSERT INTO countries VALUES ('483', 'Lithuania', 'Lithuania', 'Lithuania', 'LTU');
INSERT INTO countries VALUES ('484', 'Luxembourg', 'Luxembourg', 'Lúc-xăm-bua', 'LUX');
INSERT INTO countries VALUES ('485', 'Macau', 'Macau', 'Macau', 'MAC');
INSERT INTO countries VALUES ('486', 'Macedonia', 'Macedonia', 'Macedonia', 'MKD');
INSERT INTO countries VALUES ('487', 'Madagascar', 'Madagascar', 'Madagascar', 'MDG');
INSERT INTO countries VALUES ('488', 'Malawi', 'Malawi', 'Malawi', 'MWI');
INSERT INTO countries VALUES ('489', 'Malaysia', 'Malaysia', 'Malaysia', 'MYS');
INSERT INTO countries VALUES ('490', 'Maldives', 'Maldives', 'Maldives', 'MDV');
INSERT INTO countries VALUES ('491', 'Mali', 'Mali', 'Mali', 'MLI');
INSERT INTO countries VALUES ('492', 'Malta', 'Malta', 'Malta', 'MLT');
INSERT INTO countries VALUES ('493', 'Marshall Islands', 'Marshall Islands', 'Quần đảo Marshall', 'MHL');
INSERT INTO countries VALUES ('494', 'Martinique', 'Martinique', 'Martinique', 'MTQ');
INSERT INTO countries VALUES ('495', 'Mauritania', 'Mauritania', 'Mauritania', 'MRT');
INSERT INTO countries VALUES ('496', 'Mauritius', 'Mauritius', 'Mauritius', 'MUS');
INSERT INTO countries VALUES ('497', 'Mayotte', 'Mayotte', 'Mayotte', 'MYT');
INSERT INTO countries VALUES ('498', 'Mexico', 'Mexico', 'Mexico', 'MEX');
INSERT INTO countries VALUES ('499', 'Micronesia', 'Micronesia', 'Micronesia', 'FSM');
INSERT INTO countries VALUES ('500', 'Moldova', 'Moldova', 'Moldova', 'MDA');
INSERT INTO countries VALUES ('501', 'Monaco', 'Monaco', 'Monaco', 'MCO');
INSERT INTO countries VALUES ('502', 'Mongolia', 'Mongolia', 'Mông Cổ', 'MNG');
INSERT INTO countries VALUES ('503', 'Montenegro', 'Montenegro', 'Montenegro', 'MNE');
INSERT INTO countries VALUES ('504', 'Montserrat', 'Montserrat', 'Montserrat', 'MSR');
INSERT INTO countries VALUES ('505', 'Morocco', 'Morocco', 'Ma-rốc', 'MAR');
INSERT INTO countries VALUES ('506', 'Mozambique', 'Mozambique', 'Mozambique', 'MOZ');
INSERT INTO countries VALUES ('507', 'Myanmar', 'Myanmar', 'Myanmar', 'MMR');
INSERT INTO countries VALUES ('508', 'Namibia', 'Namibia', 'Namibia', 'NAM');
INSERT INTO countries VALUES ('509', 'Nauru', 'Nauru', 'Nauru', 'NRU');
INSERT INTO countries VALUES ('510', 'Nepal', 'Nepal', 'Nepal', 'NPL');
INSERT INTO countries VALUES ('511', 'Netherlands', 'Netherlands', 'Hà Lan', 'NLD');
INSERT INTO countries VALUES ('512', 'Netherlands Antilles', 'Netherlands Antilles', 'Antilles Hà Lan', 'ANT');
INSERT INTO countries VALUES ('513', 'New Caledonia', 'New Caledonia', 'New Caledonia', 'NCL');
INSERT INTO countries VALUES ('514', 'New Zealand', 'New Zealand', 'New Zealand', 'NZL');
INSERT INTO countries VALUES ('515', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'NIC');
INSERT INTO countries VALUES ('516', 'Niger', 'Niger', 'Niger', 'NER');
INSERT INTO countries VALUES ('517', 'Nigeria', 'Nigeria', 'Nigeria', 'NGA');
INSERT INTO countries VALUES ('518', 'Niue', 'Niue', 'Niue', 'NIU');
INSERT INTO countries VALUES ('519', 'Norfolk Island', 'Norfolk Island', 'Đảo Norfolk', 'NFK');
INSERT INTO countries VALUES ('520', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Quần đảo Bắc Mariana', 'MNP');
INSERT INTO countries VALUES ('521', 'Norway', 'Norway', 'Na Uy', 'NOR');
INSERT INTO countries VALUES ('522', 'Oman', 'Oman', 'Oman', 'OMN');
INSERT INTO countries VALUES ('523', 'Pakistan', 'Pakistan', 'Pakistan', 'PAK');
INSERT INTO countries VALUES ('524', 'Palau', 'Palau', 'Palau', 'PLW');
INSERT INTO countries VALUES ('525', 'Palestine', 'Palestine', 'Palestine', 'PSE');
INSERT INTO countries VALUES ('526', 'Panama', 'Panama', 'Panama', 'PAN');
INSERT INTO countries VALUES ('527', 'Papua New Guinea', 'Papua New Guinea', 'Papua New Guinea', 'PNG');
INSERT INTO countries VALUES ('528', 'Paraguay', 'Paraguay', 'Paraguay', 'PRY');
INSERT INTO countries VALUES ('529', 'Peru', 'Peru', 'Peru', 'PER');
INSERT INTO countries VALUES ('530', 'Philippines', 'Philippines', 'Việt Nam', 'PHL');
INSERT INTO countries VALUES ('531', 'Pitcairn', 'Pitcairn', 'Pitcairn', 'PCN');
INSERT INTO countries VALUES ('532', 'Poland', 'Poland', 'Ba Lan', 'POL');
INSERT INTO countries VALUES ('533', 'Portugal', 'Portugal', 'Bồ Đào Nha', 'PRT');
INSERT INTO countries VALUES ('534', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'PRI');
INSERT INTO countries VALUES ('535', 'Qatar', 'Qatar', 'Qatar', 'QAT');
INSERT INTO countries VALUES ('536', 'Reunion', 'Reunion', 'Reunion', 'REU');
INSERT INTO countries VALUES ('537', 'Romania', 'Romania', 'Ru-ma-ni', 'ROU');
INSERT INTO countries VALUES ('538', 'Russian Federation', 'Russian Federation', 'Liên bang Nga', 'RUS');
INSERT INTO countries VALUES ('539', 'Rwanda', 'Rwanda', 'Rwanda', 'RWA');
INSERT INTO countries VALUES ('540', 'Saint Barthélemy', 'Saint Barthélemy', 'Saint Barthélemy', 'BLM');
INSERT INTO countries VALUES ('541', 'Saint Helena', 'Saint Helena', 'Saint Helena', 'SHN');
INSERT INTO countries VALUES ('542', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Saint Kitts và Nevis', 'KNA');
INSERT INTO countries VALUES ('543', 'Saint Lucia', 'Saint Lucia', 'Saint Lucia', 'LCA');
INSERT INTO countries VALUES ('544', 'Saint Martin (French part)', 'Saint Martin (French part)', 'Saint Martin (Pháp một phần)', 'MAF');
INSERT INTO countries VALUES ('545', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint Pierre và Miquelon', 'SPM');
INSERT INTO countries VALUES ('546', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Saint Vincent và Grenadines', 'VCT');
INSERT INTO countries VALUES ('547', 'Samoa', 'Samoa', 'Samoa', 'WSM');
INSERT INTO countries VALUES ('548', 'San Marino', 'San Marino', 'San Marino', 'SMR');
INSERT INTO countries VALUES ('549', 'Sao Tome and Principe', 'Sao Tome and Principe', 'Sao Tome và Principe', 'STP');
INSERT INTO countries VALUES ('550', 'Saudi Arabia', 'Saudi Arabia', 'Ả-rập Xê-út', 'SAU');
INSERT INTO countries VALUES ('551', 'Senegal', 'Senegal', 'Senegal', 'SEN');
INSERT INTO countries VALUES ('552', 'Serbia', 'Serbia', 'Serbia', 'SRB');
INSERT INTO countries VALUES ('553', 'Seychelles', 'Seychelles', 'Seychelles', 'SYC');
INSERT INTO countries VALUES ('554', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone', 'SLE');
INSERT INTO countries VALUES ('555', 'Singapore', 'Singapore', 'Singapore', 'SGP');
INSERT INTO countries VALUES ('556', 'Slovakia', 'Slovakia', 'Xlô-va-ki-a', 'SVK');
INSERT INTO countries VALUES ('557', 'Slovenia', 'Slovenia', 'Slovenia', 'SVN');
INSERT INTO countries VALUES ('558', 'Solomon Islands', 'Solomon Islands', 'Quần đảo Solomon', 'SLB');
INSERT INTO countries VALUES ('559', 'Somalia', 'Somalia', 'Somalia', 'SOM');
INSERT INTO countries VALUES ('560', 'South Africa', 'South Africa', 'Nam Phi', 'ZAF');
INSERT INTO countries VALUES ('561', 'South Georgia and South Sandwich Islands', 'South Georgia and South Sandwich Islands', 'Quần đảo Nam Georgia và Nam Sandwich', 'SGS');
INSERT INTO countries VALUES ('562', 'Spain', 'Spain', 'Tây Ban Nha', 'ESP');
INSERT INTO countries VALUES ('563', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'LKA');
INSERT INTO countries VALUES ('564', 'Sudan', 'Sudan', 'Sudan', 'SDN');
INSERT INTO countries VALUES ('565', 'Suriname', 'Suriname', 'Suriname', 'SUR');
INSERT INTO countries VALUES ('566', 'Svalbard and Jan Mayen Islands', 'Svalbard and Jan Mayen Islands', 'Svalbard và Jan Mayen', 'SJM');
INSERT INTO countries VALUES ('567', 'Swaziland', 'Swaziland', 'Swaziland', 'SWZ');
INSERT INTO countries VALUES ('568', 'Sweden', 'Sweden', 'Thụy Điển', 'SWE');
INSERT INTO countries VALUES ('569', 'Switzerland', 'Switzerland', 'Thụy Sĩ', 'CHE');
INSERT INTO countries VALUES ('570', 'Syria', 'Syria', 'Syria', 'SYR');
INSERT INTO countries VALUES ('571', 'Taiwan', 'Taiwan', 'Đài Loan', 'TWN');
INSERT INTO countries VALUES ('572', 'Tajikistan', 'Tajikistan', 'Tajikistan', 'TJK');
INSERT INTO countries VALUES ('573', 'Tanzania', 'Tanzania', 'Tanzania', 'TZA');
INSERT INTO countries VALUES ('574', 'Thailand', 'Thailand', 'Thái Lan', 'THA');
INSERT INTO countries VALUES ('575', 'Timor-Leste', 'Timor-Leste', 'Timor-Leste', 'TLS');
INSERT INTO countries VALUES ('576', 'Togo', 'Togo', 'Togo', 'TGO');
INSERT INTO countries VALUES ('577', 'Tokelau', 'Tokelau', 'Tokelau', 'TKL');
INSERT INTO countries VALUES ('578', 'Tonga', 'Tonga', 'Xe nhẹ có hai bánh ở ấn độ', 'TON');
INSERT INTO countries VALUES ('579', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Trinidad và Tobago', 'TTO');
INSERT INTO countries VALUES ('580', 'Tunisia', 'Tunisia', 'Tunisia', 'TUN');
INSERT INTO countries VALUES ('581', 'Turkey', 'Turkey', 'Thổ Nhĩ Kỳ', 'TUR');
INSERT INTO countries VALUES ('582', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan', 'TKM');
INSERT INTO countries VALUES ('583', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Turks và Caicos Islands', 'TCA');
INSERT INTO countries VALUES ('584', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'TUV');
INSERT INTO countries VALUES ('585', 'Uganda', 'Uganda', 'Uganda', 'UGA');
INSERT INTO countries VALUES ('586', 'Ukraine', 'Ukraine', 'Ukraine', 'UKR');
INSERT INTO countries VALUES ('587', 'United Arab Emirates', 'United Arab Emirates', 'Các Tiểu Vương Quốc Ả Rập Thống Nhất', 'ARE');
INSERT INTO countries VALUES ('588', 'United Kingdom', 'United Kingdom', 'Vương Quốc Anh', 'GBR');
INSERT INTO countries VALUES ('589', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'Hoa Kỳ quần đảo nhỏ xa trung tâm', 'UMI');
INSERT INTO countries VALUES ('590', 'United States of America', 'United States of America', 'Hoa Kỳ', 'USA');
INSERT INTO countries VALUES ('591', 'Uruguay', 'Uruguay', 'Uruguay', 'URY');
INSERT INTO countries VALUES ('592', 'Uzbekistan', 'Uzbekistan', 'Uzbekistan', 'UZB');
INSERT INTO countries VALUES ('593', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'VUT');
INSERT INTO countries VALUES ('594', 'Vatican City', 'Vatican City', 'Vatican City', 'VAT');
INSERT INTO countries VALUES ('595', 'Venezuela', 'Venezuela', 'Venezuela', 'VEN');
INSERT INTO countries VALUES ('596', 'Vietnam', 'Vietnam', 'Việt Nam', 'VNM');
INSERT INTO countries VALUES ('597', 'Virgin Islands, British', 'Virgin Islands, British', 'Quần đảo Virgin, Anh', 'VGB');
INSERT INTO countries VALUES ('598', 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', 'Quần đảo Virgin, Mỹ', 'VIR');
INSERT INTO countries VALUES ('599', 'Wallis and Futuna Islands', 'Wallis and Futuna Islands', 'Quần đảo Wallis và Futuna', 'WLF');
INSERT INTO countries VALUES ('600', 'Western Sahara', 'Western Sahara', 'Tây Sahara', 'ESH');
INSERT INTO countries VALUES ('601', 'Yemen', 'Yemen', 'Yemen', 'YEM');
INSERT INTO countries VALUES ('602', 'Zambia', 'Zambia', 'Zambia', 'ZMB');
INSERT INTO countries VALUES ('603', 'Zimbabwe', 'Zimbabwe', 'Zimbabwe', 'ZWE');

-- ----------------------------
-- Table structure for `crud_example`
-- ----------------------------
DROP TABLE IF EXISTS `crud_example`;
CREATE TABLE `crud_example` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(12) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_example
-- ----------------------------

-- ----------------------------
-- Table structure for `login_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `tongketru`
-- ----------------------------
DROP TABLE IF EXISTS `tongketru`;
CREATE TABLE `tongketru` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `trụ` text NOT NULL,
  `loại cột` text NOT NULL,
  `công dụng` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khoảng cột` int(11) NOT NULL,
  `loại xà` text NOT NULL,
  `loại móng` text NOT NULL,
  `SĐ-22` int(11) NOT NULL,
  `SC-22` int(11) NOT NULL,
  `néo cột` int(11) NOT NULL,
  `tiepdia` text NOT NULL,
  `dây dẫn` text NOT NULL,
  `Đường dây` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ngày lắp đặt` date NOT NULL,
  `Cấp điện áp` text NOT NULL,
  `Dòng định mức` float NOT NULL,
  `Dây đấu lèo` int(4) NOT NULL DEFAULT '0',
  `Dây dài` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`stt`)
) ENGINE=MyISAM AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongketru
-- ----------------------------
INSERT INTO tongketru VALUES ('4', '3', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('5', '4', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('6', '5', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('7', '6', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('8', '7', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('9', '8', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('10', '9', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('11', '', '', '', '0', '', '', '0', '0', '0', '', '', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('311', 'Dũng101111', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('12', '11', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('310', '101111', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('325', '13', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('15', '14', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('16', '15', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('17', '16', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('18', '17', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('19', '18', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('20', '19', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('22', '21', 'LT-10,5B', 'ĐG-THA', '35', 'ĐRT-10', 'MT-2', '3', '0', '0', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('23', '22', 'LT-10,5A', 'ĐT-THA', '45', 'NGT-10  CCTR', 'MT-2', '1', '6', '1', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('24', '23', 'LT-10,5A', 'ĐT-THA', '35', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('25', '24', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('26', '25', 'LT-10,5A', 'ĐT-THA', '40', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('27', '26', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('28', '27', 'LT-10,5A', 'ĐT-THA', '95', 'ĐVT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('29', '28', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('30', '29', 'LT-10,5A', 'ĐT-THA', '51', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('31', '30', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('32', '31', 'LT-10,5A', 'ĐT-THA', '40', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('33', '32', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('34', '33', 'LT-10,5A', 'ĐT-THA', '35', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('35', '34', 'LT-10,5B', 'TBA', '43', 'NIIT-25', 'MT-2', '6', '0', '1', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('36', '35', 'LT-10,5A', 'ĐT-THA', '35', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('37', '36', 'LT-10,5A', 'ĐT-THA', '35', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('38', '37', 'LT-10,5A', 'ĐT', '51', 'XA-2', 'TN-2', '6', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('39', '38', 'LT-10,5A', 'ĐT', '55', 'XA-2', 'TN-2', '6', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('40', '39', 'LT-10,5B', 'NG', '25', 'XNA-2  XNA-3', 'MT-2', '4', '6', '2', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('41', '40', 'LT-10,5A', 'ĐT', '108', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('42', '41', 'LT-10,5B', 'ĐT', '90', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('43', '42', 'LT-10,5B', 'ĐT', '44', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('44', '43', 'LT-10,5B', 'NG', '104', 'XNII-1.2  XCL-22', 'MTV-1', '0', '6', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('45', '44', 'LT-10,5A', 'ĐT', '85', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('46', '45', 'LT-10,5A', 'ĐT', '92', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('47', '46', 'LT-10,5A', 'ĐT', '60', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('48', '47', 'LT-10,5A', 'ĐT', '76', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('49', '48', 'LT-10,5B', 'NG', '90', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('50', '49', 'LT-10,5A', 'ĐT', '102', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('51', '50', 'LT-10,5B', 'NG', '97', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('52', '51', 'LT-10,5A', 'ĐT', '45', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('53', '52', 'LT-10,5B', 'NG', '76', 'XNA-3', 'MT-2', '3', '0', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('54', '53', 'LT-10,5B', 'NG', '78', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('55', '54', 'LT-10,5A', 'ĐT', '110', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('56', '55', 'LT-10,5A', 'ĐT', '102', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('57', '56', 'LT-10,5A', 'ĐT', '130', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('58', '56/1', '', '', '0', '', '', '3', '0', '0', '0', '', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('59', '57', 'LT-10,5A', 'ĐT', '96', 'XA-1', 'TN-2', '3', '0', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('60', '58', 'LT-10,5A', 'ĐT', '126', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('61', '59', 'LT-10,5A', 'ĐT', '108', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('62', '60', 'LT-10,5B', 'NG', '108', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('63', '61', 'LT-10,5A', 'ĐT', '105', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('64', '62', 'LT-10,5A', 'ĐT', '132', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('65', '63', 'LT-10,5B', 'ĐT', '107', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('66', '64', '2LT-12C', 'NG', '17', 'XNII-2   XG-2', 'MTV-2', '0', '6', '1', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('67', '65', '2LT-12C', 'NG', '239', 'XNII-2   XG-2', 'MTV-2', '0', '6', '1', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('68', '66', 'LT-10,5B', 'NG', '23', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('69', '67', 'LT-10,5A', 'ĐT', '89', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('70', '68', 'LT-10,5B', 'NG', '89', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('71', '69', 'LT-10,5A', 'ĐT', '109', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('72', '70', 'LT-10,5A', 'ĐT', '100', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('73', '71', 'LT-10,5A', 'ĐT', '119', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('74', '72', 'LT-10,5A', 'ĐT', '102', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('75', '73', 'LT-10,5A', 'ĐT', '93', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('76', '74', 'LT-10,5B', 'NG', '92', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('77', '75', 'LT-10,5A', 'ĐT', '114', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('78', '76', 'LT-10,5A', 'ĐT', '105', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('79', '77', 'LT-10,5A', 'ĐT', '114', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('80', '78', 'LT-10,5A', 'ĐT', '109', 'XA-1', 'TN-2', '3', '0', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('81', '79', 'LT-10,5A', 'ĐT', '107', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('82', '80', 'LT-10,5A', 'ĐT', '105', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('83', '81', 'LT-10,5A', 'ĐT', '124', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('84', '82', 'LT-10,5B', 'NG', '126', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('85', '83', 'LT-10,5A', 'ĐT', '96', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('86', '84', 'LT-10,5A', 'ĐT', '97', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('87', '85', 'LT-10,5B', 'NG', '80', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('88', '86', 'LT-10,5A', 'ĐT', '120', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('89', '87', 'LT-10,5A', 'ĐT', '110', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('90', '88', 'LT-10,5A', 'ĐT', '115', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('91', '89', 'LT-10,5A', 'ĐT', '100', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('92', '90', 'LT-10,5A', 'ĐT', '124', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('93', '91', 'LT-10,5B', 'NG', '162', 'XNA-2  XNA-3', 'MT-2', '2', '6', '2', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('94', '92', 'LT-10,5A', 'ĐT', '101', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('95', '93', 'LT-10,5A', 'ĐT', '92', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('96', '94', 'LT-10,5A', 'ĐT', '105', 'XA-1', 'TN-2', '3', '0', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('97', '95', 'LT-10,5A', 'ĐT', '98', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('98', '96', 'LT-10,5A', 'ĐT', '115', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('99', '97', 'LT-10,5B', 'NG', '103', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('100', '98', 'LT-10,5A', 'ĐT', '91', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('101', '99', '2LT-10,5B', 'TBA', '128', '2XA-1', '2MT-4', '6', '0', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('102', '100', 'LT-10,5B', 'ĐT', '76', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('103', '101', 'LT-10,5A', 'ĐT', '70', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('104', '102', 'LT-10,5A', 'ĐT', '52', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('105', '103', 'LT-10,5A', 'ĐT', '122', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('106', '104', 'LT-10,5B', 'NG', '65', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('107', '105', 'LT-10,5A', 'ĐT', '73', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('108', '106', 'LT-10,5A', 'ĐT', '75', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('109', '107', 'LT-10,5A', 'ĐT', '90', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('110', '108', 'LT-10,5B', 'NG', '90', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('111', '109', 'LT-10,5A', 'ĐT', '119', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('112', '110', 'LT-10,5B', 'NG', '106', 'XNA-3', 'MT-2', '1', '3', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('113', '111', 'LT-10,5A', 'ĐT', '70', 'XA-1', 'TN-2', '1', '6', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('114', '112', 'LT-10,5A', 'ĐT', '80', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('115', '113', 'LT-10,5A', 'ĐT', '113', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('116', '114', 'LT-10,5A', 'ĐT', '89', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('117', '115', 'LT-10,5A', 'ĐT', '101', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('118', '116', 'LT-10,5B', 'NG', '100', 'XNA-3', 'MT-2', '1', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('119', '117', 'LT-10,5A', 'ĐT', '107', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('120', '118', 'LT-10,5A', 'ĐT', '107', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('121', '119', 'LT-10,5B', 'NG', '135', 'XNA-2  XNA-3', 'MT-2', '2', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('123', '121', 'LT-10,5A', 'ĐT', '100', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('124', '122', 'LT-10,5B', 'NG', '98', 'XNA-2  XNA-3', 'MT-2', '2', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('125', '123', 'LT-10,5A', 'ĐT', '97', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('126', '124', 'LT-10,5A', 'ĐT', '98', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('127', '125', 'LT-10,5A', 'ĐT', '94', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('128', '126', 'LT-10,5A', 'ĐT', '94', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('129', '127', 'LT-10,5B', 'NG', '94', 'XNA-2  XNA-3', 'MT-2', '2', '6', '2', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('130', '128', 'LT-10,5A', 'ĐT', '97', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('131', '129', 'LT-10,5A', 'ĐT', '98', 'XA-1', 'TN-2', '3', '0', '0', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('132', '130', 'LT-10,5A', 'ĐT', '98', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('133', '131', 'LT-10,5A', 'ĐT', '87', 'XA-1', 'TN-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('134', '132', '2LT-10,5B', 'TBA', '78', 'XNII-2,5', '2MT-4', '0', '3', '2', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('135', '20/1', 'LT-10,5B', 'ĐT-THA', '33', 'NGT-10', 'MT-2', '2', '6', '1', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('136', '20/2', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('137', '20/3', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('138', '20/4', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('139', '20/5', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('140', '20/6', 'LT-10,5A', 'ĐT-THA', '40', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('141', '20/7', 'LT-10,5A', 'ĐT-THA', '40', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('142', '20/8', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('143', '20/9', 'LT-10,5B', 'NG-THA', '50', 'NGT-10', 'MT-2', '1', '6', '2', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('144', '20/10', 'LT-10,5B', 'NG-THA', '49', 'NGT-10', 'MT-2', '1', '6', '2', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('145', '20/11', 'LT-10,5A', 'ĐT-THA', '37', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('146', '20/12', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('147', '20/13', 'LT-10,5A', 'ĐT-THA', '49', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('148', '20/14', 'LT-10,5B', 'NG-THA', '43', 'NGT-10', 'MT-2', '2', '6', '1', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('149', '20/15', 'LT-10,5A', 'ĐG-THA', '49', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('150', '20/16', 'LT-10,5A', 'NG-THA', '63', 'NGT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('151', '20/17', 'LT-10,5A', 'NG-THA', '46', 'ĐGT-10', 'MT-2', '6', '0', '1', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('152', '20/18', 'LT-10,5A', 'ĐG-THA', '46', 'ĐTT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('153', '20/19', '2LT-10,5AB', 'NG-THA', '119', 'NIIT-10', 'MG-3', '3', '6', '2', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('154', '20/20', '2LT-10,5AB', 'NG-THA', '119', 'NIIT-10', 'MG-3', '3', '6', '2', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('155', '20/21', 'LT-10,5B', 'NG-THA', '150', 'NGT-10', 'MT-2', '1', '6', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('156', '20/22', 'LT-10,5A', 'ĐT-THA', '54', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('157', '20/23', 'LT-10,5B', 'ĐG-THA', '80', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('158', '20/24', 'LT-10,5A', 'ĐT-THA', '51', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('159', '20/25', 'LT-10,5A', 'ĐT-THA', '60', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('160', '20/26', 'LT-10,5A', 'ĐG-THA', '60', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('161', '20/27', 'LT-10,5A', 'ĐT-THA', '60', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('162', '20/28', 'LT-10,5A', 'ĐT-THA', '56', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('163', '20/29', 'LT-10,5B', 'ĐG-THA', '56', 'ĐGT-10', 'MT-2', '6', '0', '1', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('164', '20/30', 'LT-10,5A', 'ĐT-THA', '56', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('165', '20/31', 'LT-10,5A', 'ĐT-THA', '58', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('166', '20/32', 'LT-10,5A', 'ĐT-THA', '58', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('167', '20/33', 'LT-10,5A', 'ĐT-THA', '58', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('168', '20/34', 'LT-10,5A', 'ĐT-THA', '60', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('169', '20/35', 'LT-10,5B', 'ĐG-THA', '60', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('170', '20/36', 'LT-10,5A', 'ĐT-THA', '60', 'ĐVT-10', 'MT-2', '6', '0', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('171', '20/37', 'LT-10,5B', 'TBA', '53', 'ĐGT-10', 'MT-2', '0', '3', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('174', '21/3', 'LT-10,5A', 'ĐT-THA', '54', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('175', '21/4', 'LT-10,5A', 'ĐT-THA', '54', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('176', '21/5', 'LT-10,5A', 'ĐT-THA', '54', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('177', '21/6', 'LT-10,5B', 'ĐG-THA', '48', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('178', '21/7', 'LT-10,5B', 'ĐG-THA', '48', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('179', '21/8', 'LT-10,5B', 'ĐG-THA', '53', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('180', '21/9', 'LT-10,5B', 'ĐG-THA', '49', 'ĐGT-10', 'MT-2', '1', '6', '1', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('181', '21/10', 'LT-10,5A', 'ĐT-THA', '48', 'ĐVT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('182', '21/11', 'LT-10,5A', 'ĐT-THA', '64', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('183', '21/12', 'LT-10,5A', 'ĐT-THA', '64', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('184', '21/13', 'LT-10,5A', 'ĐT-THA', '65', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('185', '21/14', 'LT-10,5B', 'ĐG-THA', '99', 'ĐGT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('186', '21/15', 'LT-10,5A', 'ĐT-THA', '99', 'ĐTT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('187', '21/16', 'LT-10,5A', 'ĐT-THA', '99', 'ĐTT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('188', '21/17', 'LT-10,5A', 'ĐT-THA', '98', 'ĐTT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('189', '21/18', 'LT-10,5B', 'ĐG-THA', '100', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('190', '21/19', 'LT-10,5B', 'ĐG-THA', '100', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('191', '21/20', 'LT-10,5B', 'ĐG-THA', '45', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('192', '21/20-1', 'LT-10,5A', 'ĐT-THA', '45', 'ĐTT-10', 'MT-1', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('193', '21/21', 'LT-10,5A', 'ĐT-THA', '52', 'ĐTT-10', 'MT-2', '3', '0', '0', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('194', '21/21-1', 'LT-10,5A', 'ĐT-THA', '50', 'ĐTT-10', 'MT-1', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('195', '21/22', 'LT-10,5B', 'ĐG-THA', '50', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('196', '21/23', 'LT-10,5A', 'ĐT-THA', '50', 'ĐTT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('197', '21/24', 'LT-10,5A', 'ĐT-THA', '50', 'ĐTT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('198', '21/25', 'LT-10,5A', 'ĐT-THA', '51', 'ĐTT-10', 'MT-2', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('199', '21/26', 'LT-12B', 'NG-THA', '42', 'NGT-14', 'MT-2', '1', '6', '2', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('200', '21/27', 'LT-12B', 'NG-THA', '50', 'NGT-14', 'MT-2', '1', '6', '2', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('201', '21/28', 'LT-10,5B', 'ĐG-THA', '53', 'ĐGT-10', 'MT-2', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('202', '21/29', 'LT-10,5B', 'NG-THA', '52', 'NGT-10', 'MT-2', '1', '6', '2', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('203', '21/30', 'LT-10,5B', 'ĐG-THA', '53', 'ĐGT-10', 'MT-2', '6', '0', '1', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('204', '21/31', 'LT-10,5A', 'ĐT-THA', '53', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('205', '21/32', 'LT-10,5B', 'ĐG-THA', '52', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('206', '21/33', 'LT-10,5A', 'ĐT-THA', '51', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('207', '21/34', 'LT-10,5B', 'ĐG-THA', '51', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('208', '21/35', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('209', '21/36', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('210', '21/37', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('211', '21/38', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('212', '21/39', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('213', '21/40', 'LT-10,5B', 'ĐG-THA', '45', 'ĐGT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('214', '21/41', 'LT-10,5A', 'ĐT-THA', '45', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('215', '21/42', 'LT-10,5B', 'ĐT-THA', '45', 'NII-25', 'MT-2', '0', '3', '2', 'RL-14', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('216', '21/43', 'LT-10,5A', 'NC-THA', '43', 'ĐGT-K', 'MT-2', '1', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('217', '21/44', 'LT-10,5A', 'ĐT-THA', '45', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('218', '21/45', 'LT-10,5B', 'NG-THA', '45', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('219', '21/46', 'LT-10,5A', 'ĐT-THA', '46', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('220', '21/47', 'LT-10,5A', 'ĐT-THA', '46', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('221', '21/48', 'LT-10,5A', 'ĐT-THA', '44', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('222', '21/49', 'LT-10,5A', 'ĐT-THA', '44', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('223', '21/50', 'LT-10,5A', 'ĐT-THA', '50', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('224', '21/51', 'LT-10,5A', 'ĐT-THA', '59', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('225', '21/52', 'LT-10,5A', 'ĐT-THA', '54', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('226', '21/53', 'LT-10,5A', 'ĐT-THA', '54', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('227', '21/54', 'LT-10,5A', 'ĐT-THA', '54', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('228', '21/55', 'LT-10,5A', 'ĐT-THA', '53', 'ĐGT-K', 'MT-2', '6', '0', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('229', '21/56', 'LT-10,5C', 'ĐT-THA', '57', 'ĐGT-K', 'MT-2', '6', '6', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('230', '21/57', 'LT-10,5B', 'ĐT-THA', '55', 'XN-G', 'MTĐ', '6', '3', '0', '0', 'XLPE-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('231', '39/1', 'LT-10,5B', 'NC', '30', 'XNA-3', 'MT-2', '3', '6', '1', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('232', '39/2', 'LT-10,5B', 'ĐG', '73', 'XA-1', 'MT-2', '6', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('233', '39/3', 'LT-10,5A', 'ĐT', '60', 'XA-1', 'MT-2', '3', '0', '0', '0', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('234', '39/4', '2LT-10,5B', 'TBA', '56', ' XA-1   XNA-1', '2MT-2', '3', '6', '1', 'RL-14', 'AC-70', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('235', '21/15/1', 'LT-12B', 'ĐL', '36', 'XNAL-2', 'MG-3', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('236', '21/15/2', 'LT-12B', 'NG', '44', 'XNA-1', 'MT-2', '1', '6', '1', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('237', '21/15/3', 'LT-12A', 'ĐT', '49', 'XA-2', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('238', '21/15/4', 'LT-12A', 'ĐT ', '49', 'XA-2', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('239', '21/15/5', 'LT-12B', 'ĐG', '47', 'XĐG-3', 'MG-3', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('240', '21/15/6', 'LT-12A', 'ĐT', '47', 'XA-2', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('241', '21/15/7', 'LT-12A', 'ĐT', '45', 'XA-2', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('242', '21/15/8', 'LT-12A', 'ĐT (TBA T112)', '47', 'XA-2,XA-2', '2MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('243', '21/15/9', 'LT-12C', 'NG', '47', 'XNG-1', 'MT-4', '2', '6', '2', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('244', '21/15/10', 'LT-12B', 'ĐG', '52', 'XĐG-3', 'MG-3', '2', '6', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('245', '21/15/11', 'LT-12A', 'ĐT', '60', 'XA-2', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('246', '21/15/12', 'LT-12A', 'ĐT', '53', 'XA-2', 'MT-2', '6', '0', '0', '0', 'AC-95', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('253', '37/1', '2LT-12B', 'NC', '20', 'NCĐ-10, CCĐ-10', 'MG-2', '0', '6', '0', '-12', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('254', '37/2', 'LT-12B', 'ĐG', '67', 'DGL3-10', 'MT-2T', '6', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('255', '37/3', 'LT-12A', 'ĐT', '81', 'DĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('256', '37/4', 'LT-12B', 'NGTHA<55', '79', 'NC-10', 'MT-1T', '1', '6', '2', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('257', '37/5', 'LT-14A', 'ĐVTH,14M', '100', 'Đv-10S', 'MT-1T', '6', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('258', '37/6', 'LT-14B', 'NGTHA<55', '112', 'NC-10S', 'MT-1T', '1', '6', '2', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('259', '37/7', 'LT-12B', 'NGTHA<25', '121', 'NC-10', 'MT-1T', '6', '0', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('260', '37/8', 'LT-12A', 'ĐVTHA', '84', 'Đv-10S', 'MT-1T', '6', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('261', '37/9', 'LT-12B', 'NGTHA', '87', 'Đv-10S', 'MT-2T', '6', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('262', '37/10', 'LT-12A', 'ĐVTHA', '87', 'ĐT-10S', 'TH-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('263', '37/11', 'LT-12A', 'ĐVTHA', '87', 'ĐT-10S', 'TH-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('264', '37/12', 'LT-12B', 'NG THA', '86', 'NC-10', 'MT-1T', '1', '6', '3', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('265', '37/13', 'LT-10,5C', 'ĐG', '96', 'MT-2', 'MT-2T', '6', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('266', '37/14', 'LT-10,5A', 'ĐT', '91', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('267', '37/15', 'LT-10,5B', 'DG', '87', 'ĐG-10S', 'MT-1T', '6', '0', '1', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('268', '37/16', 'LT-12B', 'NT', '93', 'NC-10', 'MT-1T', '1', '6', '3', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('269', '37/17', 'LT-12A', 'ĐT', '46', 'NC-10', 'MT-1T', '3', '0', '0', '0', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('270', '37/18', 'LT-10,5B', 'NG<15', '47', 'NC-10', 'MT-1T', '2', '6', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('271', '37/19', 'LT-10,5A', 'ĐVTHA', '31', 'ĐT-10S', 'MT-1T', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('272', '37/20', 'LT-12B', 'NGTHA', '39', 'NC-10', 'MT-1T', '2', '6', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('273', '37/21', 'ĐTHA-12', 'ĐVTHA', '41', 'NC-10', 'MT-1T', '2', '6', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('274', '37/22', 'LT-10,5A', 'ĐTTHA', '32', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('275', '37/23', 'LT-10,5A', 'ĐTTHA', '46', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('276', '37/24', 'LT-10,5A', 'ĐTTHA', '48', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('277', '37/25', 'LT-10,5A', 'ĐTTHA', '47', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('278', '37/26', 'LT-10,5A', 'ĐTTHA', '46', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('279', '37/27', 'LT-10,5A', 'ĐTTHA', '48', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('280', '37/28', 'LT-10,5A', 'ĐTTHA', '46', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('281', '37/29', 'LT-10,5A', 'ĐTTHA', '47', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('282', '37/30', 'LT-10,5A', 'ĐTTHA', '50', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('283', '37/31', 'LT-10,5A', 'ĐTTHA', '45', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('284', '37/32', 'LT-10,5A', 'ĐTTHA', '47', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('285', '37/33', 'LT-10,5A', 'ĐTTHA', '48', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('286', '37/34', 'LT-10,5A', 'ĐTTHA', '48', 'ĐT-10S', 'TN-1.8', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('287', '37/35', 'LT-10,5A', 'ĐGTHA', '46', 'ĐG-10S', 'MT-1T', '6', '0', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('288', '37/36', 'LT-12B', 'NGTHA', '48', 'NC-10S', 'MT-1T', '2', '6', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('289', '37/37', 'LT-12A', 'ĐT', '47', 'ĐV-10S', 'MT-1T', '6', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('290', '37/38', 'LT-10,5A', 'ĐT', '47', 'ĐV-10S', 'MT-1T', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('291', '37/39', 'LT-10,5A', 'ĐT', '48', 'ĐTL-10', 'MT-1T', '3', '0', '0', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('292', '37/40', '2LT-10.5B', 'NCTBA', '40', 'ĐTL-10', 'MT-1T', '3', '3', '1', '-4', 'AC-50', 'ĐD471F17', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('376', '193/285/1', 'LT-10.5A', 'ĐT', '81', 'X1', 'MT2', '3', '0', '0', 'RL-4', 'AC-95', '', '0000-00-00', '', '0', '0', '91.30');
INSERT INTO tongketru VALUES ('309', '193', 'LT-10.5A', 'ĐT', '81', 'X1', 'MT2', '3', '0', '0', '', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('304', '16', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('305', '20221', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('306', 'dũng', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('312', '101111', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('313', '55555', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('314', '6666', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('315', '88888', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('316', '11', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('317', '9999', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('318', '10000', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('319', '11111', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('320', '13222', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('321', '1311', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('343', '13', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('336', '131', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('344', '1311', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('345', '3', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('346', '3', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('347', '3', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('348', '333', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('350', '3332', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('351', '33321', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('357', '33221', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('353', '33322', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('354', '33323', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('358', '33211', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('359', '3311', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', '0', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('363', '3312', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '6', '0', '0', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('371', '193/285/377', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '3', '3', '2', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('370', '193/285/373', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '3', '3', '2', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('372', '193/285/378', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '3', '3', '2', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('373', '193/285/379', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '3', '3', '2', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('374', '193/285/380', 'LT-10,5A', 'ĐT-THA', '50', 'ĐVT-10', 'MT-2', '3', '3', '2', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');
INSERT INTO tongketru VALUES ('377', '193/285/745', 'LT-10.5A', 'TBA', '26', '', '', '0', '0', '0', 'AC-70', '', '', '0000-00-00', '', '0', '27', '0.00');
INSERT INTO tongketru VALUES ('378', '193/285/744', '2LT-10.5B', 'NH', '85', 'X2 NH', 'MT3', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '0', '89.30');
INSERT INTO tongketru VALUES ('379', '193/285/743', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '0', '89.30');
INSERT INTO tongketru VALUES ('380', '193/285/742', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '0', '89.30');
INSERT INTO tongketru VALUES ('381', '193/285/741', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '0', '89.30');
INSERT INTO tongketru VALUES ('382', '193/285/740', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '0', '89.30');
INSERT INTO tongketru VALUES ('383', '193/285/739', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '1', '6', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('384', '193/285/663', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '1', '6', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('385', '193/285/735', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('386', '193/285/729', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('387', '193/285/726', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('388', '193/285/719', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('389', '193/285/713', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '3', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('390', '193/285/700', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '6', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('391', '193/285/694', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '6', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('392', '193/285/676', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '6', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('393', '193/285/656', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '6', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('394', '193/285/592', 'LT-10.5A', 'ĐT', '85', 'X1', 'MT-T10', '6', '0', '0', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('395', '193/285/574', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('396', '193/285/577', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('397', '193/285/580', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('398', '193/285/583', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('399', '193/285/677', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('400', '193/285/682', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('401', '193/285/685', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('402', '193/285/686', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('403', '193/285/693', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('404', '193/285/696', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('405', '193/285/733', 'LT-10.5A', 'ĐG', '85', 'X1', 'MT-T10', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('406', '193/285/671', 'LT-10.5A', 'NG', '85', 'X2NG', 'MT2', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '89.30');
INSERT INTO tongketru VALUES ('407', '193/285/688', 'LT-10.5A', 'NV', '72', 'X2ĐV', 'MT3', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '75.60');
INSERT INTO tongketru VALUES ('408', '193/285/689', 'LT-10.5A', 'NV', '136', 'X2ĐV', 'MT3', '6', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '147.00');
INSERT INTO tongketru VALUES ('409', '193/285/573', '2LT-10.5B', 'NH', '89', 'X2ĐNH', 'MTĐ', '1', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '91.30');
INSERT INTO tongketru VALUES ('410', '193/285/670', '2LT-10.5B', 'NH', '89', 'X2ĐNH', 'MTĐ', '1', '0', '1', 'AC-70', 'R4C', '', '0000-00-00', '', '0', '6', '91.30');
INSERT INTO tongketru VALUES ('411', '20/1123', 'LT-10,5B', 'ĐT-THA', '33', 'NGT-10', 'MT-2', '2', '6', '1', 'RL-14', 'AC-95', '', '0000-00-00', '', '0', '0', '0.00');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `occupation` varchar(150) COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('1', 'root', '$2a$08$k2U9X5pRxoUZv7xXPbN7ke2TKfM2wZQw.ys7KKUVpcTWvceWWcl5K', 'dung059@gmail.com', '1', '0', null, null, null, null, '', '127.0.0.1', '2012-05-23 07:01:53', '2012-05-15 04:56:47', '2012-05-23 13:01:53', '1', '', '2012-02-02');
INSERT INTO users VALUES ('2', 'thedungd5', '$2a$08$k2U9X5pRxoUZv7xXPbN7ke2TKfM2wZQw.ys7KKUVpcTWvceWWcl5K', 'thedungd5@yahoo.com', '1', '0', null, null, null, null, null, '127.0.0.1', '2012-05-16 15:57:42', '0000-00-00 00:00:00', '2012-05-16 21:57:42', '1', 'Occupation', '1899-10-10');
INSERT INTO users VALUES ('3', 'dung059', '$2a$08$k2U9X5pRxoUZv7xXPbN7ke2TKfM2wZQw.ys7KKUVpcTWvceWWcl5K', 'dung059@yahoo.com', '1', '0', null, null, null, null, null, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-05-16 21:57:10', '1', 'Occupation', '0000-00-00');

-- ----------------------------
-- Table structure for `user_autologin`
-- ----------------------------
DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_autologin
-- ----------------------------

-- ----------------------------
-- Table structure for `user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------
