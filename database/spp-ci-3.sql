/*
Navicat MySQL Data Transfer

Source Server         : Zoey
Source Server Version : 100408
Source Host           : localhost:3306
Source Database       : spp-ci-3

Target Server Type    : MYSQL
Target Server Version : 100408
File Encoding         : 65001

Date: 2023-07-04 23:41:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(50) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES ('1', 'Ridho Surya');
INSERT INTO `guru` VALUES ('2', 'Hamzah Saputra');
INSERT INTO `guru` VALUES ('3', 'Wahyudi Nara');
INSERT INTO `guru` VALUES ('4', 'Harun');
INSERT INTO `guru` VALUES ('5', 'Rana');
INSERT INTO `guru` VALUES ('6', 'Agus Shobirin');
INSERT INTO `guru` VALUES ('8', 'Levi');
INSERT INTO `guru` VALUES ('10', 'Harun');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(12) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id_siswa`),
  KEY `kelas` (`kelas`),
  CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `wali_kelas` (`kelas`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES ('10', '2147483647', 'Ridho Surya', 'II', '2017/2018', '300000');
INSERT INTO `siswa` VALUES ('11', '398371098', 'Harun Saputra', 'IV', '2017/2018', '300000');
INSERT INTO `siswa` VALUES ('12', '394830198', 'Kakuki', 'III', '2017/2018', '300000');
INSERT INTO `siswa` VALUES ('13', '483928198', 'Fanita', 'II', '2017/2018', '300000');
INSERT INTO `siswa` VALUES ('15', '3411201088', 'Zalfa', 'I', '2023/2024', '300000');
INSERT INTO `siswa` VALUES ('16', '3411201057', 'Naufal', 'VII', '2023/2024', '300000');

-- ----------------------------
-- Table structure for spp
-- ----------------------------
DROP TABLE IF EXISTS `spp`;
CREATE TABLE `spp` (
  `id_siswa` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL AUTO_INCREMENT,
  `jatuh_tempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `no_bayar` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml` int(11) NOT NULL,
  `ket` text NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_spp`),
  KEY `spp_ibfk_2` (`id_siswa`),
  KEY `spp_ibfk_1` (`id_user`),
  CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spp_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of spp
-- ----------------------------
INSERT INTO `spp` VALUES ('10', '1', '2017-07-10', 'Juli 2017', '', '0000-00-00', '300000', 'Belum Lunas', '1');
INSERT INTO `spp` VALUES ('10', '2', '2017-08-10', 'Agustus 2017', '2010200001', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('10', '3', '2017-09-10', 'September 2017', '2010200001', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('10', '4', '2017-10-10', 'Oktober 2017', '2010200001', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('10', '5', '2017-11-10', 'November 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('10', '6', '2017-12-10', 'Desember 2017', '2020-10-20', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('10', '7', '2018-01-10', 'Januari 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('10', '8', '2018-02-10', 'Februari 2018', '2020102000', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('10', '9', '2018-03-10', 'Maret 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('10', '10', '2018-04-10', 'April 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('10', '11', '2018-05-10', 'Mei 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('10', '12', '2018-06-10', 'Juni 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '13', '2017-07-10', 'Juli 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('11', '14', '2017-08-10', 'Agustus 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('11', '15', '2017-09-10', 'September 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '16', '2017-10-10', 'Oktober 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '17', '2017-11-10', 'November 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '18', '2017-12-10', 'Desember 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '19', '2018-01-10', 'Januari 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '20', '2018-02-10', 'Februari 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '21', '2018-03-10', 'Maret 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '22', '2018-04-10', 'April 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '23', '2018-05-10', 'Mei 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('11', '24', '2018-06-10', 'Juni 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '25', '2017-07-10', 'Juli 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '26', '2017-08-10', 'Agustus 2017', '2010200001', '2020-10-20', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('12', '27', '2017-09-10', 'September 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '28', '2017-10-10', 'Oktober 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '29', '2017-11-10', 'November 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '30', '2017-12-10', 'Desember 2017', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '31', '2018-01-10', 'Januari 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '32', '2018-02-10', 'Februari 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '33', '2018-03-10', 'Maret 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '34', '2018-04-10', 'April 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '35', '2018-05-10', 'Mei 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('12', '36', '2018-06-10', 'Juni 2018', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('13', '37', '2017-07-10', 'Juli 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '2');
INSERT INTO `spp` VALUES ('13', '38', '2017-08-10', 'Agustus 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '2');
INSERT INTO `spp` VALUES ('13', '39', '2017-09-10', 'September 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '2');
INSERT INTO `spp` VALUES ('13', '40', '2017-10-10', 'Oktober 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '2');
INSERT INTO `spp` VALUES ('13', '41', '2017-11-10', 'November 2017', '2010210001', '2020-10-21', '300000', 'Lunas', '2');
INSERT INTO `spp` VALUES ('13', '42', '2017-12-10', 'Desember 2017', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '43', '2018-01-10', 'Januari 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '44', '2018-02-10', 'Februari 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '45', '2018-03-10', 'Maret 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '46', '2018-04-10', 'April 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '47', '2018-05-10', 'Mei 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('13', '48', '2018-06-10', 'Juni 2018', '', '0000-00-00', '300000', '', '2');
INSERT INTO `spp` VALUES ('15', '49', '2023-07-10', 'Juli 2023', '2306260001', '2023-06-26', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('15', '50', '2023-08-10', 'Agustus 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '51', '2023-09-10', 'September 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '52', '2023-10-10', 'Oktober 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '53', '2023-11-10', 'November 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '54', '2023-12-10', 'Desember 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '55', '2024-01-10', 'Januari 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '56', '2024-02-10', 'Februari 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '57', '2024-03-10', 'Maret 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '58', '2024-04-10', 'April 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '59', '2024-05-10', 'Mei 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('15', '60', '2024-06-10', 'Juni 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '61', '2023-07-10', 'Juli 2023', '2306260001', '2023-06-26', '300000', 'Lunas', '1');
INSERT INTO `spp` VALUES ('16', '62', '2023-08-10', 'Agustus 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '63', '2023-09-10', 'September 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '64', '2023-10-10', 'Oktober 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '65', '2023-11-10', 'November 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '66', '2023-12-10', 'Desember 2023', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '67', '2024-01-10', 'Januari 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '68', '2024-02-10', 'Februari 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '69', '2024-03-10', 'Maret 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '70', '2024-04-10', 'April 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '71', '2024-05-10', 'Mei 2024', '', '0000-00-00', '300000', '', '1');
INSERT INTO `spp` VALUES ('16', '72', '2024-06-10', 'Juni 2024', '', '0000-00-00', '300000', '', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '0eb2b22a822983aeb52c7e867e207f3216d5db10', 'Ridho Surya');
INSERT INTO `users` VALUES ('2', 'harun', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Harun');
INSERT INTO `users` VALUES ('4', 'Abel', 'f3db6955a6c03b83bf4add5382b473992eab2af7', 'Fabian Nabiel');
INSERT INTO `users` VALUES ('5', 'admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for wali_kelas
-- ----------------------------
DROP TABLE IF EXISTS `wali_kelas`;
CREATE TABLE `wali_kelas` (
  `kelas` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  PRIMARY KEY (`kelas`),
  KEY `id_guru` (`id_guru`),
  CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wali_kelas
-- ----------------------------
INSERT INTO `wali_kelas` VALUES ('II', '1');
INSERT INTO `wali_kelas` VALUES ('I', '2');
INSERT INTO `wali_kelas` VALUES ('III', '2');
INSERT INTO `wali_kelas` VALUES ('VI', '2');
INSERT INTO `wali_kelas` VALUES ('VII', '3');
INSERT INTO `wali_kelas` VALUES ('IV', '4');
INSERT INTO `wali_kelas` VALUES ('V', '5');
