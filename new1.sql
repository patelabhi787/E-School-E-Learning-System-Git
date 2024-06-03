-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 26, 2021 at 06:41 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

DROP TABLE IF EXISTS `tblautonumbers`;
CREATE TABLE IF NOT EXISTS `tblautonumbers` (
  `AUTOID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL,
  PRIMARY KEY (`AUTOID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 7, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

DROP TABLE IF EXISTS `tblexercise`;
CREATE TABLE IF NOT EXISTS `tblexercise` (
  `ExerciseID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL,
  PRIMARY KEY (`ExerciseID`)
) ENGINE=InnoDB AUTO_INCREMENT=20180003 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 4, 'What is these tag known as -> a?', 'Anchor tag', 'Paragraph tag', 'Bold tag', 'Array tag', 'Anchor tag', '0000-00-00'),
(20180002, 6, 'Which one of the following is a form element?', 'text box', 'radio button', 'submit', 'all of these', 'all of these', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

DROP TABLE IF EXISTS `tbllesson`;
CREATE TABLE IF NOT EXISTS `tbllesson` (
  `LessonID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL,
  PRIMARY KEY (`LessonID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(1, 'HTML', 'Intro to HTML', 'files/1a Introduction to HTML, CSS, JavaScript & How websites work_ _ Web Development Tutorials.mp4', 'Video'),
(2, 'HTML', 'title,script,link,meta tags', 'files/1b HTML Tutorial_ Title, Script, Link & Meta Tags _ Web Development Tutorials.mp4', 'Video'),
(3, 'HTML', 'Headings and Paragraphs', 'files/1c HTML Tutorial_ Headings & Paragraphs _ Web Development Tutorials.mp4', 'Video'),
(4, 'HTML', 'Imgs & Anchor tags', 'files/1d HTML Tutorial_ Img and Anchor tags _ Web Development Tutorials.mp4', 'Video'),
(5, 'HTML', 'Lists & Tables', 'files/1e HTML Tutorial_ Lists and Tables _ Web Development Tutorials.mp4', 'Video'),
(6, 'HTML', 'Forms & Input tags', 'files/1f HTML Tutorial_ Forms & Input Tags _ Web Development Tutorials.mp4', 'Video'),
(7, 'Python Tutorial', 'Getting started with Python', 'files/2a Python Tutorial for Beginners _ Getting Started with Python.mp4', 'Video'),
(8, 'Python Tutorial', 'Variables in Python', 'files/2b Python Tutorial for Beginners _ Variables in Python.mp4', 'Video'),
(9, 'Python Tutorial', 'List in Python', 'files/2c Python Tutorial for Beginners _ List in Python.mp4', 'Video'),
(10, 'Python Tutorial', 'Tuple in Python', 'files/2d Python Tutorial for Beginners _ Tuple _ Set in Python.mp4', 'Video'),
(11, 'Python Tutorial', 'Dictionary in Python', 'files/2e Dictionary in Python.mp4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

DROP TABLE IF EXISTS `tblscore`;
CREATE TABLE IF NOT EXISTS `tblscore` (
  `ScoreID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT '1',
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ScoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(3, 'Abhishek', 'Patel', '', '9409517573', 'patelabhi', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9'),
(4, 'Student_21', 'Oberoi', '', '8758208717', 'student_21', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9'),
(5, 'Student_25', 'Jadhav', '', '9665818585', 'student_25', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

DROP TABLE IF EXISTS `tblstudentquestion`;
CREATE TABLE IF NOT EXISTS `tblstudentquestion` (
  `SQID` int(11) NOT NULL AUTO_INCREMENT,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL,
  PRIMARY KEY (`SQID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(2, 'Abhishek', 'patelabhi', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9', 'Administrator'),
(3, 'Raj', 'motwaniraj', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9', 'Administrator'),
(4, 'Sahil', 'nathanisahil', '7f2da4ba24fb5f5c7b31485cc2ad4791fd520ab9', 'Administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
