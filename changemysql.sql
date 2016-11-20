alter table mcc_product_option_value add option_describe char(128);





##################################
alter table `mcc_product` add `date_undercarriage` date NOT NULL DEFAULT '0000-00-00' after `date_available`;



DROP TABLE IF EXISTS `mcc_product_option_describe`;
CREATE TABLE `mcc_product_option_describe` (
  `product_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `summary` text NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`product_id`,`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




-----------------------------------------------------------------------------


DROP TABLE IF EXISTS `mcc_seller`;
CREATE TABLE `mcc_seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `sellername` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;









#################################


INSERT INTO `mcc_product_option_describe` (`product_id`, `option_value_id`, `language_id`, `summary`, `detail`) VALUES
(43, 227, 1, '1', '100mhz'),
(43, 228, 1, '100mhz', '100mhz');
