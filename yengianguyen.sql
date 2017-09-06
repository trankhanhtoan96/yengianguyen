-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2017 at 05:28 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yengianguyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE `blogcategory` (
  `blogcat_id` int(11) NOT NULL,
  `blogcat_name` text COLLATE utf8_unicode_ci NOT NULL,
  `blogcat_description` text COLLATE utf8_unicode_ci,
  `blogcat_parent_id` int(11) DEFAULT '0',
  `blogcat_seo_title` text COLLATE utf8_unicode_ci,
  `blogcat_seo_keyword` text COLLATE utf8_unicode_ci,
  `blogcat_seo_description` text COLLATE utf8_unicode_ci,
  `blogcat_image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`blogcat_id`, `blogcat_name`, `blogcat_description`, `blogcat_parent_id`, `blogcat_seo_title`, `blogcat_seo_keyword`, `blogcat_seo_description`, `blogcat_image`) VALUES
(1, 'Cẩm Nang Yến Sào', '', 0, 'Cẩm Nang Yến Sào', '', '', '/uploads/icons/none.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_name` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_content` text COLLATE utf8_unicode_ci,
  `blog_time` int(11) NOT NULL DEFAULT '0',
  `blog_cat_ids` text COLLATE utf8_unicode_ci,
  `blog_image` text COLLATE utf8_unicode_ci,
  `blog_seo_title` text COLLATE utf8_unicode_ci,
  `blog_seo_keyword` text COLLATE utf8_unicode_ci,
  `blog_seo_description` text COLLATE utf8_unicode_ci,
  `blog_user_id` int(11) DEFAULT '0',
  `blog_views` int(11) DEFAULT '0',
  `blog_excerpt` text COLLATE utf8_unicode_ci,
  `blog_enable_comment` int(11) DEFAULT '1',
  `blog_comments` int(11) DEFAULT '0',
  `blog_cat_names` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_name`, `blog_content`, `blog_time`, `blog_cat_ids`, `blog_image`, `blog_seo_title`, `blog_seo_keyword`, `blog_seo_description`, `blog_user_id`, `blog_views`, `blog_excerpt`, `blog_enable_comment`, `blog_comments`, `blog_cat_names`) VALUES
(1, 'Thời gian ngâm nở và chưng cách thủy', '<p><u>Ng&acirc;m yến</u></p>\r\n\r\n<p>Ng&acirc;m tai yến v&agrave;o nước lạnh cho yến mềm v&agrave; tơi ra.</p>\r\n\r\n<p>T&ugrave;y theo loại yến v&agrave; độ d&agrave;y mỏng của tổ yến, thời gian ng&acirc;m tham khảo như sau:</p>\r\n\r\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; 1-2 giờ với yến th&ocirc;, yến huyết, yến hồng</p>\r\n\r\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; 30&quot;- 1 giờ với yến sơ chế</p>\r\n\r\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; 10&quot; - 20&quot; với yến tinh chế</p>\r\n\r\n<p>Nhặt sạch l&ocirc;ng, vớt ra để r&aacute;o. Cho yến v&agrave;o thố chưng, th&ecirc;m v&agrave;o1,5 ch&eacute;n nước rồi đặt l&ecirc;n nồi chưng c&aacute;ch thủy.</p>\r\n\r\n<p><u>Chưng yến</u></p>\r\n\r\n<p>Thời gian chưng c&aacute;ch thuỷ với lửa nhỏ:</p>\r\n\r\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; 15&quot;-30&quot;với yến th&ocirc;. &nbsp;30&quot; - 60&quot; với yến huyết, yến hồng</p>\r\n\r\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; 15&quot;- 30&quot; với yến sơ chế</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10&quot; - 20&quot; với yến tinh chế&nbsp;</p>\r\n\r\n<p>Yến chưng xong c&oacute; thể d&ugrave;ng n&oacute;ng hoặc lạnh hoặc kết hợp với đường ph&egrave;n, c&aacute;c m&oacute;n ch&egrave;, s&uacute;p, tiềm.</p>\r\n', 1497776996, '[\"1\"]', '/uploads/icons/none.jpg', 'Thời gian ngâm nở và chưng cách thủy', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(2, 'Tìm hiểu về chim Yến', '<p>Chim y&ecirc;́n một lo&agrave;i chim sống trong c&aacute;c hang s&acirc;u hoặc dưới những v&aacute;ch đ&aacute; ở c&aacute;c đảo, vịnh nhỏ dọc theo bờ biển của Việt Nam, Malaysia, Th&aacute;i Lan, Indonesia, Philippines Chim yến cho ch&uacute;ng ta chiếc tổ qu&yacute; gi&aacute; ăn được thuộc lo&agrave;i A. Fuciphagus. Chiều d&agrave;i trung b&igrave;nh của cơ thể khoảng 12cm, trọng lượng từ 12 &ndash; 20gr. L&ocirc;ng chim ph&acirc;n bố tr&ecirc;n lưng m&agrave;u n&acirc;u phớt đen, ở dưới m&agrave;u x&aacute;m hoặc n&acirc;u. L&ocirc;ng đu&ocirc;i c&oacute; chẻ đ&ocirc;i kh&ocirc;ng s&acirc;u. Mắt m&agrave;u n&acirc;u tối, mỏ đen, ch&acirc;n đen. Tiếng h&oacute;t r&iacute;u r&iacute;t v&agrave; cao. . Chim c&oacute; đ&ocirc;i c&aacute;nh kh&aacute; cứng c&aacute;p v&agrave; c&oacute; thể bay lượn xa t&igrave;m mồi.Lo&agrave;i chim n&agrave;y hay sống quần đ&agrave;n, th&iacute;ch l&agrave;m tổ từng cặp ri&ecirc;ng rẽ, th&iacute;ch sống ở chỗ gần nước (s&ocirc;ng, hồ, biển), c&oacute; đồng ruộng, rừng c&acirc;y thấp. Thường, chim rời tổ khoảng 5-6h s&aacute;ng, bay li&ecirc;n tục trong kh&ocirc;ng trung (vừa bay vừa đớp c&ocirc;n tr&ugrave;ng bay). Buổi chiều, khoảng 16h, từng đ&agrave;n chim yến thường bay đến c&aacute;c kh&uacute;c s&ocirc;ng vắng hoặc c&aacute;c đầm ph&aacute; nước ngọt trong m&aacute;t để tắm v&agrave; uống nước.Từ 16 &ndash; 17h, chim bắt đầu bay về tổ.</p>\r\n\r\n<p>Thức ăn của chim yến l&agrave; c&ocirc;n tr&ugrave;ng bay. C&ocirc;n tr&ugrave;ng c&oacute; k&iacute;ch thước nhỏ (0,01 &ndash; 0,72gr) như kiến c&aacute;nh, ong bắp c&agrave;y, ph&ugrave; du, bọ nhỏ...</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/f1a465e42d8e8533327e95a94e04172b.jpg\" style=\"height:400px; width:300px\" /></p>\r\n\r\n<p>Chim yến sống c&oacute; đ&ocirc;i, chung thủy, c&aacute; t&iacute;nh. Một con chết đi, con c&ograve;n lại c&oacute; thể ở vậy suốt đời hoặc chết theo. Cả chim chồng v&agrave; vợ c&ugrave;ng tiết ra nước bọt để l&agrave;m tổ, đẻ trứng, nu&ocirc;i con. Vợ chồng chim yến thường l&agrave;m tổ trong thời gian l&uacute;c trở về đến nửa đ&ecirc;m. C&ocirc;ng việc x&acirc;y dựng tổ tiến h&agrave;nh mỗi ng&agrave;y, k&eacute;o d&agrave;i khoảng 40 &ndash; 80 ng&agrave;y. Nếu thức ăn (c&ocirc;n tr&ugrave;ng) nhiều, hoặc v&agrave;o m&ugrave;a đẻ trứng th&igrave; thời gian n&agrave;y chỉ c&ograve;n 40 ng&agrave;y, thậm ch&iacute; 30 ng&agrave;y. C&ograve;n nếu chưa v&agrave;o m&ugrave;a đẻ trứng v&agrave; bị ảnh hưởng của nhiều t&aacute;c nh&acirc;n th&igrave; thời gian l&agrave;m tổ c&oacute; thể k&eacute;o d&agrave;i gấp đ&ocirc;i. Mỗi lần đẻ, thường chỉ 2 quả (1 trống, 1 m&aacute;i), vỏ trứng m&agrave;u trắng, dễ vỡ, k&iacute;ch thước khoảng 14 x 22mm. Cả chim bố, chim mẹ c&ugrave;ng c&oacute; tr&aacute;ch nhiệm ấp trứng v&agrave; mớm mồi cho chim con. Th&agrave;nh thục lần đầu sau 7 &ndash; 8 th&aacute;ng tuổi, đ&acirc;y l&agrave; thời gian sẵn s&agrave;ng để giao phối.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/images/1297650_orig.jpg\" style=\"height:357px; width:500px\" /></p>\r\n\r\n<p>Chim x&acirc;y tổ lần đầu mất 3 th&aacute;ng; lần thứ hai, ba chỉ 1 th&aacute;ng (trong tự nhi&ecirc;n). Thường trong nh&agrave; yến, chim x&acirc;y tổ khoảng 30 &ndash; 32 ng&agrave;y để tạo th&agrave;nh c&aacute;i tổ c&oacute; k&iacute;ch thước đủ để đẻ trứng đầu ti&ecirc;n v&agrave; 1 &ndash; 3 ng&agrave;y để đẻ quả trứng thứ 2. Thời gian ấp trứng 22 &ndash; 28 ng&agrave;y. Sau khi ng&acirc;m nở 41 &ndash; 51 ng&agrave;y, chim đ&atilde; đủ khỏe mạnh v&agrave; rời tổ, v&agrave; 7 th&aacute;ng sau chim sẽ giao phối v&agrave; sinh sản. Một tuần sau khi chim con rời tổ, chim bố mẹ l&uacute;c n&agrave;y c&oacute; thể bước v&agrave;o qu&aacute; tr&igrave;nh l&agrave;m tổ của một chu kỳ sinh sản mới.</p>\r\n', 1497777263, '[\"1\"]', '/uploads/icons/none.jpg', 'Tìm hiểu về chim Yến', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(3, 'Phân Loại Yến Sào', '<p><strong>a. Yến huyết:&nbsp;</strong></p>\r\n\r\n<p>Do vị tr&iacute; chim yến l&agrave;m tổ tr&ecirc;n v&aacute;ch đ&aacute; gi&agrave;u sắt, kho&aacute;ng vi lượng n&ecirc;n tổ c&oacute; m&agrave;u đỏ tươi hoặc &nbsp;đỏ n&acirc;u. Loại tổ n&agrave;y rất qu&yacute; hiếm, thu hoạch từ 1 &ndash; 2 lần tr&ograve;n năm với tỷ lệ rất nhỏ (chưa đầy 10% tổng sản lượng tổ yến tr&ecirc;n thị trường thế giới).</p>\r\n\r\n<p>So với tổ yến hồng, yến trắng, tổ yến huyết gi&agrave;u sắt, canxi, kho&aacute;ng chất hơn rất nhiều lần.</p>\r\n\r\n<p>Tổ c&oacute; độ cứng v&agrave; độ nở kh&ocirc;ng quá lớn trong nước. Thường tổ huyết th&ocirc; phải ng&acirc;m 12 tiếng mới c&oacute; thể&nbsp; nhặt được l&ocirc;ng. Người cao tuổi, người bệnh nặng, hậu phẫu, sau khi sinh... hợp với việc d&ugrave;ng yến huyết.</p>\r\n\r\n<p><strong>b. Yến hồng:</strong></p>\r\n\r\n<p>&nbsp;Do vị tr&iacute; chim yến l&agrave;m tổ tr&ecirc;n v&aacute;ch đ&aacute; gi&agrave;u sắt, gi&agrave;u kho&aacute;ng vi lượng n&ecirc;n tổ yến dần chuyển sang hồng nhạt, c&oacute; khi hơi cam nhưng m&agrave;u sắc c&oacute; thể thay đổi từ m&agrave;u vỏ qu&yacute;t đến m&agrave;u v&agrave;ng l&ograve;ng đỏ trứng. M&agrave;u c&agrave;ng đậm th&igrave; gi&aacute; c&agrave;ng cao. Loại tổ n&agrave;y ngo&agrave;i t&iacute;nh bổ dưỡng th&igrave; hương vị thơm, dai, ngon nhất trong c&aacute;c loại tổ yến&nbsp;</p>\r\n\r\n<p><strong>c. Yến trắng/vàng:</strong></p>\r\n\r\n<p>Tổ c&oacute; m&agrave;u ng&agrave;, c&oacute; khi hơi v&agrave;ng hoặc x&aacute;m. L&agrave; loại tổ yến th&ocirc;ng dụng nhất tr&ecirc;n thị trường. Sản lượng nhiều hơn so với Yến hồng, Yến huyết. Gi&aacute; th&agrave;nh thấp hơn Yến hồng, Yến huyết.</p>\r\n\r\n<p>* Mỗi loại sản phẩm thường được thể hiện theo 3 dạng: Yến th&ocirc;; Yến th&ocirc; sạch (sạch 95% l&ocirc;ng v&agrave; tạp chất); Yến tinh chế (sạch 98% l&ocirc;ng v&agrave; tạp chất).</p>\r\n', 1497777362, '[\"1\"]', '/uploads/icons/none.jpg', 'Phân loại yến sào', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(4, 'Khu Vực Phân Bố', '<p>Indonesia là nước cung c&acirc;́p ph&acirc;̀n lớn sản lượng y&ecirc;́n sào th&ecirc;́ giới, ti&ecirc;́p theo là Malaysia, Indonesia, Thai Land, Vi&ecirc;̣t Nam..</p>\r\n\r\n<p>Tại Vi&ecirc;̣t Nam y&ecirc;́n ph&acirc;n b&ocirc;̉ nhi&ecirc;̀u nh&acirc;́t ở Nha Trang, Khánh Hòa. Sau đó là Đà Nẵng (Cù Lao Chàm-H&ocirc;̣i An), Phú Y&ecirc;n, C&acirc;̀n Giờ&hellip;và m&ocirc;̣t s&ocirc;́ tỉnh khác nhưng sản lượng r&acirc;́t nhỏ.</p>\r\n', 1497777407, '[\"1\"]', '/uploads/icons/none.jpg', 'khu vực phân bố', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(5, 'Yến Sào Từ Đâu Mà Có', '<p>Yến s&agrave;o (tổ yến s&agrave;o) l&agrave; tổ của chim yến,. Tổ yến bao gồm nhiều phiến mỏng được dệt từ nhiều sợi tơ bằng nước bọt chim yến v&agrave; bện v&agrave;o nhau Tổ yến h&igrave;nh dạng như c&aacute;i b&aacute;t do chim trống x&acirc;y trong khoảng thời gian 30-80 ng&agrave;y v&agrave; c&aacute;c tổ d&iacute;nh v&agrave;o c&aacute;c th&agrave;nh hang động hoặc v&aacute;ch đ&aacute;.</p>\r\n', 1497777434, '[\"1\"]', '/uploads/icons/none.jpg', 'Yến Sào Từ Đâu Mà Có', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(6, 'Công Dụng Của Yến Sào', '<p>Yến s&agrave;o (tổ yến s&agrave;o) l&agrave; tổ của chim yến,. Tổ yến bao gồm nhiều phiến mỏng được dệt từ nhiều sợi tơ bằng nước bọt chim yến v&agrave; bện v&agrave;o nhau Tổ yến h&igrave;nh dạng như c&aacute;i b&aacute;t do chim trống x&acirc;y trong khoảng thời gian 30-80 ng&agrave;y v&agrave; c&aacute;c tổ d&iacute;nh v&agrave;o c&aacute;c th&agrave;nh hang động hoặc v&aacute;ch đ&aacute;.</p>\r\n', 1497777466, '[\"1\"]', '/uploads/icons/none.jpg', 'công dụng của yến sào', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(7, 'Cách Làm Sạch Tổ Yến - Vạch Lông Và Các Tạp Chất', '<p><strong><u>C&aacute;ch 1</u></strong>: (C&aacute;ch th&ocirc;ng thường, d&ugrave;ng cho tổ yến tương đối &iacute;t l&ocirc;ng)<br />\r\n<br />\r\n<u>Chuẩn bị</u><br />\r\n<br />\r\n. Một thau sạch<br />\r\n. Một nh&iacute;p gắp (kẹp gắp)<br />\r\n. Một c&aacute;i ray sạch<br />\r\n. Một c&aacute;i muỗng<br />\r\n. Một dĩa hay ch&eacute;n để đựng yến sạch<br />\r\n<br />\r\n<u>C&aacute;ch l&agrave;m:</u><br />\r\n<br />\r\n<em>Bước 1&nbsp;</em>: Ng&acirc;m tổ yến trong khoảng 1, 2 tiếng đồng hồ t&ugrave;y theo loại yến v&agrave; độ d&agrave;y mỏng của tổ yến (xem th&ecirc;m bảng hướng dẫn thời gian ng&acirc;m tổ yến b&ecirc;n dưới) ng&acirc;m cho đến khi tổ yến tơi ra.</p>\r\n\r\n<p><em>Bước 2</em>&nbsp;: D&ugrave;ng nh&iacute;p gắp (kẹp gắp) nh&uacute;ng rửa từng &iacute;t một cho thật sạch tạp chất v&agrave; l&ocirc;ng.</p>\r\n\r\n<p><em>Bước 3 :</em>&nbsp;T&aacute;ch tổ yến ra th&agrave;nh từng sợi sau đ&oacute; cho yến v&agrave;o r&acirc;y, đặt r&acirc;y v&agrave;o thau nước, d&ugrave;ng muỗng khuấy nhẹ, nhấc r&acirc;y l&ecirc;n xuống. L&ocirc;ng tơ yến sẽ theo nước ra ngo&agrave;i, thay nước nhiều lần ta sẽ c&oacute; yến sạch.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể ng&acirc;m 2 đến 3 tổ yến một l&uacute;c sau đ&oacute; l&agrave;m sạch, để r&aacute;o nước v&agrave; bỏ v&agrave;o ngăn m&aacute;t của tủ lạnh. Thời gian tối đa c&oacute; thể giữ trong tủ lạnh l&agrave; 1 tuần.<br />\r\nLưu &yacute; : phải để kh&ocirc; sợi yến trước khi để v&agrave;o tủ lạnh, tuyệt đối kh&ocirc;ng để yến c&ograve;n nước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>C&aacute;ch 2</u></strong><strong>:</strong>&nbsp; D&ugrave;ng cho tổ yến c&oacute; l&ocirc;ng v&agrave; tạp chất &ndash; Cách này kh&ocirc;ng khuy&ecirc;́n khích vì làm giảm ch&acirc;́t lượng y&ecirc;́n.<br />\r\n<br />\r\n<u>Chuẩn bị</u><br />\r\n. Một thau sạch (n&ecirc;n d&ugrave;ng thau nhựa m&agrave;u trắng)<br />\r\n. Một nh&iacute;p gắp (kẹp gắp)<br />\r\n. Dầu ăn<br />\r\n. Một dĩa hay ch&eacute;n để đựng yến sạch<br />\r\n<br />\r\n<u>C&aacute;ch l&agrave;m</u><br />\r\n<br />\r\n<em>Bước 1</em>&nbsp;: Ng&acirc;m tổ yến trong khoảng 1, 2 tiếng đồng hồ t&ugrave;y theo loại yến v&agrave; độ d&agrave;y mỏng của tổ yến (xem th&ecirc;m bảng hướng dẫn thời gian ng&acirc;m tổ yến b&ecirc;n dưới) ng&acirc;m cho đến khi tổ yến tơi ra rồi rửa lại bằng nước sạch.</p>\r\n\r\n<p><em>Bước 2 :</em>&nbsp;Lau thau nhựa cho sạch v&agrave; kh&ocirc;, sau đ&oacute; thoa đều dầu ăn l&ecirc;n xung quanh th&agrave;nh thau, đổ tổ yến sau khi ng&acirc;m v&agrave;o thau rồi d&ugrave;ng tay khuấy đều để sợi yến tơi ra, l&ocirc;ng yến sẽ theo dầu ăn b&aacute;m v&agrave;o th&agrave;nh thau (l&agrave;m 2 lần) l&uacute;c n&agrave;y ta đ&atilde; c&oacute; yến tương đối sạch tạp chất nhỏ v&agrave; l&ocirc;ng con, rửa sạch v&agrave; tiếp tục thực hiện bước 3.</p>\r\n\r\n<p><em>Bước 3 :&nbsp;</em>rửa tổ yến lại bằng nước sạch, cho v&agrave;o một dĩa trắng, d&ugrave;ng nh&iacute;p (kẹp gắp) nhặt sạch l&ocirc;ng hay tạp chất c&ograve;n s&oacute;t lại, nh&uacute;ng l&ocirc;ng v&agrave;o ch&eacute;n nước v&agrave; để yến sạch sang một b&ecirc;n, ta sẽ c&oacute; yến sạch.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể ng&acirc;m 2 đến 3 tổ yến một l&uacute;c sau đ&oacute; l&agrave;m sạch, để r&aacute;o nước v&agrave; bỏ v&agrave;o ngăn m&aacute;t của tủ lạnh. Thời gian tối đa c&oacute; thể giữ trong tủ lạnh l&agrave; 1 tuần.<br />\r\nLưu &yacute; : phải để kh&ocirc; sợi yến trước khi để v&agrave;o tủ lạnh, tuyệt đối kh&ocirc;ng để yến c&ograve;n nước (chỉ c&oacute; t&iacute;nh tương đối, kh&ocirc;ng cần phải vắt kh&ocirc; sợi yến).</p>\r\n', 1497777600, '[\"1\"]', '/uploads/icons/none.jpg', 'Cách Làm Sạch Tổ Yến - Vạch Lông Và Các Tạp Chất', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(8, 'Thành Phần Có Trong Tổ Yến', '<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\" style=\"width:98%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Acid amin</p>\r\n\r\n			<p>c&oacute; trong tổ yến</p>\r\n			</td>\r\n			<td>\r\n			<p>H&agrave;m lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng dụng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Glycine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>1.99 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Trong cơ thể axit amin Glycine chuyển h&oacute;a th&agrave;nh Betanine. Betanine c&oacute; t&aacute;c dụng biến Homocystein th&agrave;nh Methionine</p>\r\n\r\n			<p>Homocystein&nbsp;<em>(Chất được biết l&agrave; g&acirc;y nguy cơ khuyết tật ống thần kinh. Ở những phụ nữ mang thai, h&agrave;m lượng homocysteine trong m&aacute;u cao l&agrave; dấu hiệu của nguy cơ tiền kinh giật. B&eacute; sinh ra từ những người mẹ c&oacute; h&agrave;m lượng homocysteine m&aacute;u cao th&igrave; sinh sớm v&agrave; c&oacute; khối lượng sơ sinh nhỏ hơn.)</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Valine</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>4.12 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Loại ax&iacute;t amin n&agrave;y chữa l&agrave;nh tế b&agrave;o cơ v&agrave; h&igrave;nh th&agrave;nh tế b&agrave;o mới, đồng thời gi&uacute;p c&acirc;n bằng nitơ cần thiết. Ngo&agrave;i ra, n&oacute; c&ograve;n ph&acirc;n hủy đường glucozơ c&oacute; trong cơ thể.&nbsp; Ax&iacute;t amin n&agrave;y c&oacute; t&aacute;c dụng điều h&ograve;a protein hỗ trợ bạn trong qu&aacute; tr&igrave;nh ăn ki&ecirc;ng v&agrave; luyện tập thể dục thể thao.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Leucine</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>4.56 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Leucine tương đối quan trọng trong qu&aacute; tr&igrave;nh điều chỉnh h&agrave;m lượng đường trong m&aacute;u; n&ecirc;n sẽ tốt cho bệnh nh&acirc;n mắc chứng &ldquo;hyperglycemica&rdquo;, hoặc những người mong muốn đốt ch&aacute;y chất b&eacute;o nhanh ch&oacute;ng. Hơn nữa, loại ax&iacute;t amin n&agrave;y c&ograve;n c&oacute; chức năng duy tr&igrave; lượng hormone tăng trưởng để th&uacute;c đẩy qu&aacute; tr&igrave;nh ph&aacute;t triển m&ocirc; cơ.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Isoleucine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>2.04 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Loại ax&iacute;t n&agrave;y đ&oacute;ng vai tr&ograve; sống c&ograve;n trong qu&aacute; tr&igrave;nh phục hồi sức khỏe sau qu&atilde;ng thời gian luyện tập thể dục thể thao. Đồng thời n&oacute; gi&uacute;p điều tiết lượng đường trong m&aacute;u, hỗ trợ qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh hemoglobin v&agrave; đ&ocirc;ng m&aacute;u.&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Threonine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>2.69 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Chức năng ch&iacute;nh của threonine l&agrave; hỗ trợ h&igrave;nh th&agrave;nh collagen v&agrave; elastin - hai chất li&ecirc;n kết tế b&agrave;o trong cơ thể. Ngo&agrave;i ra, n&oacute; rất tốt cho hoạt động gan, tăng cường hệ miễn dịch v&agrave; th&uacute;c đẩy cơ thể hấp thụ mạnh c&aacute;c dưỡng chất.</p>\r\n\r\n			<p>&nbsp;&nbsp; Tuy nhi&ecirc;n, những người ăn chay cần phải c&acirc;n nhắc loại ax&iacute;t amin n&agrave;y v&igrave; n&oacute; tồn tại chủ yếu trong thịt. V&agrave; để bổ sung threonine, bạn c&oacute; thể ăn pho m&aacute;t l&agrave;m từ sữa đ&atilde; gặn kem, gạo tấm, đậu tươi, lạc, hạt điều. Thế nhưng h&agrave;m lượng amin n&agrave;y trong c&aacute;c nguồn tr&ecirc;n lại rất thấp, n&ecirc;n buộc phải d&ugrave;ng sinh tố bổ sung.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Methionine</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>0.46 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Ax&iacute;t amin n&agrave;y đặc biệt cần thiết cho nam giới nếu muốn ph&aacute;t triển cơ bắp cuồn cuồn v&igrave; n&oacute; nhanh ch&oacute;ng ph&acirc;n hủy v&agrave; đốt ch&aacute;y chất b&eacute;o, đồng thời tăng th&ecirc;m lượng testosterone sinh dục nam. Ngo&agrave;i ra, menthinine hỗ trợ chống chữa kiệt sức, vi&ecirc;m khớp v&agrave; bệnh gan..</p>\r\n\r\n			<p>&nbsp;&nbsp; Ngo&agrave;i ra Glycine c&ograve;n l&agrave; 1 trong 19 axit amin c&oacute; mặt trong th&agrave;nh phần của Collagen gi&uacute;p phục hồi c&aacute;c cơ, m&ocirc; v&agrave; da.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Proline</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>5.27 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Collagen của b&ograve; l&agrave; một trong những nguồn cung cấp Collagen loại I v&agrave; loại III tốt nhất để bổ sung c&aacute;c loại Collagen chủ yếu ở t&oacute;c, da, m&oacute;ng tay, c&aacute;c loại g&acirc;n, d&acirc;y chằng, cơ, xương, răng, mắt v&agrave; mạch m&aacute;u. Th&agrave;nh phần protein n&agrave;y bao gồm 19 loại amino axit m&agrave; trong đ&oacute; chứa một h&agrave;m lượng rất lớn proline m&agrave; sẽ bổ sung l&yacute; tưởng cho việc phục hồi c&aacute;c cơ, c&aacute;c m&ocirc; v&agrave; da.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;Axit aspartic</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;4.69 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Rất quan trọng cho sự tăng trưởng m&ocirc; v&agrave; cơ, t&aacute;i tạo tế b&agrave;o.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Phenylalanine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>4.50 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Phenylalanine l&agrave; một ax&iacute;t amin c&oacute; chức năng bồi bổ n&atilde;o, tăng cường tr&iacute; nhớ, v&agrave; t&aacute;c động trực tiếp đến mọi hoạt động của n&atilde;o bộ. Ngo&agrave;i ra, n&oacute; c&oacute; thể l&agrave;m tăng lượng chất dẫn truyền xung động thần kinh, v&agrave; tăng tỷ lệ hấp thụ tia UV từ &aacute;nh s&aacute;ng mặt trời, gi&uacute;p tạo ra vitamin D nu&ocirc;i dưỡng l&agrave;n da.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Histidine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>2.09 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; Histidine gi&uacute;p cơ thể ph&aacute;t triển v&agrave; li&ecirc;n kết m&ocirc; cơ bắp với nhau. N&oacute; c&ograve;n c&oacute; t&aacute;c dụng h&igrave;nh th&agrave;nh m&agrave;n chắn myelin, một chất bảo vệ bao quanh d&acirc;y thần kinh v&agrave; gi&uacute;p tạo ra dịch vị, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Lysine</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>1.75 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;&nbsp; Nhiệm vụ quan trọng nhất của loại ax&iacute;t amin n&agrave;y l&agrave; khả năng hấp thụ canxi, gi&uacute;p cho xương chắc khỏe, chống l&atilde;o h&oacute;a cột sống, duy tr&igrave; trạng th&aacute;i c&acirc;n bằng nitơ c&oacute; trong cơ thể, do đ&oacute; tr&aacute;nh được hiện tượng gi&atilde;n cơ v&agrave; mệt mỏi. Ngo&agrave;i ra, lynsine c&ograve;n c&oacute; t&aacute;c dụng gi&uacute;p cơ thể tạo ra chất kh&aacute;nh thể v&agrave; điều tiết hormone truyền tải th&ocirc;ng tin.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Trytophan</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>0.7 %</p>\r\n			</td>\r\n			<td>\r\n			<p>L&agrave; một trong 9 acid amin thiết yếu trong cơ thể người. Đ&acirc;y l&agrave; một tiền chất của serotonin v&agrave; melatonin rất cần thiết cho sự tăng trưởng tối ưu cho trẻ nhũ nhi, c&ugrave;ng sự c&acirc;n bằng nitrogen ở người lớn.</p>\r\n\r\n			<p>Trytophan&nbsp;c&oacute; nhiều đặc t&iacute;nh như gi&uacute;p ức chế tiết dịch vị, k&iacute;ch th&iacute;ch cơ trơn v&agrave; dẫn truyền thần kinh trung ương.</p>\r\n\r\n			<p>&nbsp;&nbsp; Ở b&eacute; sơ sinh, trytophan v&agrave; c&aacute;c chất chuyển h&oacute;a rất cần cho sự trưởng th&agrave;nh của n&atilde;o v&agrave; cho sự ph&aacute;t triển qu&aacute; tr&igrave;nh điều h&ograve;a t&acirc;m thần - vận động&nbsp;c&aacute;c h&agrave;nh vi ăn uống&nbsp;v&agrave; nhịp độ thức, ngủ của trẻ.</p>\r\n\r\n			<p>&nbsp;&nbsp; Sữa mẹ l&agrave; nguồn dinh dưỡng ho&agrave;n chỉnh nhất đối với b&eacute; v&agrave; trong đ&oacute; trytophan c&oacute; nồng độ cao, c&ograve;n c&aacute;c loại sữa bột thương mại th&igrave; h&agrave;m lượng acid amin&nbsp;lớn l&agrave;m cho nồng độ trytophan trong huyết thanh bị thấp hơn so với những trẻ b&uacute; mẹ.</p>\r\n\r\n			<p>&nbsp;&nbsp; H&agrave;m lượng trytophan đầy đủ trong chế độ ăn của b&eacute; c&oacute; thể b&ugrave; đắp cho sự thiếu hụt vitamin nh&oacute;m B- niacin (acid nicotinic g&acirc;y bệnh pellagra ở người). Do đ&oacute;, người mẹ cần phải chuẩn bị v&agrave; đặc biệt bổ sung dưỡng chất&nbsp;khoa học&nbsp;trong suốt qu&aacute; tr&igrave;nh mang thai để cơ thể c&oacute; đủ lượng trytophan cần thiết gi&uacute;p trẻ ph&aacute;t triển được một c&aacute;ch to&agrave;n diện v&agrave; ph&ograve;ng ngừa bệnh tật.</p>\r\n\r\n			<p>&nbsp;&nbsp; C&aacute;c kho&aacute;ng chất trong sữa mẹ&nbsp;(đặc biệt l&agrave; trytophan) sẽ bị thay&nbsp;đổi khi&nbsp;t&acirc;m l&yacute;&nbsp;người mẹ kh&ocirc;ng thoải m&aacute;i: lo lắng, căng thẳng, mất ngủ k&eacute;o d&agrave;i... V&igrave; vậy, người&nbsp;mẹ cần biết nghỉ ngơi điều độ, bổ sung đầy đủ những loại thực phẩm gi&agrave;u trytophan&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>L-Arginine</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>11.4 %</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;&nbsp; B&iacute; ẩn của cơ chế cương dương vật ch&iacute;nh l&agrave; sự biến đổi h&agrave;m lượng nitric oxide (NO) trong cơ thể. C&aacute;c nh&agrave; khoa học đ&atilde; chứng minh rằng, chất L-Arginine ch&iacute;nh l&agrave; nguồn cung cấp NO.L-Arginine l&agrave; chất mẹ của NO. Đ&acirc;y l&agrave; một dẫn xuất của arginine - chất k&iacute;ch th&iacute;ch sản xuất ho&oacute;c m&ocirc;n tăng trưởng v&agrave; tham gia qu&aacute; tr&igrave;nh chuyển h&oacute;a của cơ thể. C&aacute;c nghi&ecirc;n cứa l&acirc;m s&agrave;ng cho thấy, arginine nếu đầy đủ sẽ l&agrave;m tăng cường sức khỏe đ&aacute;ng kể v&agrave; nếu thiếu hụt sẽ g&acirc;y nhiều vấn đề.</p>\r\n\r\n			<p>&nbsp;&nbsp; L-Arginine được hấp thu v&agrave; lưu h&agrave;nh trong huyết tương. Trong một nghi&ecirc;n cứu, những người t&igrave;nh nguyện được cho d&ugrave;ng chất n&agrave;y với liều 4 g/lần, mỗi ng&agrave;y 2 lần. Kết quả l&agrave; ở họ c&oacute; sự gia tăng lượng ho&oacute;c m&ocirc;n tăng trưởng HGG, giảm huyết &aacute;p, đẩy nhanh qu&aacute; tr&igrave;nh hồi phục c&aacute;c tổn thương phần mềm, điều h&ograve;a lưu th&ocirc;ng tuần ho&agrave;n v&agrave; cải thiện c&aacute;c rối loạn t&igrave;nh dục.</p>\r\n\r\n			<p>&nbsp;&nbsp; L-Arginine l&agrave;m tăng lượng m&aacute;u đến cơ quan sinh dục, tăng nhạy cảm cho c&aacute;c m&ocirc; ở dương vật v&agrave; &acirc;m vật, cải thiện chức năng cương v&agrave; gi&uacute;p dễ đạt cực kho&aacute;i hơn. Việc thiếu chất n&agrave;y sẽ l&agrave;m giảm v&agrave; rối loạn sự ham muốn. V&igrave; vậy, đ&acirc;y l&agrave; một chất c&oacute; lợi cho sức khỏe t&igrave;nh dục của đ&agrave;n &ocirc;ng cũng như phụ nữ, giữ vai trị ch&iacute;nh trong việc điều h&ograve;a &nbsp;chức năng t&igrave;nh dục. N&oacute; được xem l&agrave; một dược phẩm hỗ trợ điều trị rối loạn chức năng t&igrave;nh dục, đặc biệt l&agrave; bệnh liệt dương v&agrave; l&atilde;nh cảm.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1497777862, '[\"1\"]', '/uploads/icons/none.jpg', 'thành phần có trong tổ yến', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(9, 'Những Lưu Ý Khi Dùng Yến', '<p>- &nbsp; Kh&ocirc;ng ng&acirc;m yến trong nước n&oacute;ng v&igrave; sẽ l&agrave;m tan yến v&agrave; mất đi chất dinh dưỡng trong tổ yến.</p>\r\n\r\n<p>- &nbsp; Yến sau khi ng&acirc;m v&agrave; l&agrave;m sạch nhưng kh&ocirc;ng d&ugrave;ng ngay th&igrave; vắt kh&ocirc;, bỏ v&agrave;o ngăn m&aacute;t tủ lạnh. Phương ph&aacute;p n&agrave;y co thể bảo quản yến trong 7 ng&agrave;y. Nếu muốn bảo quản l&acirc;u hơn n&ecirc;n hong yến thật kh&ocirc; bằng quạt m&aacute;y v&agrave; bỏ v&agrave;o hộp k&iacute;n.</p>\r\n\r\n<p>- &nbsp; Chưng c&aacute;ch thủy l&agrave; c&aacute;ch tốt nhất để giữ lại c&aacute;c chất dinh dưỡng trong tổ yến. D&ugrave; chế biến m&oacute;n ăn g&igrave; cũng n&ecirc;n chưng c&aacute;ch thủy yến trước, sau đ&oacute; mới trộn yến v&agrave;o c&aacute;c m&oacute;n ăn đ&oacute;.</p>\r\n\r\n<p>- &nbsp; Thời gian ăn yến tốt nhất l&agrave; v&agrave;o buổi tối, trước khi đi ngủ.</p>\r\n\r\n<p>- &nbsp; N&ecirc;n ăn yến đều đặn mỗi ng&agrave;y một &iacute;t. Kh&ocirc;ng n&ecirc;n ăn một lần thật nhiều yến rồi ngưng thời gian d&agrave;i mới ăn lại.</p>\r\n', 1497777787, '[\"1\"]', '/uploads/icons/none.jpg', 'nhưng lưu ý khi dùng yến', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(10, 'Bảo Quản', '<ul>\r\n	<li>Yến chưa ng&acirc;m nước : Bảo quản nơi kh&ocirc; ráo, thoáng mát.</li>\r\n	<li>Yến đ&atilde; ng&acirc;m nước: vắt r&aacute;o, để v&agrave;o tủ lạnh c&oacute; thể d&ugrave;ng trong 14 ng&agrave;y.</li>\r\n	<li>Yến đ&atilde; chưng c&aacute;ch thủy n&ecirc;n để v&agrave;o tủ lạnh v&agrave; d&ugrave;ng tốt nhất trong 3 ng&agrave;y.</li>\r\n</ul>\r\n', 1497777819, '[\"1\"]', '/uploads/icons/none.jpg', 'bảo quản', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào'),
(11, 'Phân Biệt Yến Thật, Giả', '<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cách đơn giản nh&acirc;́t là quan sát sau khi chưng c&acirc;́t th&acirc;́y t&ocirc;̉ y&ecirc;́n nở bung l&ecirc;n, n&ocirc;̉i h&ecirc;́t tr&ecirc;n mặt nước, trong veo, thơm mùi đặc trưng thì đó là y&ecirc;́n th&acirc;̣t.</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c c&aacute;ch ph&acirc;n biệt sau:<br />\r\n<br />\r\nC&aacute;ch 1: Lấy 1 &iacute;t tổ yến ng&acirc;m nước. Nếu l&agrave; yến s&agrave;o giả gặp nước sẽ nở ngay sau 2-5 ph&uacute;t v&agrave; b&oacute;p v&agrave;o tổ yến sẽ nh&atilde;o ra v&igrave; do cấu tr&uacute;c l&agrave; tinh bột, khi chưng sẽ nhanh ch&oacute;ng tan ra hết hoặc tan ra một lượng lớn.</p>\r\n\r\n<p>Tổ yến thật khi ng&acirc;m, chưng c&aacute;ch thủy trong 1 thời gian 10-30 ph&uacute;t<br />\r\nsẽ nở bung ra tr&ecirc;n bề mặt nước, kh&ocirc;ng tan v&agrave; nh&atilde;o m&agrave; th&agrave;nh những sợi yến nguy&ecirc;n vẹn. Tổ yến thật khi đun s&ocirc;i &iacute;t bọt, c&oacute; m&ugrave;i đặc trưng của yến s&agrave;o.<br />\r\n<br />\r\nC&aacute;ch 2: Nhỏ thuốc Luigon (loại thuốc đặc trưng để x&aacute;c định tinh bột) v&agrave;o nồi yến s&agrave;o đang chưng sẽ cho phản ứng tạo m&agrave;u xanh (kh&ocirc;ng c&ograve;n m&agrave;u khi đun s&ocirc;i để nguội). Ri&ecirc;ng tổ yến thật (kh&ocirc;ng pha trộn) sẽ kh&ocirc;ng c&oacute; phản ứng tạo m&agrave;u v&igrave; kh&ocirc;ng c&oacute; tinh bột.<br />\r\n<br />\r\nC&aacute;ch 3: Cho tổ yến v&agrave;o dung dịch iốt, nếu l&agrave; tổ yến th&ocirc; c&oacute; phủ bột hoặc giả sẽ chuyển sang m&agrave;u xanh, do tinh bột t&aacute;c dụng với i&ocirc;t biến th&agrave;nh m&agrave;u xanh.</p>\r\n\r\n<p>Đối với yến huyết - yến s&agrave;o c&oacute; m&agrave;u đỏ, hoặc hồng, khi nh&uacute;ng một &iacute;t v&agrave;o nước tr&agrave; (hoặc ch&egrave; xanh) nếu gặp yến s&agrave;o giả nhuộm &ocirc;xit sắt th&igrave; ch&uacute;ng sẽ phản ứng ho&aacute; học v&agrave; đen sẫm lại. Hoặc khi ng&acirc;m trong nước, yến s&agrave;o giả nhuộm phẩm m&agrave;u sẽ bị mất m&agrave;u, tan trong nước. Tổ Yến thật d&ugrave; c&oacute; đem nấu ch&iacute;n trong nước s&ocirc;i 100C n&oacute; vẫn c&ograve;n nguy&ecirc;n m&agrave;u sắc.</p>\r\n', 1497777850, '[\"1\"]', '/uploads/icons/none.jpg', 'phân biệt yến thật giả', '', '', 14, 0, '', 1, 0, ',Cẩm Nang Yến Sào');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_blog_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_time` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_like` int(11) NOT NULL DEFAULT '0',
  `comment_check` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `order_name` text NOT NULL,
  `order_phone` text NOT NULL,
  `order_checked` int(11) NOT NULL DEFAULT '0',
  `order_quanty` int(11) NOT NULL,
  `order_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_product_id`, `order_name`, `order_phone`, `order_checked`, `order_quanty`, `order_time`) VALUES
(2, 1, 'tran khanh toan', '334298473924', 0, 99, 1498183634),
(3, 1, 'Trần khánh toàn', '01636634028', 0, 2, 1498233005);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_price_in` int(11) NOT NULL DEFAULT '0',
  `product_price_out` int(11) NOT NULL,
  `product_image` text NOT NULL,
  `product_gallery` text NOT NULL,
  `product_attribute` text NOT NULL,
  `product_description` text NOT NULL,
  `product_seo_title` text NOT NULL,
  `product_seo_keyword` text NOT NULL,
  `product_seo_description` text NOT NULL,
  `product_views` int(11) NOT NULL DEFAULT '0',
  `product_orders` int(11) NOT NULL DEFAULT '0',
  `product_category_ids` text NOT NULL,
  `product_date_added` int(11) NOT NULL,
  `product_enable` int(11) NOT NULL DEFAULT '0',
  `product_quantity` int(11) NOT NULL DEFAULT '0',
  `product_sku` text NOT NULL,
  `product_model` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price_in`, `product_price_out`, `product_image`, `product_gallery`, `product_attribute`, `product_description`, `product_seo_title`, `product_seo_keyword`, `product_seo_description`, `product_views`, `product_orders`, `product_category_ids`, `product_date_added`, `product_enable`, `product_quantity`, `product_sku`, `product_model`) VALUES
(1, 'Tổ Yến Thô 100 gram', 0, 3245000, 'http://yengianguyen.dev/uploads/images/products/053d0f3c37a9c9ec164f8cf8aa20888b.jpg', '[]', '[]', '<p>- Tổ yến m&agrave;u trắng ng&agrave; hoặc chuyển v&agrave;ng, chưa được l&agrave;m sạch l&ocirc;ng tơ v&agrave; tạp chất, vẫn giữ nguy&ecirc;n h&igrave;nh dạng tổ.</p>\r\n\r\n<p>- Sản phẩm l&agrave; nhũng tổ yến gi&agrave;, dai, thơm ngon, lu&ocirc;n đạt chất lượng tốt nhất v&agrave; độ kh&ocirc; tối đa.</p>\r\n\r\n<p>- 7-9 tai/100g</p>\r\n\r\n<p>- Xuất xứ Nha Trang, Kh&aacute;nh H&ograve;a</p>\r\n', 'Tổ Yến Thô 100 gram', '', '', 0, 0, '[\"1\"]', 1497799834, 1, 1, '', ''),
(2, 'Tổ Yến Thô 50 gram', 0, 1622000, 'http://yengianguyen.dev/uploads/images/products/ed6c0d30bf436424b61dfcb9903ade85.jpg', '[]', '[]', '<p>- Tổ yến m&agrave;u trắng ng&agrave; hoặc chuyển v&agrave;ng, chưa được l&agrave;m sạch l&ocirc;ng tơ v&agrave; tạp chất, vẫn giữ nguy&ecirc;n h&igrave;nh dạng tổ.</p>\r\n\r\n<p>- Sản phẩm l&agrave; nhũng tổ yến gi&agrave;, dai, thơm ngon, lu&ocirc;n đạt chất lượng tốt nhất v&agrave; độ kh&ocirc; tối đa.</p>\r\n\r\n<p>- 7-9 tai/100g</p>\r\n\r\n<p>- Xuất xứ Nha Trang, Kh&aacute;nh H&ograve;a</p>\r\n', 'Tổ Yến Thô 50 gram', '', '', 0, 0, '[\"1\"]', 1497799876, 1, 1, '', ''),
(3, 'Tổ Yến Thô 10 gram', 0, 300000, 'http://yengianguyen.dev/uploads/images/products/6ba236b54bf081610e0ca5323465fc10.jpg', '[]', '[]', '<p>- Tổ yến m&agrave;u trắng ng&agrave; hoặc chuyển v&agrave;ng, chưa được l&agrave;m sạch l&ocirc;ng tơ v&agrave; tạp chất, vẫn giữ nguy&ecirc;n h&igrave;nh dạng tổ.</p>\r\n\r\n<p>- Sản phẩm l&agrave; nhũng tổ yến gi&agrave;, dai, thơm ngon, lu&ocirc;n đạt chất lượng tốt nhất v&agrave; độ kh&ocirc; tối đa.</p>\r\n\r\n<p>- 7-9 tai/100g</p>\r\n\r\n<p>- Xuất xứ Nha Trang, Kh&aacute;nh H&ograve;a</p>\r\n', 'Tổ Yến Thô 50 gram', '', '', 0, 0, '[\"1\"]', 1497799904, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `product_category_name` text NOT NULL,
  `product_category_image` text,
  `product_category_seo_title` text,
  `product_category_seo_keyword` text,
  `product_category_seo_description` text,
  `product_category_description` text,
  `product_category_date_added` int(11) DEFAULT NULL,
  `product_category_views` int(11) NOT NULL DEFAULT '0',
  `product_category_parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`, `product_category_image`, `product_category_seo_title`, `product_category_seo_keyword`, `product_category_seo_description`, `product_category_description`, `product_category_date_added`, `product_category_views`, `product_category_parent_id`) VALUES
(1, 'Tổ Yến Thô Nguyên Chất Còn Lông', '/uploads/icons/none.jpg', 'Tổ Yến Thô Nguyên Chất Còn Lông', '', '', '', 1497798531, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `set_name` text COLLATE utf8_unicode_ci NOT NULL,
  `set_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`set_name`, `set_value`) VALUES
('set_pagetitle', 'Yến Gia Nguyễn'),
('set_pagedescriptiton', '3'),
('set_pagekeyword', '2'),
('author', '6'),
('logo', 'http://yengianguyen.dev/uploads/images/logos/cbba82ac1501e1d20564e807b3ce89f5.png'),
('address', '8'),
('phone', '9'),
('email', '10'),
('id_analytics', '5'),
('google_site_verification', '4'),
('favicon', 'http://yengianguyen.dev/uploads/images/logos/a503ef2ad936941d3ffdabb6d5d46e27.png'),
('email_host', 'smtp.gmail.com'),
('email_SMTPSecure', 'ssl'),
('email_port', '465'),
('email_Username', 'trankhanhtoan321@gmail.com'),
('email_Password', 'BUKT25041996'),
('author_name', '7'),
('email_name', 'Trần Khánh Toàn'),
('fb_id', '100004106050082'),
('currency', 'đ');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_image_url` text NOT NULL,
  `slide_caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_image_url`, `slide_caption`) VALUES
(4, 'http://yengianguyen.dev/uploads/images/slides/bd6346b311b5c0c990d1f5505acd2ccb.png', ''),
(5, 'http://yengianguyen.dev/uploads/images/slides/fd297d0081ecc4053ebac0a5b7affd11.png', ''),
(6, 'http://yengianguyen.dev/uploads/images/slides/0b4edb02d48912a9a9a8226852867901.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_email`
--

CREATE TABLE `subscribe_email` (
  `sub_id` int(11) NOT NULL,
  `sub_email` text NOT NULL,
  `sub_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` text COLLATE utf8_unicode_ci NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci,
  `user_lastlogin` int(11) DEFAULT '0',
  `user_fullname` text COLLATE utf8_unicode_ci,
  `user_role` text COLLATE utf8_unicode_ci,
  `user_image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_lastlogin`, `user_fullname`, `user_role`, `user_image`) VALUES
(14, 'admin', '$2y$10$ixBRga.hfXgGctn.Eo4ohujt7lJXN4BmCiY1nb1O3SYCvYyvC54GO', 'trankhanhtoan321@gmail.com', 1498229444, 'Admin', 'admin', 'http://yengianguyen.dev/uploads/images/logos/f080c7e6c0239a887fbc58d538cf5e1e.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`blogcat_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_user_id` (`blog_user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_blog_id` (`comment_blog_id`),
  ADD KEY `comment_user_id` (`comment_user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `subscribe_email`
--
ALTER TABLE `subscribe_email`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `blogcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subscribe_email`
--
ALTER TABLE `subscribe_email`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`blog_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_blog_id`) REFERENCES `blogs` (`blog_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`comment_user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
