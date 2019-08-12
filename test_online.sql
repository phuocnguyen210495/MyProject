-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2019 lúc 05:17 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test_online`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer_options`
--

CREATE TABLE `answer_options` (
  `id` int(11) NOT NULL,
  `content` text,
  `correct` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `media` varchar(256) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `answer_options`
--

INSERT INTO `answer_options` (`id`, `content`, `correct`, `created_at`, `media`, `updated_at`, `question_id`) VALUES
(239, 'Sao thủy', 0, '2019-06-07 22:49:33', NULL, NULL, 78),
(238, 'Sao kim', 1, '2019-06-07 22:49:33', NULL, NULL, 78),
(237, 'Sao Hỏa', 0, '2019-06-07 22:49:33', NULL, NULL, 78),
(236, 'Ấn Độ', 0, '2019-06-07 22:49:33', NULL, NULL, 77),
(9, 'Tam giác cân', 0, '2019-06-07 21:16:40', NULL, NULL, 4),
(10, 'Tam giác đều', 0, '2019-06-07 21:16:40', NULL, NULL, 4),
(11, 'Tam giác vuông', 1, '2019-06-07 21:16:40', NULL, NULL, 4),
(12, 'Tam giác thường', 0, '2019-06-07 21:16:40', NULL, NULL, 4),
(13, '184', 0, '2019-06-07 21:16:40', NULL, NULL, 5),
(14, '188', 1, '2019-06-07 21:16:40', NULL, NULL, 5),
(15, '192', 0, '2019-06-07 21:16:40', NULL, NULL, 5),
(16, '200', 0, '2019-06-07 21:16:40', NULL, NULL, 5),
(233, 'Chủ tịch quốc hội', 0, '2019-06-07 22:49:33', NULL, NULL, 76),
(234, 'Ả Rập', 1, '2019-06-07 22:49:33', NULL, NULL, 77),
(235, 'Triều Tiên', 0, '2019-06-07 22:49:33', NULL, NULL, 77),
(231, 'Tổng bí thư', 0, '2019-06-07 22:49:33', NULL, NULL, 76),
(232, 'Chủ tịch nước', 1, '2019-06-07 22:49:33', NULL, NULL, 76),
(229, 'Nhân thực', 1, '2019-06-07 22:49:33', NULL, NULL, 75),
(230, 'Nhân sơ', 0, '2019-06-07 22:49:33', NULL, NULL, 75),
(226, 'Nguyễn', 0, '2019-06-07 22:49:33', NULL, NULL, 74),
(227, 'Hậu Lê', 1, '2019-06-07 22:49:33', NULL, NULL, 74),
(228, 'Trần', 0, '2019-06-07 22:49:33', NULL, NULL, 74),
(224, 'Võ Nguyên Giáp', 0, '2019-06-07 22:49:33', NULL, NULL, 73),
(209, 'Nghệ An', 0, '2019-06-07 22:44:53', NULL, NULL, 67),
(225, 'La Văn Cầu', 1, '2019-06-07 22:49:33', NULL, NULL, 73),
(208, 'Thanh Hóa', 0, '2019-06-07 22:44:53', NULL, NULL, 67),
(207, 'Hải Phòng', 1, '2019-06-07 22:44:53', NULL, NULL, 67),
(206, 'dap an 2', 0, '2019-06-07 22:44:53', NULL, NULL, 66),
(205, 'Bài tiết', 0, '2019-06-07 22:44:53', NULL, NULL, 66),
(50, 'mũi', 0, '2019-06-07 22:35:14', NULL, NULL, 24),
(51, 'mồm', 1, '2019-06-07 22:35:14', NULL, NULL, 24),
(52, 'tay', 0, '2019-06-07 22:35:14', NULL, NULL, 24),
(53, 'chân', 0, '2019-06-07 22:35:14', NULL, NULL, 24),
(54, '6', 0, '2019-06-07 22:35:14', NULL, NULL, 25),
(55, '5', 0, '2019-06-07 22:35:14', NULL, NULL, 25),
(56, '3', 0, '2019-06-07 22:35:14', NULL, NULL, 25),
(57, '9', 1, '2019-06-07 22:35:14', NULL, NULL, 25),
(58, '65', 0, '2019-06-07 22:35:14', NULL, NULL, 26),
(59, '44', 0, '2019-06-07 22:35:14', NULL, NULL, 26),
(60, '33', 0, '2019-06-07 22:35:14', NULL, NULL, 26),
(61, '70', 1, '2019-06-07 22:35:14', NULL, NULL, 26),
(62, 'củi', 0, '2019-06-07 22:35:14', NULL, NULL, 27),
(63, 'đá', 0, '2019-06-07 22:35:14', NULL, NULL, 27),
(64, 'than', 1, '2019-06-07 22:35:14', NULL, NULL, 27),
(65, 'dầu', 0, '2019-06-07 22:35:14', NULL, NULL, 27),
(66, '5', 0, '2019-06-07 22:35:14', NULL, NULL, 28),
(67, '6', 0, '2019-06-07 22:35:14', NULL, NULL, 28),
(68, '3', 1, '2019-06-07 22:35:14', NULL, NULL, 28),
(69, '4', 1, '2019-06-07 22:35:14', NULL, NULL, 28),
(70, 'giầy', 0, '2019-06-07 22:35:14', NULL, NULL, 29),
(71, 'dép', 0, '2019-06-07 22:35:14', NULL, NULL, 29),
(72, 'áo', 1, '2019-06-07 22:35:14', NULL, NULL, 29),
(73, 'quần', 0, '2019-06-07 22:35:14', NULL, NULL, 29),
(74, 'bàn', 0, '2019-06-07 22:35:14', NULL, NULL, 30),
(75, 'lọ hoa', 0, '2019-06-07 22:35:14', NULL, NULL, 30),
(76, 'dép', 0, '2019-06-07 22:35:14', NULL, NULL, 30),
(77, 'ghế', 1, '2019-06-07 22:35:14', NULL, NULL, 30),
(78, 'nhà nghỉ', 0, '2019-06-07 22:35:14', NULL, NULL, 31),
(79, 'nhà nước', 1, '2019-06-07 22:35:14', NULL, NULL, 31),
(80, 'phường', 0, '2019-06-07 22:35:14', NULL, NULL, 31),
(81, 'huyện', 0, '2019-06-07 22:35:14', NULL, NULL, 31),
(244, 'Barack Obama', 0, '2019-06-07 22:49:33', NULL, NULL, 80),
(245, 'George W. Bush', 0, '2019-06-07 22:49:33', NULL, NULL, 80),
(242, '3', 0, '2019-06-07 22:49:33', NULL, NULL, 79),
(243, 'Donald Trump', 1, '2019-06-07 22:49:33', NULL, NULL, 80),
(223, 'Đồng', 1, '2019-06-07 22:49:33', NULL, NULL, 72),
(222, 'Sắt', 0, '2019-06-07 22:49:33', NULL, NULL, 72),
(204, 'Hô hấp', 1, '2019-06-07 22:44:53', NULL, NULL, 66),
(202, '9', 0, '2019-06-07 22:44:53', NULL, NULL, 65),
(203, '10', 0, '2019-06-07 22:44:53', NULL, NULL, 65),
(163, 'Neymar', 1, '2019-06-07 22:44:53', NULL, NULL, 52),
(164, 'hazard', 0, '2019-06-07 22:44:53', NULL, NULL, 52),
(165, 'Cristiano Ronando', 0, '2019-06-07 22:44:53', NULL, NULL, 52),
(166, 'Đảng', 1, '2019-06-07 22:44:53', NULL, NULL, 53),
(167, 'Đoàn', 0, '2019-06-07 22:44:53', NULL, NULL, 53),
(168, 'Đội', 0, '2019-06-07 22:44:53', NULL, NULL, 53),
(169, '9', 1, '2019-06-07 22:44:53', NULL, NULL, 54),
(170, '10', 0, '2019-06-07 22:44:53', NULL, NULL, 54),
(171, '11', 0, '2019-06-07 22:44:53', NULL, NULL, 54),
(172, 'Ánh kim', 1, '2019-06-07 22:44:53', NULL, NULL, 55),
(173, 'Dễ phân tách', 0, '2019-06-07 22:44:53', NULL, NULL, 55),
(174, 'Dễ biến dạng', 0, '2019-06-07 22:44:53', NULL, NULL, 55),
(175, 'Lai Châu', 1, '2019-06-07 22:44:53', NULL, NULL, 56),
(176, 'Sơn La', 0, '2019-06-07 22:44:53', NULL, NULL, 56),
(177, 'Yên Bái', 0, '2019-06-07 22:44:53', NULL, NULL, 56),
(178, 'Phản xạ không điều kiện', 1, '2019-06-07 22:44:53', NULL, NULL, 57),
(179, 'Phản xạ có điều kiện', 0, '2019-06-07 22:44:53', NULL, NULL, 57),
(180, 'Động năng', 1, '2019-06-07 22:44:53', NULL, NULL, 58),
(181, 'Thế năng', 0, '2019-06-07 22:44:53', NULL, NULL, 58),
(182, 'dap an 2', 0, '2019-06-07 22:44:53', NULL, NULL, 58),
(183, '217', 1, '2019-06-07 22:44:53', NULL, NULL, 59),
(184, '2017', 0, '2019-06-07 22:44:53', NULL, NULL, 59),
(185, '2152', 0, '2019-06-07 22:44:53', NULL, NULL, 59),
(186, 'Hà Nội', 1, '2019-06-07 22:44:53', NULL, NULL, 60),
(187, 'TP. HCM', 0, '2019-06-07 22:44:53', NULL, NULL, 60),
(188, 'Thanh Hóa', 0, '2019-06-07 22:44:53', NULL, NULL, 60),
(189, 'Giảm', 1, '2019-06-07 22:44:53', NULL, NULL, 61),
(190, 'Tăng', 0, '2019-06-07 22:44:53', NULL, NULL, 61),
(191, 'dap an 2', 0, '2019-06-07 22:44:53', NULL, NULL, 61),
(192, 'Teakwondo', 1, '2019-06-07 22:44:53', NULL, NULL, 62),
(193, 'Karate', 0, '2019-06-07 22:44:53', NULL, NULL, 62),
(194, 'thể dục dụng cụ', 0, '2019-06-07 22:44:53', NULL, NULL, 62),
(195, 'Nóng', 1, '2019-06-07 22:44:53', NULL, NULL, 63),
(196, 'Nguội', 0, '2019-06-07 22:44:53', NULL, NULL, 63),
(197, 'dap an 2', 0, '2019-06-07 22:44:53', NULL, NULL, 63),
(198, 'Bacl2', 1, '2019-06-07 22:44:53', NULL, NULL, 64),
(199, 'Nacl', 0, '2019-06-07 22:44:53', NULL, NULL, 64),
(200, 'Cacl2', 0, '2019-06-07 22:44:53', NULL, NULL, 64),
(201, '8', 1, '2019-06-07 22:44:53', NULL, NULL, 65),
(156, 'Nhân thực', 1, '2019-06-07 22:37:20', NULL, NULL, NULL),
(157, 'Nhân sơ', 0, '2019-06-07 22:37:20', NULL, NULL, NULL),
(158, 'dap an 2', 0, '2019-06-07 22:37:20', NULL, NULL, NULL),
(159, '', 0, '2019-06-07 22:37:20', NULL, NULL, NULL),
(241, '2', 1, '2019-06-07 22:49:33', NULL, NULL, 79),
(240, '1', 0, '2019-06-07 22:49:33', NULL, NULL, 79),
(246, 'Bắc Băng Dương', 1, '2019-06-07 22:49:33', NULL, NULL, 81),
(247, 'Ấn Độ Dương', 0, '2019-06-07 22:49:33', NULL, NULL, 81),
(248, 'Thái Bình Dương', 0, '2019-06-07 22:49:33', NULL, NULL, 81),
(249, 'Gen trội', 0, '2019-06-07 22:49:33', NULL, NULL, 82),
(250, 'Gen lặn', 1, '2019-06-07 22:49:33', NULL, NULL, 82),
(251, 'Bình Dương', 0, '2019-06-07 22:49:33', NULL, NULL, 83),
(252, 'Hải Dương', 1, '2019-06-07 22:49:33', NULL, NULL, 83),
(253, 'Hà Nội', 0, '2019-06-07 22:49:33', NULL, NULL, 83),
(254, 'Hà Nội', 1, '2019-06-07 22:49:33', NULL, NULL, 84),
(255, 'Hải Phòng', 0, '2019-06-07 22:49:33', NULL, NULL, 84),
(256, 'Đà Nẵng', 0, '2019-06-07 22:49:33', NULL, NULL, 84),
(257, 'Bón thúc', 0, '2019-06-07 22:49:33', NULL, NULL, 85),
(258, 'Bón lót', 1, '2019-06-07 22:49:33', NULL, NULL, 85),
(259, 'A', 0, '2019-06-07 22:49:33', NULL, NULL, 86),
(260, 'B', 0, '2019-06-07 22:49:33', NULL, NULL, 86),
(261, 'E', 1, '2019-06-07 22:49:33', NULL, NULL, 86),
(262, 'Địa', 0, '2019-06-07 22:49:33', NULL, NULL, 87),
(263, 'Sử', 1, '2019-06-07 22:49:33', NULL, NULL, 87),
(264, 'Hóa', 0, '2019-06-07 22:49:33', NULL, NULL, 87),
(265, 'Sao Paolo', 0, '2019-06-07 22:49:33', NULL, NULL, 88),
(266, 'Rio De Jeneiro', 1, '2019-06-07 22:49:33', NULL, NULL, 88),
(267, 'Brasilia', 0, '2019-06-07 22:49:33', NULL, NULL, 88),
(268, '5', 1, '2019-06-07 22:49:33', NULL, NULL, 89),
(269, '6', 0, '2019-06-07 22:49:33', NULL, NULL, 89),
(270, '7', 0, '2019-06-07 22:49:33', NULL, NULL, 89),
(271, 'Malaysia', 0, '2019-06-07 22:49:33', NULL, NULL, 90),
(272, 'Thailand', 0, '2019-06-07 22:49:33', NULL, NULL, 90),
(273, 'Indonesia', 1, '2019-06-07 22:49:33', NULL, NULL, 90),
(274, '28', 0, '2019-06-07 22:49:33', NULL, NULL, 91),
(275, '29', 1, '2019-06-07 22:49:33', NULL, NULL, 91),
(276, '30', 0, '2019-06-07 22:49:33', NULL, NULL, 91),
(277, 'Tổ hợp', 0, '2019-06-07 22:49:33', NULL, NULL, 92),
(278, 'Chỉnh hợp', 1, '2019-06-07 22:49:33', NULL, NULL, 92),
(279, '0', 1, '2019-06-07 22:49:33', NULL, NULL, 93),
(280, '1', 0, '2019-06-07 22:49:33', NULL, NULL, 93),
(281, '2', 0, '2019-06-07 22:49:33', NULL, NULL, 93);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chapters`
--

INSERT INTO `chapters` (`id`, `created_at`, `name`, `updated_at`, `subject_id`, `parent_id`) VALUES
(1, '2019-06-07 21:07:14', 'Tổng hợp nhiều thể loại', NULL, 1, 0),
(2, '2019-06-07 21:14:58', 'Toán từ lớp 1 đến lớp 12', NULL, 2, 0),
(3, '2019-06-09 23:07:26', 'Xem ảnh đoán địa điểm', NULL, 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter_exam`
--

CREATE TABLE `chapter_exam` (
  `chapter_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `percentage` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmcjob`
--

CREATE TABLE `cmcjob` (
  `id` int(11) NOT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `job_name` varchar(120) NOT NULL,
  `link_content` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `email`, `message`, `name`, `phone`, `subject`, `created_at`) VALUES
(1, 't.congnamvn@gmail.com', 'asdfasdfdasdf ádfasdfsaddsfasdfas', 'Trần Công Nam', '0813889046', 'ê tiệp, liên hệ :D', '2019-05-24 22:15:57'),
(2, 't.congnamvn@gmail.com', 'asfasdfsdfasd afasas ', 'Trần Công Nam', '0813889046', 'fassd asfsdfav a', '2019-05-24 22:16:17'),
(3, 'admin@gmail.com', 'ghghghghgh', 'admin', '', '12121212', '2019-05-25 16:42:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `domains`
--

INSERT INTO `domains` (`id`, `created_at`, `name`, `updated_at`, `subject_id`) VALUES
(1, '2019-06-07 21:07:24', 'Đọc', NULL, 1),
(2, '2019-06-07 21:15:13', 'Đọc', NULL, 2),
(3, '2019-06-09 23:07:42', 'Đọc', NULL, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domain_exam`
--

CREATE TABLE `domain_exam` (
  `domain_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `percentage` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `create_type` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `decription` text,
  `end_date` datetime DEFAULT NULL,
  `max_attempt` int(11) DEFAULT NULL,
  `media` varchar(256) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `percent_passing` int(11) DEFAULT NULL,
  `question_num` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `time` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exams`
--

INSERT INTO `exams` (`id`, `code`, `create_type`, `created_at`, `decription`, `end_date`, `max_attempt`, `media`, `name`, `percent_passing`, `question_num`, `start_date`, `status`, `time`, `title`, `type`, `updated_at`, `subject_id`, `creator_id`) VALUES
(1, 'Th11489 ', 1, '2019-06-07 22:52:08', 'Rất khó', '2019-06-21 00:00:00', 10, '', 'Bài thi chấm điểm ', 80, 20, '2019-06-07 00:00:00', 1, 12, 'Bài thi demo', 0, NULL, 1, 15),
(2, 'T194404 ', 1, '2019-06-10 22:37:21', 'Không có gì', '2019-06-20 00:00:00', 12, '', 'Bài thi toán kỳ 2', 80, 10, '2019-06-10 00:00:00', 1, 12, 'Bài thi toán', 0, '2019-06-10 22:45:23', 2, 15),
(3, 'Th565746 ', 1, '2019-06-10 22:38:17', 'Không có gì', '2019-06-13 00:00:00', 6, '', 'Bài thi tổng hợp', 80, 12, '2019-06-10 00:00:00', 1, 12, 'Bài thi tổng hợp', 0, NULL, 1, 15),
(4, 'Th228062 ', 1, '2019-06-10 22:39:57', 'Không có gì', '2019-06-19 00:00:00', 2, '', 'Bài thi đầu vào', 90, 12, '2019-06-10 00:00:00', 1, 12, 'Bài thi đầu vào', 0, NULL, 1, 15),
(5, 'Th802677 ', 1, '2019-06-10 22:41:07', 'k', '2019-06-28 00:00:00', 12, '', 'Bài thi trí tuệ', 80, 12, '2019-06-10 00:00:00', 1, 10, 'Bài thi trí tuệ', 0, '2019-06-10 22:45:07', 1, 15),
(6, 'T618274 ', 1, '2019-06-10 22:42:18', 'khong co gi', '2019-06-20 00:00:00', 12, '', 'Bài thi kiểm tra chất lượng đầu vào', 80, 10, '2019-06-10 00:00:00', 1, 12, 'Bài thi kiểm tra chất lượng đầu vào', 0, '2019-06-10 22:44:47', 2, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_answer`
--

CREATE TABLE `exam_answer` (
  `question_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `choose_answer` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_answer`
--

INSERT INTO `exam_answer` (`question_id`, `result_id`, `id`, `choose_answer`) VALUES
(75, 1, 0, '[229]'),
(83, 1, 0, '[252]'),
(53, 1, 0, '[167]'),
(78, 1, 0, '[239]'),
(77, 1, 0, '[235]'),
(52, 1, 0, '[164]'),
(73, 1, 0, '[224]'),
(58, 1, 0, '[180]'),
(72, 1, 0, '[222]'),
(74, 1, 0, '[227]'),
(57, 1, 0, '[178]'),
(79, 1, 0, '[241]'),
(54, 1, 0, '[170]'),
(55, 1, 0, '[173]'),
(82, 1, 0, '[249]'),
(76, 1, 0, '[232]'),
(81, 1, 0, '[247]'),
(60, 1, 0, '[187]'),
(80, 1, 0, '[244]'),
(56, 1, 0, '[176]'),
(78, 3, 0, '[238]'),
(74, 3, 0, '[226]'),
(55, 3, 0, '[172]'),
(77, 3, 0, '[236]'),
(56, 3, 0, '[176]'),
(60, 3, 0, '[187]'),
(52, 3, 0, '[163]'),
(83, 3, 0, '[251]'),
(73, 3, 0, '[224]'),
(82, 3, 0, '[250]'),
(76, 3, 0, '[232]'),
(81, 3, 0, '[246]'),
(79, 3, 0, '[242]'),
(75, 3, 0, '[230]'),
(53, 3, 0, '[168]'),
(54, 3, 0, '[171]'),
(72, 3, 0, '[222]'),
(57, 3, 0, '[178]'),
(58, 3, 0, '[181]'),
(80, 3, 0, '[244]'),
(30, 4, 0, '[77]'),
(5, 4, 0, '[14]'),
(27, 4, 0, '[64]'),
(26, 4, 0, '[61]'),
(28, 4, 0, '[68,69]'),
(29, 4, 0, '[72]'),
(24, 4, 0, '[51]'),
(25, 4, 0, '[57]'),
(31, 4, 0, '[79]'),
(4, 4, 0, '[11]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_group`
--

CREATE TABLE `exam_group` (
  `exam_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_group`
--

INSERT INTO `exam_group` (`exam_id`, `group_id`, `id`) VALUES
(22, 2, 0),
(22, 1, 0),
(23, 1, 0),
(23, 2, 0),
(29, 1, 0),
(31, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_questions`
--

CREATE TABLE `exam_questions` (
  `exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_questions`
--

INSERT INTO `exam_questions` (`exam_id`, `question_id`, `id`) VALUES
(1, 52, 0),
(1, 80, 0),
(1, 60, 0),
(1, 57, 0),
(1, 58, 0),
(1, 56, 0),
(1, 72, 0),
(1, 55, 0),
(1, 53, 0),
(1, 54, 0),
(1, 83, 0),
(1, 77, 0),
(1, 82, 0),
(1, 73, 0),
(1, 74, 0),
(1, 75, 0),
(1, 76, 0),
(1, 81, 0),
(1, 79, 0),
(1, 78, 0),
(2, 24, 0),
(2, 31, 0),
(2, 4, 0),
(2, 25, 0),
(2, 30, 0),
(2, 29, 0),
(2, 28, 0),
(2, 5, 0),
(2, 27, 0),
(2, 26, 0),
(3, 80, 0),
(3, 52, 0),
(3, 53, 0),
(3, 72, 0),
(3, 82, 0),
(3, 81, 0),
(3, 83, 0),
(3, 73, 0),
(3, 74, 0),
(3, 76, 0),
(3, 79, 0),
(3, 78, 0),
(4, 74, 0),
(4, 76, 0),
(4, 73, 0),
(4, 83, 0),
(4, 57, 0),
(4, 56, 0),
(4, 81, 0),
(4, 82, 0),
(4, 72, 0),
(4, 55, 0),
(4, 54, 0),
(4, 53, 0),
(5, 74, 0),
(5, 75, 0),
(5, 82, 0),
(5, 72, 0),
(5, 83, 0),
(5, 73, 0),
(5, 57, 0),
(5, 54, 0),
(5, 55, 0),
(5, 52, 0),
(5, 56, 0),
(5, 53, 0),
(6, 26, 0),
(6, 5, 0),
(6, 27, 0),
(6, 25, 0),
(6, 31, 0),
(6, 30, 0),
(6, 4, 0),
(6, 24, 0),
(6, 28, 0),
(6, 29, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_result`
--

CREATE TABLE `exam_result` (
  `id` int(11) NOT NULL,
  `by_chapter` int(11) NOT NULL,
  `by_domain` int(11) NOT NULL,
  `correct_num` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `pass` tinyint(1) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `total_score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_result`
--

INSERT INTO `exam_result` (`id`, `by_chapter`, `by_domain`, `correct_num`, `created_at`, `end_date`, `start_date`, `update_at`, `exam_id`, `user_id`, `completed`, `pass`, `time`, `total_score`) VALUES
(1, 7, 7, 7, '2019-06-07 23:10:42', '2019-06-07 23:11:29', '2019-06-07 23:10:42', '2019-06-07 23:11:29', 1, 15, 1, 0, '0:47', 0.35),
(2, 0, 0, 0, '2019-06-09 23:15:17', '2019-06-09 23:27:19', '2019-06-09 23:15:17', '2019-06-09 23:27:19', 1, 15, 1, 0, '12:2', 0),
(3, 7, 7, 7, '2019-06-09 23:36:24', '2019-06-09 23:38:16', '2019-06-09 23:36:24', '2019-06-09 23:38:16', 1, 15, 1, 0, '1:52', 0.35),
(4, 10, 10, 10, '2019-06-10 22:53:08', '2019-06-10 22:55:06', '2019-06-10 22:53:08', '2019-06-10 22:55:06', 2, 15, 1, 1, '1:58', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_setting`
--

CREATE TABLE `exam_setting` (
  `chapter_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `question_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_setting`
--

INSERT INTO `exam_setting` (`chapter_id`, `domain_id`, `exam_id`, `id`, `question_num`) VALUES
(16, 5, 32, 0, 10),
(16, 5, 33, 0, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_user`
--

CREATE TABLE `exam_user` (
  `exam_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam_user`
--

INSERT INTO `exam_user` (`exam_id`, `user_id`, `id`) VALUES
(1, 15, 0),
(1, 1, 0),
(2, 1, 0),
(2, 15, 0),
(2, 16, 0),
(2, 14, 0),
(2, 3, 0),
(2, 4, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 0),
(3, 1, 0),
(3, 15, 0),
(3, 16, 0),
(3, 14, 0),
(3, 3, 0),
(3, 4, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 11, 0),
(3, 12, 0),
(4, 1, 0),
(4, 15, 0),
(4, 16, 0),
(4, 14, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 11, 0),
(4, 12, 0),
(6, 1, 0),
(6, 15, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `created_at`, `name`, `parent_id`, `type`, `updated_at`) VALUES
(1, '2018-12-21 00:00:00', 'RRC', 1, 'sfdfdf', NULL),
(2, '2018-12-21 00:00:00', 'CMC helo hi hdjhfjdhfjdhfjdfhjdhfjdhfjdfjdhfjd', 1, '1', '2019-05-22 21:29:47'),
(3, '2019-05-23 00:07:31', 'hello', 0, '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(2),
(2),
(2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hr_type` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `link` varchar(256) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `icon`, `link`, `name`, `order_num`, `parent_id`) VALUES
(2, NULL, '', 'Website Config', 2, 0),
(3, NULL, '', 'Web Content', 3, 0),
(4, 'fa fa-th-list', '/cms/role', 'Role', 1, 2),
(5, 'fa fa-book', '/cms/exam', 'Exam', 4, 1),
(6, 'fa fa-braille', '/cms/slidebar', 'Slide Bar', 2, 3),
(7, 'fa fa-dashboard', '/cms/dashboard', 'Exam Dashboard', 1, 1),
(9, 'fa fa-question-circle', '/cms/listquestion', 'List Question', 3, 1),
(10, 'fa fa-star', '/cms/subject', 'Subject', 5, 1),
(11, 'fa fa-folder-o', '/cms/chapter', 'Chapter', 6, 1),
(12, 'fa fa-calendar-minus', '/cms/domain', 'Domain', 7, 1),
(13, 'fa fa-users', '/cms/user', 'User', 2, 2),
(14, 'fa fa-cogs', '/cms/permission', 'Permission', 3, 2),
(15, 'fa fa-server', '/cms/menu', 'Menu', 4, 2),
(16, 'fa fa-users', '/cms/group', 'Group', 5, 2),
(17, 'fa fa-credit-card', '/cms/usersrole', 'Users Role', 6, 2),
(18, 'fa fa-calendar', '/cms/rolemenu', 'Role Menu', 7, 2),
(19, 'fa fa-calculator', '/cms/rolepermission', 'Role Permission', 8, 2),
(20, 'fa fa-newspaper-o', '/cms/viewnewslist', 'List News', 1, 3),
(1, NULL, '', 'Testonline Config', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `active_status` bit(1) DEFAULT NULL,
  `confirm_date` varchar(255) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `the_description` varchar(1000) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `pinned` bit(1) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `up_status` varchar(255) DEFAULT NULL,
  `confirm_leader` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `active_status`, `confirm_date`, `content`, `create_date`, `the_description`, `img_url`, `pinned`, `title`, `up_status`, `confirm_leader`, `creator`) VALUES
(1, b'1', '2019-04-10 22:20:50', '<p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\"><strong style=\"line-height: 1.6;\">Solskjaer thích MU thắng&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/barcelona-c48e1507.html\" title=\"Barca\" style=\"color: rgb(0, 0, 255); line-height: 1.6;\">Barca</a>&nbsp;bằng loạt \"đấu súng\"</strong></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Phát biểu trong cuộc họp báo hôm thứ Ba (9/4), nhà cầm quân người Na Uy của MU đùa vui: \"Nếu chúng tôi có thể cùng họ (Barca) hòa 6-6 và đấu luân lưu ở Nou Camp, tôi nghĩ mọi người sẽ rất hạnh phúc. Cả hai đội đều sẽ nỗ lực ghi nhiều bàn thắng. Chúng tôi biết rằng mình phải phòng ngự thật tốt trước khi nghĩ đến cơ hội chống lại họ và toàn đội sẽ nỗ lực làm điều đó.\"</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);\"><img class=\"news-image loaded\" alt=\"Trực tiếp bóng đá MU - Barcelona: Old Trafford luôn là ác mộng với Barca - 5\" src=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-2598880_w1-1554905785-586-width660height371.jpg\" data-original=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-2598880_w1-1554905785-586-width660height371.jpg\" data-was-processed=\"true\" style=\"font-size: 12px; border: 0px; max-width: 660px;\"></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 255); font-style: italic; text-align: center;\">HLV Solskjaer nói đùa về dự đoán kết quả đại chiến MU và Barcelona</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\"><strong style=\"line-height: 1.6;\">Barca có thể sẽ đổi đội hình</strong></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Theo tờ&nbsp;Diario AS, HLV Ernesto Valverde có thể sẽ điều chỉnh khi thay vì dùng sơ đồ 4-3-3 quen thuộc, Barcelona sẽ xuất trận gặp MU đêm nay với sơ đồ 4-4-2. Nelson Semedo sẽ đá vị trí hậu vệ phải, Sergi Roberto được đẩy lên để cùng Sergio Busquets, Ivan Rakitic và Arturo Vidal tạo thành 4 tiền vệ, trong khi bộ đôi tiền đạo của đội khách vẫn sẽ là Lionel Messi và Luis Suarez.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Nhiều khả năng, Barca sẽ để Ousmane Dembele và Philippe Coutinho trên băng ghế dự bị và sẽ chỉ vào sân lúc cần kíp.</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);\"><img class=\"news-image loaded\" alt=\"Trực tiếp bóng đá MU - Barcelona: Old Trafford luôn là ác mộng với Barca - 6\" src=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-image1_20190410_112221-1554905785-623-width660height324.jpg\" data-original=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-image1_20190410_112221-1554905785-623-width660height324.jpg\" data-was-processed=\"true\" style=\"font-size: 12px; border: 0px; max-width: 660px;\"></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 255); font-style: italic; text-align: center;\">Tờ&nbsp;Diario AS (Tây Ban Nha) dự đoán Barca sẽ đá với sơ đồ xuất phát 4-4-2 đấu MU</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\"><strong style=\"line-height: 1.6;\">MU chờ duyên lành của Solskjaer</strong></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Thời còn là cầu thủ, Ole Gunnar Solskjaer từng ghi bàn quyết định giúp MU lội ngược dòng thắng Bayern Munich ở trận chung kết Champions League kinh điển năm 1999 tại Nou Camp - sân nhà của Barca.</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Trước đó, cũng chính \"Sát thủ có bộ mặt trẻ thơ\"&nbsp;góp mặt trong đội hình \"Quỷ đỏ\" ở trận hòa 3-3 đầy kịch tính với Barcelona tại Old Trafford tại&nbsp;vòng bảng mùa giải năm ấy. Liệu lần này, khi làm HLV MU, Solsa có lại khiến Barca trầm trồ ở giải đấu số 1 lục địa già?</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\"><strong style=\"line-height: 1.6;\">Chủ nhà định đánh bài liều với sao trẻ</strong></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\">Trong bối cảnh Ander Herrera và Nemanja Matic không xuất hiện ở khách sạn Lowry - nơi MU thường hội quân trước khi đá trên sân nhà đấu Barca, tiền vệ trẻ James Garner đã xuất hiện cùng các thành viên đội 1. \"Sao mai\" mới 18 tuổi này nhiều khả năng sẽ được HLV Solskjaer điền tên trong danh sách dự bị như khi \"Quỷ đỏ\" làm khách tại Valencia (vòng bảng) và Paris (vòng 1/8).</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);\"><img class=\"news-image loaded\" alt=\"Trực tiếp bóng đá MU - Barcelona: Old Trafford luôn là ác mộng với Barca - 7\" src=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-gettyimages-1141421336-1554905785-288-width660height451.jpg\" data-original=\"https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-gettyimages-1141421336-1554905785-288-width660height451.jpg\" data-was-processed=\"true\" style=\"font-size: 12px; border: 0px; max-width: 660px;\"></p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 255); font-style: italic; text-align: center;\">Tiền vệ trẻ James Garner tập luyện cùng đội 1 MU</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);\"><br></p>', '2019-04-10 22:20:50', '(Trực tiếp bóng đá, MU - Barcelona, 2h00, 11/4, lượt đi tứ kết Champions League) Barca chưa từng thắng trận nào trong 4 lần làm khách đấu MU ở Old Trafford. Liệu lần này, Messi và các đồng đội có thể đưa lịch sử sang trang mới?', 'https://cdn.24h.com.vn/upload/2-2019/images/2019-04-10/Truc-tiep-bong-da-MU---Barcelona-Old-Trafford-luon-la-ac-mong-voi-Barca-2598880_w1-1554905785-586-width660height371.jpg', b'1', 'Trực tiếp bóng đá MU - Barcelona: Old Trafford luôn là ác mộng với Barca', 'approve', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_tags`
--

CREATE TABLE `news_tags` (
  `newsid` int(11) NOT NULL,
  `tagsid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news_tags`
--

INSERT INTO `news_tags` (`newsid`, `tagsid`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `action` varchar(30) NOT NULL,
  `controller` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `action`, `controller`, `description`, `name`) VALUES
(10, 'addQuestion', 'question', 'Thêm question', 'Thêm question'),
(11, 'deleteQuestion', 'question', 'Xóa question', 'Xóa question'),
(9, 'getAllQuestion', 'question', 'View list question', 'View list question'),
(12, 'readExcel', 'question', 'Import Excel, tải file mẫu', 'Import Excel'),
(13, 'updateQuestion', 'question', 'sửa question', 'sửa question'),
(14, 'download', 'question', 'tải file mẫu', 'tải file mẫu'),
(15, 'list', 'exam', 'View danh sách exam', 'View list exam'),
(16, 'insert', 'exam', 'Thêm exam', 'Thêm exam'),
(17, 'update', 'exam', 'Sửa Exam', 'Sửa Exam'),
(18, 'updateFile', 'exam', 'Sửa Exam có File', 'Sửa Exam có File'),
(19, 'updateStatus', 'exam', 'Change status', 'Change status'),
(20, 'updateExamService', 'exam', 'Add detail exam', 'Add detail exam'),
(24, 'insert', 'subject', 'Thêm subject', 'Thêm subject'),
(25, 'update', 'subject', 'sửa subject', 'sửa subject'),
(26, 'delete', 'subject', 'Xóa subject', 'Xóa subject'),
(27, 'getListChapter', 'chapter', 'View danh sách chapter', 'View list chapter'),
(28, 'insert', 'chapter', 'Thêm chapter', 'Thêm chapter'),
(29, 'update', 'chapter', 'sửa chapter', ' sửa chapter'),
(30, 'delete', 'chapter', 'Xóa Chapter', 'Xóa Chapter'),
(31, 'getListDomain', 'domain', 'View danh sách domain', 'View list domain'),
(32, 'insert', 'domain', 'Thêm domain', 'Thêm domain'),
(33, 'update', 'domain', 'sửa domain', 'sửa domain'),
(34, 'delete', 'domain', 'Xóa Domain', 'Xóa Domain'),
(35, 'list', 'role', 'View danh sách role', 'View list role'),
(36, 'insert', 'role', 'Thêm role', 'Thêm role'),
(37, 'update', 'role', 'Sửa role', 'Sửa role'),
(38, 'delete', 'role', 'Xóa role', 'Xóa role'),
(39, 'list', 'users', 'View list user', 'View list user'),
(40, 'insert', 'users', 'Thêm user', 'Thêm user'),
(41, 'update', 'users', 'Sửa user', 'Sửa user'),
(42, 'delete', 'users', 'Xóa user', 'Xóa user'),
(43, 'profileusers', 'users', 'View chi tiết user', 'View chi tiết user'),
(44, 'changeProfile', 'users', 'Sửa thông tin user', 'Sửa thông tin user'),
(45, 'updateUserStatus', 'users', 'Change status user', 'Change status user'),
(46, 'list', 'permission', 'View danh sách permission', 'View list permission'),
(47, 'insert', 'permission', 'Thêm permission', 'Thêm permission'),
(48, 'update', 'permission', 'sửa permission', 'sửa permission'),
(49, 'delete', 'permission', 'Xóa permission', 'Xóa permission'),
(50, 'list', 'menu', 'View danh sách menu', 'View danh sách menu'),
(51, 'insert', 'menu', 'Thêm menu', 'Thêm menu'),
(52, 'update', 'menu', 'Sửa menu', 'Sửa menu'),
(53, 'delete', 'menu', 'Xóa menu', 'Xóa menu'),
(54, 'list', 'group', 'View danh sách group', 'View danh sách group'),
(55, 'insert', 'group', 'Thêm group', 'Thêm group'),
(56, 'update', 'group', 'Sửa group', 'Sửa group'),
(57, 'delete', 'group', 'Xóa group', 'Xóa group'),
(58, 'addUserRole', 'users', 'Thêm UserRole', 'Thêm UserRole'),
(59, 'removeUserRole', 'users', 'Xóa UserRole', 'Xóa UserRole'),
(60, 'addRolePermission', 'role', 'Thêm Role Permission', 'Thêm Role Permission'),
(61, 'removeRolePermission', 'role', 'Xóa Role Permission', 'Xóa Role Permission'),
(62, 'addRoleMenu', 'role', 'Thêm Role Menu', 'Thêm Role Menu'),
(63, 'removeRoleMenu', 'role', 'Xóa Role Menu', 'Xóa Role Menu'),
(64, 'getAllNews', 'news', ' View danh sách news', ' View danh sách news'),
(65, 'insert', 'news', 'Thêm News', 'Thêm News'),
(66, 'update', 'news', 'Sửa News', 'Sửa News'),
(67, 'delete', 'news', 'Xóa News', 'Xóa News'),
(73, 'updateSlideBarStatus', 'slidebanner', 'Apply slidebar', 'Apply slidebar'),
(69, 'list', 'slidebanner', 'View danh sách slidebar', 'View list slidebar'),
(70, 'insert', 'slidebanner', 'Thêm slidebar', 'Thêm slidebar'),
(71, 'update', 'slidebanner', 'Sửa slidebar', 'Sửa slidebar'),
(72, 'delete', 'slidebanner', 'Xóa Slidebar', 'Xóa Slidebar');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `media` varchar(256) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `explantion` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `code`, `content`, `created_at`, `creator_id`, `media`, `status`, `time`, `title`, `updated_at`, `chapter_id`, `domain_id`, `subject_id`, `explantion`) VALUES
(77, 'TH9067', 'Bán đảo có diện tích lơn nhất thế giới là?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 22', NULL, 1, 1, 1, NULL),
(4, 'T5452', 'Tam giác có một góc 40 độ và một góc 50 độ là tam giác gì?', '2019-06-07 21:16:40', 15, ' ', 0, 90, 'Toán lớp 8', NULL, 2, 2, 2, NULL),
(5, 'T3144', 'Tìm quy luật và cho biết con số tiếp theo là bao nhiêu của dãy : 8, 20, 44, 92,...', '2019-06-07 21:16:40', 15, ' ', 0, 90, 'Toán lớp 10', NULL, 2, 2, 2, NULL),
(80, 'TH8313', 'Ai là tổng thống thứ 45 của mỹ?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 25', NULL, 1, 1, 1, NULL),
(81, 'TH7363', 'Xích đạo không đi qua đại dương nào?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 26', NULL, 1, 1, 1, NULL),
(79, 'TH3730', 'Sau lần chuyển đổi mã vùng điện thoại mới nhất, tất cả mã vùng mới đều bắt đầu bằng số?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 24', NULL, 1, 1, 1, NULL),
(78, 'TH2912', 'Hành tinh nào trong hệ mặt trời có 1 ngày bằng 243 ngày trên trái đất?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 23', NULL, 1, 1, 1, NULL),
(76, 'TH1689', 'Theo hiến chương nước Cộng hòa Xã hội Chủ nghĩa Việt Nam, ai là người thống lĩnh lực lượng vũ trang nhân dân và giữ chức vụ chủ tịch hội đồng Quốc phòng- An ninh?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 21', NULL, 1, 1, 1, NULL),
(75, 'TH6491', 'Tế bào nhân thực hay nhân sơ có kích thước lớn hơn?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 20', NULL, 1, 1, 1, NULL),
(74, 'TH4712', 'Triều đại nào là triều đại tồn tại lâu nhất lịch sử nước ta?', '2019-06-07 22:49:33', 15, ' ', 0, 107, 'Tổng hợp 19', NULL, 1, 1, 1, NULL),
(73, 'TH9079', 'Vị đại tá, anh hùng lực lưỡng vũ trang nào được đặt tên cho một con đường khi còn sống?', '2019-06-07 22:49:33', 15, ' ', 0, 106, 'Tổng hợp 18', NULL, 1, 1, 1, NULL),
(24, 'T454', 'A gọi B bằng bác, B gọi C là ông nội , C kêu D là cậu, D kêu E là dì, E kêu F là chú, F gọi Z là con.\nHỏi A gọi Z bằng gì ???', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 20', NULL, 2, 2, 2, NULL),
(25, 'T8977', 'Bố mẹ có sáu người con trai, mỗi người con trai có một em gái. Hỏi gia đình đó có bao nhiêu người?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 21', NULL, 2, 2, 2, NULL),
(26, 'T8935', '30 chia 1/2, và cộng thêm 10, bằng bao nhiêu?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 22', NULL, 2, 2, 2, NULL),
(27, 'T521', 'Cái gì đen khi bạn mua nó, đỏ khi dùng nó và xám xịt khi vứt nó đi?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 23', NULL, 2, 2, 2, NULL),
(28, 'T3002', 'Tháng nào ngắn nhất trong năm?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 24', NULL, 2, 2, 2, NULL),
(29, 'T2729', 'Có cổ nhưng không có miệng là gì?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 25', NULL, 2, 2, 2, NULL),
(30, 'T597', 'Tôi có 4 cái chân, 1 cái lưng, nhưng không có cơ thể. Tôi là ai?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 26', NULL, 2, 2, 2, NULL),
(31, 'T6476', 'Toà nhà lớn nhất thế giới?', '2019-06-07 22:35:14', 15, ' ', 0, 90, 'Toán lớp 27', NULL, 2, 2, 2, NULL),
(83, 'TH2856', 'Giải bóng chuyền nữ quốc tế VTV Cup 2017 đã được tổ chức ở tỉnh/ thành nào?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 28', NULL, 1, 1, 1, NULL),
(82, 'TH4137', 'Phần lớn gen đột biến là gen?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 27', NULL, 1, 1, 1, NULL),
(72, 'TH1826', 'Trong máu bạch tuộc chưa nguyên tố nào khiến nó có màu xanh?', '2019-06-07 22:49:33', 15, ' ', 0, 105, 'Tổng hợp 17', NULL, 1, 1, 1, NULL),
(52, 'TH9119', 'Hiện nay số tiền chuyển nhượng kỷ lục của 1 cầu thủ bóng đá thuộc về cầu thủ nào?', '2019-06-07 22:44:53', 15, ' ', 0, 90, 'Tổng hợp 1', NULL, 1, 1, 1, NULL),
(53, 'TH4561', '\" Tay cầm cờ đỏ sao vàng tiến lên\" là lời của chủ tịch Hồ Chí Minh mô tả về biểu tượng gì?', '2019-06-07 22:44:53', 15, ' ', 0, 90, 'Tổng hợp 2', NULL, 1, 1, 1, NULL),
(54, 'TH2642', 'How many vowels does the vietnanese alphabet have?', '2019-06-07 22:44:53', 15, ' ', 0, 91, 'Tổng hợp 3', NULL, 1, 1, 1, NULL),
(55, 'TH7838', 'Kim loại có 4 tính chất vật lý chung là tính dẻo, tính dẫn điện, tính dẫn nhiệt và …?', '2019-06-07 22:44:53', 15, ' ', 0, 92, 'Tổng hợp 4', NULL, 1, 1, 1, NULL),
(56, 'TH946', 'Đèo Pha Đin là ranh giới tự nhiên của 2 tỉnh Điện Biên và …?', '2019-06-07 22:44:53', 15, ' ', 0, 93, 'Tổng hợp 5', NULL, 1, 1, 1, NULL),
(57, 'TH6298', 'Khi đi dưới trời nắng người bị toát mồ hôi, đây là?', '2019-06-07 22:44:53', 15, ' ', 0, 94, 'Tổng hợp 6', NULL, 1, 1, 1, NULL),
(58, 'TH3718', 'Trong cối xay gió người ta sử dụng động năng hay thế năng của gió?', '2019-06-07 22:44:53', 15, ' ', 0, 95, 'Tổng hợp 7', NULL, 1, 1, 1, NULL),
(59, 'TH825', 'Số la mã MMXVII có giá trị bao nhiêu trong hệ thập phân?', '2019-06-07 22:44:53', 15, ' ', 0, 96, 'Tổng hợp 8', NULL, 1, 1, 1, NULL),
(60, 'TH2377', 'What is the second largest city in Vietnam by population?', '2019-06-07 22:44:53', 15, ' ', 0, 97, 'Tổng hợp 9', NULL, 1, 1, 1, NULL),
(61, 'TH3432', 'Tủ lạnh hoạt động trong phòng kín khi cảnh tủ lạnh luôn mở thì nhiệt độ phòng thay đổi thế nào?', '2019-06-07 22:44:53', 15, ' ', 0, 98, 'Tổng hợp 10', NULL, 1, 1, 1, NULL),
(62, 'TH8994', 'Những môn thể thao đã mang huy trương về cho Viêt Nam ở các kỳ thế vận hội mua hè là cử tạ, bắn súng và …?', '2019-06-07 22:44:53', 15, ' ', 0, 99, 'Tổng hợp 11', NULL, 1, 1, 1, NULL),
(63, 'TH4898', 'Cầu trì và công tắc phải được mắc vào dây nóng hay dây nguội để đảm bảo an toàn điện trong gia đình?', '2019-06-07 22:44:53', 15, ' ', 0, 100, 'Tổng hợp 12', NULL, 1, 1, 1, NULL),
(64, 'TH3062', 'Muối clorua nào được sử dụng để điều chế nước gia- ven?', '2019-06-07 22:44:53', 15, ' ', 0, 101, 'Tổng hợp 13', NULL, 1, 1, 1, NULL),
(65, 'TH6200', 'Có bao nhiêu số tự nhiên có 3 chữ số mà cả 2 chữ số giống nhau?', '2019-06-07 22:44:53', 15, ' ', 0, 102, 'Tổng hợp 14', NULL, 1, 1, 1, NULL),
(66, 'TH5108', 'Da người là cơ quan thuộc hệ hô hấp hay hệ bài tiết?', '2019-06-07 22:44:53', 15, ' ', 0, 103, 'Tổng hợp 15', NULL, 1, 1, 1, NULL),
(67, 'TH653', 'Sân bay Cat Bi thuộc tỉnh thành nào?', '2019-06-07 22:44:53', 15, ' ', 0, 104, 'Tổng hợp 16', NULL, 1, 1, 1, NULL),
(84, 'TH688', '\" Đô thị Kẻ Chợ\"  là các từ từng được dùng để nói đến tính/ thành nào của nước ta vào thời trung cổ?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 29', NULL, 1, 1, 1, NULL),
(85, 'TH8239', 'Trong trồng lúa nước, bón phân trước lúc cấy gọi là?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 30', NULL, 1, 1, 1, NULL),
(86, 'TH7569', 'Loại Vitamin nào hoạt động như 1 chất chống Oxi hóa, bảo vệ màng tế bào, duy trì làn da, mắt và tăng cường miễn dịch?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 31', NULL, 1, 1, 1, NULL),
(87, 'TH3642', 'Đại tướng Võ Nguyên Giáp có xuất thân là thầy giáo dạy môn gì?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 32', NULL, 1, 1, 1, NULL),
(88, 'TH9121', 'Thành phố nào là thành phố đầu tiên của Nam Mỹ đăng cai 1 kỳ thế vận hội mùa hè?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 33', NULL, 1, 1, 1, NULL),
(89, 'TH778', 'Sông Mê Công chảy qua mấy nước ở Đông Nam Á?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 34', NULL, 1, 1, 1, NULL),
(90, 'TH7088', 'What is the largest country  in Southeast Asia?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 35', NULL, 1, 1, 1, NULL),
(91, 'TH8156', 'Kỳ SEA Games được tổ chức năm 2017 là kỳ SEA Games thứ bao nhiêu được tổ chức?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 36', NULL, 1, 1, 1, NULL),
(92, 'TH1516', 'Cách chọn những phần tử có phân biệt thứ tự từ một tập hợp cho trước gọi là?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 37', NULL, 1, 1, 1, NULL),
(93, 'TH7405', 'Đàn T\'Rưng có bao nhiêu dây?', '2019-06-07 22:49:33', 15, ' ', 0, 90, 'Tổng hợp 38', NULL, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `description`, `name`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'USER'),
(3, 'Thành viên nội dung', 'Content Member'),
(4, 'Quản trị nội dung', 'Content Leader');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_menu`
--

CREATE TABLE `role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role_menu`
--

INSERT INTO `role_menu` (`role_id`, `menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(3, 1),
(3, 3),
(3, 5),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 20),
(4, 1),
(4, 5),
(4, 7),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 3),
(5, 6),
(5, 8),
(5, 20),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 6),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(11, 17),
(11, 18),
(11, 19),
(11, 20),
(12, 1),
(12, 3),
(12, 6),
(12, 8),
(12, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_bar`
--

CREATE TABLE `slide_bar` (
  `id` int(11) NOT NULL,
  `img` varchar(225) NOT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `slogan` varchar(260) NOT NULL,
  `title` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide_bar`
--

INSERT INTO `slide_bar` (`id`, `img`, `is_show`, `slogan`, `title`) VALUES
(1, 'bk5.jpg', b'1', ' Trường Đại học kỹ thuật đầu tiên và luôn luôn là trường đại học kỹ thuật hàng đầu của Việt Nam.', 'Trường ĐH Bách Khoa Hà Nội'),
(2, 'trollthuy.jpg', b'0', 'ghgh', 'fghhgh'),
(3, 'spche.jpg', b'0', 'ghghg', 'ghghg'),
(7, 'amanullah khan_Solitude_YkZqR2RR.jpg', b'0', 'vbvbvbvbvb', 'bnhbnb'),
(6, '590101.jpg', b'0', 'vbhbv', 'ghghghgh'),
(8, 'chibi_mini_iron_man_3_by_sherifnagy-d67pla92.jpg', b'0', 'vbvbvb', 'nbnbnbn'),
(9, 'bk6.jpg', b'1', 'Khá nhiều tầng', 'Thư viện Bách Khoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`id`, `created_at`, `name`, `updated_at`) VALUES
(1, '2019-06-07 21:06:47', 'Tổng hợp', NULL),
(2, '2019-06-07 21:14:08', 'Toán', NULL),
(3, '2019-06-09 23:06:13', 'Tiếng Anh', NULL),
(4, '2019-06-09 23:06:22', 'Địa lý', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(0, 'Thể Thao'),
(1, 'Thể Thao'),
(2, 'Âm nhạc'),
(3, 'xã hội'),
(4, 'Đời sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `is_login` int(11) NOT NULL DEFAULT '0',
  `logging_time` datetime DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `is_test` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `address`, `birthday`, `email`, `fullname`, `img`, `is_login`, `logging_time`, `password`, `phone`, `status`, `is_test`) VALUES
(1, '', '', 'tiep@gmail.com', 'Nguyễn Văn Tiệp', '', 0, NULL, '$2a$10$8oyeBVXERHVZh1Zk9eUcqe0W1jsd6ihgXiAT5MwN8U2ehki8rPvt6', '0396608207', 1, 0),
(15, '', '', 'tiepnguyenvantv97@gmail.com', 'Nguyễn Văn Tiệp', '', 0, '2019-06-10 22:34:35', '$2a$10$ycu8h8jLJrxnQiXasACHK.PAH.f/1wptxS7OSffy2XdfAvTeeLe4u', '0396608207', 1, 0),
(16, '', '', 'tiepnguyenvanpie@gmail.com', 'Nguyễn Văn Tiệp', '', 0, NULL, '$2a$10$XJpA9FFN70DgA8apTk1MTeCur/cEU2B/J98shD94oF2vCATh/Y4OC', '097475656', 1, 0),
(14, '', '', 'admin@gmail.com', 'admin', '', 0, NULL, '$2a$10$9tTUGyT2v5mKLqfHbPFRcu.T.qIZfPORGdPneMZS/4RxX7P1AAPGa', '', 1, 0),
(3, '', '', 'dungquyettran94@gmail.com', 'Tài smile', '', 0, NULL, '$2a$10$kuYZ2lg57QT62cmQa5s67e622wFnsocyWeOjYYk.j6C/Ma.PN/0MC', '123456789', 0, 0),
(4, '', '', 'nguyenvancong4696@gmail.com', 'GiangVu', '', 0, NULL, '$2a$10$LZDUgZ6xYcXAjK41X4PPxeqwagihoCzG3YBa6Aj3yeXdE.0OoLX.e', '123456789', 1, 0),
(6, '', '', 'hiepnguyenvan57hk@gmail.com', 'nguyenvanhiep', '', 0, NULL, '$2a$10$t5OydcocqCbVW6saULGx.uV42QSx1FmRTNxpkwdB4KfMfCZaBDxEG', '123456789', 0, 0),
(7, '', '', 'duongsondinh@gmail.com', 'Đinh dương sơn', '', 1, '2019-04-10 22:26:23', '$2a$10$4B0O.nBLaUU1MH.ehsaHBeD8YrCN1dw5BVZqdx1ucCqaalo/wqBRq', '0966181602', 1, 0),
(8, '', '', 'nga@gmail.com', 'NgaLe', '', 0, NULL, '$2a$10$nJW/qujEwkt606tch178s.rAUoz8ez2rIc4TtGjoRN6Nb5gpkg0HW', '09042899999', 0, 0),
(9, '', '', 'ngaa1leloi@gmail.com', 'Nga', '', 1, '2019-04-10 22:27:00', '$2a$10$xiT6I0k.0rmj8dI55nw2X.UqrOdk449RS1GhyhnULDSviJ/Wn3Yc2', '0368822731', 1, 0),
(10, '', '', 'anhthuchaui@gmail.com', 'Vu Gia Thuc', '', 1, '2019-04-15 20:53:43', '$2a$10$hp7Q67F/XDh7yXdqbIqVQuJtJN5cwFY4f3MKcXuTWu6vzO7l2jmPG', '0379636004', 1, 0),
(11, '', '', 'phamhungsonk60@gmail.com', 'Nguyễn Văn Tiệp', '', 0, '2019-05-24 22:03:52', '$2a$10$9anVvcOTz80/ChkpZ6iGD./bk31BdKx6kR0/TxZO.IzrfDKlyHE7u', '0376863045', 1, 0),
(12, 'fdgsdfdf', '1995-12-12', 't.congnamvn@gmail.com', 'Trần Công Nam', 'application is incomplete.PNG', 0, NULL, '$2a$10$eHsyzx9BRm45.TGdnyZmLOAt18mr3n8080Livs3ejP8pLqnxtHhbK', '0813889046', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_role`
--

CREATE TABLE `users_role` (
  `users_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_role`
--

INSERT INTO `users_role` (`users_id`, `role_id`) VALUES
(1, 2),
(2, 1),
(2, 2),
(2, 4),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(11, 4),
(12, 2),
(13, 1),
(13, 2),
(14, 2),
(14, 4),
(15, 1),
(15, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group`
--

CREATE TABLE `user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answer_options`
--
ALTER TABLE `answer_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfapodm8kfiu9a9a4o2r43rcgp` (`question_id`);

--
-- Chỉ mục cho bảng `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3rm6snrkx0k8xyqn7017b0v41` (`subject_id`);

--
-- Chỉ mục cho bảng `chapter_exam`
--
ALTER TABLE `chapter_exam`
  ADD PRIMARY KEY (`chapter_id`,`exam_id`),
  ADD KEY `FK38xl8jj8hjuagq81mv1hcqoea` (`exam_id`);

--
-- Chỉ mục cho bảng `cmcjob`
--
ALTER TABLE `cmcjob`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK74uwyunghscybnfdyv0x9y6to` (`subject_id`);

--
-- Chỉ mục cho bảng `domain_exam`
--
ALTER TABLE `domain_exam`
  ADD PRIMARY KEY (`domain_id`,`exam_id`),
  ADD KEY `FKrk3i03waqc9m0aye6i4n2gblk` (`exam_id`);

--
-- Chỉ mục cho bảng `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKopre4n7j7fpxqbtbwpv8ywn1y` (`subject_id`),
  ADD KEY `FK637rqs62xkt9i8bs9v5924p5j` (`creator_id`);

--
-- Chỉ mục cho bảng `exam_answer`
--
ALTER TABLE `exam_answer`
  ADD PRIMARY KEY (`question_id`,`result_id`),
  ADD KEY `FKbltm5v0aum3po2nmv3yjqcfjb` (`result_id`);

--
-- Chỉ mục cho bảng `exam_group`
--
ALTER TABLE `exam_group`
  ADD PRIMARY KEY (`exam_id`,`group_id`),
  ADD KEY `FKfcmp2iw1b25sp9kxkfr1bplkn` (`group_id`);

--
-- Chỉ mục cho bảng `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`exam_id`,`question_id`),
  ADD KEY `FKs0t1710in6q97whp93ggrs1wg` (`question_id`);

--
-- Chỉ mục cho bảng `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi8qa495036o7ne0q9ldb5ne11` (`exam_id`),
  ADD KEY `FK4dbcn9ulh8hpkbi9yu7g0uyh6` (`user_id`);

--
-- Chỉ mục cho bảng `exam_setting`
--
ALTER TABLE `exam_setting`
  ADD PRIMARY KEY (`chapter_id`,`domain_id`,`exam_id`);

--
-- Chỉ mục cho bảng `exam_user`
--
ALTER TABLE `exam_user`
  ADD PRIMARY KEY (`exam_id`,`user_id`),
  ADD KEY `FKf4k82qyfrltw832j76mfq4pgg` (`user_id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbkfissu1prnsex4m5r5heftay` (`confirm_leader`),
  ADD KEY `FK56qs4fx59g1gxeqfwf3dtn00t` (`creator`);

--
-- Chỉ mục cho bảng `news_tags`
--
ALTER TABLE `news_tags`
  ADD KEY `FKe9swtw7b5dn1n3lgfu28q7sda` (`tagsid`),
  ADD KEY `FKi9pd1ntlhtbh5jpvoh8kog1ct` (`newsid`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKd1wulherkir0s9abbqr195fr4` (`chapter_id`),
  ADD KEY `FKhdmv1lgdc1eerst2tejp197v2` (`domain_id`),
  ADD KEY `FKo0h0rn8bxifrxmq1d8ipiyqv5` (`subject_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`role_id`,`menu_id`),
  ADD KEY `FKfg4e2mb2318tph615gh44ll3` (`menu_id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `FKf8yllw1ecvwqy3ehyxawqa1qp` (`permission_id`);

--
-- Chỉ mục cho bảng `slide_bar`
--
ALTER TABLE `slide_bar`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Chỉ mục cho bảng `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`users_id`,`role_id`),
  ADD KEY `FK3qjq7qsiigxa82jgk0i0wuq3g` (`role_id`);

--
-- Chỉ mục cho bảng `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `FKbegtgnl3oq004958pisko4fu4` (`group_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answer_options`
--
ALTER TABLE `answer_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT cho bảng `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cmcjob`
--
ALTER TABLE `cmcjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide_bar`
--
ALTER TABLE `slide_bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
