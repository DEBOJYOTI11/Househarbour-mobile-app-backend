-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2017 at 02:24 PM
-- Server version: 5.5.52-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `househarbour`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `article` text,
  `aut_name` varchar(40) DEFAULT NULL,
  `aut_pic` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `likes` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`article`, `aut_name`, `aut_pic`, `date`, `id`, `title`, `likes`) VALUES
('hello guys !! cheers :)', 'Debo Paul', 'debo.jpg', '2017-01-07 01:14:24', 2, 'From the guy on the left!', 61);

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE IF NOT EXISTS `description` (
  `food` varchar(50) DEFAULT NULL,
  `pic1` varchar(15) DEFAULT NULL,
  `pic2` varchar(15) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `pic3` varchar(15) DEFAULT NULL,
  `pic4` varchar(15) DEFAULT NULL,
  `extra` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`food`, `pic1`, `pic2`, `id`, `pic3`, `pic4`, `extra`) VALUES
('optional', '11.jpg', '12.jpg', 24, '13.jpg', '14.jpg', ' Advance fee structure:<br>Rent+Security=Rs10,000.<br>Bedroom types:<br>Single room=Rs p.m <br>Double room=Rs5,000 p.m <br>Cuisine:(3 times a day) <br>Veg/Non-veg. <br>Wifi facility=available(Rs200 p.m). <br>Bathrooms=4(Geyser provided). <br>Warm water=Yes. <br>Water availability=24x7. <br>Landmark:Road by St.Margaret''s School. <br>'),
('optional', '21.jpg', '22.jpg', 25, '23.jpg', '24.jpg', '\n											Bedroom types: <br>\n											Single room=Rs5,000 p.m <br>\n											Double room=Rs4,000 p.m <br>\n											Total capacity=22. <br>\n											Warm water=Yes. <br>\n											Water availability=24x7. <br>\n											Cuisine:(3 times a day) <br>\n											Khasi traditional food  <br>\n											Optional:Veg/Non-veg. <br>\n											Landmark:Near RKM Laitumkhrah. <br>\n'),
('optional', '31.jpg', '32.jpg', 26, '33.jpg', '34.jpg', '\nBedroom types: <br>\nDouble room=Rs7,000 p.m <br>\nTriple room=Rs6,000 p.m  <br>\nTotal capacity=25.  <br>\nCuisine:(3 times a day)  <br>\nFood type:multi-traditional.  <br>\nElectricity=Rs4,000 p.a  <br>\nBathroom=4.  <br>\nWarm water=Yes.  <br>\nWater availability=24x7. <br>\nLandmark:Near Shillong Law College. <br>\n'),
('optional', '41.jpg', '42.jpg', 27, '43.jpg', '44.jpg', '\nBedroom types: <br>\nSingle room=Rs5,000 p.m <br>\nDouble room=Rs5,000 p.m <br>\nTotal capacity=20. <br>\nCuisine:(3 times a day) <br>\nVeg/Non-veg. <br>\nWifi facility=available. <br>\nBathrooms=5. <br>\nWarm water=Yes. <br>\nWater availability=24x7. <br>\nLandmark:Opposite The Wok Resturant(Fire-Brigade).'),
('optional', '51.jpg', '52.jpg', 28, '53.jpg', '54.jpg', '\nBedroom types:   <br>\nDouble room=Rs5,000 p.m <br>\nTotal capacity=20. <br>\nCuisine:(3 times a day) <br>\nMorning=veg. <br>\nEvening=Non-veg. <br>\nBathrooms=10girls(2-Bathroom) <br>\nWarm water=Yes. <br>\nWater availability=24x7. <br>\nPreference=Students from Anthonys'',Edmund''s,St.Mary''s,etc. <br>\nLandmark:Road beside Super Care. <br>'),
('optional', '61.jpg', '62.jpg', 29, '63.jpg', '64.jpg', '\nBedroom types: <br>\nTwo beds=Rs1,500 p.m <br>\nThree beds=Rs1,500 p.m <br>\nfour beds=Rs1,500 p.m  <br>\nMess fee=Rs3,000 p.m   <br>\nCuisine:(3 times a day)   <br>\nVeg/Non-veg. <br>\nTotal capacity=50.   <br>\nWifi facility=available.    <br>\nBathrooms=5(Geyser provided).   <br>\nWarm water=Yes.  <br>\nWater availability=24x7. <br>\nLandmark:Road along Nazareth Hospital.'),
('optional', '71.jpg', '72.jpg', 30, '73.jpg', '74.jpg', '\nBedroom types: <br>\nSingle room=Rs4,000 p.m <br>\nDouble room=Rs3,500 p.m <br>\nAvailability: <br>\nDouble room=4. <br>\nSingle room=18. <br>\nCuisine:(3 times a day) <br>\nVeg/Non-veg. <br>\nTotal capacity=26. <br>\nBathrooms=3(Geyser provided). <br>\nWarm water=Yes. <br>\nWater availability=24x7. <br>\nLandmark:Opposite Fire Brigade ground. <br>'),
('optional', '81.jpg', '82.jpg', 31, '83.jpg', '84.jpg', '\nRoom types: <br>\nAttached bathroom and kitchen=Rs4,000 p.m <br>\nDouble room=Rs6,000 p.m--->(Food is also provided)  <br>\nAvailability: <br>\nAttached bathroom and kitchen=7. <br>\nDouble room=12 <br>\nTotal capacity=26. <br>\nBathrooms(For 12 occupants)=2. <br>\nWarm water=Yes. <br>\nWater availability=24x7. <br>\nLandmark:Opposite Fire Brigade ground.'),
('optional', '91.jpg', '92.jpg', 32, '93.jpg', '94.jpg', '\nRoom types: <br>\nSingle room=Rs4,500 p.m <br>\nDouble room(Single occupant)=Rs5,000 p.m <br>\nDouble room(Two occupants)=Rs2,500 p.m <br>\nCuisine: <br>\nMorning:Veg. <br>\nEvening:Non-veg. <br>\nTotal capacity=32. <br>\nBathrooms=1(Geyser provided)+3(Toilets). <br>\nWarm water=Yes. <br>\nWater availability=24x7. <br>\nParking:Yes\n'),
('optional', '101.jpg', '102.jpg', 33, '103.jpg', '104.jpg', 'Bedroom types: <br>\nSingle room=Rs6,000 p.m <br> \nDouble room=Rs5,000 p.m <br>\nTriple room=Rs4,500 p.m  <br>\nTotal capacity=50.  <br>\nCuisine:(3 times a day)  <br>\nFood type:Veg/Non Veg.  <br>\nBathroom=Every floor 1 bathroom(geyser).  <br>\nWarm water=Yes.  <br>\nWater availability=24x7. <br>\nLandmark:Near Umshrypi College. <br>');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `feed` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE IF NOT EXISTS `hostels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameH` varchar(40) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `price` varchar(60) NOT NULL,
  `address` varchar(70) DEFAULT NULL,
  `pic` varchar(15) DEFAULT NULL,
  `warden` int(11) DEFAULT NULL,
  `decription` int(11) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `place` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `nameH`, `type`, `price`, `address`, `pic`, `warden`, `decription`, `locality`, `capacity`, `place`) VALUES
(24, 'Lucky Mary Shabong Boys Hostel', 1, '5000', 'Upland Road, Laitumkhrah Road by St. Margaret’s School', '1.jpg', 1, 1, 'Laitumkhrah', 30, 1),
(25, 'Rupaya Girls Hostel', 0, '4000', 'Sebastian Bia Road, Laitumkhrah Near RKM Laitumkhrah', '2.jpg', 2, 2, 'Laitumkhrah', 22, 1),
(26, 'Sonia Girls Hostel', 0, '7000', 'Dhankheti , Near Shillong Law college', '3.jpg', 3, 3, 'Dhankheti', 25, 1),
(27, 'a Lacarte', 0, '5000', 'Fire Brigade ,Opposite The Wok Restuarant', '4.jpg', 4, 4, 'Fire Brigade', 20, 1),
(28, 'Jordine’s Girls Hostel', 0, '5000', 'Lummawrie, Laitumkhrah Road beside Super Care', '5.jpg', 5, 5, 'Laitumkhrah', 20, 1),
(29, 'Albatros Girls Hostel', 0, '1500', 'Arbuth Nut Road, Laitumkhrah Road along Nazareth Hospital', '6.jpg', 6, 6, 'Laitumkhrah', 50, 1),
(30, 'Ribha Girls Hostel', 0, '4000', 'Fire Brigade , Opposite Fire Brigade Ground', '7.jpg', 7, 7, 'Fire Brigade', 26, 1),
(31, 'Ribha Girls PG', 0, 'Not specified', 'Fire Brigade , Opposite Fire Brigade Ground', '8.jpg', 8, 8, 'Fire Brigade', 19, 0),
(32, 'Osisa Boys Hostel', 1, '4500', 'Jing Kieng, Springfield', '9.jpg', 9, 9, 'Jing Kieng', 32, 1),
(33, 'Rolyne Girls'' Hostel', 0, '6000(single)/5000(double)/4500(triple)', 'Near Umshrypi College', '10.jpg', 10, 10, 'Red Cross Hospital', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warden`
--

CREATE TABLE IF NOT EXISTS `warden` (
  `name` varchar(20) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warden`
--

INSERT INTO `warden` (`name`, `gender`, `picture`, `id`, `contact`, `email`) VALUES
('Rupaya Kharbina', 0, '2w.jpg', 25, '8014366727', ''),
('Reeta Ao', 0, 'unknown.jpg', 26, '9863443662', 'kharbinarupaya123@gmail.com'),
('Nalini Bhuyan', 0, 'unknown.jpg', 27, '9863086123', 'aoritain@gmail.com'),
('Sapna Kharkongor', 0, '5w.jpg', 28, '9436164704', ''),
('M.Shylla', 0, 'unknown.jpg', 29, '9774754771', ''),
('Simone Shadap', 0, 'unknown.jpg', 30, '9774012135', 'omarshadap100@gmail.com'),
('Simone Shadap', 0, 'unknown.jpg', 31, '9774012135', 'omarshadap100@gmail.com'),
('Omar Shadap', 1, '9w.jpg', 32, '9615138103', 'omarshadap100@gmail.com'),
('Lucky mary', 0, '1w.jpg', 24, '9856824355', ''),
('Clara Nongrum', 0, '10w.jpg', 33, '8794715261', '1968claranongrum@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hostels` (`id`);

--
-- Constraints for table `warden`
--
ALTER TABLE `warden`
  ADD CONSTRAINT `warden_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hostels` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
