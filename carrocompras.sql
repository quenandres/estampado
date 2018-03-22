# Host: localhost  (Version 5.5.24-log)
# Date: 2018-03-21 22:36:27
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "producto"
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `codigoproducto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(18,2) NOT NULL,
  `imagen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigoproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES (1,'camiseta 1',18.04,'1.jpg'),(2,'camiseta 2',18.04,'2.jpg'),(3,'camiseta 3',28.04,'3.jpg'),(4,'camiseta 4',38.04,'4.jpg'),(5,'camiseta 5',15.04,'5.jpg'),(8,'camiseta 6',18.04,'6.jpg'),(9,'camiseta 7',28.04,'7.jpg'),(10,'camiseta 8',38.04,'8.jpg');

#
# Procedure "lista_producto"
#

DROP PROCEDURE IF EXISTS `lista_producto`;
CREATE PROCEDURE `lista_producto`()
SELECT * FROM producto ORDER BY nombre ASC;
