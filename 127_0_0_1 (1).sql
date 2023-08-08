-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 06:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbage_manage`
--
CREATE DATABASE IF NOT EXISTS `garbage_manage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `garbage_manage`;

-- --------------------------------------------------------

--
-- Table structure for table `government_data`
--

CREATE TABLE `government_data` (
  `gid` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_data`
--

INSERT INTO `government_data` (`gid`, `password`, `state`, `country`) VALUES
(1, 345, 'Odisha', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `health_care_data`
--

CREATE TABLE `health_care_data` (
  `hid` int(11) NOT NULL,
  `hname` varchar(30) DEFAULT NULL,
  `hgender` varchar(3) DEFAULT NULL,
  `hdept` varchar(30) DEFAULT NULL,
  `hdp` varchar(50) DEFAULT NULL,
  `hpassword` varchar(10) NOT NULL,
  `hphone` bigint(15) NOT NULL,
  `hemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_care_data`
--

INSERT INTO `health_care_data` (`hid`, `hname`, `hgender`, `hdept`, `hdp`, `hpassword`, `hphone`, `hemail`) VALUES
(2443, 'shyam kumar', 'M', 'provider', 'shyam.jpg', 'fgh', 5678765645, 'shyam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `health_care_work`
--

CREATE TABLE `health_care_work` (
  `hwid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `h_w_desc` varchar(100) NOT NULL,
  `w_image` varchar(50) NOT NULL,
  `w_address` varchar(30) NOT NULL,
  `w_city` varchar(30) NOT NULL,
  `w_type` varchar(30) NOT NULL,
  `w_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_care_work`
--

INSERT INTO `health_care_work` (`hwid`, `hid`, `name`, `phone`, `email`, `h_w_desc`, `w_image`, `w_address`, `w_city`, `w_type`, `w_status`) VALUES
(1, 2443, 'shyam kumar', 5678765645, 'shyam@gmail.com', 'mjbjkgbjkgbjkgbjkm', 'san.jfif', 'jagamara,jganmohan nagar', 'Bhubaneswar', 'type-1', 'Approved'),
(2, 2443, 'shyam kumar', 5678765645, 'shyam@gmail.com', 'jkfaskfhaifiasjnkassj', 'bus.png', 'jagamara,jganmohan nagar', 'Bhubaneswar', 'type-3', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `officer_data`
--

CREATE TABLE `officer_data` (
  `ofid` int(11) DEFAULT NULL,
  `ofname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `gender` varchar(3) NOT NULL,
  `profile_img` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officer_data`
--

INSERT INTO `officer_data` (`ofid`, `ofname`, `email`, `dob`, `dept`, `password`, `gender`, `profile_img`, `phone`) VALUES
(234, 'ranjan kumar', 'ranjan@gmail.com', '2022-11-16', 'Cleaning Authority', 'dfg', 'M', '2141013024.jpg', 347689657);

-- --------------------------------------------------------

--
-- Table structure for table `ppp_data`
--

CREATE TABLE `ppp_data` (
  `ppp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ppp_dp` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppp_data`
--

INSERT INTO `ppp_data` (`ppp_id`, `name`, `gender`, `password`, `ppp_dp`, `email`, `phone`) VALUES
(2, 'sankar mohanty', 'M', 'dfg', 'sankar.jfif', 'sankar@gmail.com', 3453465734);

-- --------------------------------------------------------

--
-- Table structure for table `ppp_work_update`
--

CREATE TABLE `ppp_work_update` (
  `work_id` int(11) NOT NULL,
  `ppp_id` int(11) NOT NULL,
  `work_image` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount_recycle` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppp_work_update`
--

INSERT INTO `ppp_work_update` (`work_id`, `ppp_id`, `work_image`, `type`, `amount_recycle`, `status`, `date`) VALUES
(8, 2, 'Untitled.png', 'plastic', 5, 'Approved', '2022-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `public_complaint`
--

CREATE TABLE `public_complaint` (
  `cid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `comp_type` varchar(30) NOT NULL,
  `c_phone` bigint(20) NOT NULL,
  `comp_sts` varchar(10) NOT NULL,
  `comp_desc` varchar(100) NOT NULL,
  `c_img` varchar(30) NOT NULL,
  `c_address` varchar(30) NOT NULL,
  `c_city` varchar(30) NOT NULL,
  `c_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_complaint`
--

INSERT INTO `public_complaint` (`cid`, `id`, `comp_type`, `c_phone`, `comp_sts`, `comp_desc`, `c_img`, `c_address`, `c_city`, `c_date`) VALUES
(1, 14, 'garbage', 8117830811, 'open', 'wasdfcaesfdcdase', 'f3.JPG', 'wsdwasfdcasw', 'bbsr', '2022-11-29'),
(2, 20, 'personal ', 6455786854, 'open', 'kjugutfuyfu', 'download garbage.jpg', 'SAMANTARA STREET GANJAM', 'GANJAM', '2022-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `public_data`
--

CREATE TABLE `public_data` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `sig_in_dt` datetime NOT NULL,
  `file_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_data`
--

INSERT INTO `public_data` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `phone`, `password`, `sig_in_dt`, `file_name`) VALUES
(14, 'Saugat', 'Mahapatra', '2003-08-14', 'M', 'saugatm3@gmail.com', 2147483647, 'asd', '2022-11-26 19:21:18', '2141013024.jpg'),
(19, 'BISWAJIT', 'MAHAPATRA', '2003-07-29', 'Op', 'biswajitmahapatra833@gmail.com', 2147483647, 'Shiva@123', '2022-12-01 02:17:44', 'shiva.jpg'),
(20, 'DURGA PRASAD', 'DASH', '2004-03-01', 'M', 'durgaprasaddash1122@gmail.com', 2147483647, 'Durga@1122', '2022-12-01 11:17:47', 'Durga prasad Dash .jpg');

-- --------------------------------------------------------

--
-- Table structure for table `public_work`
--

CREATE TABLE `public_work` (
  `wid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `UNIT` varchar(10) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `idate` date DEFAULT NULL,
  `employee` varchar(30) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_work`
--

INSERT INTO `public_work` (`wid`, `id`, `address`, `UNIT`, `city`, `image`, `idate`, `employee`, `latitude`, `longitude`, `status`) VALUES
(28, 14, 'Boudh', 'UNIT-1', 'BHUBANESWAR', 'bus.png', '2022-11-28', '1', 20.2449896, 85.7974041, 'Approved'),
(29, 14, 'Boudh', 'UNIT-1', 'BHUBANESWAR', 'Untitled.png', '2022-11-27', '2', 20.2449896, 85.7974041, 'Approved'),
(37, 19, 'at-nandan bihar', 'UNIT-1', 'BHUBANESWAR', 'logo.png', '2022-12-01', '1', 20.2682801, 85.7769064, 'Approved'),
(38, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', '2', 20.2460809, 85.801973, 'pending'),
(39, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', '2', 20.2460809, 85.801973, 'pending'),
(40, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(41, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(42, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', '2', 20.2460809, 85.801973, 'pending'),
(43, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(44, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(45, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(46, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending'),
(47, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', '1', 20.2460809, 85.801973, 'pending'),
(48, 20, 'SAMANTARA STREET GANJAM', 'UNIT-1', 'BHUBANESWAR', 'download garbage.jpg', '2022-12-02', NULL, 20.2460809, 85.801973, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `worker_data`
--

CREATE TABLE `worker_data` (
  `worker_id` int(11) NOT NULL,
  `worker_name` varchar(30) NOT NULL,
  `wor_email` varchar(30) NOT NULL,
  `wor_phone` bigint(15) NOT NULL,
  `wor_gender` varchar(3) NOT NULL,
  `wor_dp` varchar(30) NOT NULL,
  `wor_dept` varchar(30) NOT NULL,
  `wor_address` varchar(50) NOT NULL,
  `wor_city` varchar(30) NOT NULL,
  `w_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker_data`
--

INSERT INTO `worker_data` (`worker_id`, `worker_name`, `wor_email`, `wor_phone`, `wor_gender`, `wor_dp`, `wor_dept`, `wor_address`, `wor_city`, `w_password`) VALUES
(1, 'santosh kumar', 'santosh@gmail.com', 3546284638, 'M', 'santosh.JPG', 'cleaning', 'jagamara', 'Bhubaneswar', 'vbn'),
(2, 'haris kumar', 'harish@gmail.com', 7865674534, 'M', 'harish.jpg', 'cleaning', 'jagamara', 'Bhubaneswar', 'zxc');

-- --------------------------------------------------------

--
-- Table structure for table `worker_work`
--

CREATE TABLE `worker_work` (
  `wid` int(11) NOT NULL,
  `w_image` varchar(30) NOT NULL,
  `worker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker_work`
--

INSERT INTO `worker_work` (`wid`, `w_image`, `worker_id`) VALUES
(28, 'IMG_0831.JPG', 1),
(29, '._tom4.png', 2),
(37, '', 1),
(28, '', 1),
(38, '', 2),
(39, '', 2),
(42, '', 2),
(47, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `health_care_work`
--
ALTER TABLE `health_care_work`
  ADD PRIMARY KEY (`hwid`);

--
-- Indexes for table `ppp_data`
--
ALTER TABLE `ppp_data`
  ADD PRIMARY KEY (`ppp_id`);

--
-- Indexes for table `ppp_work_update`
--
ALTER TABLE `ppp_work_update`
  ADD PRIMARY KEY (`work_id`);

--
-- Indexes for table `public_complaint`
--
ALTER TABLE `public_complaint`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `public_data`
--
ALTER TABLE `public_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_work`
--
ALTER TABLE `public_work`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `worker_data`
--
ALTER TABLE `worker_data`
  ADD PRIMARY KEY (`worker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `health_care_work`
--
ALTER TABLE `health_care_work`
  MODIFY `hwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ppp_data`
--
ALTER TABLE `ppp_data`
  MODIFY `ppp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ppp_work_update`
--
ALTER TABLE `ppp_work_update`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `public_complaint`
--
ALTER TABLE `public_complaint`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `public_data`
--
ALTER TABLE `public_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `public_work`
--
ALTER TABLE `public_work`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `worker_data`
--
ALTER TABLE `worker_data`
  MODIFY `worker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"garbage_manage\",\"table\":\"public_data\"},{\"db\":\"garbage_manage\",\"table\":\"ppp_work_update\"},{\"db\":\"garbage_manage\",\"table\":\"public_complaint\"},{\"db\":\"garbage_manage\",\"table\":\"worker_data\"},{\"db\":\"garbage_manage\",\"table\":\"government_data\"},{\"db\":\"garbage_manage\",\"table\":\"public_work\"},{\"db\":\"garbage_manage\",\"table\":\"officer_data\"},{\"db\":\"garbage_manage\",\"table\":\"worker_work\"},{\"db\":\"garbage_manage\",\"table\":\"health_care_work\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-01 05:21:14', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Database: `provothon`
--
CREATE DATABASE IF NOT EXISTS `provothon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `provothon`;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `question`, `answer`) VALUES
(1, 'hi hii hello ', 'Hello!'),
(2, 'what is the use of this platform', 'In this platform, you can buy crops directly from the farmers without any third person, and as a farmer, you can also sell your crop.'),
(3, 'who are you', 'i am your assistant.');

-- --------------------------------------------------------

--
-- Table structure for table `crop_details`
--

CREATE TABLE `crop_details` (
  `crop_id` int(11) NOT NULL,
  `crop_name` varchar(100) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `crop_image` varchar(255) DEFAULT NULL,
  `crop_type` varchar(50) NOT NULL,
  `price_per_kg` decimal(10,2) NOT NULL,
  `available_quantity` int(11) NOT NULL,
  `crop_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crop_details`
--

INSERT INTO `crop_details` (`crop_id`, `crop_name`, `farmer_id`, `crop_image`, `crop_type`, `price_per_kg`, `available_quantity`, `crop_description`) VALUES
(10000, 'raita', 3, 'crop_image/IMG_20220301_171305_Snapseed.jpg', 'rtg', '5.00', 15, 'kjhjkhl,'),
(10002, 'Rice', 4, 'crop_image/Photo_navbar.jpeg', 'a', '9000000.00', 989112, 'jkfkjbchunjjjjjjjjjj'),
(10003, 'Rice', 6, 'crop_image/Photo.jpeg', 'jksdag', '97.00', 908698, 'kjfcgb'),
(10004, 'dal', 7, 'crop_image/Rhombus.png', 'hjfjjhkh', '899.00', 88921, 'bgjdsbmnscb');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pin` int(6) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `first_name`, `last_name`, `password`, `contact_number`, `email_id`, `district`, `pin`, `area_name`, `profile_image`) VALUES
(1000003, 'rasmi', 'mishra', '$2y$10$TEj6zpksZyF8e067OoxBRelccqq9CTAQkYWYAeulodie36IhxJEd.', '4565768976', 'rasmi@gmail.com', 'Riyadh', 56734, 'bagicha sahi', 'customer_dp/IMG_20220220_173731.jpg'),
(1000005, 'DURGA ', 'Prasad', '$2y$10$zyXMHgXNYBz4VPLS7.dp3OTpwvDCf1IszwBwf1X/dERnlRyBcaH1a', '07978961020', 'durgaprasaddash1122@gmail.com', 'Ganjam', 761026, 'ganjam', 'customer_dp/Rhombus.png'),
(1000006, 'DURGA PRASAD', 'DASH', '$2y$10$pdzPVP7iSBVyB0ma67bVJemZ8ORDap.YWV1lyhHOKFFfNsxNc3Bj6', '07978961020', 'durgaprasaddash2004@gmail.com', 'Ganjam', 761026, 'ganjam', 'customer_dp/Photo_navbar.jpeg'),
(1000007, 'DURGA PRASAD', 'DASH', '$2y$10$8KRPWK0d5dy5SWxPNch76e.YNCySxTlgLKdR5nN6M5CGTBGhH1pWm', '07978961020', 'ayushajena2004@gmail.com', 'ganjam', 761026, 'ganjam', 'customer_dp/Photo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `price_per_kg` decimal(10,2) NOT NULL,
  `total_order_amount` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `delivered_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `crop_id`, `farmer_id`, `customer_id`, `order_date`, `order_status`, `price_per_kg`, `total_order_amount`, `total_price`, `delivered_date`) VALUES
(1, 10000, 3, 1000003, '2023-07-14', 'Confirmed', '5.00', '10.00', '50.00', '2023-07-14'),
(3, 10000, 3, 1000003, '2023-07-14', 'Pending', '5.00', '10.00', '50.00', '2023-07-14'),
(4, 10002, 4, 1000005, '2023-07-14', 'Confirmed', '9000000.00', '888.00', '99999999.99', '2023-07-14'),
(5, 10000, 3, 1000006, '2023-07-14', 'Pending', '5.00', '35.00', '175.00', '2023-07-14'),
(6, 10003, 6, 1000005, '2023-07-14', 'Pending', '97.00', '80.00', '7760.00', '2023-07-14'),
(7, 10004, 7, 1000007, '2023-07-14', 'Pending', '899.00', '876.00', '787524.00', '2023-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pin` int(6) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `first_name`, `last_name`, `password`, `contact_number`, `district`, `pin`, `area_name`, `email_id`) VALUES
(3, 'rajiv', 'illam', '$2y$10$vUYfwG8X.Rt2k0NE0VhNmOI40ygAFMbZ43f16rDAceykEzdpCQigi', '7675463452', 'Riyadh', 56734, 'makka', 'illam@gmail.com'),
(4, 'DURGA PRASAD', 'DASH', '$2y$10$0CvfuUOv9bwRNHqQwt1yNea61eSqO7BairPhPUDwC3hJoNg5NArEC', '07978961020', 'ganjam', 761026, 'ganjam', 'durgaprasaddash1122@gmail.com'),
(5, 'DURGA PRASAD', 'Dash', '$2y$10$0eQP78KeGN01L1YF76OA3uob30kWfgPj9RsG2ZnMsbl2Eih4deJ0y', '07978961020', 'ganjam', 761026, 'ganjam', 'durgaprasaddash8247@gmail.com'),
(6, 'Ananya', 'UPADHYAYA', '$2y$10$uTV4GYrTbvtGyBtdnq7o1eMJfL3eVz3.vS.dvb.y.PalIsLDwF84m', '7896698697', 'ganjam', 761026, 'hjdfhdh', 'ananyaupadhyaya0412@gmail.com'),
(7, 'DURGA PRASAD', 'DASH', '$2y$10$2AKf2IeHQgVzG8XHqTNJwOanSM.p6s04go78UiB5iVplRipZr.wey', '07978961020', 'ganjam', 761026, 'uigkj', 'dashdurgaprasad117@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_details`
--
ALTER TABLE `crop_details`
  ADD PRIMARY KEY (`crop_id`),
  ADD KEY `fk_crop_details_farmer` (`farmer_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_customer_orders_crop` (`crop_id`),
  ADD KEY `fk_customer_orders_farmer` (`farmer_id`),
  ADD KEY `fk_customer_orders_customer` (`customer_id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crop_details`
--
ALTER TABLE `crop_details`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000008;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crop_details`
--
ALTER TABLE `crop_details`
  ADD CONSTRAINT `fk_crop_details_farmer` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`);

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `fk_customer_orders_crop` FOREIGN KEY (`crop_id`) REFERENCES `crop_details` (`crop_id`),
  ADD CONSTRAINT `fk_customer_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customer_id`),
  ADD CONSTRAINT `fk_customer_orders_farmer` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
