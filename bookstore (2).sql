-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 10:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdf_file`
--

CREATE TABLE `pdf_file` (
  `id` int(11) NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdf_file`
--

INSERT INTO `pdf_file` (`id`, `book_name`, `book_author`, `pdf`) VALUES
(12, 'Rich Dad Poor Dad', 'Robert Kiyozaki', 'Rich Dad Poor Dad What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not (Robert T. Kiyosaki) (z-lib.org).pdf'),
(13, 'Believe ', 'Suresh Raina', 'Believe (Suresh Raina, Bharat Sundaresan) (z-lib.org).pdf'),
(17, 'Resisting Happiness', 'Mathew Kelly', 'RH_StudyGuide_V2.pdf'),
(19, 'Become a Million', 'Scar foxx', 'Click millionaires_ Work less, live more with an internet business you love ( PDFDrive ).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminlogin`
--

CREATE TABLE `tbl_adminlogin` (
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_adminlogin`
--

INSERT INTO `tbl_adminlogin` (`admin_name`, `admin_password`) VALUES
('Vishnu Vijayakumar', '#Vishnuvjk25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articlepdf`
--

CREATE TABLE `tbl_articlepdf` (
  `id` int(11) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `article_author` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_articlepdf`
--

INSERT INTO `tbl_articlepdf` (`id`, `article_name`, `article_author`, `pdf`) VALUES
(1, 'List of 100 books that yo should read.', 'Thomas Shelby', 'goodreads_100_books_you_should_read_in_a_lifetime.pdf'),
(3, '100 books', 'Thomas', 'goodreads_100_books_you_should_read_in_a_lifetime.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookinfo`
--

CREATE TABLE `tbl_bookinfo` (
  `book_id` int(40) NOT NULL,
  `book_category_id` int(100) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_num` int(50) NOT NULL,
  `book_img` varchar(100) NOT NULL,
  `book_des` varchar(200) NOT NULL,
  `book_stock` int(11) NOT NULL,
  `book_price` int(10) NOT NULL,
  `book_language` varchar(100) NOT NULL,
  `book_year` int(50) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `seller_id` int(20) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bookinfo`
--

INSERT INTO `tbl_bookinfo` (`book_id`, `book_category_id`, `book_name`, `book_num`, `book_img`, `book_des`, `book_stock`, `book_price`, `book_language`, `book_year`, `book_author`, `seller_id`, `category_name`) VALUES
(17, 1, 'Ikigai', 1, 'bg1.jpg', 'Inspiring and comforting, this book will give you the life-changing tools to uncover your personal ikigai. It will show you how to leave urgency behind, find your purpose, nurture friendships and thro', -2, 178, 'English', 2017, 'Francesc Miralles ', 1, 'Personal Growth'),
(18, 2, ' Atomic Habits', 2, 'bg2.jpg', 'Atomic Habits is the definitive guide to breaking bad behaviors and adopting good ones in four steps, showing you how small, incremental, everyday routines compound into massive, positive change over ', -2, 185, 'English', 1997, 'James Clear', 1, 'Personal Growth'),
(19, 3, 'One Arranged Murder', 3, 'bg3.jpg', 'Keshav has set up an investigation agency with his best friend, Saurabh. Can the two amateur detectives successfully solve another murder case that affects them personally? And where will it leave the', 4, 190, 'English', 2018, 'Chetan Bhagat', 1, 'Non-Fincion'),
(20, 4, 'Rich Dad Poor Dad', 4, 'bg4.jpg', 'Rich Dad Poor Dad is a book written by Robert Kiyosaki that focuses on financial literacy, financial independence, building wealth by investing in financial assets, and increasing one’s financial inte', -3, 185, 'Hindi', 1997, 'Robert Kiyozaki', 1, 'Personal Growth'),
(21, 5, 'MEIN KAMPF ADOLF HITLER', 5, 'bg5.jpg', 'This is not just an anecdote, it is the Bible of fascism .The revelations of MEIN KAMPF are astonishing compared to the complex current situation.', -1, 200, 'Malayalam', 2018, 'Adolf H', 1, 'Auto Biography'),
(55, 1, 'Colleen Hoover - Verity', 0, 'bg7.jpg', 'The Thriller That Will Capture Your Heart And Blow Your Mind Paperback 2022', -1, 200, 'English', 2022, 'Colleen H', 2, 'Thriller'),
(88, 1, 'Harry Potter and the Chamber', 0, 'Harry-Potter-And-The-Chamber-SDL398956150-1-a5623.jpg', '', 7, 550, 'English', 0, 'J. K. Rowling', 2, 'Fiction/Novel'),
(89, 1, 'The Power of Habit Why We Do What We Do, and How to Change.', 0, 'The-Power-of-Habit-Why-SDL111727684-1-91824.jpg', '', 15, 550, 'English', 0, 'Charles Duhigg', 2, 'Literature & Fiction'),
(90, 1, 'Ugly Love', 0, 'Ugly-Love-A-Novel-Paperback-SDL558689896-1-12dea.jpg', '', 24, 210, 'English', 0, 'by Colleen Hoover', 2, 'Romance'),
(91, 1, 'Three Thousand Stiches', 0, 'Three-Thousand-Stitches-SDL334563156-1-d664b.jpg', '', 15, 173, 'English', 0, 'Sudha Murty', 2, 'Literature'),
(92, 1, 'The Alchemist', 0, 'THE-ALCHEMIST-SDL742618637-1-ec9d8.jpeg', '', 8, 169, 'English', 0, 'Paulo Coelho', 2, 'Literature'),
(93, 1, 'Harry Potter And The Goblet Of Fire - New Jacket Paperback', 0, 'Harry-Potter-And-The-Goblet-SDL034826386-1-91696.jpg', '', 12, 423, 'English', 0, 'Rowling J.K.', 2, 'Fiction'),
(94, 1, 'Harry Potter and the Prisoner of Azkaban', 0, 'Harry-Potter-And-The-Prisoner-SDL716576137-1-4474d.jpeg', '', 18, 233, 'English', 0, 'J.K. Rowling', 2, 'Fiction'),
(95, 1, 'Harry Potter and the Order of the Phoenix', 0, 'Harry-Potter-and-the-Order-SDL109509209-1-5e686.jpg', '', 14, 674, 'English', 0, 'J.K. Rowling', 2, 'Fiction'),
(96, 1, 'The Monkey Who Fell From The Future', 0, 'bb1.jpg', '', 15, 354, 'English', 0, 'Ross Welford', 2, 'Story'),
(97, 1, 'The Dog Who Saved the World', 0, 'bb2.jpg', '', 20, 270, 'English', 0, 'Ross Welford', 2, 'Story'),
(98, 1, 'The Canterville Ghost', 0, 'bb3.jpg', '', 12, 99, 'English', 0, 'Oscar Wilde', 2, 'Story'),
(99, 1, 'The Lost World', 0, 'bb4.jpg', '', 9, 380, 'English', 0, 'Arthur Conan Doyle ', 2, 'Story'),
(100, 1, 'Greatest Works of Oscar Wilde', 0, 'bb6.jpg', '', 10, 250, 'English', 0, 'Oscar Wilde', 2, 'Story'),
(101, 1, 'Memory: How To Develop, Train, And Use It', 0, 'bb7.jpg', '', 20, 91, 'English', 0, 'William Walker Atkinson', 2, 'Self Devolepment'),
(102, 1, 'The Psychology of Money', 0, 'bb9.jpg', '', 10, 229, 'English', 0, 'Morgan Housel', 2, 'Self Devolepment'),
(103, 1, 'As a Man Thinketh', 0, 'bb10.jpg', '', 15, 220, 'English', 0, 'James Allen ', 2, 'Self Devolepment'),
(104, 1, 'Think and Grow Rich', 0, 'bb11.jpg', '', 12, 300, 'English', 0, 'Napoleon Hill', 2, 'Self Devolepment'),
(105, 1, 'The Pursuit of Happiness: A Book of Studies and Strowings', 0, 'bb12.jpg', '', 11, 350, 'English', 0, 'Daniel G. Brinton', 2, 'Self Devolepment'),
(106, 1, 'IELTS ACADEMIC READING', 0, 'bb14.jpg', '', 10, 300, 'English', 0, 'Darshan Singh', 2, 'Academics'),
(107, 1, 'My Blue Book of Grammar with Answers Teachers created material', 0, 'bb16.jpg', '', 15, 250, 'English', 0, 'Jose Dominic Joseph', 2, 'Academics'),
(108, 1, 'Blockchain Technology', 0, 'bb17.jpg', '', 15, 320, 'English', 0, 'Kumar Saurabh ', 2, 'Academics'),
(109, 1, 'GMAT Prep Course', 0, 'bb18.jpg', '', 12, 250, 'English', 0, 'Jeff Kolby ', 2, 'Academics'),
(110, 1, 'Azure Text for Devolepors', 0, 'bb19.jpg', '', 15, 230, 'English', 0, 'K Ahmed Shaikh ', 2, 'Academics'),
(111, 1, 'Java for Web Development', 0, 'bb20.jpg', '', 15, 270, 'English', 0, 'SARIKA AGARWAL ', 2, 'Academics'),
(112, 1, 'The Picture of Dorian Gray', 0, 'bb21.jpg', '', 7, 750, 'English', 0, 'Oscar Wilde', 2, 'Philosophy'),
(113, 1, 'The Odyssey', 0, 'bb22.jpg', '', 16, 500, 'English', 0, ' Homer', 2, 'Philosophy'),
(114, 1, 'Metamorphosis', 0, 'bb23.jpg', '', 10, 200, 'English', 0, 'Franz Kafka ', 2, 'Philosophy'),
(115, 1, 'The Complete Book of Yoga', 0, 'bb24.jpg', '', 12, 200, 'English', 0, 'Swami Vivekananda', 2, 'Religious Studies'),
(116, 1, 'The Little Blue Book on Krishna', 0, 'bb25.jpg', '', 20, 300, 'English', 0, 'Shubha Vilas ', 2, 'Religious Studies'),
(117, 1, 'The Upanishads', 0, 'bb26.jpg', '', 10, 350, 'English', 0, 'Prakash P S', 2, 'Religious Studies'),
(118, 1, 'My Inventions, Autobiography of Nikola Tesla', 0, 'bb27.jpg', '', 10, 250, 'English', 0, 'Nikola Tesla', 2, 'Auto Biography'),
(119, 1, 'Relativity: The Special And The General Theory', 0, 'bb28.jpg', '', 10, 750, 'English', 0, 'Albert Einstein ', 2, 'Auto Biography'),
(120, 1, 'Be You Now Redefine Your Approach to Life.', 0, 'bb32.jpg', '', 15, 190, 'English', 0, 'S Makwana', 2, 'Personal Growth'),
(121, 1, 'You Can', 0, 'bb33.jpg', '', 10, 100, 'English', 0, 'George Matthew Adams ', 2, 'Personal Growth'),
(122, 1, 'The Power of Your Subconscious Mind', 0, 'bb34.jpg', '', 12, 250, 'English', 0, 'Joseph Murphy ', 2, 'Personal Growth');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookstatus`
--

CREATE TABLE `tbl_bookstatus` (
  `bookstat_id` int(10) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `book_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_buy_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `login_id`, `book_id`, `quantity`, `cart_buy_status`) VALUES
(79, 21, 18, 1, 1),
(85, 21, 112, 1, 1),
(86, 21, 94, 1, 1),
(87, 21, 112, 1, 1),
(88, 21, 20, 1, 1),
(89, 21, 21, 1, 1),
(92, 21, 18, 3, 1),
(93, 21, 17, 3, 1),
(94, 21, 20, 1, 1),
(95, 21, 55, 1, 1),
(96, 21, 17, 2, 1),
(98, 21, 93, 2, 1),
(99, 21, 92, 1, 1),
(101, 21, 55, 1, 1),
(102, 21, 90, 1, 1),
(103, 21, 88, 1, 1),
(104, 21, 89, 1, 1),
(105, 21, 88, 1, 1),
(106, 21, 112, 1, 1),
(107, 21, 92, 1, 1),
(108, 21, 94, 1, 1),
(109, 21, 89, 1, 1),
(110, 21, 55, 1, 1),
(111, 21, 21, 1, 1),
(112, 21, 21, 1, 1),
(113, 21, 55, 1, 1),
(114, 21, 89, 1, 1),
(115, 21, 55, 1, 1),
(116, 21, 20, 1, 1),
(117, 21, 21, 1, 1),
(118, 21, 93, 1, 1),
(119, 21, 19, 1, 1),
(120, 21, 89, 1, 1),
(121, 21, 21, 1, 1),
(122, 21, 55, 1, 1),
(123, 21, 95, 1, 1),
(136, 21, 88, 1, 1),
(138, 21, 99, 1, 1),
(139, 21, 93, 1, 1),
(140, 21, 89, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_status` varchar(100) NOT NULL,
  `category_enable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_status`, `category_enable`) VALUES
(1, 'philosophy', 'Available', 0),
(2, 'Doctor', 'Not Available', 0),
(3, 'Poetry', 'Available', 1),
(4, 'Religion', 'Available', 0),
(5, 'Self Devolepment', 'Available', 1),
(6, 'Self Devolepment', 'Available', 0),
(14, 'philosophy', 'NA', 1),
(15, 'Self Devolepment', 'Available', 0),
(16, 'Poetry', 'Available', 0),
(17, 'Poetry', 'Available', 0),
(18, 'Fiction', 'Available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fid` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `star` varchar(10) NOT NULL,
  `feedback` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fid`, `book_id`, `username`, `star`, `feedback`) VALUES
(2, 17, 'Vishnu Vijayakumar', '3', 'Very good'),
(3, 18, 'Vishnu Vijayakumar', '', 'Excellent Book easy to understand\r\n'),
(14, 0, 'Vishnu Vijayakumar', '4', 'Good book'),
(34, 0, '', '', ''),
(99, 0, 'root', '', ''),
(100, 0, 'root', '', ''),
(101, 0, 'root', '', ''),
(102, 0, 'root', '', ''),
(103, 0, 'root', '', ''),
(104, 0, 'root', '', ''),
(120, 0, 'root', '', ''),
(121, 0, 'root', '', ''),
(122, 0, 'root', '', ''),
(123, 0, 'root', '', ''),
(124, 0, 'root', '', ''),
(125, 0, 'root', '', ''),
(126, 0, 'root', '', ''),
(127, 0, 'root', '', ''),
(128, 0, 'root', '', ''),
(129, 0, 'root', '', ''),
(130, 0, 'root', '', ''),
(135, 0, 'root', '', ''),
(136, 0, 'root', '', ''),
(137, 0, 'root', '', ''),
(138, 0, 'root', '', ''),
(139, 0, 'root', '', ''),
(140, 0, 'root', '', ''),
(141, 0, 'root', '', ''),
(142, 0, 'root', '', ''),
(143, 0, 'root', '', ''),
(144, 0, 'root', '', ''),
(145, 0, 'root', '', ''),
(146, 0, 'root', '', ''),
(147, 0, 'root', '', ''),
(148, 0, '', '', ''),
(149, 0, '', '', ''),
(150, 0, '', '', ''),
(151, 0, '', '', ''),
(152, 0, '', '', ''),
(153, 0, '', '', ''),
(154, 0, '', '', ''),
(155, 0, '', '', ''),
(156, 0, '', '', ''),
(157, 0, '', '', ''),
(158, 0, '', '', ''),
(159, 0, '', '', ''),
(160, 0, '', '', ''),
(161, 0, '', '', ''),
(162, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `language_id` int(10) NOT NULL,
  `language_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`language_id`, `language_name`) VALUES
(14, 'Malayalam'),
(17, 'Hindi'),
(18, 'English'),
(19, 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `email`, `password`, `role`) VALUES
(1, 'vishnu12@gmail.com', 'vishnu123', 'admin'),
(2, 'vishnu12@gmail.com', '803fb7327733f1810369fc72145a8172', ''),
(3, 'vishnu07@gmail.com', '06cf94517d430fd2fc31e117e0133db8', ''),
(5, 'amruthesh@gmail.com', 'ea6a6095bde87c7ef337a2d2d4d076d8', ''),
(6, 'kevinca@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', ''),
(20, 'viratkohli123@gmail.com', 'b88ef994910cbe3ee7427be5d5c8f63f', ''),
(21, 'vishnuvijayakumar2023b@mca.ajce.in', '5f6f5f0db0cb68e8fe7c9b77db03f28e', ''),
(22, 'sanioluke007@gmail.com', '619ee40e5c29978a23bf8aad1a4dd4ca', ''),
(23, 'anandhuvijayan025@gmail.com', '06cf94517d430fd2fc31e117e0133db8', ''),
(24, 'anandhuvijayan023@gmail.com', '06cf94517d430fd2fc31e117e0133db8', ''),
(25, 'justinbieber123@gmail.com', '72c31c19935b5f29e726db00a0edb6c8', ''),
(26, 'vishnuvijayakumar619@gmail.com', '7d98cd07378b753c64d72587c1fe1657', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `pay_id`, `name`, `phone`, `country`, `address`, `city`, `state`, `pincode`, `email`, `message`, `order_date`) VALUES
(13, 17, 'Vishnu Vijayakumar', '7025100344', '', ', Vaishnavam(H)Thampalakkadu poponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-11 10:14:28'),
(14, 18, 'Vishnu Vijayakumar', '7025100344', '', ', Vaishnavam(H)Thampalakkadu poponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-11 10:31:10'),
(15, 19, 'Vishnu Vijayakumar', '7025100344', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-18 15:03:32'),
(16, 20, 'Vishnu Vijayakumar', '7025100344', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-18 15:07:26'),
(17, 21, 'Vishnu Vijayakumar', '7025100344', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-18 15:10:08'),
(18, 22, 'Vishnu Vijayakumar', '7025100344', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-19 11:06:28'),
(19, 23, 'Vishnu Vijayakumar', '7025100344', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-04-19 11:32:40'),
(20, 24, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 00:12:10'),
(21, 25, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 09:56:04'),
(22, 26, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 14:08:45'),
(23, 27, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 14:20:10'),
(24, 28, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 14:21:33'),
(25, 29, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 14:29:45'),
(26, 30, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:26:45'),
(27, 31, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:29:30'),
(28, 32, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:30:51'),
(29, 33, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:37:31'),
(30, 34, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:41:55'),
(31, 35, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-09 15:49:19'),
(32, 36, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-14 12:39:40'),
(33, 37, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-14 12:45:41'),
(34, 38, 'Vishnu Vijayakumar', '7025100345', '', ', Chalayil (H) Thampalakkadu P O Ponkunnam', '', 'Kerala', 686506, 'vishnuvijayakumar2023b@mca.ajce.in', '', '2023-05-14 12:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `pay_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `payment_id` varchar(500) NOT NULL,
  `ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `name`, `amount`, `payment_status`, `payment_id`, `ad_id`) VALUES
(16, 'Vishnu Vijayakumar', 356, '1', 'pay_LZHzYHmWpCDxMf', 1),
(17, 'Vishnu Vijayakumar', 846, '1', 'pay_LcMBDQKAMpFltg', 1),
(18, 'Vishnu Vijayakumar', 169, '1', 'pay_LcMSq1QamZODCJ', 1),
(19, 'Vishnu Vijayakumar', 410, '1', 'pay_LfCqT7p5DDswq3', 1),
(20, 'Vishnu Vijayakumar', 550, '1', 'pay_LfCub0IWk4YMX7', 1),
(21, 'Vishnu Vijayakumar', 550, '1', 'pay_LfCxRl2BHHDCtZ', 1),
(22, 'Vishnu Vijayakumar', 550, '1', 'pay_LfXLAOKpABStBU', 1),
(23, 'Vishnu Vijayakumar', 750, '1', 'pay_LfXmpJTvoVM8QC', 1),
(24, 'Vishnu Vijayakumar', 1152, '1', 'pay_LnGsPQqaatlPzN', 1),
(25, 'Vishnu Vijayakumar', 200, '1', 'pay_LnQpDUdqK1hURc', 1),
(26, 'Vishnu Vijayakumar', 400, '1', 'pay_LnV89WNwLegOB7', 1),
(27, 'Vishnu Vijayakumar', 550, '1', 'pay_LnVKCrFe3R9Urx', 1),
(28, 'Vishnu Vijayakumar', 200, '1', 'pay_LnVLfx9fMkBDh3', 1),
(29, 'Vishnu Vijayakumar', 185, '1', 'pay_LnVUL8hvHZM0u4', 1),
(30, 'Vishnu Vijayakumar', 200, '1', 'pay_LnWSXQxVpggqbP', 1),
(31, 'Vishnu Vijayakumar', 423, '1', 'pay_LnWVRtHEB0C58z', 1),
(32, 'Vishnu Vijayakumar', 190, '1', 'pay_LnWWrMxtZgw88u', 1),
(33, 'Vishnu Vijayakumar', 550, '1', 'pay_LnWduxQtxbEuIg', 1),
(34, 'Vishnu Vijayakumar', 200, '1', 'pay_LnWiZ3cFf7qkjU', 1),
(35, 'Vishnu Vijayakumar', 874, '1', 'pay_LnWqMxxQqVKZQl', 1),
(36, 'Vishnu Vijayakumar', 930, '1', 'pay_LpSHbkcBa6en0n', 1),
(37, 'Vishnu Vijayakumar', 423, '1', 'pay_LpSNxmNuzndH3e', 1),
(38, 'Vishnu Vijayakumar', 550, '1', 'pay_LpSRK9jyuc707x', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdfdata`
--

CREATE TABLE `tbl_pdfdata` (
  `id` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `email` varchar(40) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f','o') NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`email`, `firstname`, `lastname`, `username`, `dob`, `gender`, `address`, `state`, `phone`, `pincode`) VALUES
('abhijith@123', 'Abhijth ', 'KS', 'Abhiks', '2022-09-09', 'm', 'Kanjirappally', 'Kerala', '9496723212', 686506),
('abhijith@123gmail.com', 'Abhijth ', 'KS', 'Abhiks', '2022-10-09', 'm', 'Kanjirappally', 'Kerala', '9496723213', 686506),
('amruthesh@gmail.com', 'Amruthesh', 'Kp', 'Akku', '2022-10-27', 'm', 'Kathirollill', 'Kerala', '8281335792', 686506),
('anandhuvijayan023@gmail.com', 'Anandhu', 'Vijayan', 'Anandhu Vijayan', '2023-02-01', 'm', 'Ponkunnam\r\nIndia', 'Kerala', '7025100344', 686506),
('anandhuvijayan025@gmail.com', 'Anandhu', 'Vijayan', 'Anandhu Vijayan', '2000-12-16', 'm', 'Ponkunnam\r\nKerala', 'Kerala', '7356959439', 686506),
('justinbieber123@gmail.com', 'Justin ', 'Bieber', 'Justin Drew Bieber', '1994-03-01', 'm', 'Park Avenue Street\r\nLondon \r\nOntario Canada', '', '9844258652', 686506),
('kevinca@gmail.com', 'Kevin', 'Abraham', 'KevinChackoAbraham', '1999-11-04', 'm', 'Wayanad PO', 'Kerala', '8086783212', 686507),
('sanioluke007@gmail.com', 'Sanio Luke', 'Sebastian', 'sanioluke', '2000-01-28', 'm', 'Mumbai\r\nMaharashtra', 'Maharashtra', '8692074192', 686506),
('viratkohli123@gmail.com', 'Virat', 'Kohli', 'Virat Kohli', '1990-11-05', 'm', 'Virat Kohli\r\nIndian Cricketer\r\nDelhi', 'Delhi', '9844258652', 674532),
('vishnu07@gmail.com', 'Vishnu', 'Vijayakumar', 'VishnuVijayakumar', '2000-10-25', 'm', 'Chalayil(H)\r\nThampalakkadu PO\r\nPonkunnam', 'Kerala', '7025100344', 686506),
('vishnu12@gmail.com', 'Vishnu', 'Vijayakumar', 'VishnuVijayakumar', '2022-10-08', 'm', 'Kottayam', 'Kerala', '7025100344', 123456),
('vishnuvijayakumar2023b@mca.ajce.in', 'Vishnu', 'Vijayakumar', 'Vishnu Vijayakumar', '2000-10-25', 'm', 'Chalayil (H) Thampalakkadu P O Ponkunnam', 'Kerala', '7025100345', 686506),
('vishnuvijayakumar619@gmail.com', 'Vishnu', 'Vijayakumar', 'Vishnu-Vijayakumar', '2000-10-25', 'm', 'Chalayil(H)\r\nThampalakkadu  P O\r\nPonkunnam\r\nKanjirappally', '', '9847866747', 686506);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(10) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_rating` int(10) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `book_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(1, 0, 'lslls', 5, 'hdhdh', ''),
(2, 0, 'root', 3, 'Good', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sellerlogin`
--

CREATE TABLE `tbl_sellerlogin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sellerlogin`
--

INSERT INTO `tbl_sellerlogin` (`id`, `email`, `password`) VALUES
(2, 'msdhoni07@gmail.com', '8102b291af812fbb9b976e1eb3c59f42'),
(3, 'nikhiljais112@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'shibinthomas172@gnmail.com', '31eb62f0af2737bbb63976c988402d42'),
(5, 'vishnuvijayakumar023@gmail.com', '06cf94517d430fd2fc31e117e0133db8'),
(6, 'nikhil121@gmail.com', 'a581a9ff40d2a401f4046761dff80a4c'),
(7, 'abhijithks@123gmail.com', 'cf188c125c1ef3850a21cfe53bdb7a78');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sellerregistration`
--

CREATE TABLE `tbl_sellerregistration` (
  `email` varchar(100) NOT NULL,
  `first name` varchar(100) NOT NULL,
  `last name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `area code` int(20) NOT NULL,
  `phone number` varchar(20) NOT NULL,
  `seller id` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sellerregistration`
--

INSERT INTO `tbl_sellerregistration` (`email`, `first name`, `last name`, `company`, `area code`, `phone number`, `seller id`, `Username`) VALUES
('abhijithks@123gmail.com', 'Abhijth ', 'K S', 'V Enterprises', 91, '9858214656', 'Seminar paper LSTM.pdf', 'Abhijith Ks'),
('msdhoni07@gmail.com', 'M S', 'Dhoni', '7 Enterprises', 91, '2147483647', '', 'M S Dhoni'),
('nikhil121@gmail.com', 'Nikhil', 'Jais', 'MRF', 91, '7025100344', '', 'Nikhil Jais'),
('nikhiljais112@gmail.com', 'Nikhil', 'Jais', 'Thekkumthottam Finance', 91, '7025100344', '', 'Nikhil Jais'),
('shibinthomas172@gnmail.com', 'Shibin', 'Thomas', 'Amal Jyothi College Of Engineering', 91, '7356959439', 'The Art of Work_ A Proven Path to Discovering What You Were Meant to Do ( PDFDrive ).pdf', 'Shibin Thomas'),
('vishnuvijayakumar023@gmail.com', 'Vishnu', 'Vijayakumar', 'V Enterprises', 91, '7025100344', '(Seminar Abstract)AI Based Recommendation And Auto Correction.pdf', 'Vishnu Vijayakumar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `login_id`, `book_id`, `time`) VALUES
(1, 0, 17, '2023-03-22 09:43:42'),
(17, 0, 92, '2023-05-09 11:03:20'),
(18, 0, 89, '2023-05-10 16:14:01'),
(19, 0, 88, '2023-05-10 16:15:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pdf_file`
--
ALTER TABLE `pdf_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articlepdf`
--
ALTER TABLE `tbl_articlepdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookinfo`
--
ALTER TABLE `tbl_bookinfo`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_category_fk` (`book_category_id`);

--
-- Indexes for table `tbl_bookstatus`
--
ALTER TABLE `tbl_bookstatus`
  ADD PRIMARY KEY (`bookstat_id`),
  ADD KEY `language_name` (`language_name`),
  ADD KEY `category_name` (`category_name`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `pay_id` (`pay_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `tbl_pdfdata`
--
ALTER TABLE `tbl_pdfdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_sellerlogin`
--
ALTER TABLE `tbl_sellerlogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_sellerregistration`
--
ALTER TABLE `tbl_sellerregistration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pdf_file`
--
ALTER TABLE `pdf_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_articlepdf`
--
ALTER TABLE `tbl_articlepdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_bookinfo`
--
ALTER TABLE `tbl_bookinfo`
  MODIFY `book_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `tbl_bookstatus`
--
ALTER TABLE `tbl_bookstatus`
  MODIFY `bookstat_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `language_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sellerlogin`
--
ALTER TABLE `tbl_sellerlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bookinfo`
--
ALTER TABLE `tbl_bookinfo`
  ADD CONSTRAINT `tbl_bookinfo_ibfk_1` FOREIGN KEY (`book_category_id`) REFERENCES `tbl_category` (`category_id`);

--
-- Constraints for table `tbl_bookstatus`
--
ALTER TABLE `tbl_bookstatus`
  ADD CONSTRAINT `tbl_bookstatus_ibfk_1` FOREIGN KEY (`book_stock`) REFERENCES `tbl_category` (`category_id`);

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `tbl_bookinfo` (`book_id`),
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`email`) REFERENCES `tbl_registration` (`email`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`pay_id`) REFERENCES `tbl_payment` (`pay_id`);

--
-- Constraints for table `tbl_sellerlogin`
--
ALTER TABLE `tbl_sellerlogin`
  ADD CONSTRAINT `tbl_sellerlogin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `tbl_sellerregistration` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
