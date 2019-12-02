-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-02 00:57:16
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
  `a-name` varchar(20) NOT NULL,
  `a-number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='辅导员';

--
-- 转存表中的数据 `assistant`
--

INSERT INTO `assistant` (`id`, `a-name`, `a-number`) VALUES
(1, '吴辅导', 20171),
(2, '谢辅导', 20172);

-- --------------------------------------------------------

--
-- 表的结构 `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `classtime_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤表';

--
-- 转存表中的数据 `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `classtime_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `banzhang` varchar(30) NOT NULL,
  `major_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `name`, `number`, `banzhang`, `major_id`) VALUES
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
(1, 4, 2, '周一', 1),
(2, 4, 2, '周三', 2);

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`id`, `name`, `number`) VALUES
(1, '英语教育', '25f21'),
(2, '汽车维修', '14n15');

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
(1, '第二学期', 1, 1),
(2, '第一学期', 1, 1);

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
(1, '00-23-24-C3-EC-8C', 6, 1),
(2, '00-23-24-C3-EB-AF', 5, 4);

-- --------------------------------------------------------

--
-- 表的结构 `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jieshao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业表';

--
-- 转存表中的数据 `major`
--

INSERT INTO `major` (`id`, `name`, `jieshao`) VALUES
(1, '计算机', '计算机网络技术'),
(2, '英语', '英语教育');

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
  `s-name` varchar(20) NOT NULL,
  `s-number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `s-name`, `s-number`, `class_id`) VALUES
(1, '曾同学', 2017001, 1),
(2, '孙同学', 2017002, 2);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `t-name` varchar(20) NOT NULL,
  `t-number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老师表';

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `t-name`, `t-number`) VALUES
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
  ADD KEY `classtime_id` (`classtime_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `classtime`
--
ALTER TABLE `classtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- 使用表AUTO_INCREMENT `mac`
--
ALTER TABLE `mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`classtime_id`) REFERENCES `classtime` (`id`);

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
