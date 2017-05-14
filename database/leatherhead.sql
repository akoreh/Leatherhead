-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 09:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leatherhead`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Leather Footballs', '<h2>Leather Footballs</h2>', '2017-05-13 16:16:34', '2017-05-13 16:16:34'),
(2, 'Baseballs', '<p>Baseballs</p>', '2017-05-14 15:59:57', '2017-05-14 16:06:23'),
(3, 'Basketballs', '<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Leather Basketballs</h1>\r\n<p><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">LEATHER HEAD&trade; Handsome American Basketballs.</span></p>', '2017-05-13 16:17:31', '2017-05-13 16:17:31'),
(4, 'Soccer/Rugby/Fitness', '<h2>Soccer/Rugby/Fitness</h2>', '2017-05-13 17:44:36', '2017-05-13 17:44:36'),
(5, 'Gloves', '<div class=\"clearfix\" style=\"zoom: 1; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; float: left;\">Leather Baseball Gloves</h1>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h6 style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: uppercase; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 10px; line-height: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">AT LEATHER HEAD BASEBALL WE HAVE A SIMPLE GOAL: CREATE GLOVES FOR MAJOR LEAGUE PLAYERS.</h6>\r\n<h6 style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: uppercase; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 10px; line-height: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">WE AUDITIONED A FEW OF THE WORLD&rsquo;S MOST HIGHLY REGARDED BASEBALL GLOVE FACTORIES. WHEN WE FOUND OUR MATCH, WE ASKED THEM TO CREATE A HANDFUL OF DESIGNS WITH THE FOLLOWING SPECS:<br /><strong style=\"font-weight: bold;\">1.</strong>MAKE THE BEST GLOVES FOR MAJOR LEAGUE CALIBER PLAYERS.&nbsp; GLOVES THAT TAKE TIME TO BREAK IN, BUT THAT WILL ALSO STAND UP TO THE RIGORS OF MULTIPLE MAJOR LEAGUE SEASONS.<br /><strong style=\"font-weight: bold;\">2.</strong><span class=\"Apple-converted-space\">&nbsp;</span>USE THE BEST LEATHER, REGARDLESS OF COST.<br /><strong style=\"font-weight: bold;\">3.</strong><span class=\"Apple-converted-space\">&nbsp;</span>ALL LEATHER COMPONENTS OF THE GLOVE MUST COME FROM THE SAME TANNAGE OF LEATHER. WHY?&nbsp; BECAUSE WHEN THE ENTIRE GLOVE IS MADE FROM THE SAME LEATHER THE COMPONENTS MARRY INTO A SINGLE FLAWLESS UNIT.<br /><strong style=\"font-weight: bold;\">4.</strong><span class=\"Apple-converted-space\">&nbsp;</span>USE THE BEST COMPONENTS, INCLUDING:<br /><strong style=\"font-weight: bold;\">A.</strong><span class=\"Apple-converted-space\">&nbsp;</span>WELTING: CLARINO.&nbsp; CLARINO IS AN INDESTRUCTIBLE MICROFIBER.&nbsp; IT MAKES SUPERIOR WELTING, RESULTING IN A STIFFER, MORE DURABLE GLOVE.<br /><strong style=\"font-weight: bold;\">B.</strong><span class=\"Apple-converted-space\">&nbsp;</span>FELT: THICK, DENSE FELT IS OFTEN WHAT DISTINGUISHED A STURDY, LONG LASTING GLOVE FROM ONE THAT GOES FLOPPY AFTER A WEEK OF PLAY.<br /><strong style=\"font-weight: bold;\">C.</strong><span class=\"Apple-converted-space\">&nbsp;</span>REINFORCEMENTS: RESEARCH TELLS US THAT ELITE PLAYERS PREFER THEIR GLOVES WITH A STIFF PINKIE AND THUMB.<br /><strong style=\"font-weight: bold;\">D.</strong><span class=\"Apple-converted-space\">&nbsp;</span>LACE: TENNESSEE TANNING LACE IS THE BEST THERE IS.&nbsp; THIS IS THE STUFF WE WANT IN OUR GLOVES.<br /><strong style=\"font-weight: bold;\">5.</strong><span class=\"Apple-converted-space\">&nbsp;</span>MAKE THESE GLOVES ON THE FACTORY&rsquo;S MOST EXPERIENCE PRODUCTION LINE. EACH PIECE OF THE GLOVE MUST COME TOGETHER WITH EXACTING PRECISION.&nbsp; IT TAKES YEARS OF PRACTICE AND EXPERIENCE TO SEW A MAJOR LEAGUE QUALITY GLOVE. LEATHER HEAD BASEBALL GLOVES REPRESENT THE BEST GLOVE THAT A CRAFTSMAN CAN PRODUCE.</h6>\r\n<h6 style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: uppercase; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 10px; line-height: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">FINALLY, WE PUT THE GLOVES INTO THE HANDS OF EXPERIENCED MAJOR LEAGUE PLAYERS AND ELITE COLLEGIATE PLAYERS.&nbsp; THEY WERE TOLD TO BEAT THEM UP AND COME BACK WITH CONSTRUCTIVE CRITICISM.&nbsp; FEEDBACK WAS OFFERED AND TWEAKS WERE MADE.<br />THE<span class=\"Apple-converted-space\">&nbsp;</span><strong style=\"font-weight: bold;\">LEATHER HEAD SPORTS</strong><span class=\"Apple-converted-space\">&nbsp;</span>BRAND REPRESENTS FINE LEATHER AND EXCELLENCE IN CRAFTSMANSHIP.&nbsp; IT REPRESENTS NOSTALGIA.&nbsp;&nbsp;&nbsp; LEATHER HEAD BASEBALL GLOVES ARE DESIGNED TO EVOKE MEMORIES OF THE BEST BASEBALL GLOVES FROM 30 YEARS AGO; GLOVES WITHOUT BELLS AND WHISTLES.</h6>\r\n<h6 style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: uppercase; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 10px; line-height: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">WITH AESTHETICALLY CLEAN AND MODERN DESIGNS, WE ALSO KNEW WE NEEDED GREAT GRAPHICS TO COMPLIMENT THE GLOVES.&nbsp; FOR THIS WE TURNED TO THE EXTRAORDINARILY TALENTED<span class=\"Apple-converted-space\">&nbsp;</span><a style=\"color: #333333; text-decoration: none; outline: none;\" href=\"http://joncontino.com/\" target=\"_blank\" rel=\"noopener noreferrer\">JON CONTINO</a><span class=\"Apple-converted-space\">&nbsp;</span>TO CREATE A WHOLE PACKET OF&nbsp; LEATHER HEAD BRANDING THAT WOULD SPEAK TO OUR HERITAGE AND GIVE THE GLOVES A MODERN BUT CLASSIC APPEAL. WE SPARED NO EXPENSE TO CREATE A BASEBALL GLOVE THAT IS TRUE TO THE LEATHER HEAD NAME.</h6>', '2017-05-13 17:45:05', '2017-05-13 17:45:05'),
(6, 'Custom Balls', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">What makes Leather Head Sports different and special is our ability to do one-offs and small runs of highly customized, individually personalized sports balls. &nbsp;We love working with our customers on special projects, so give us a call if you\'re looking for a gift that will blow them away.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Many of the items in our shop can be engraved with a Name, Initials, Personal message, and even Logos.<br />Perfect for Groomsman\'s gifts, birthdays, graduations, and sports awards.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">For basic personalization, use our<span class=\"Apple-converted-space\">&nbsp;</span><a style=\"color: #130ce3; text-decoration: none; outline: none;\" href=\"http://www.leatherheadsports.com/collections/7-custom-engraving-service/products/custom-engraving-service\" target=\"_blank\" rel=\"noopener noreferrer\">simple form</a><span class=\"Apple-converted-space\">&nbsp;</span>to send your engraving instructions.<br />For more elaborate engraving instructions, we recommend that you contact us directly.<br /><a style=\"color: #130ce3; text-decoration: none; outline: none;\" href=\"http://www.leatherheadsports.com/pages/contact-us\" target=\"_blank\" rel=\"noopener noreferrer\">Send an e-mail with the details of your engraving to:<span class=\"Apple-converted-space\">&nbsp;</span></a><br /><strong style=\"font-weight: bold;\">Paul.Cunningham@LeatherHeadSports.com</strong><span class=\"Apple-converted-space\">&nbsp;</span><br />Paul will respond to confirm the details of your engraving request, or you can start a dialog to ensure that you get exactly what you want.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">COST:<span class=\"Apple-converted-space\">&nbsp;</span></strong>$25.00 per panel</p>\r\n<h3 style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 24px; line-height: 28px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><a style=\"color: #333333; text-decoration: none; outline: none;\" title=\"Custom Engraving\" href=\"http://www.leatherheadsports.com/collections/custom-engraving-service/\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"color: #0000ff;\">CLICK HERE TO ORDER CUSTOM ENGRAVING</span></a></h3>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">TIMING:</strong><span class=\"Apple-converted-space\">&nbsp;</span>Engraved balls are made to order.&nbsp; Turnaround time is 1-2&nbsp;weeks.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">NOTES:&nbsp;</strong></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Limitations:</strong>&nbsp;&nbsp;<strong style=\"font-weight: bold;\">Lemon Balls</strong><span class=\"Apple-converted-space\">&nbsp;</span>have limited space for engraving. &nbsp;We recommend two lines of text with a maximum of six characters per line. &nbsp;<strong style=\"font-weight: bold;\">Footballs</strong><span class=\"Apple-converted-space\">&nbsp;</span>have a blank panel with engravable space of 4\' x 2.5\". &nbsp;Also the football can accommodate two lines of text below the air valve. &nbsp;There is a character limit, so please inquire with your proposed message. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold; line-height: 1.5;\">Fonts:</strong><span style=\"line-height: 1.5;\"><span class=\"Apple-converted-space\">&nbsp;</span>We typically use Times Roman, however if there is a font you prefer you may request that. &nbsp;</span>We will do our best to accommodate your request.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><br /><strong style=\"font-weight: bold;\">The Process:<span class=\"Apple-converted-space\">&nbsp;</span></strong>Custom engraving techniques include Laser engraving or Heat embossing.&nbsp; Either option has its\' Pros and Cons.<br />We welcome the opportunity to consult with you to insure the best results for your project.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><br /><strong style=\"font-weight: bold;\">Logos:</strong><span class=\"Apple-converted-space\">&nbsp;</span>If submitting logos, they must be high resolution (300dpi) B+W&nbsp; jpeg files.&nbsp; Colors or shades of gray are not engravable.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Questions:</strong><span class=\"Apple-converted-space\">&nbsp;</span>&nbsp;Call 201-857-0443</p>', '2017-05-13 17:47:48', '2017-05-13 17:47:48'),
(7, 'Apparel', '<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Leather Head Apparel</h1>\r\n<p><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Support Team Leather Head with apparel bearing our Jon Contino designed logo art.</span></p>', '2017-05-13 17:48:15', '2017-05-13 17:48:15'),
(8, 'Gifts', '<h2>Gifts</h2>', '2017-05-13 17:48:30', '2017-05-13 17:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, '1494703081Leather_Head_Football_HD_600_01_1024x1024.jpg', '2017-05-13 16:18:01', '2017-05-13 16:18:01'),
(8, '1494741641Leather_Head_Football_Blue_Horween_600_01_1024x1024.jpg', '2017-05-14 03:00:41', '2017-05-14 03:00:41'),
(9, '1494741680600BisonPro_1024x1024.jpg', '2017-05-14 03:01:20', '2017-05-14 03:01:20'),
(10, '1494742505Leather_Head_Football_Onyx_600_01_1024x1024 (1).jpg', '2017-05-14 03:15:05', '2017-05-14 03:15:05'),
(11, '1494742580ProHDred600_1024x1024.jpg', '2017-05-14 03:16:20', '2017-05-14 03:16:20'),
(12, '1494742643600_a1bc2ae4-c476-4f67-8f09-ae297864fb84_1024x1024.jpg', '2017-05-14 03:17:23', '2017-05-14 03:17:23'),
(13, '1494742702600CxlwRed_1024x1024.jpg', '2017-05-14 03:18:22', '2017-05-14 03:18:22'),
(14, '1494742752600CXLw_white_1024x1024.jpg', '2017-05-14 03:19:12', '2017-05-14 03:19:12'),
(15, '1494742913600RageNatural_1024x1024.jpg', '2017-05-14 03:21:53', '2017-05-14 03:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_05_13_091902_add_roles_to_users_table', 1),
('2017_05_13_092132_create_roles_table', 1),
('2017_05_13_100312_create_products_table', 1),
('2017_05_13_103452_create_images_table', 1),
('2017_05_13_161905_create_categories_table', 1),
('2017_05_13_164829_create_subcategories_table', 1),
('2017_05_14_085617_create_newsletters_table', 2),
('2017_05_14_161519_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(6, 'test4@test.com', '2017-05-14 06:37:27', '2017-05-14 06:37:27'),
(7, 'test@test.com', '2017-05-14 06:40:50', '2017-05-14 06:40:50'),
(8, 'test3@test.com', '2017-05-14 09:32:28', '2017-05-14 09:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `user_id`, `cart`, `address`, `status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, '4294967295', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:4;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:130;s:4:\"item\";O:11:\"App\\Product\":24:{s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:5:\"price\";i:3;s:5:\"stock\";i:4;s:8:\"image_id\";i:5;s:8:\"keywords\";i:6;s:8:\"homepage\";i:7;s:14:\"subcategory_id\";}s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:10:\"\0*\0perPage\";i:15;s:12:\"incrementing\";b:1;s:10:\"timestamps\";b:1;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:4;s:4:\"name\";s:37:\"Handsome Dan Leather Football - Brown\";s:11:\"description\";s:2868:\"<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><span style=\"font-weight: bold;\">Product:</span> Handsome Dan Football</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&rdquo;The Official Football of Collegiate Tailgating&rdquo;.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Handsome Dan is our signature football, the one the The Wall Street Journal called&nbsp;<a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" title=\"The Perfect Football\" href=\"http://www.wsj.com/articles/SB10001424052970203893404577098620749427002\" target=\"_blank\" rel=\"noopener noreferrer\">\"The Perfect Football\"</a><br />I started Leather Head Sports with a sense of nostalgia and the<br />conviction that the love of sports is universal.<br />We strive to create heirloom quality products that evoke the memories of a simpler time.<br />The Handsome Dan football is our first design and it remains our best seller.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Many know &ldquo;Handsome Dan&rdquo; as the bulldog mascot for Yale University.&nbsp;<br />Indeed, in naming our signature ball for the Yale mascot,&nbsp;<br />I am paying homage to my father, an All-American swimmer at Yale from the class of &lsquo;62</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">The Handsome Dan football is made from rich, supple, uncorrected leather.&nbsp;<br />This ball will age beautifully, in fact it will improve with use.<br />Handsome Dan is destined to become a constant companion.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">F1-HD-RED</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><br /><span style=\"font-weight: bold;\">Specs:</span><br />About the size of a \"Youth\" football<br />Leather shell<br />Butyl rubber bladder<br />Raw hide lace<br />Polyester thread&nbsp;<br /><br /><span style=\"font-weight: bold;\">Notes:</span><br />Featured in:<br /><a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" href=\"http://online.wsj.com/article/SB10001424052970203893404577098620749427002.html\" target=\"_blank\" rel=\"noopener noreferrer\">The Wall Street Journal</a><br />Cigar Aficionado magazine<br />Esquire Magazine</p>\";s:5:\"price\";d:130;s:5:\"stock\";i:0;s:8:\"image_id\";i:1;s:8:\"keywords\";s:57:\"handsome dan, handsome, leather football, football, brown\";s:8:\"homepage\";i:1;s:14:\"subcategory_id\";i:1;s:10:\"created_at\";s:19:\"2017-05-13 19:33:33\";s:10:\"updated_at\";s:19:\"2017-05-13 19:49:51\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:4;s:4:\"name\";s:37:\"Handsome Dan Leather Football - Brown\";s:11:\"description\";s:2868:\"<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><span style=\"font-weight: bold;\">Product:</span> Handsome Dan Football</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&rdquo;The Official Football of Collegiate Tailgating&rdquo;.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Handsome Dan is our signature football, the one the The Wall Street Journal called&nbsp;<a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" title=\"The Perfect Football\" href=\"http://www.wsj.com/articles/SB10001424052970203893404577098620749427002\" target=\"_blank\" rel=\"noopener noreferrer\">\"The Perfect Football\"</a><br />I started Leather Head Sports with a sense of nostalgia and the<br />conviction that the love of sports is universal.<br />We strive to create heirloom quality products that evoke the memories of a simpler time.<br />The Handsome Dan football is our first design and it remains our best seller.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Many know &ldquo;Handsome Dan&rdquo; as the bulldog mascot for Yale University.&nbsp;<br />Indeed, in naming our signature ball for the Yale mascot,&nbsp;<br />I am paying homage to my father, an All-American swimmer at Yale from the class of &lsquo;62</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">The Handsome Dan football is made from rich, supple, uncorrected leather.&nbsp;<br />This ball will age beautifully, in fact it will improve with use.<br />Handsome Dan is destined to become a constant companion.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">F1-HD-RED</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><br /><span style=\"font-weight: bold;\">Specs:</span><br />About the size of a \"Youth\" football<br />Leather shell<br />Butyl rubber bladder<br />Raw hide lace<br />Polyester thread&nbsp;<br /><br /><span style=\"font-weight: bold;\">Notes:</span><br />Featured in:<br /><a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" href=\"http://online.wsj.com/article/SB10001424052970203893404577098620749427002.html\" target=\"_blank\" rel=\"noopener noreferrer\">The Wall Street Journal</a><br />Cigar Aficionado magazine<br />Esquire Magazine</p>\";s:5:\"price\";d:130;s:5:\"stock\";i:0;s:8:\"image_id\";i:1;s:8:\"keywords\";s:57:\"handsome dan, handsome, leather football, football, brown\";s:8:\"homepage\";i:1;s:14:\"subcategory_id\";i:1;s:10:\"created_at\";s:19:\"2017-05-13 19:33:33\";s:10:\"updated_at\";s:19:\"2017-05-13 19:49:51\";}s:12:\"\0*\0relations\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0appends\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:8:\"\0*\0casts\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:7:\"\0*\0with\";a:0:{}s:13:\"\0*\0morphClass\";N;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;}}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";d:130;}', 'Test Address', '1', 'ch_1AJRY3AOvwuwp8LFTUKwlz2o', '2017-05-14 15:33:22', '2017-05-14 15:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `homepage` tinyint(4) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_id`, `keywords`, `homepage`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(4, 'Handsome Dan Leather Football - Brown', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><span style=\"font-weight: bold;\">Product:</span> Handsome Dan Football</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&rdquo;The Official Football of Collegiate Tailgating&rdquo;.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Handsome Dan is our signature football, the one the The Wall Street Journal called&nbsp;<a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" title=\"The Perfect Football\" href=\"http://www.wsj.com/articles/SB10001424052970203893404577098620749427002\" target=\"_blank\" rel=\"noopener noreferrer\">\"The Perfect Football\"</a><br />I started Leather Head Sports with a sense of nostalgia and the<br />conviction that the love of sports is universal.<br />We strive to create heirloom quality products that evoke the memories of a simpler time.<br />The Handsome Dan football is our first design and it remains our best seller.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">Many know &ldquo;Handsome Dan&rdquo; as the bulldog mascot for Yale University.&nbsp;<br />Indeed, in naming our signature ball for the Yale mascot,&nbsp;<br />I am paying homage to my father, an All-American swimmer at Yale from the class of &lsquo;62</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">The Handsome Dan football is made from rich, supple, uncorrected leather.&nbsp;<br />This ball will age beautifully, in fact it will improve with use.<br />Handsome Dan is destined to become a constant companion.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">F1-HD-RED</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px;\"><br /><span style=\"font-weight: bold;\">Specs:</span><br />About the size of a \"Youth\" football<br />Leather shell<br />Butyl rubber bladder<br />Raw hide lace<br />Polyester thread&nbsp;<br /><br /><span style=\"font-weight: bold;\">Notes:</span><br />Featured in:<br /><a style=\"color: #130ce3; text-decoration-line: none; outline: none;\" href=\"http://online.wsj.com/article/SB10001424052970203893404577098620749427002.html\" target=\"_blank\" rel=\"noopener noreferrer\">The Wall Street Journal</a><br />Cigar Aficionado magazine<br />Esquire Magazine</p>', 130, 0, 1, 'handsome dan, handsome, leather football, football, brown', 1, 1, '2017-05-13 16:33:33', '2017-05-13 16:49:51'),
(6, 'Horween Leather Football - Blue', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Product:</strong><br />Blue Horween</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">This ball is made from a rich textured leather from Chicago\'s famed Horween tannery<br />Made from the same patterns as all our footballs.<br />Each Leather head football is made with meticulous attention to detail in the Leather Head<br />shop in Glen Rock, NJ. <br /><br /></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><br /><strong style=\"font-weight: bold;\">Specs:</strong><br />About the size of a \"Youth\" football<br />Buffalo Leather shell<br />Butyl rubber bladder<br />Raw hide lace<br />White Polyester thread</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Notes: </strong></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Horween Blue<br />suitable for play and display<br />Made in Glen Rock, NJ</p>', 140, 14, 8, 'leather football, horween, blue', 1, 1, '2017-05-14 03:00:41', '2017-05-14 03:00:41'),
(7, 'Pro Series Bison Leather Football - Brown', '<p><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">The fans have spoken, and we\'ve been listening.</span><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Leather Head Sports is pleased to introduce the official size, Pro Series football.</span><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Leather Head Pro Series footballs use the same remarkable leather and expert craftsmanship as our original footballs, but Pro Series balls are bigger. Leather Head Pro Series footballs are Official Size for bigger hands and serious football people.</span><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">To see Leather Head Pro Series footballs in action, view the 2016 NLFPA Debut photo gallery</span><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">We can accommodate immediate custom orders, please inquire:</span><br style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\" /><span style=\"color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Catherine.Leonard@LeatherHeadSports.com or 201-857-0443</span></p>', 175, 23, 9, 'leather football, bison, pro series, brown', 1, 2, '2017-05-14 03:01:20', '2017-05-14 03:01:20'),
(8, 'Onyx Leather Football - Black', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Product:</strong><br />Onyx Black cowhide football.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We recently started working with an American tannery that produces the most supple and beautiful leathers.&nbsp; The Onyx Black cowhide for this ball has a high oil content giving the leather a velvety hand, and great gripability.&nbsp; Finished with a black lace, this football is intended for use.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Made from rich, supple leather, this ball will<br />age beautifully and become a constant companion.<span class=\"Apple-converted-space\">&nbsp;</span><br />Onyx</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Specs:</strong><br />Rich black cowhide leather.<br />Butyl rubber bladder<br />Black Raw hide lace<br />Black Polyester thread<span class=\"Apple-converted-space\">&nbsp;</span><br /><br /><strong style=\"font-weight: bold;\">Notes:</strong><br />Onyx black football named in honor of Onyx the Pig, our mascot and inspiration.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;F1- BADLANDS BLACK</p>', 140, 60, 10, 'onyx leather football, black', 1, 1, '2017-05-14 03:15:05', '2017-05-14 03:15:05'),
(9, 'Pro Series Handsome Dan Leather Football - Brown', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">The fans have spoken, and we\'ve been listening.<br /><br />Leather Head Sports is pleased to introduce the official size, Pro Series football.<br />Leather Head Pro Series footballs use the same remarkable leather and expert craftsmanship as our original footballs, but Pro Series balls are bigger. Leather Head Pro Series footballs are Official Size for bigger hands and serious football people.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We can accommodate immediate custom orders, please inquire:<br />Catherine.Leonard@LeatherHeadSports.com or 201-857-0443</p>', 150, 43, 11, 'pro series, leather football, brown, handsome dan', 1, 2, '2017-05-14 03:16:20', '2017-05-14 03:16:20'),
(10, 'Pro Series Golden Goose Leather Football', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">The fans have spoken, and we\'ve been listening.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Leather Head Sports is pleased to introduce the official size,&nbsp;Pro Series football.<br />Leather Head Pro Series footballs use the same remarkable&nbsp;leather and expert&nbsp;craftsmanship as our original footballs, but Pro Series&nbsp;balls are bigger. &nbsp;Leather Head Pro Series footballs are&nbsp;Official Size for bigger hands and serious football people.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">To see Leather Head Pro Series footballs in action, view the<span class=\"Apple-converted-space\">&nbsp;</span><a style=\"color: #130ce3; text-decoration: none; outline: none;\" title=\"Leather Head Pro Series footballs\" href=\"http://nflpa.pixieset.com/2016nflpadebut/\" target=\"_blank\" rel=\"noopener noreferrer\">2016 NLFPA Debut photo gallery</a></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We are happy accommodate immediate custom orders, please inquire:<br />Catherine.Leonard@LeatherHeadSports.com &nbsp;or 201-857-0443</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Pictured: &nbsp;Keanu Neal, Atlanta Falcons 1st round pick, 2016 NFL Draft.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">F2-Gold</p>', 175, 12, 12, 'pro series, golden goose, leather football', 1, 2, '2017-05-14 03:17:23', '2017-05-14 03:17:23'),
(11, 'Lemon Ball Leather Baseball - Brown & Red', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Product:</strong><br />This original LEMON BALL&trade; Baseball is made from Genuine Horween Chromexcel leather. Expensive and desired by makers of high end leather goods, Chromexcel leather has a beautiful patina and an seductive aroma.<br /><br />LEMON BALL&trade; baseballs are classic baseballs inspired by the original lemon peel style base ball from the early 19th Century.<br /><br />A versatile ball, LEMON BALL baseballs are perfectly suited for many outdoor ball games including: baseball, stickball, street ball, pepper, town ball, vintage base ball and more.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">LB-CXL-RED</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><br /><strong style=\"font-weight: bold;\">Specs:</strong><br />8.75 inches in circumference.<br />3.5oz<span class=\"Apple-converted-space\">&nbsp;</span><br />Brown Horween Chromexcel Leather<br />Red waxed linen thread</p>', 40, 76, 13, 'lemon ball, leather baseball, red, brown, Brown Horween Chromexcel Leather , Red waxed linen thread', 1, 3, '2017-05-14 03:18:22', '2017-05-14 03:18:22'),
(12, 'Lemon Ball Leather Baseball - Brown & White', '<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"font-weight: bold;\">Product:</strong><br />This original LEMON BALL&trade; Baseball is made from Genuine Horween Chromexcel leather. Expensive and desired by makers of high end leather goods, Chromexcel leather has a beautiful patina and an seductive aroma.<br /><br />LEMON BALL&trade; baseballs are classic baseballs inspired by the original lemon peel style base ball from the early 19th Century.<br /><br />A versatile ball, LEMON BALL baseballs are perfectly suited for many outdoor ball games including: baseball, stickball, street ball, pepper, town ball, vintage base ball and more.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">LB-CXL-WH<br /><br /><strong style=\"font-weight: bold;\">Specs:</strong><br />8.75 inches in circumference.<br />3.5oz<span class=\"Apple-converted-space\">&nbsp;</span><br />Brown Horween Chromexcel Leather<br />White waxed linen thread</p>', 40, 76, 14, 'lemon ball, leather baseball, brown, white, Brown Horween Chromexcel Leather, White waxed linen thread', 1, 3, '2017-05-14 03:19:12', '2017-05-14 03:19:12'),
(14, 'Lemon Ball Leather Baseball - Brown & Cream', '<p>Lemon Ball Leather Baseball - Brown &amp; Cream</p>', 40, 65, 15, 'lemon ball, leather baseball, brown, cream, natural leather', 1, 3, '2017-05-14 03:21:53', '2017-05-14 03:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `description`, `image_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Standard Leather Footballs', '<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Standard Leather Footballs</h1>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">This is the one that the The Wall Street Journal called<span class=\"Apple-converted-space\">&nbsp;</span><a style=\"color: #130ce3; text-decoration: none; outline: none;\" title=\"The Perfect Football\" href=\"http://www.wsj.com/articles/SB10001424052970203893404577098620749427002\" target=\"_blank\" rel=\"noopener noreferrer\">\"The Perfect Football\"</a></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Leather Head sports balls are made for connecting people. &nbsp;Original Leather Head footballs are for boys,&nbsp;girls, and kids of all sizes and ages. &nbsp;Smaller and friendlier&nbsp;than a rock hard NFL football, Leather Head footballs are,&nbsp;in the words of The Wall Street Journal\'s Jason Gay, \"warm, forgiving\" .</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We strive to have available inventory of all the balls pictured in this collection.&nbsp; Many of our balls are made to order, so allow a couple of days for fulfillment. &nbsp;&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We stock a wide variety of leather in limited amounts, so if you don\'t see a ball that interests you, check out our limited edition page for other available styles.</p>', 1, 1, '2017-05-13 16:18:01', '2017-05-13 16:18:01'),
(2, 'Pro Series Leather Footballs', '<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Pro Series Leather Footballs</h1>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">The fans have spoken, and we\'ve been listening.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Leather Head Sports is pleased to introduce the official size,&nbsp;Pro Series football.<br />Leather Head Pro Series footballs use the same remarkable&nbsp;leather and expert&nbsp;craftsmanship as our original footballs, but Pro Series&nbsp;balls are bigger. &nbsp;Leather Head Pro Series footballs are&nbsp;Official Size for bigger hands and serious football people.</p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">To see Leather Head Pro Series footballs in action, view the<span class=\"Apple-converted-space\">&nbsp;</span><a style=\"color: #130ce3; text-decoration: none; outline: none;\" title=\"Leather Head Pro Series footballs\" href=\"http://nflpa.pixieset.com/2016nflpadebut/\" target=\"_blank\" rel=\"noopener noreferrer\">2016 NLFPA Debut photo gallery</a></p>\r\n<p style=\"margin: 0px 0px 20px; color: #555555; font-family: Georgia, Utopia, \'Times New Roman\', Times, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">We can accommodate immediate custom orders, please inquire:<br />Catherine.Leonard@LeatherHeadSports.com &nbsp;or 201-857-0443</p>', 12, 1, '2017-05-13 16:18:27', '2017-05-13 16:18:27'),
(3, 'Lemon Ball Leather Baseballs', '<h1 class=\"collection-title\" style=\"font-weight: 400; color: #333333; margin: 0px 0px 13px; text-transform: none; font-family: Asap, \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 36px; line-height: 36px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Lemon Ball Leather Baseballs</h1>', 13, 2, '2017-05-13 16:19:02', '2017-05-14 16:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '$2y$10$hX1a.34u3SPjq/Y7fuCsaOcQVi2IoCF1yBpm53edtLn9.890OiPHq', 'ujGgkXpAnYja90rZX5DxnLDHvpN2PKZjFM7w910T35eTc8VVFhYhvNlp9iSn', '2017-05-13 15:05:33', '2017-05-14 13:42:22', 1),
(2, 'User', 'User', 'user@user.com', '$2y$10$utu/8rNMNXBQRObPZFUQwe1K5EHJ3jVs06bEDy5exCqDAEq/ELhQ2', 'azGFCIYbS5v8oTRZuUeH1pWOoZOukUoY7UfAMneb2I1CgB2096mGXQAnAWAS', '2017-05-14 09:18:48', '2017-05-14 09:19:00', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`number`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_name_unique` (`name`),
  ADD KEY `FK_subcategories_categories` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `FK_subcategories_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
