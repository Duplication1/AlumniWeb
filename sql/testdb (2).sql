-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 07:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_alumni`
--

CREATE TABLE `add_alumni` (
  `alumni_id` int(11) DEFAULT NULL,
  `add_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `campus` varchar(100) DEFAULT NULL,
  `facebooklink` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_alumni_list`
--

CREATE TABLE `add_alumni_list` (
  `alumni_id` int(11) DEFAULT NULL,
  `add_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `campus` varchar(100) DEFAULT NULL,
  `facebooklink` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_alumni_list`
--

INSERT INTO `add_alumni_list` (`alumni_id`, `add_id`, `firstname`, `lastname`, `middlename`, `age`, `contactnumber`, `email`, `address`, `course`, `campus`, `facebooklink`, `description`, `profile_picture`) VALUES
(10, 7, 'Kim', 'Gamot', 'Fernandez', 21, '3213123213', 'gamotkim96@gmail.com', 'dasdadasdd', 'dasdsa', 'dasds', 'dasdsa', 'dasd', 'images/Cat03.jpg'),
(13, 8, 'noobs', 'pasca', 'Fernandez', 21, '3213123213', 'gamotkim96@gmail.com', 'dasdadasdd', 'dasdsa', 'dasds', 'dasdsa', '213231321', 'images/Cat03.jpg'),
(11, 10, 'pasca', 'pasca', 'pascas', 21, '3213123213', 'sadsad', 'dasdadasdd', 'dasdsa', 'dasds', 'dasdsa', 'dsad', 'images/Cat03.jpg'),
(15, 12, 'DSADA', 'DASDSADAS', 'DASDAS', 21, '3213123213', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dasd', 'images/Cat03.jpg'),
(16, 13, 'buh ', 'DASDSADAS', 'gamot', 21, '3213123213', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dasdsa', 'images/Cat03.jpg'),
(17, 14, 'test3', 'gamot', 'dsad', 0, '0', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dsadas', 'images/Cat03.jpg'),
(18, 21, 'menard', 'DASDSADAS', 'DASDAS', 21, '3213123213', 'sdasd', 'dasdadasdd', 'BSIT', 'SB CAMPUS', 'FACEBOOK.COM/KIMKIMGAMO', 'noobs', 'images/Cat03.jpg'),
(19, 22, 'Kima', 'Gamota', 'Fernandez', 21, '3213123213', 'gamotkim96@gmail.com', 'dasdadasdd', 'dsa', 'ds', 'dsa', 'das', 'images/Cat03.jpg'),
(21, 23, 'bryan', 'casipe', 'c', 19, '934324', 'bryancasipe38@gmail.com', '22 klayaan', 'BSIT', 'San mateo', 'Bryan Casipe', '', 'images/Cat03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `add_alumni_profile`
--

CREATE TABLE `add_alumni_profile` (
  `alumni_id` int(11) DEFAULT NULL,
  `add_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `campus` varchar(100) DEFAULT NULL,
  `facebooklink` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_alumni_profile`
--

INSERT INTO `add_alumni_profile` (`alumni_id`, `add_id`, `firstname`, `lastname`, `middlename`, `age`, `contactnumber`, `email`, `address`, `course`, `campus`, `facebooklink`, `description`, `profile_picture`) VALUES
(10, 3, 'pasca', 'asdsa', 'fafsa', 21, '3213123213', 'gamotkim96@gmail.com', '32231EQWE', 'ds', 'dsa', 'dsadsa', 'dsa', 'images/Cat03.jpg'),
(13, 4, 'noobs', 'pasca', 'Fernandez', 21, '3213123213', 'gamotkim96@gmail.com', 'dasdadasdd', 'dasdsa', 'dasds', 'dasdsa', '213231321', 'images/Cat03.jpg'),
(11, 6, 'pasca', 'pasca', 'pascas', 21, '3213123213', 'sadsad', 'dasdadasdd', 'dasdsa', 'dasds', 'dasdsa', 'dsad', 'images/Cat03.jpg'),
(14, 7, 'test', 'test', 'test', 21, '0', 'dsada', 'dsadas', 'dsadas', 'dasdsadsa', 'dsa', 'dsad', 'images/Cat03.jpg'),
(15, 8, 'DSADA', 'DASDSADAS', 'DASDAS', 21, '3213123213', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dasd', 'images/Cat03.jpg'),
(16, 9, 'buh ', 'DASDSADAS', 'gamot', 21, '3213123213', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dasdsa', 'images/Cat03.jpg'),
(17, 10, 'test3', 'gamot', 'dsad', 0, '0', 'gamotkim96@gmail.com', '32231EQWE', 'dsadsa', 'd', 'dsadas', 'dsadas', 'images/Cat03.jpg'),
(18, 17, 'menard', 'DASDSADAS', 'DASDAS', 21, '3213123213', 'sdasd', 'dasdadasdd', 'BSIT', 'SB CAMPUS', 'FACEBOOK.COM/KIMKIMGAMO', 'dsadsa', 'images/Cat03.jpg'),
(19, 18, 'Kima', 'Gamota', 'Fernandez', 21, '3213123213', 'gamotkim96@gmail.com', 'dasdadasdd', 'dsa', 'ds', 'dsa', 'das', 'images/Cat03.jpg'),
(21, 19, 'bryan', 'casipe', 'c', 19, '934324', 'bryancasipe38@gmail.com', '22 klayaan', 'BSIT', 'San mateo', 'Bryan Casipe', '', 'images/Cat03.jpg'),
(22, 20, 'Peter', 'Varca', 'I', 19, '923023131', 'peterjohn@gmail.com', '22 klayaan', 'BSIT', 'San mateo', 'Peter John Varca', '', 'images/kim.jpg'),
(23, 21, 'Shizuku', 'Murasake', 'B', 19, '92234123', 'ShizukuM@gmail.com', '32231 Canda st', 'BSIT', 'San mateo', 'Shizuku Murasake', '', 'images/kim.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ID` int(255) NOT NULL,
  `USERNAME` int(255) DEFAULT NULL,
  `PASSWORD` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 0, 12345);

-- --------------------------------------------------------

--
-- Table structure for table `asks_table`
--

CREATE TABLE `asks_table` (
  `post_id` int(11) NOT NULL,
  `alumni_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `related_topic` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asks_table`
--

INSERT INTO `asks_table` (`post_id`, `alumni_id`, `title`, `description`, `related_topic`, `created_at`) VALUES
(4, 10, 'Actual title', 'Actual Description:', 'job', '2024-04-30 02:52:08'),
(6, 10, 'adsdas', '<?php\r\n\r\n// Check if the form is submitted\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\") {\r\n    // Establish database connection\r\n    $conn = new mysqli(\"localhost\", \"root\", \"\", \"testdb\");\r\n\r\n    // Check if the connection was successful\r\n    if ($conn->connect_error) {\r\n        die(\"Connection failed: \" . $conn->connect_error);\r\n    }\r\n\r\n    // Retrieve form data\r\n    $post_id = $_POST[\"ask_id\"]; // Assuming \'ask_id\' is the name of the hidden input field containing the post ID\r\n    $commenter_id = $_SESSION[\"user_id\"]; // Assuming \'user_id\' is the session variable containing the user ID\r\n    $comment_content = $_POST[\"comment_content\"];\r\n\r\n    // Prepare SQL statement to insert the comment into the database\r\n    $insertQuery = \"INSERT INTO comments (post_id, commenter_id, comment_content) VALUES (?, ?, ?)\";\r\n    $stmt = $conn->prepare($insertQuery);\r\n    $stmt->bind_param(\"iis\", $post_id, $commenter_id, $comment_content);\r\n\r\n    // Execute the statement\r\n    if ($stmt->execute()) {\r\n        // Comment inserted successfully\r\n        echo \"Comment added successfully!\";\r\n    } else {\r\n        // Error occurred while inserting comment\r\n        echo \"Error: \" . $insertQuery . \"<br>\" . $conn->error;\r\n    }\r\n\r\n    // Close statement and connection\r\n    $stmt->close();\r\n    $conn->close();\r\n} else {\r\n    // Redirect to the page where the form is located (if needed)\r\n    header(\"Location: your_page.php\");\r\n    exit();\r\n}\r\n\r\n?>\r\n', 'qcu', '2024-04-30 03:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `commenter_id` int(11) DEFAULT NULL,
  `comment_content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `commenter_id`, `comment_content`, `created_at`) VALUES
(19, 4, 10, 'dsadas', '2024-04-30 03:59:22'),
(24, 6, NULL, 'dsadasdasdsa', '2024-04-30 04:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `event_table`
--

CREATE TABLE `event_table` (
  `EVENTID` int(255) NOT NULL,
  `EVENTNAME` varchar(255) DEFAULT NULL,
  `EVENTDESCRIPTION` varchar(255) DEFAULT NULL,
  `EVENTDATE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_table`
--

INSERT INTO `event_table` (`EVENTID`, `EVENTNAME`, `EVENTDESCRIPTION`, `EVENTDATE`) VALUES
(5, 'dsadsa', 'sadsadsadsa', ''),
(6, 'Reunion', 'Batch 2022', '2024-04-02'),
(7, 'DOGSHIT', 'dsda', '2024-04-26'),
(8, 'dsadsa', 'sdada', '2024-04-04'),
(9, 'dsadsa', 'SDADASD', '2024-04-11'),
(10, 'dsadsa', 'DSADSAD', '2024-04-24'),
(11, 'DSADAS', 'DSADSA', '2024-04-17'),
(12, 'dsad', 'dsa', '2024-04-03'),
(13, 'DOGSHIT', 'dsadsad', '2024-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `like_id` int(11) NOT NULL,
  `alumni_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`like_id`, `alumni_id`, `post_id`) VALUES
(159, 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `post_table`
--

CREATE TABLE `post_table` (
  `alumni_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `postcontent` varchar(255) DEFAULT NULL,
  `like_count` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_table`
--

INSERT INTO `post_table` (`alumni_id`, `post_id`, `postcontent`, `like_count`) VALUES
(10, 8, 'buh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reject_alumni_list`
--

CREATE TABLE `reject_alumni_list` (
  `alumni_id` int(11) DEFAULT NULL,
  `add_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `campus` varchar(100) DEFAULT NULL,
  `facebooklink` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reject_alumni_list`
--

INSERT INTO `reject_alumni_list` (`alumni_id`, `add_id`, `firstname`, `lastname`, `middlename`, `age`, `contactnumber`, `email`, `address`, `course`, `campus`, `facebooklink`, `description`, `profile_picture`) VALUES
(23, 25, 'Shizuku', 'Murasake', 'B', 19, '92234123', 'ShizukuM@gmail.com', '32231 Canda st', 'BSIT', 'San mateo', 'Shizuku Murasake', '', 'images/kim.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `alumni_id` int(255) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`alumni_id`, `EMAIL`, `PASSWORD`, `USERNAME`) VALUES
(10, 'gamotkim96@gmail.com', '123', 'dup'),
(11, 'pasca@gmail.com', '123', 'pasca'),
(12, 'menard@gmail.com', '123', 'menard'),
(13, 'noobs@gmail.com', '123', 'noobs'),
(14, 'test@gmail.com', '123', 'test'),
(15, 'aa@gmail.com', '123', 'aa'),
(16, 'test2@gmail.com', '123', 'test2'),
(17, 'test3@gmail.com', '123', 'test3'),
(18, 'test4@gmail.com', '123', 'test4'),
(19, 'test5@gmail.com', '123', 'test5'),
(20, 'don@gmail.com', '123456', 'don'),
(21, 'bryancasipe38@gmail.com', 'brybry', 'bryan'),
(22, 'peterjohn@gmail.com', 'peter', 'peterjohn'),
(23, 'Shizuku@gmail.com', '123456', 'Shizuku');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_alumni`
--
ALTER TABLE `add_alumni`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `add_alumni_list`
--
ALTER TABLE `add_alumni_list`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `add_alumni_profile`
--
ALTER TABLE `add_alumni_profile`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asks_table`
--
ALTER TABLE `asks_table`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `commenter_id` (`commenter_id`);

--
-- Indexes for table `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`EVENTID`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD UNIQUE KEY `unique_like` (`alumni_id`,`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_table`
--
ALTER TABLE `post_table`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `reject_alumni_list`
--
ALTER TABLE `reject_alumni_list`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `alumni_id` (`alumni_id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`alumni_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_alumni`
--
ALTER TABLE `add_alumni`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `add_alumni_list`
--
ALTER TABLE `add_alumni_list`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `add_alumni_profile`
--
ALTER TABLE `add_alumni_profile`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asks_table`
--
ALTER TABLE `asks_table`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `event_table`
--
ALTER TABLE `event_table`
  MODIFY `EVENTID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `post_table`
--
ALTER TABLE `post_table`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reject_alumni_list`
--
ALTER TABLE `reject_alumni_list`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `alumni_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_alumni`
--
ALTER TABLE `add_alumni`
  ADD CONSTRAINT `add_alumni_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`);

--
-- Constraints for table `add_alumni_list`
--
ALTER TABLE `add_alumni_list`
  ADD CONSTRAINT `add_alumni_list_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`);

--
-- Constraints for table `add_alumni_profile`
--
ALTER TABLE `add_alumni_profile`
  ADD CONSTRAINT `add_alumni_profile_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`);

--
-- Constraints for table `asks_table`
--
ALTER TABLE `asks_table`
  ADD CONSTRAINT `asks_table_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `asks_table` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`commenter_id`) REFERENCES `table_user` (`alumni_id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`),
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post_table` (`post_id`);

--
-- Constraints for table `post_table`
--
ALTER TABLE `post_table`
  ADD CONSTRAINT `post_table_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`);

--
-- Constraints for table `reject_alumni_list`
--
ALTER TABLE `reject_alumni_list`
  ADD CONSTRAINT `reject_alumni_list_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `table_user` (`alumni_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
