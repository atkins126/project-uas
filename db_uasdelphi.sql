/*
SQLyog Ultimate v10.42 
MySQL - 5.6.24 : Database - db_uasdelphi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_uasdelphi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_uasdelphi`;

/*Table structure for table `tb_anggota` */

DROP TABLE IF EXISTS `tb_anggota`;

CREATE TABLE `tb_anggota` (
  `id_anggota` int(2) NOT NULL AUTO_INCREMENT,
  `nama_anggota` varchar(25) DEFAULT NULL,
  `password_anggota` varchar(10) DEFAULT NULL,
  `hak_anggota` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_anggota` */

insert  into `tb_anggota`(`id_anggota`,`nama_anggota`,`password_anggota`,`hak_anggota`) values (1,'ismuaji','ismuaji','k');

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `kode_barang` char(5) NOT NULL,
  `nama_barang` varchar(25) DEFAULT NULL,
  `satuan_barang` char(7) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `stok` int(2) DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`kode_barang`,`nama_barang`,`satuan_barang`,`diskon`,`harga`,`stok`) values ('b1','Barang 1-1','Butir',15,20000,5),('b3','Barang 3-1','Butir',25,100000,4),('b4','Barang 4','Lainnya',20,20000,3),('b5','Barang 5','Butir',10,10000,2),('b6','Barang 6-1','Pcs',5,20000,5);

/*Table structure for table `tb_belidetil` */

DROP TABLE IF EXISTS `tb_belidetil`;

CREATE TABLE `tb_belidetil` (
  `no_nota` char(5) DEFAULT NULL,
  `kode_barang` char(5) DEFAULT NULL,
  `jumlah_beli` int(2) DEFAULT NULL,
  `jumlah_diskon` double DEFAULT NULL,
  `jumlah_harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_belidetil` */

insert  into `tb_belidetil`(`no_nota`,`kode_barang`,`jumlah_beli`,`jumlah_diskon`,`jumlah_harga`) values ('1','b3',3,NULL,0),('1','b1',2,NULL,40000);

/*Table structure for table `tb_belimaster` */

DROP TABLE IF EXISTS `tb_belimaster`;

CREATE TABLE `tb_belimaster` (
  `no_nota` char(5) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `kode_supplier` char(5) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ppn` double DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  PRIMARY KEY (`no_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_belimaster` */

insert  into `tb_belimaster`(`no_nota`,`tanggal`,`kode_supplier`,`total`,`ppn`,`diskon`,`grand_total`) values ('0',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tb_customer` */

DROP TABLE IF EXISTS `tb_customer`;

CREATE TABLE `tb_customer` (
  `kode_customer` char(5) NOT NULL,
  `nama_customer` varchar(25) DEFAULT NULL,
  `alamat_customer` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `no_telepon` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_customer` */

insert  into `tb_customer`(`kode_customer`,`nama_customer`,`alamat_customer`,`tanggal_lahir`,`no_telepon`) values ('c3','Prajitno','Malang','1996-01-04','333'),('c4','Ismuaji','Surabaya','2015-12-14','332');

/*Table structure for table `tb_jualdetil` */

DROP TABLE IF EXISTS `tb_jualdetil`;

CREATE TABLE `tb_jualdetil` (
  `no_nota` char(5) DEFAULT NULL,
  `kode_barang` char(5) DEFAULT NULL,
  `jumlah_jual` int(11) DEFAULT NULL,
  `jumlah_diskon` double DEFAULT NULL,
  `jumlah_harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_jualdetil` */

/*Table structure for table `tb_jualmaster` */

DROP TABLE IF EXISTS `tb_jualmaster`;

CREATE TABLE `tb_jualmaster` (
  `no_nota` char(5) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kode_customer` char(5) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ppn` double DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_jualmaster` */

/*Table structure for table `tb_returmaster` */

DROP TABLE IF EXISTS `tb_returmaster`;

CREATE TABLE `tb_returmaster` (
  `no_retur` char(5) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `kode_customer` char(5) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`no_retur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_returmaster` */

/*Table structure for table `tb_returndetail` */

DROP TABLE IF EXISTS `tb_returndetail`;

CREATE TABLE `tb_returndetail` (
  `no_retur` char(5) DEFAULT NULL,
  `kode_barang` char(5) DEFAULT NULL,
  `jumlah_retur` int(2) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_returndetail` */

/*Table structure for table `tb_supplier` */

DROP TABLE IF EXISTS `tb_supplier`;

CREATE TABLE `tb_supplier` (
  `kode_supplier` char(5) NOT NULL,
  `nama_supplier` varchar(25) DEFAULT NULL,
  `alamat_supplier` varchar(50) DEFAULT NULL,
  `contact_person` varchar(14) DEFAULT NULL,
  `nomor_kontrak` char(5) DEFAULT NULL,
  `tanggal_kontrak` date DEFAULT NULL,
  PRIMARY KEY (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_supplier` */

insert  into `tb_supplier`(`kode_supplier`,`nama_supplier`,`alamat_supplier`,`contact_person`,`nomor_kontrak`,`tanggal_kontrak`) values ('k2','Sup 2','Surabaya','222','2','2015-12-30'),('k3','Supplier 3','Malang','21','3','2015-12-09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
