-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-11 11:38:11
-- 服务器版本： 10.1.8-MariaDB
-- PHP Version: 5.5.30

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

CREATE TABLE IF NOT EXISTS `assistant` (
  `id` int(11) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `a_number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='辅导员';

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

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `classtime_id` int(11) NOT NULL,
  `mac_id` int(11) DEFAULT NULL,
  `kaoqin` int(11) NOT NULL DEFAULT '0' COMMENT '0未签到，1已签到。2迟到'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='考勤表';

--
-- 转存表中的数据 `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `classtime_id`, `mac_id`, `kaoqin`) VALUES
(1, 1, 1, 1, 0),
(2, 2, 2, 1, 0),
(3, 1, 3, 1, 0),
(4, 2, 3, 1, 0),
(5, 1, 4, 1, 1),
(6, 1, 6, 1, 2),
(7, 1, 8, 1, 0),
(8, 1, 11, 1, 0),
(9, 2, 11, 1, 0),
(10, 3, 11, 1, 0),
(11, 4, 11, 1, 0),
(12, 2, 8, 1, 0),
(13, 3, 8, 1, 0),
(14, 4, 8, 1, 0),
(15, 1, 9, 1, 2),
(16, 1, 16, 1, 1),
(17, 1, 17, 1, 2),
(18, 1, 18, 1, 2),
(19, 2, 16, 1, 0),
(20, 2, 17, 1, 0),
(21, 2, 18, 1, 0),
(22, 1, 19, 3, 0),
(23, 1, 20, 3, 1),
(24, 2, 20, 2, 2),
(28, 3, 20, 1, 1),
(29, 4, 20, NULL, 0),
(32, 2, 21, 2, 2),
(33, 3, 21, 3, 1),
(34, 4, 21, NULL, 0),
(35, 1, 21, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL,
  `cl_name` varchar(30) NOT NULL,
  `cl_number` int(11) NOT NULL,
  `banzhang` varchar(30) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='班级表';

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

CREATE TABLE IF NOT EXISTS `classtime` (
  `id` int(11) NOT NULL,
  `lesson` int(11) NOT NULL,
  `weeklyTimes` int(11) NOT NULL,
  `weeks` varchar(20) NOT NULL,
  `course_jihua_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='上课时间表';

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
(21, 1, 16, 'wed', 1);

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL,
  `co_name` varchar(20) NOT NULL,
  `co_number` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='课程表';

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

CREATE TABLE IF NOT EXISTS `course_jihua` (
  `id` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `major_jihua_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='课程计划表';

--
-- 转存表中的数据 `course_jihua`
--

INSERT INTO `course_jihua` (`id`, `semester`, `course_id`, `major_jihua_id`) VALUES
(1, '第一学期', 1, 1),
(2, '第二学期', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `mac`
--

CREATE TABLE IF NOT EXISTS `mac` (
  `id` int(11) NOT NULL,
  `mac` varchar(60) NOT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='课室电脑表';

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

CREATE TABLE IF NOT EXISTS `major` (
  `id` int(11) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `jieshao` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专业表';

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

CREATE TABLE IF NOT EXISTS `major_jihua` (
  `id` int(11) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专业计划表';

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

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

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

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='老师表';

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
  ADD KEY `mac_id` (`mac_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assistant`
--
ALTER TABLE `assistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `classtime`
--
ALTER TABLE `classtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_jihua`
--
ALTER TABLE `course_jihua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mac`
--
ALTER TABLE `mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `major_jihua`
--
ALTER TABLE `major_jihua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`classtime_id`) REFERENCES `classtime` (`id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`mac_id`) REFERENCES `mac` (`id`);

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
