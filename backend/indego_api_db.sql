MariaDB [indego]> SHOW CREATE DATABASE `indego`;
+----------+-------------------------------------------------------------------+
| Database | Create Database                                                   |
+----------+-------------------------------------------------------------------+
| indego   | CREATE DATABASE `indego` /*!40100 DEFAULT CHARACTER SET latin1 */ |
+----------+-------------------------------------------------------------------+
1 row in set (0.00 sec)


MariaDB [indego]> SHOW CREATE TABLE `stations`;
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stations | CREATE TABLE `stations` (
  `kioskId` int(4) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  `addressStreet` varchar(50) NOT NULL DEFAULT '',
  `addressCity` varchar(20) NOT NULL,
  `addressState` varchar(2) NOT NULL,
  `addressZipCode` varchar(5) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kioskId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)


MariaDB [indego]> SHOW CREATE TABLE `data`;
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| data  | CREATE TABLE `data` (
  `kioskId` int(4) unsigned NOT NULL,
  `kioskPublicStatus` varchar(20) DEFAULT '',
  `bikesAvailable` tinyint(2) NOT NULL,
  `docksAvailable` tinyint(2) NOT NULL,
  `totalDocks` tinyint(2) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `kioskId_2` (`kioskId`,`added`),
  KEY `kioskId` (`kioskId`),
  CONSTRAINT `kioskId_fk` FOREIGN KEY (`kioskId`) REFERENCES `stations` (`kioskId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
