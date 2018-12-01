DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `item_id` int(32) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(96) NOT NULL DEFAULT '',
  `department_name` varchar(32) NOT NULL DEFAULT '',
  `product_cost` decimal(10,2) NOT NULL,
  `sales_price` decimal(10,2) NOT NULL,
  `product_quantity` int(200) NOT NULL,
  `product_sales` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`item_id`, `product_name`, `department_name`, `product_cost`, `sales_price`, `product_quantity`, `product_sales`)
VALUES
	(1,'Miles Davis - Bitches Brew (180 Gram Vinyl)','Music',23.95,29.50,20,8.00),
	(2,'Slowdive - Souvlaki (180 Gram Vinyl)','Music',18.75,24.95,27,13.00),
	(3,'Modest Mouse - The Lonesome Crowded West (180 Gram Vinyl)','Music',17.40,24.50,23,17.00),
	(4,'Built to Spill - Keep It Like a Secret (180 Gram Vinyl)','Music',18.25,23.99,31,9.00),
	(5,'John Kennedy Toole - A Confederacy of Dunces','Books',12.99,14.85,40,10.00),
	(6,'Haruki Murakami - Kafka on the Shore','Books',12.45,14.99,55,20.00),
	(7,'Milan Kundera - The Unbearable Lightness of Being','Books',10.55,13.25,17,13.00),
	(8,'Chemex Six Cup Classic','Home Goods',20.57,23.59,24,16.00),
	(9,'Hario V60 Stainless Steel Kettle','Home Goods',18.85,27.89,30,5.00),
	(10,'Mitchell & Ness Philadelphia 76ers Satin Jacket','Apparel',104.50,121.55,23,8.00),
	(11,'Nike Metcon 4','Shoes',101.34,117.25,63,19.00),
	(12,'Canon EOS 5D Mark III Body','Photography',2345.75,2799.00,9,2.00);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;