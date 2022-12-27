-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 04:02 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"posdb\",\"table\":\"production\"},{\"db\":\"posdb\",\"table\":\"itemdetail\"},{\"db\":\"posdb\",\"table\":\"product\"},{\"db\":\"posdb\",\"table\":\"item\"},{\"db\":\"posdb\",\"table\":\"raw\"},{\"db\":\"posdb\",\"table\":\"purchase\"},{\"db\":\"posdb\",\"table\":\"orders\"},{\"db\":\"posdb\",\"table\":\"customer\"},{\"db\":\"posdb\",\"table\":\"category\"},{\"db\":\"posdb\",\"table\":\"staff\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'posdb', 'category', '{\"sorted_col\":\"`category`.`categoryname`  DESC\"}', '2022-12-17 12:16:25'),
('root', 'posdb', 'itemdetail', '{\"sorted_col\":\"`itemdetail`.`categoryid`  DESC\"}', '2022-12-25 14:44:02'),
('root', 'posdb', 'orders', '{\"sorted_col\":\"`orders`.`orderdate`  ASC\"}', '2022-12-25 14:00:56'),
('root', 'posdb', 'product', '{\"sorted_col\":\"`product`.`productid` ASC\"}', '2022-12-18 12:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-25 15:02:05', '{\"collation_connection\":\"utf8mb4_unicode_ci\",\"ThemeDefault\":\"pmahomme\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `posdb`
--
CREATE DATABASE IF NOT EXISTS `posdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `posdb`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(11, 'Sofas'),
(12, 'Tables'),
(13, 'Gaming Chairs');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `customername` varchar(30) NOT NULL,
  `customerpassword` varchar(30) NOT NULL,
  `customeremail` varchar(30) NOT NULL,
  `customerphonenumber` varchar(30) NOT NULL,
  `customeraddress` varchar(30) NOT NULL,
  `customerprofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `customerpassword`, `customeremail`, `customerphonenumber`, `customeraddress`, `customerprofile`) VALUES
(39, 'Sithu Soe', 'kmd', 'soe153appleid@gmail.com', '09852012110', '											YGN, 166st									', '../../../work/images/_customer-profile.jpg'),
(40, 'Jake', 'kmd', 'jake112@gmail.com', '09854100002', 'YGN, 122, TM', '../../../work/images/_depositphotos_402043312-stock-photo-dental-braces-young-asian-woman.jpg'),
(41, 'Molie', 'kmd', 'molie@gmail.com', '0985221', 'NPW', '../../../work/images/_istockphoto-1311084168-612x612.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deliveryID` int(11) NOT NULL,
  `cusName` varchar(30) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `cusAddress` varchar(50) NOT NULL,
  `cusPhone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deliveryID`, `cusName`, `orderid`, `cusAddress`, `cusPhone`) VALUES
(12, 'Sithu Soe', 'OR-000001', 'YGN', '09888888'),
(13, 'Sithu Soe', 'OR-000002', 'NPW', '09887855'),
(14, 'Sithu Soe', 'OR-000003', 'YGN,123', '0988777'),
(15, 'Sithu Soe', 'OR-000004', 'YGN', '0988775'),
(16, 'Sithu Soe', 'OR-000005', 'YGN', '89982022'),
(17, 'Sithu Soe', 'OR-000006', 'YGN', '88887878'),
(18, 'Sithu Soe', 'OR-000007', 'sa', '5989898'),
(19, 'Sithu Soe', 'OR-000008', 'ydn', '8922958'),
(20, 'Sithu Soe', 'OR-000009', '', ''),
(21, 'Sithu Soe', 'OR-000010', '', ''),
(22, 'Sithu Soe', 'OR-000012', '', ''),
(23, 'Sithu Soe', 'OR-000014', '', ''),
(24, 'Sithu Soe', 'OR-000015', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `item_name` int(50) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_name1` int(50) NOT NULL,
  `item_quantity1` int(11) NOT NULL,
  `item_name2` int(11) NOT NULL,
  `item_quantity2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemdetail`
--

CREATE TABLE `itemdetail` (
  `categoryid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `rawid` int(11) NOT NULL,
  `rawqty` int(11) NOT NULL,
  `staffid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemdetail`
--

INSERT INTO `itemdetail` (`categoryid`, `productid`, `rawid`, `rawqty`, `staffid`) VALUES
(11, 57, 22, 10, 55),
(11, 57, 23, 1, 55),
(11, 58, 22, 10, 55),
(11, 58, 23, 1, 55),
(11, 58, 25, 5, 55),
(11, 58, 24, 3, 55),
(11, 59, 22, 10, 55),
(11, 59, 23, 1, 55),
(11, 59, 25, 2, 55),
(11, 60, 22, 10, 55),
(11, 60, 23, 1, 55),
(11, 61, 22, 10, 55),
(11, 61, 23, 2, 55),
(11, 61, 25, 2, 55),
(11, 62, 22, 10, 55),
(11, 62, 23, 13, 55),
(11, 62, 25, 0, 55),
(11, 63, 22, 10, 55),
(11, 63, 23, 3, 55),
(11, 63, 24, 2, 55),
(12, 64, 22, 10, 55),
(12, 64, 24, 3, 55),
(12, 65, 22, 12, 55),
(12, 65, 24, 3, 55),
(12, 65, 26, 5, 55),
(12, 66, 22, 15, 55),
(13, 67, 24, 2, 55),
(13, 67, 25, 2, 55),
(13, 68, 24, 2, 55),
(13, 68, 25, 3, 55),
(13, 70, 24, 5, 55),
(13, 70, 23, 2, 55),
(13, 70, 25, 5, 55);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `staffid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `messagedate` datetime NOT NULL,
  `message_title` varchar(200) NOT NULL,
  `messagedescription` varchar(900) NOT NULL,
  `message_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`staffid`, `messageid`, `messagedate`, `message_title`, `messagedescription`, `message_status`) VALUES
(55, 33, '2022-12-25 12:39:59', 'Holiday', 'Holiday on 16/16/16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderid` varchar(30) NOT NULL,
  `productid` int(11) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `unitquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderid`, `productid`, `unitprice`, `unitquantity`) VALUES
('OR-000001', 57, 500000, 1),
('OR-000002', 57, 500000, 1),
('OR-000003', 57, 500000, 3),
('OR-000004', 57, 500000, 4),
('OR-000005', 57, 500000, 1),
('OR-000006', 57, 500000, 1),
('OR-000007', 57, 500000, 3),
('OR-000008', 57, 500000, 1),
('OR-000009', 57, 500000, 1),
('OR-000010', 57, 500000, 1),
('OR-000011', 57, 500000, 1),
('OR-000012', 57, 500000, 1),
('OR-000013', 57, 500000, 3),
('OR-000014', 57, 500000, 1),
('OR-000015', 57, 500000, 2),
('OR-000016', 57, 500000, 1),
('OR-000017', 57, 500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` varchar(20) NOT NULL,
  `orderdate` date NOT NULL,
  `customerid` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `orderstatus` varchar(30) NOT NULL,
  `cardtype` varchar(30) NOT NULL,
  `Delivery` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `orderdate`, `customerid`, `totalamount`, `totalquantity`, `orderstatus`, `cardtype`, `Delivery`) VALUES
('OR-000001', '2022-01-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000002', '2022-02-25', 39, 500000, 1, 'Pending', 'AYA Bank', 'YES'),
('OR-000003', '2022-10-25', 39, 1500000, 3, 'Pending', 'checkbox-1', 'YES'),
('OR-000004', '2022-03-25', 39, 2000000, 4, 'Pending', 'AYA Bank', 'YES'),
('OR-000005', '2022-08-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000006', '2022-08-25', 39, 500000, 1, 'Pending', 'AYA Bank', 'YES'),
('OR-000007', '2022-04-25', 39, 1500000, 3, 'Pending', 'checkbox-1', 'YES'),
('OR-000008', '2022-04-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000009', '2022-05-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000010', '2022-06-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000011', '2022-06-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'NO'),
('OR-000012', '2022-04-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000013', '2022-11-25', 39, 1500000, 3, 'Pending', 'checkbox-1', 'NO'),
('OR-000014', '2022-06-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'YES'),
('OR-000015', '2022-07-25', 39, 1000000, 2, 'Pending', 'checkbox-1', 'YES'),
('OR-000016', '2022-09-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'NO'),
('OR-000017', '2022-09-25', 39, 500000, 1, 'Pending', 'checkbox-1', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `unitquantity` int(11) NOT NULL,
  `productdescription` varchar(100) NOT NULL,
  `productprofile` text NOT NULL,
  `3D` text NOT NULL,
  `AR` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `categoryid`, `unitprice`, `unitquantity`, `productdescription`, `productprofile`, `3D`, `AR`) VALUES
(57, '2-seat Orange Leather Sofa', 11, 500000, 53, 'Orange big and wide sofa for living room', '../../../work/images/_pexels-photo-1866149.jpeg', '', ''),
(58, 'L sofa small gray', 11, 400000, 50, 'Small L shape sofas with gray color', '../../../work/images/_360_F_530722757_elLwj6iZbt11YqFtinWaZJ5tTwwdOllx.jpg', '', ''),
(59, 'Single Sofa black', 11, 150000, 50, 'Black single sofa', '../../../work/images/_Aero-Single-Sofa-Bed-MCSSBCHF.jpg', '', ''),
(60, 'Single Sofa Leather', 11, 180000, 80, 'Leather sofa', '../../../work/images/_Bangkok-Single-Seater-Brown-colour-Sofa-by-Spns.jpg', '', ''),
(61, 'Dark Blue Sofa', 11, 800000, 0, 'Big sofa blue color', '../../../work/images/_Dark Blue sofa.png', '', ''),
(62, 'Single Sofa Green', 11, 160000, 80, 'Green color single sofa', '../../../work/images/_modern green single seater sofa.jpg', '', ''),
(63, 'Single Sofa White', 11, 140000, 50, 'White single sofa', '../../../work/images/_one seater sofa.jpeg', '', ''),
(64, 'Gold color table', 12, 80000, 50, 'Golden table', '../../../work/images/_275px-Writing_table_(bureau_plat)_MET_DP105403.jpg', '', ''),
(65, 'White coffee table', 12, 100000, 0, 'coffee table', '../../../work/images/_640px-4Coffee_Table.jpg', '', ''),
(66, 'Wood table ', 12, 190000, 50, 'Wooden table', '../../../work/images/_Buckeye_burl_pub_table.jpg', '', ''),
(67, 'RGB Gaming Chair', 13, 800000, 80, 'RGB', '../../../work/images/_RGB gaming chair.png', '', ''),
(68, 'Black comfort GC', 13, 600000, 80, 'Gaming with comfortable', '../../../work/images/_only balck.jpg', '', ''),
(70, 'Red Gaming Chair', 13, 750000, 50, 'Blood Red', '../../../work/images/_6ec492f2-2531-4f82-889e-38ac76962faa.d060353129d9b62a2bb78e7ef7523e92.webp', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `productionid` varchar(100) NOT NULL,
  `productiondate` date NOT NULL,
  `staffid` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `productionstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`productionid`, `productiondate`, `staffid`, `totalquantity`, `productionstatus`) VALUES
('PRO-000001', '2022-12-25', 56, 10, 'Pending'),
('PRO-000002', '2022-12-25', 56, 20, 'Pending'),
('PRO-000003', '2022-12-25', 56, 360, 'Pending'),
('PRO-000004', '2022-12-25', 56, 100, 'Pending'),
('PRO-000005', '2022-12-25', 56, 210, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `productiondetail`
--

CREATE TABLE `productiondetail` (
  `productionid` varchar(100) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productiondetail`
--

INSERT INTO `productiondetail` (`productionid`, `categoryid`, `productid`, `totalquantity`) VALUES
('PRO-000001', 11, 57, 10),
('PRO-000002', 11, 57, 20),
('PRO-000003', 11, 57, 50),
('PRO-000003', 11, 58, 50),
('PRO-000003', 11, 59, 50),
('PRO-000003', 11, 60, 80),
('PRO-000003', 11, 62, 80),
('PRO-000003', 11, 63, 50),
('PRO-000004', 12, 64, 50),
('PRO-000004', 12, 66, 50),
('PRO-000005', 13, 67, 80),
('PRO-000005', 13, 68, 80),
('PRO-000005', 13, 70, 50);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` varchar(20) NOT NULL,
  `purchasedate` date NOT NULL,
  `supplierid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `purchasestatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `purchasedate`, `supplierid`, `staffid`, `totalamount`, `totalquantity`, `purchasestatus`) VALUES
('PUR-000001', '2022-12-25', 12, 56, 42000000, 280, 'Conform'),
('PUR-000002', '2022-12-25', 13, 56, 113140000, 4998, 'Conform');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetail`
--

CREATE TABLE `purchasedetail` (
  `purchaseid` varchar(30) NOT NULL,
  `rawid` int(11) NOT NULL,
  `rawtype` varchar(30) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `unitquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasedetail`
--

INSERT INTO `purchasedetail` (`purchaseid`, `rawid`, `rawtype`, `unitprice`, `unitquantity`) VALUES
('PUR-000001', 22, 'Teak', 10000, 200),
('PUR-000001', 0, '', 0, 0),
('PUR-000002', 24, 'Steel', 30000, 998),
('PUR-000002', 0, '', 0, 0),
('PUR-000002', 0, '', 0, 0),
('PUR-000002', 0, '', 0, 0),
('PUR-000002', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `raw`
--

CREATE TABLE `raw` (
  `rawid` int(11) NOT NULL,
  `rawtype` varchar(30) NOT NULL,
  `rawdes` varchar(100) NOT NULL,
  `rawtp` int(11) NOT NULL,
  `rawqtyleft` int(11) NOT NULL,
  `rawprofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw`
--

INSERT INTO `raw` (`rawid`, `rawtype`, `rawdes`, `rawtp`, `rawqtyleft`, `rawprofile`) VALUES
(22, 'Teak', 'Wood', 10200, -4950, '../../../work/images/_natural-teak-wood-500x500.webp'),
(23, 'Leather', 'Good leather', 50000, -1550, '../../../work/images/_csm_iStock-916598794_c67275217a.webp'),
(24, 'Steel', 'steel for frame', 30998, 28, '../../../work/images/_ImageForArticle_6742(1).webp'),
(25, 'Cusion', 'Soft', 8000, -1000, '../../../work/images/_images.jpg'),
(26, 'Composite', 'thin layer of wood', 15000, 0, '../../../work/images/_plywood-project-panels3.webp');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(11) NOT NULL,
  `staffname` varchar(30) NOT NULL,
  `staffemail` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `staffrole` varchar(100) NOT NULL,
  `staffskill` varchar(500) NOT NULL,
  `staffprofile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `staffname`, `staffemail`, `password`, `phonenumber`, `address`, `staffrole`, `staffskill`, `staffprofile`) VALUES
(55, 'Tom', 'tom@gmail.com', 'kmd', '09874758665', '																																	YGN, 166																																	', 'Staff Manager', 'Management, Planning, Organizing, Staffing, Leading and Controlling', '../../../work/images/_AdobeStock_200902415.jpeg'),
(56, 'Hank', 'hanks@gmail.com', 'kmd', '09635875669', 'NPW,899', 'Delivery', 'Excellent communication, organizational skills, highly responsible', ''),
(57, 'Raffy', 'staff@gmail.com', 'kmd', '09875546821', 'MON, 89 st', 'Staff', 'Schedule meetings, maintain employee records', '');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierid` int(11) NOT NULL,
  `suppliername` varchar(30) NOT NULL,
  `supplieraddress` varchar(50) NOT NULL,
  `supplierphone` varchar(30) NOT NULL,
  `supplieremail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierid`, `suppliername`, `supplieraddress`, `supplierphone`, `supplieremail`) VALUES
(12, 'IKEA', 'Sweden', '09854562001', 'IKEAswe@gmail.com'),
(13, 'Haworth Inc.', 'USA', '09854258', 'haworthInc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`productionid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `raw`
--
ALTER TABLE `raw`
  ADD PRIMARY KEY (`rawid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deliveryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `raw`
--
ALTER TABLE `raw`
  MODIFY `rawid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `register`
--
CREATE DATABASE IF NOT EXISTS `register` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `register`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
