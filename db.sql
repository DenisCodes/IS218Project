--
-- Database: `das96`
--

-- --------------------------------------------------------

--
-- Table structure for table `projectAccounts`
--
USE `das96`;-- put your database name in the single quotes

DROP TABLE IF EXISTS `projectAccounts`;

CREATE TABLE  `projectAccounts` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `college` varchar(30) DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectAccounts`
--

INSERT INTO `projectAccounts` (`id`, `email`, `fname`, `lname`, `college`, `major`, `password`) VALUES
(1, 'ers34@njit.edu', 'Eileen', 'Sanchez', 'YWCC', 'HCI', '!1234'),
(2, 'janedoe@njit.edu', 'John', 'Doe', 'ADHC', 'BME', '!1234'),


-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--
DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ownerID` int(11) DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `isdone` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `ownerID`, `duedate`, `title`, `description`, `isdone`) VALUES
(1, 1, '2017-01-01 00:00:00', 'my title', 'my description', 0),
(2, 1, '2019-05-01 00:00:00', 'my title2', 'my description2', 1),
(3, 2, '2020-06-01 00:00:00', 'my title1', 'my description1', 0),

