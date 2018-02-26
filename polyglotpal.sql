-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2016 at 01:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polyglotpal`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `MessageID` int(11) NOT NULL,
  `Sender` varchar(225) NOT NULL,
  `Receiver` varchar(225) NOT NULL,
  `Message` mediumtext NOT NULL,
  `Message_Translated` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`MessageID`, `Sender`, `Receiver`, `Message`, `Message_Translated`) VALUES
(0, 'r@gmail.com', 'rohan@apple.com', 'hi Rahul', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">hi Rahul</string>'),
(0, 'r@gmail.com', 'rohan@apple.com', 'howdy', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">howdy</string>'),
(0, 'r@gmail.com', 'rohan@apple.com', 'hey', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">hey</string>'),
(0, 'r@gmail.com', 'rohan@apple.com', 'kkk', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">kkk</string>'),
(0, 'r@gmail.com', 'rohan@apple.com', 'Oye', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">Oye</string>'),
(0, 'rohan@apple.com', 'r@gmail.com', 'Bonjour', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">Bonjour</string>'),
(0, 'rohan@apple.com', 'r@gmail.com', 'Hola', '<string xmlns="http://schemas.microsoft.com/2003/10/Serialization/">Hola</string>');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `PID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `Comment` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`PID`, `UID`, `CID`, `Comment`, `status`) VALUES
(1, 10, 1, 'Your effort is good', 'unread'),
(207, 200, 2, 'Your effort is good', 'unread'),
(209, 10, 3, 'Hell yeah!', 'read'),
(207, 5, 4, 'Good going!', 'unread'),
(100, 120, 112, 'Hey there!', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `Name` varchar(225) NOT NULL,
  `EMail` varchar(225) NOT NULL,
  `Message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`Name`, `EMail`, `Message`) VALUES
('Rohan', 'rohan@apple.com', 'Nice\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `ID` int(11) NOT NULL,
  `UserID1` int(11) NOT NULL,
  `UserID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`ID`, `UserID1`, `UserID2`) VALUES
(3, 5, 1),
(4, 5, 10),
(5, 5, 14);

-- --------------------------------------------------------

--
-- Table structure for table `friend_request`
--

CREATE TABLE `friend_request` (
  `FromID` int(11) NOT NULL,
  `ToID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_request`
--

INSERT INTO `friend_request` (`FromID`, `ToID`) VALUES
(5, 10),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Message_ID` int(11) NOT NULL,
  `Sender` varchar(225) NOT NULL,
  `Receiver` varchar(225) NOT NULL,
  `Message` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Message_ID`, `Sender`, `Receiver`, `Message`) VALUES
(1, 'r@gmail.com', 'rohan@apple.com', 'hi'),
(2, 'r@gmail.com', 'rohan@apple.com', 'Hey Rohan :))'),
(3, 'r@gmail.com', 'rohan@apple.com', 'hey there'),
(4, 'rohan@apple.com', 'r@gmail.com', 'Hey how is eeerything at your side??'),
(6, 'rohan@apple.com', 'r@gmail.com', 'Hi\n'),
(8, 'crap@gmail.com', 'rohan@apple.com', 'Hey there rohan!'),
(9, 'crap@gmail.com', 'rohan@apple.com', 'Waddduuuuuup!');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `UID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Content` varchar(10000) NOT NULL,
  `Language` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`UID`, `PID`, `Content`, `Language`, `status`) VALUES
(5, 1, 'Hello', 'English', 'unread'),
(5, 2, 'Bonjour', 'French', 'unread'),
(10, 5, 'Hola', 'Spanish', 'unread'),
(1, 6, 'Helllllloooo', 'English', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `EMail` varchar(40) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Language1` varchar(10) NOT NULL,
  `Language2` varchar(10) NOT NULL,
  `UserImage` blob,
  `Online` int(11) NOT NULL DEFAULT '0',
  `Translate_Message` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FName`, `LName`, `EMail`, `DateOfBirth`, `Sex`, `Password`, `Language1`, `Language2`, `UserImage`, `Online`, `Translate_Message`) VALUES
(1, 'Rahul', 'Gupta', 'r@gmail.com', '1998-06-23', 'Male', 'qwerty', 'English', 'French', NULL, 1, 0),
(5, 'Rohan', 'Gupta', 'rohan@apple.com', '1996-04-17', 'Male', 'qwerty', 'English', 'Spanish', NULL, 1, 1),
(10, 'Shawn', 'Wrona', 'crap@gmail.com', '1990-03-19', 'Male', 'Aus', 'English', 'German', NULL, 0, 1),
(14, 'Raj', 'Kapoor', 'raj@email.com', '1950-03-12', 'option1', 'asd', 'Spanish', 'German', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Message_ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Message_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
