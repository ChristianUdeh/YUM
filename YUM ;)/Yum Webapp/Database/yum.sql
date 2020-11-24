-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2020 at 02:27 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'FS', 'christian_udeh', 'christian_udeh', '2020-03-11 15:14:44', 'no', 12),
(2, 'HEY\r\n', 'christian_udeh', 'christian_udeh', '2020-03-11 15:18:07', 'no', 12),
(3, 'j', 'christian_udeh', 'christian_udeh', '2020-03-11 17:14:20', 'no', 15),
(4, 'hey', 'christian_udeh', 'christian_udeh', '2020-03-15 14:43:47', 'no', 5),
(5, 'hey', 'christian_udeh', 'christian_udeh', '2020-03-15 14:44:05', 'no', 19),
(6, 'hey', 'abu-ubayyahsallau_aba-hurayrata', 'abu-ubayyahsallau_aba-hurayrata', '2020-03-15 17:16:12', 'no', 20),
(7, 'hey', 'abu-ubayyahsallau_aba-hurayrata', 'abu-ubayyahsallau_aba-hurayrata', '2020-03-16 12:06:57', 'no', 20),
(8, 'hey', 'abu-ubayyahsallau_aba-hurayrata', 'abu-ubayyahsallau_aba-hurayrata', '2020-03-16 12:07:07', 'no', 20),
(9, 'shiii', 'abu-ubayyahsallau_aba-hurayrata', 'abu-ubayyahsallau_aba-hurayrata', '2020-03-16 13:39:33', 'no', 22),
(10, 'hey hey ', 'john_doe', 'mimi_noodles', '2020-03-24 14:04:17', 'no', 29),
(11, 'it works', 'john_doe', 'mimi_noodles', '2020-03-24 14:08:31', 'no', 25),
(12, 'its actually working', 'john_doe', 'christian_udeh', '2020-03-24 14:10:27', 'no', 27),
(13, 'nice', 'christian_udeh', 'mimi_noodles', '2020-03-29 14:34:19', 'no', 42),
(14, 'Honestly ', 'christian_udeh', 'mimi_noodles', '2020-03-29 14:34:28', 'no', 42),
(15, 'bitch', 'john_doe', 'christian_udeh', '2020-04-19 12:19:23', 'no', 46),
(16, '😭😂', 'christian_udeh', 'mimi_noodles', '2020-05-12 18:17:09', 'no', 52),
(17, 'nice', 'christian_udeh', 'mimi_noodles', '2020-06-03 13:30:19', 'no', 58),
(18, 'hey', 'christian_udeh', 'christian_udeh', '2020-06-08 17:36:01', 'no', 59);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'abu-ubayyahsallau_aba-hurayrata', 'christian_udeh'),
(3, 'charles_udobi', 'christian_udeh'),
(11, 'john_doe', 'mimi_noodles'),
(12, 'john_snow', 'mimi_noodles');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(3, 'abu-ubayyahsallau_aba-hurayrata', 20),
(14, 'christian_udeh', 22),
(16, 'mimi_noodles', 46),
(17, 'mimi_noodles', 48),
(19, 'john_doe', 48),
(20, 'john_doe', 46),
(22, 'christian_udeh', 59),
(23, 'christian_udeh', 58);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'christian_udeh', 'mimi_noodles', 'hey chris', '2020-03-31 14:33:44', 'yes', 'yes', 'no'),
(2, 'christian_udeh', 'mimi_noodles', 'hey chris', '2020-03-31 14:34:30', 'yes', 'yes', 'no'),
(3, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 14:34:35', 'yes', 'yes', 'no'),
(4, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 14:38:15', 'yes', 'yes', 'no'),
(5, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:20:50', 'yes', 'yes', 'no'),
(6, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:23:03', 'yes', 'yes', 'no'),
(7, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:23:55', 'yes', 'yes', 'no'),
(8, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:28:49', 'yes', 'yes', 'no'),
(9, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:28:52', 'yes', 'yes', 'no'),
(10, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:30:23', 'yes', 'yes', 'no'),
(11, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:34:08', 'yes', 'yes', 'no'),
(12, 'christian_udeh', 'mimi_noodles', 'working', '2020-03-31 15:40:36', 'yes', 'yes', 'no'),
(13, 'christian_udeh', 'mimi_noodles', 'nice bro', '2020-03-31 15:40:52', 'yes', 'yes', 'no'),
(14, 'christian_udeh', 'mimi_noodles', 'nice bro', '2020-03-31 15:43:04', 'yes', 'yes', 'no'),
(15, 'christian_udeh', 'mimi_noodles', 'see', '2020-03-31 15:47:03', 'yes', 'yes', 'no'),
(16, 'mimi_noodles', 'christian_udeh', 'how far naw', '2020-03-31 15:52:24', 'yes', 'yes', 'no'),
(17, 'mimi_noodles', 'christian_udeh', 'see eh guy', '2020-03-31 15:52:31', 'yes', 'yes', 'no'),
(18, 'mimi_noodles', 'christian_udeh', 'make i just tell you', '2020-03-31 15:52:45', 'yes', 'yes', 'no'),
(19, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:52:58', 'yes', 'yes', 'no'),
(20, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:53:24', 'yes', 'yes', 'no'),
(21, 'mimi_noodles', 'christian_udeh', 'jj', '2020-03-31 15:53:41', 'yes', 'yes', 'no'),
(22, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:54:26', 'yes', 'yes', 'no'),
(23, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:54:34', 'yes', 'yes', 'no'),
(24, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:54:41', 'yes', 'yes', 'no'),
(25, 'mimi_noodles', 'christian_udeh', 'hmm', '2020-03-31 15:56:50', 'yes', 'yes', 'no'),
(26, 'mimi_noodles', 'christian_udeh', 'wagwan', '2020-03-31 15:58:05', 'yes', 'yes', 'no'),
(27, 'john_doe', 'christian_udeh', 'hey', '2020-03-31 17:21:55', 'yes', 'yes', 'no'),
(28, 'mimi_noodles', 'christian_udeh', 'how are you doing boy i hope your good', '2020-03-31 18:34:39', 'yes', 'yes', 'no'),
(29, 'john_doe', 'christian_udeh', 'hi', '2020-04-04 09:44:59', 'yes', 'yes', 'no'),
(30, 'christian_udeh', 'joshua_eseigbe', 'bitch\r\n', '2020-05-12 17:44:37', 'yes', 'yes', 'no'),
(31, 'joshua_eseigbe', 'christian_udeh', 'lol ode', '2020-05-12 18:15:46', 'no', 'no', 'no'),
(32, 'joshua_eseigbe', 'christian_udeh', 'hey', '2020-05-30 19:53:11', 'no', 'no', 'no'),
(33, 'christian_udeh', 'john_doe', 'hello\r\n', '2020-06-08 17:34:50', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, '', 'john_doe', 'John Doe liked on your post', 'post.php?id=48', '2020-04-12 10:15:24', 'no', 'no'),
(2, 'mimi_noodles', 'john_doe', 'John Doe liked on your post', 'post.php?id=48', '2020-04-12 10:18:58', 'no', 'yes'),
(3, 'mimi_noodles', 'john_doe', 'John Doe posted on your profile', 'post.php?id=50', '2020-04-12 10:19:09', 'no', 'yes'),
(4, 'christian_udeh', 'john_doe', 'John Doe liked on your post', 'post.php?id=46', '2020-04-17 15:06:24', 'yes', 'yes'),
(5, 'christian_udeh', 'john_doe', 'John Doe commented on your post', 'post.php?id=46', '2020-04-19 12:19:23', 'yes', 'yes'),
(6, 'john_doe', 'mimi_noodles', 'Maddy Sobe posted on your profile', 'post.php?id=58', '2020-05-04 06:09:59', 'no', 'yes'),
(7, 'mimi_noodles', 'christian_udeh', 'Christian Udeh commented on your post', 'post.php?id=52', '2020-05-12 18:17:09', 'no', 'no'),
(8, 'joshua_eseigbe', 'christian_udeh', 'Christian Udeh posted on your profile', 'post.php?id=59', '2020-05-30 19:52:33', 'no', 'no'),
(9, 'mimi_noodles', 'christian_udeh', 'Christian Udeh liked on your post', 'post.php?id=58', '2020-06-03 13:30:11', 'no', 'no'),
(10, 'mimi_noodles', 'christian_udeh', 'Christian Udeh commented on your post', 'post.php?id=58', '2020-06-03 13:30:19', 'no', 'no'),
(11, 'john_doe', 'christian_udeh', 'Christian Udeh commented on your profile post', 'post.php?id=58', '2020-06-03 13:30:19', 'no', 'yes'),
(12, 'joshua_eseigbe', 'christian_udeh', 'Christian Udeh commented on your profile post', 'post.php?id=59', '2020-06-08 17:36:01', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'ITS GONNA WORK NOW', 'ebere_ajoku', 'none', '2020-01-17 18:13:42', 'no', 'no', 0, ''),
(3, 'kjgr', 'ebere_ajoku', 'none', '2020-01-17 18:35:32', 'no', 'no', 0, ''),
(4, 'hey ', 'ebere_ajoku', 'none', '2020-01-17 18:38:02', 'no', 'no', 0, ''),
(5, 'hey', 'christian_udeh', 'none', '2020-02-27 18:55:51', 'no', 'no', 0, ''),
(6, 'hey\n', 'christian_udeh', 'none', '2020-02-28 13:56:01', 'no', 'no', 0, ''),
(7, 'hey', 'christian_udeh', 'none', '2020-02-29 15:37:09', 'no', 'no', 0, ''),
(8, 'hk', 'christian_udeh', 'none', '2020-03-01 01:15:42', 'no', 'no', 0, ''),
(9, 'hey . ', 'christian_udeh', 'none', '2020-03-01 01:26:05', 'no', 'yes', 0, ''),
(10, 'whats up', 'christian_udeh', 'none', '2020-03-02 16:38:52', 'no', 'no', 0, ''),
(11, 'jjz', 'christian_udeh', 'none', '2020-03-04 14:13:40', 'no', 'no', 0, ''),
(12, 'nzsj', 'christian_udeh', 'none', '2020-03-04 14:13:43', 'no', 'no', 0, ''),
(15, 'HEY', 'christian_udeh', 'none', '2020-03-11 15:15:22', 'no', 'no', 0, ''),
(16, 'crazzy', 'christian_udeh', 'none', '2020-03-11 15:51:36', 'no', 'no', 0, ''),
(17, 'chris', 'christian_udeh', 'none', '2020-03-14 15:15:48', 'no', 'no', 0, ''),
(18, '..', 'christian_udeh', 'none', '2020-03-14 15:16:02', 'no', 'no', 0, ''),
(19, 'hey', 'christian_udeh', 'none', '2020-03-14 15:16:13', 'no', 'no', 0, ''),
(20, 'testing \r\n', 'abu-ubayyahsallau_aba-hurayrata', 'none', '2020-03-15 17:14:21', 'no', 'no', 1, ''),
(21, 'hey', 'abu-ubayyahsallau_aba-hurayrata', 'none', '2020-03-16 13:39:17', 'no', 'no', 0, ''),
(22, 'whats up', 'abu-ubayyahsallau_aba-hurayrata', 'none', '2020-03-16 13:39:25', 'no', 'no', 3, ''),
(23, 'hey', 'christian_udeh', 'none', '2020-03-17 16:10:32', 'no', 'no', 0, ''),
(24, 'niggaaa', 'mimi_noodles', 'none', '2020-03-20 05:46:59', 'no', 'no', 0, ''),
(25, 'whats happening', 'mimi_noodles', 'none', '2020-03-20 05:47:06', 'no', 'no', 0, ''),
(26, 'hey', 'john_doe', 'none', '2020-03-21 11:55:49', 'no', 'no', 0, ''),
(27, 'hey', 'christian_udeh', 'none', '2020-03-23 16:56:52', 'no', 'yes', 0, ''),
(28, 'ewww', 'john_doe', 'none', '2020-03-24 11:55:34', 'no', 'yes', 0, ''),
(29, 'work', 'mimi_noodles', 'none', '2020-03-24 11:58:57', 'no', 'no', 0, ''),
(30, 'asin', 'john_doe', 'none', '2020-03-24 12:42:31', 'no', 'yes', 0, ''),
(31, 'see', 'john_doe', 'none', '2020-03-24 14:10:46', 'no', 'no', 0, ''),
(32, 'checking', 'mimi_noodles', 'none', '2020-03-27 06:27:03', 'no', 'no', 0, ''),
(33, 'checking', 'mimi_noodles', 'none', '2020-03-27 06:27:03', 'no', 'no', 0, ''),
(34, 'hyr', 'mimi_noodles', 'john_doe', '2020-03-27 16:27:47', 'no', 'no', 0, ''),
(35, 'hyr', 'mimi_noodles', 'john_doe', '2020-03-27 16:27:47', 'no', 'no', 0, ''),
(36, 'hey', 'mimi_noodles', 'john_doe', '2020-03-27 16:28:48', 'no', 'yes', 0, ''),
(37, 'hey', 'mimi_noodles', 'john_doe', '2020-03-27 16:29:01', 'no', 'no', 0, ''),
(38, 'hey', 'mimi_noodles', 'john_doe', '2020-03-28 10:24:22', 'no', 'no', 0, ''),
(39, 'hey', 'mimi_noodles', 'john_doe', '2020-03-28 10:27:19', 'no', 'no', 0, ''),
(40, 'hey', 'mimi_noodles', 'john_doe', '2020-03-28 10:27:39', 'no', 'yes', 0, ''),
(41, 'hey', 'mimi_noodles', 'john_doe', '2020-03-29 11:15:01', 'no', 'no', 0, ''),
(42, 'hey', 'mimi_noodles', 'john_doe', '2020-03-29 12:34:26', 'no', 'no', 0, ''),
(43, 'hey', 'mimi_noodles', 'christian_udeh', '2020-03-29 12:49:33', 'no', 'yes', 0, ''),
(44, 'wagwan ==', 'mimi_noodles', 'john_doe', '2020-03-29 12:50:17', 'no', 'yes', 0, ''),
(45, 'brother', 'christian_udeh', 'mimi_noodles', '2020-03-29 12:53:37', 'no', 'no', 0, ''),
(46, 'hey', 'christian_udeh', 'none', '2020-03-29 13:01:45', 'no', 'no', 2, ''),
(47, 'mhen', 'christian_udeh', 'john_doe', '2020-03-29 16:05:29', 'no', 'yes', 0, ''),
(48, 'yo yo', 'mimi_noodles', 'john_doe', '2020-03-31 11:20:54', 'no', 'no', 2, ''),
(49, 'mimi', 'christian_udeh', 'john_doe', '2020-03-31 13:09:32', 'no', 'yes', 0, ''),
(50, 'hey guy', 'john_doe', 'mimi_noodles', '2020-04-12 10:19:09', 'no', 'no', 0, ''),
(51, 'https://youtu.be/_jqEqmc35yk', 'mimi_noodles', 'none', '2020-05-04 04:33:11', 'no', 'yes', 0, ''),
(52, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Te3ZnS4QUK4\'></iframe><br>', 'mimi_noodles', 'none', '2020-05-04 04:38:35', 'no', 'no', 0, ''),
(53, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/WTRkvynslu0\'></iframe><br>', 'mimi_noodles', 'none', '2020-05-04 04:41:14', 'no', 'no', 0, ''),
(54, 'johnny depp\r\n', 'mimi_noodles', 'none', '2020-05-04 04:58:24', 'no', 'no', 0, ''),
(55, 'hey', 'mimi_noodles', 'none', '2020-05-04 06:01:21', 'no', 'no', 0, ''),
(56, 'hey', 'mimi_noodles', 'none', '2020-05-04 06:03:06', 'no', 'yes', 0, ''),
(57, 'purple', 'mimi_noodles', 'none', '2020-05-04 06:03:50', 'no', 'no', 0, 'assets/images/posts/5eaf9426ab5f711XNtNd26CL._SX331_BO1,204,203,200_.jpg'),
(58, 'hmm', 'mimi_noodles', 'john_doe', '2020-05-04 06:09:59', 'no', 'no', 1, ''),
(59, 'i am an ewu', 'christian_udeh', 'joshua_eseigbe', '2020-05-30 19:52:33', 'no', 'no', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Johnny', 1),
('Depprn', 1),
('Purple', 1),
('Hmm', 1),
('Ewu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num-likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num-likes`, `user_closed`, `friend_array`) VALUES
(7, 'Christian', 'Udeh', 'christian_udeh', 'Christianu198@gmail.com', '757b852a99de4511263dbdb19bbfc3f5', '2020-01-06', 'assets/images/profile_pic/christian_udeh3c71df1d45b913f79a3720712cadf452n.jpeg', 34, 0, 'no', ',madeleine_soberekon,\r\njohn_doe,john_doe,mimi_noodles,joshua_eseigbe,'),
(9, 'Madeleine', 'Soberekon', 'madeleine_soberekon', 'Soberekon13@gmail.com', 'f36bca574e9c0f892fb018afaffb3424', '2020-01-12', 'assets/images/profile_pic/defaults/head_emerald.png', 0, 0, 'no', ',christian_udeh,'),
(13, 'Maddy', 'Sobe', 'mimi_noodles', 'Mimi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-03-20', 'assets/images/profile_pic/mimi_noodlesfee0aee8c353269395c210b0c474c268n.jpeg', 23, 0, 'no', ',christian_udeh,'),
(14, 'John', 'Doe', 'john_doe', 'John@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-03-21', 'assets/images/profile_pic/defaults/head_emerald.png', 5, 0, 'no', ',christian_udeh,christian_udeh,'),
(15, 'John', 'Snow', 'john_snow', 'Johnsnow@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-05-04', 'assets/images/profile_pic/defaults/head_emerald.png', 0, 0, 'no', ','),
(16, 'Joshua', 'Eseigbe', 'joshua_eseigbe', 'Joshsupersport@gmail.com', '662f0059608902aaaf47299022f207ca', '2020-05-12', 'assets/images/profile_pic/defaults/head_deep_blue.png', 0, 0, 'no', ',christian_udeh,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
