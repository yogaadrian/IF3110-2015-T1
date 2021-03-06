-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2015 at 10:12 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `question_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `name`, `email`, `content`, `question_id`, `vote`, `date`) VALUES
(3, 'Yoga', 'yoga@gmail.com', 'ikutin fery aja', 1, 29, '2015-10-13 10:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `questiontopic` varchar(255) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `question_id` int(10) NOT NULL AUTO_INCREMENT,
  `vote` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `answer` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`name`, `email`, `questiontopic`, `content`, `question_id`, `vote`, `date`, `answer`) VALUES
('bayu', 'bayu@gmail.com', 'master', 'gimana caranya jadi master?', 1, 3, '2015-10-13 10:55:30', 1),
('"asasasas"', 'yoga@gmail.com', 'aSasasdasd', 'asdasadasdasdasdsa', 3, 0, '2015-10-13 15:07:17', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
