-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-12 09:50:24
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kqxt`
--
CREATE DATABASE IF NOT EXISTS `kqxt` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kqxt`;

-- --------------------------------------------------------

--
-- 表的结构 `assistant`
--

CREATE TABLE `assistant` (
  `id` int(11) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `a_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='辅导员';

--
-- 转存表中的数据 `assistant`
--

INSERT INTO `assistant` (`id`, `a_name`, `a_number`) VALUES
(1, '吴辅导', 20171),
(2, '谢辅导', 20172);

-- --------------------------------------------------------

--
-- 表的结构 `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `classtime_id` int(11) NOT NULL,
  `ip_id` int(10) DEFAULT NULL,
  `kaoqin` int(11) NOT NULL DEFAULT '0' COMMENT '0未签到，1已签到。2迟到',
  `grade` varchar(20) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤表';

--
-- 转存表中的数据 `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `classtime_id`, `ip_id`, `kaoqin`, `grade`, `comment`) VALUES
(1, 1, 1, NULL, 0, NULL, NULL),
(2, 2, 2, NULL, 0, NULL, NULL),
(3, 1, 3, NULL, 0, NULL, NULL),
(4, 2, 3, NULL, 0, NULL, NULL),
(5, 1, 4, NULL, 1, NULL, NULL),
(6, 1, 6, NULL, 2, NULL, NULL),
(7, 1, 8, NULL, 0, NULL, NULL),
(8, 1, 11, NULL, 0, NULL, NULL),
(9, 2, 11, NULL, 0, NULL, NULL),
(10, 3, 11, NULL, 0, NULL, NULL),
(11, 4, 11, NULL, 0, NULL, NULL),
(12, 2, 8, NULL, 0, NULL, NULL),
(13, 3, 8, NULL, 0, NULL, NULL),
(14, 4, 8, NULL, 0, NULL, NULL),
(15, 1, 9, NULL, 2, NULL, NULL),
(16, 1, 16, NULL, 1, NULL, NULL),
(17, 1, 17, NULL, 2, NULL, NULL),
(18, 1, 18, NULL, 2, NULL, NULL),
(19, 2, 16, NULL, 0, NULL, NULL),
(20, 2, 17, NULL, 0, NULL, NULL),
(21, 2, 18, NULL, 0, NULL, NULL),
(22, 1, 19, NULL, 0, NULL, NULL),
(23, 1, 20, NULL, 1, NULL, NULL),
(24, 2, 20, NULL, 2, NULL, NULL),
(28, 3, 20, NULL, 1, NULL, NULL),
(29, 4, 20, NULL, 0, NULL, NULL),
(32, 2, 21, NULL, 2, NULL, NULL),
(33, 3, 21, NULL, 1, NULL, NULL),
(34, 4, 21, NULL, 0, NULL, NULL),
(35, 1, 21, NULL, 1, NULL, NULL),
(36, 1, 22, 3, 2, NULL, NULL),
(37, 2, 22, 4, 2, NULL, NULL),
(38, 3, 22, 5, 2, NULL, NULL),
(39, 1, 23, NULL, 0, NULL, NULL),
(40, 1, 24, NULL, 0, NULL, NULL),
(41, 1, 25, NULL, 0, NULL, NULL),
(42, 1, 26, 1, 2, NULL, NULL),
(43, 2, 23, NULL, 0, NULL, NULL),
(44, 2, 24, NULL, 0, NULL, NULL),
(45, 2, 25, 1, 2, NULL, NULL),
(46, 2, 26, NULL, 0, NULL, NULL),
(47, 3, 23, NULL, 0, NULL, NULL),
(48, 3, 24, NULL, 0, NULL, NULL),
(49, 3, 25, NULL, 0, NULL, NULL),
(50, 3, 26, NULL, 0, NULL, NULL),
(51, 4, 23, NULL, 0, NULL, NULL),
(52, 4, 24, NULL, 0, NULL, NULL),
(53, 4, 25, NULL, 0, NULL, NULL),
(54, 4, 26, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `cl_name` varchar(30) NOT NULL,
  `cl_number` int(11) NOT NULL,
  `banzhang` varchar(30) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `cl_name`, `cl_number`, `banzhang`, `major_id`) VALUES
(1, '17网络3班', 47, '黄先生', 1),
(2, '17英语教育2班', 42, '郭同学', 2);

-- --------------------------------------------------------

--
-- 表的结构 `classtime`
--

CREATE TABLE `classtime` (
  `id` int(11) NOT NULL,
  `lesson` int(11) NOT NULL,
  `weeklyTimes` int(11) NOT NULL,
  `weeks` varchar(20) NOT NULL,
  `course_jihua_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上课时间表';

--
-- 转存表中的数据 `classtime`
--

INSERT INTO `classtime` (`id`, `lesson`, `weeklyTimes`, `weeks`, `course_jihua_id`) VALUES
(1, 4, 15, 'Mon', 1),
(2, 4, 15, 'Tue', 2),
(3, 4, 15, 'Thu', 1),
(4, 1, 15, 'Sun', 1),
(6, 3, 15, 'Sun', 1),
(8, 5, 15, 'Sun', 1),
(9, 7, 15, 'Sun', 1),
(10, 3, 16, 'Wed', 1),
(11, 1, 16, 'Mon', 1),
(12, 3, 16, 'Tue', 1),
(13, 5, 16, 'Thu', 1),
(14, 7, 16, 'Fri', 1),
(15, 1, 16, 'Sat', 1),
(16, 3, 16, 'Mon', 1),
(17, 5, 16, 'Mon', 1),
(18, 7, 16, 'Mon', 1),
(19, 5, 16, 'Tue', 1),
(20, 7, 16, 'Tue', 1),
(21, 1, 16, 'wed', 1),
(22, 7, 16, 'wed', 1),
(23, 1, 16, 'Thu', 1),
(24, 3, 16, 'Thu', 1),
(25, 5, 16, 'Thu', 1),
(26, 7, 16, 'Thu', 1);

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `co_name` varchar(20) NOT NULL,
  `co_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`id`, `co_name`, `co_number`) VALUES
(1, 'web响应式开发', '25f21'),
(2, 'HTML5 App开发', '14n15');

-- --------------------------------------------------------

--
-- 表的结构 `course_jihua`
--

CREATE TABLE `course_jihua` (
  `id` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `major_jihua_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程计划表';

--
-- 转存表中的数据 `course_jihua`
--

INSERT INTO `course_jihua` (`id`, `semester`, `course_id`, `major_jihua_id`) VALUES
(1, '第一学期', 1, 1),
(2, '第二学期', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ip`
--

CREATE TABLE `ip` (
  `id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ip`
--

INSERT INTO `ip` (`id`, `ip`, `row`, `col`) VALUES
(1, '10.20.10.144', 6, 4),
(2, '10.20.10.145', 6, 5),
(3, '192.168.137.1', 2, 5),
(4, '192.168.137.52', 2, 4),
(5, '192.168.137.187', 3, 4);

-- --------------------------------------------------------

--
-- 表的结构 `mac`
--

CREATE TABLE `mac` (
  `id` int(11) NOT NULL,
  `mac` varchar(60) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课室电脑表';

--
-- 转存表中的数据 `mac`
--

INSERT INTO `mac` (`id`, `mac`, `row`, `col`) VALUES
(1, '00-23-24-C3-EC-8C', 3, 2),
(2, '00-23-24-C3-EB-AF', 5, 4),
(3, '60-14-B3-BB-06-3F', 2, 5),
(4, '54-E1-AD-A2-FD-54', 2, 4);

-- --------------------------------------------------------

--
-- 表的结构 `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `jieshao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业表';

--
-- 转存表中的数据 `major`
--

INSERT INTO `major` (`id`, `m_name`, `jieshao`) VALUES
(1, '计算机网络技术', '计算机网络技术'),
(2, '英语教育', '英语教育');

-- --------------------------------------------------------

--
-- 表的结构 `major_jihua`
--

CREATE TABLE `major_jihua` (
  `id` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业计划表';

--
-- 转存表中的数据 `major_jihua`
--

INSERT INTO `major_jihua` (`id`, `grade`, `major_id`) VALUES
(1, '2017-1', 1),
(2, '2017-2', 1);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `s_name`, `s_number`, `class_id`) VALUES
(1, '曾同学', 2017001, 1),
(2, '孙同学', 2017002, 2),
(3, '张三', 2017003, 2),
(4, '李四', 2017004, 2);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老师表';

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `t_name`, `t_number`) VALUES
(1, '张老师', 201701),
(2, '梁老师', 201702);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `classtime_id` (`classtime_id`),
  ADD KEY `ip_id` (`ip_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `classtime`
--
ALTER TABLE `classtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_jihua_id` (`course_jihua_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_jihua`
--
ALTER TABLE `course_jihua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `major_jihua_id` (`major_jihua_id`);

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mac`
--
ALTER TABLE `mac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major_jihua`
--
ALTER TABLE `major_jihua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `assistant`
--
ALTER TABLE `assistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `classtime`
--
ALTER TABLE `classtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `course_jihua`
--
ALTER TABLE `course_jihua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `mac`
--
ALTER TABLE `mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `major`
--
ALTER TABLE `major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `major_jihua`
--
ALTER TABLE `major_jihua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`classtime_id`) REFERENCES `classtime` (`id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`ip_id`) REFERENCES `ip` (`id`);

--
-- 限制表 `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major_jihua` (`id`);

--
-- 限制表 `classtime`
--
ALTER TABLE `classtime`
  ADD CONSTRAINT `classtime_ibfk_1` FOREIGN KEY (`course_jihua_id`) REFERENCES `course_jihua` (`id`);

--
-- 限制表 `course_jihua`
--
ALTER TABLE `course_jihua`
  ADD CONSTRAINT `course_jihua_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `course_jihua_ibfk_2` FOREIGN KEY (`major_jihua_id`) REFERENCES `major_jihua` (`id`);

--
-- 限制表 `major_jihua`
--
ALTER TABLE `major_jihua`
  ADD CONSTRAINT `major_jihua_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`);

--
-- 限制表 `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
