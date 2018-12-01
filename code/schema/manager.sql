USE bamazon; 

# Dump of table departments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `department_id` int(200) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `overhead_cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`department_id`, `department_name`, `overhead_cost`)
VALUES
	(1,'Music',1239.32),
	(2,'Books',683.45),
	(3,'Home Goods',489.50),
	(4,'Apparel',2105.59),
	(5,'Shoes',6112.90),
	(6,'Photography',19830.29);

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;