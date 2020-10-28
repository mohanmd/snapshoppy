-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2020 at 03:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `getbestprice`
--

CREATE TABLE `getbestprice` (
  `id` int(11) NOT NULL,
  `name` varchar(233) NOT NULL,
  `emailid` varchar(233) NOT NULL,
  `contactno` varchar(233) NOT NULL,
  `product_id` varchar(233) NOT NULL,
  `readstatus` int(11) NOT NULL DEFAULT 0 COMMENT '0-not read,1 -read',
  `date_added` varchar(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getbestprice`
--

INSERT INTO `getbestprice` (`id`, `name`, `emailid`, `contactno`, `product_id`, `readstatus`, `date_added`) VALUES
(2, 'mohan', 'mohan@gmail.com.', '123456789', '40', 0, '2020-10-02 '),
(3, 'jackson', 'jackson@gmail.com', '3453453454', '40', 1, '2020-10-02 '),
(4, 'jackson rajan', 'jacksonrajan@gmail.com', '3453453451', '40', 1, '2020-10-02 '),
(0, 'jagan', 'jagan@gmail.com', '89090909090', '51', 1, '2020-10-17 ');

-- --------------------------------------------------------

--
-- Table structure for table `getholesaleprice`
--

CREATE TABLE `getholesaleprice` (
  `id` int(11) NOT NULL,
  `name` varchar(233) NOT NULL,
  `emailid` varchar(233) NOT NULL,
  `contactno` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `readstatus` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getholesaleprice`
--

INSERT INTO `getholesaleprice` (`id`, `name`, `emailid`, `contactno`, `product_id`, `quantity`, `units`, `readstatus`, `date_added`) VALUES
(1, 'haribabu', 'haribabu@gmail.com', 2147483647, 40, 12, 2, 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 3, 'test', 'test', 'test', 'test', 'test', 'test', '394305', 99, 1485, ''),
(2, 4, 'new', 'new', 'new', 'newyork', '', 'newyork', '10001', 223, 3627, ''),
(3, 5, 'testing', 'testing', 'new', 'newyork', '', 'newyork', '10001', 223, 3622, ''),
(4, 6, 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 223, 3655, ''),
(5, 7, 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 223, 3627, ''),
(6, 8, 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 223, 3655, ''),
(7, 9, 'admin', 'admin', 'new', 'newyork', '', 'newyork', '', 99, 1497, ''),
(8, 13, 'test12345', 'test12345', 'new', 'newyork', '', 'newyork', '10001', 223, 3655, ''),
(9, 14, 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 99, 1503, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'VGg3ViGHrq7v5VBbdCKNFQ5rS2bvAZHIwEuuOZJcPZpfxwDOYJRzvRZPaWUdFqDWTgFBzDE0bZBE2R1msTMvszcaIbXY8kQqMIba1BR7K6G4q9VkSRhEB4SbRMdqILF2lVDMGNhC9j7Quj2i5GLI36hfe4cEfUYAzjkAMvgVIyT0AhyoP4bLeONZViqWLjDntt3g4dfsBtqqzsa0GGABvfUwggGcwLv4MJGSTxpPAJAOezWLk9knr3MXXz8j2bDJ', 1, '2018-05-11 15:32:12', '2018-05-11 15:32:12'),
(2, 'Default', 'HOk4AX87klp9tRLcN5N9C2VDpHitlwGK6X97wWEOGijMvTrBmKf1WG6XP3hThRByb8OU2Nr79FCfzAxwtav4fVKAuLMzcBv2KDz5gM7ghCvCX0EA8yGOSwXusz6ObajPJ6PCsYEUIk9BqRznwXTsr5Rz9MB4mzUNwbTOtzaWeDbgacJVfdCtqDtzkzO5E8gcCuyHRhVz654xvf15Ojd3N0KX9ur2VVCrlAJCTKHBwOZDYCSVy6QiBPw9rcSQl4YM', 1, '2018-06-01 08:05:08', '2018-06-01 08:05:08'),
(3, 'Default', 'vJPzNtopd6qzKjY9Pdp67XuwGxadisJxPqu9vf17Y5OiNYmHebe6lcSp3Jy5dp6KkFqyBMhSR60fxVyN1h5sZv2Q3gR0VPrKBXYfxgZj5d8JlSNJ95gQN9lFwsehZA4gTj1VzC6DdRNhMUvUg6fDJvjDAZvRJRp1qQBdzFpAIh7eUVbiPjdVNvsj5wLZ3WuzPCSYKG9CijpW7Y8pBa3lSY3a38Nl7cIIrmBuAQ6Yz7ACHPKx78L4W6frIvv5gU5d', 1, '2018-06-26 10:05:20', '2018-06-26 10:05:20'),
(4, 'Default', '70vBj7GP567vooou0rerOiYbjnVboYfWORmMVnUym7U9WB2I9KEO3lVVYhVPqEiWUKwl7edrO7oGrLBEv8sZiUm4xV07ykphhEPAbzpw06T9JgCb2Ovzsh1Jlx3EaOJ0CzA6sDkB4hw9bdyZh3SMeaxnv8K75YMXApmVPDBtbg4IKwKhBLsiCW5oWay4fuJL8bSbsYwJOE6PE98mIvL6MUCh7haKKsuz7jpWinviNaIVyqS275u2CdWUokPntrBz', 1, '2018-07-10 12:26:37', '2018-07-10 12:26:37'),
(5, 'Default', 'kYRn2mS436QQ8zlpYwuLMVQ19MwaUdHnCjTS2uf36Y7hvBIrryy5UK4xzGZdr4wuEtpfb80Oz3I5ESbfwzQDv9TuMs8Txi52jRBPd0OT5W0qx4V82LIv6FPFcO7F5s6beyumimhXpBGaWdb7YZd9uVyDlgqZoJGQojt0WFjZBkcV0MlVL1dzFScUU0dVhrdu1oV9Kv18yaUWXgkPgIqkXxSpVXxaExupIrnkpmDmZSZHthGwE3tkmNamOz45JSMP', 1, '2018-07-28 10:21:09', '2018-07-28 10:21:09'),
(6, 'Default', '9S1OAR8oT3ImwrdY70wor6YPbnkZ74uPkktFMedxXWJYR43DrBtiQihqROzPl7CjQBU5ufeHHMlRankIKeK9QAbeuGFcjNPvTZncXKKKmkM0D3cR5pkqzOBrtGaqS1VwfzSAH7wgBN2Dz6vjGAwL3eJP2nBH6hQhg05RyZAhU0GzKNf59YbFwRGvx0VuFyj2TkreLhwQdE9RDLa7ZPNybd5OsGDPOS93jvqAdfbhPAGmdZWScQmrkjpBaWxMQMwV', 1, '2018-08-19 08:54:21', '2018-08-19 08:54:21'),
(7, 'Default', 'YLUY5I7EBzlEOtIZTWSNjOR7LhWEDcUrYrrB6ncUxTnXLe2uwDQwwGfVQ5vnS1r5MA5jAzZ4xxjLKdQH3dIMgLL5rkg46pUocxfDKdJbiOh3qfBeVx4pLoQWI1nKIoDli9iWhyxQt73yfs75qlbk8g25EQTtsXqR9xCH7HHVx41dRWb5RXde10zYIKZDWPHmDUvvyf0tRN2cyIDLaHoqr5zKlmuvQWkUfGzlUmCZ7jhQeIc56lTjjsAOt5ATG21f', 1, '2018-09-06 11:03:09', '2018-09-06 11:03:09'),
(8, 'Default', 'HiL4HMQwz0TVvIm4H8F4TrY0CfXQy98YPywRBDKGF4O1Bc8wO6UGjUi6EOCaGosuFvlPxrESMZSf8KpAx6Dy7jafZLGpb0ejfJ7flRbBmC6kIZFOdzfD8XrlpECPybxLwfyZgeJPkoQE75DERuqrbShJg3Lv6hV4BZOqF1jXjmNWz2hlo3YhAV888v1Ig5dVIFaBVcXzDbQ1Rg28atJkpwHeL0lSX27edmKgrPuROFTJiRWx4mldtr1Go95hdOw1', 1, '2018-09-16 04:01:21', '2018-09-16 04:01:21'),
(9, 'Default', 'i1MuvSvuxYtp72jyHNLRCP5ZBoa5Juz2EQwsurbrZGNDIGltBis7J5jB0VgrJuzaOK2rShyj9OxbMBQV4mhTKPKrcsqJOVyhe9We2zQYMWxmPHTIYNOIl7Q4ElPrzLVDbxdrqYX7752AmgMh3nQ7Q2WhD03opKPGzlZQzyrC9GNMbI80IbDpjuTwGQwQ07VsOBZFZhLlyUupg10s2wNCm0lPUiNxwyU47DlIfcfh6NAXMoKffWFPjoW5EmBSxI0B', 1, '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(10, 'Default', '2TkZ4Xc7hQ5EkuEqdHnYFjedsJmWcdQhsNRviyOffs3ObClSblJTTamWznxa1XsUOR9GdKI8pmpFRR0XTPKGBGRNI2flKZH06qywZloYgrKgmJ4IRW5F1BinoZZhJIFgGgIcWmdPG4uyaBPn8I2ZDLvaJcB3lw6xHZq2wCAykiqxXy8khvNBA7z0pRuaqdkbEQmLf36bd0sNtXPFrvjGD53mGBVBQcTKoJpg7XkVA50Cgyz4p6wTDOlqhDxjpnBg', 1, '2018-10-04 09:35:08', '2018-10-04 09:35:08'),
(11, 'Default', '2XaMdkXEI9UifFlAZVRRbduLE2Faeay4FzBqBWYE5RhnAayd9VLBjfMyC3IkfZ3yKIxJCt5beOCdm5eVc4VKFtbvmh4tu7oxjJKrSx3Ja5meB3n2eHmK6KARtdhM964rhOXIx4jJcqi8SBF3xSYVeQBg1iIOv331BT7QMYxcD7xD7tTnYK9RBvqNff3yRKbABmRz1gxyCelwBD2y62zQFXCtyREju4HcSdxZnl5YWA657ioZmf5xgzCsbi8XkFli', 1, '2018-10-02 03:49:28', '2018-10-02 03:49:28'),
(12, 'Default', 'lD84gRzLQUePQBh4vTWw2CqncrkH6gFzwikzXNGoZCJg5fC8nbjIcZSJa4Ps5Kie1abKILxA4JTNUa2oCq62b4cjdMTWe733dg9Xd5VG3cpJLuGVKvZJ1P2TSIl4TbskNgjykBJCgZmRA9PIVshWuqpms89jGhUmVXTp1rU2Re0HE9hsR2Kj0QJwJSqdPNValptf421DOwEEOp4mhgOKYzjAS99gU157FPCtDFpF3mZ14vST1kseNJbiK2xdV8Qi', 1, '2018-10-10 04:05:24', '2018-10-10 04:05:24'),
(13, 'Default', 'eXW2GiuEXaN0HJSzzO5pqd7iHnzHZzHw2EjZbwTfMzJFaj5AvHzWtoBvp5yjoYxe9FSlOoOlffEuUEAWMvPMIOKmfbRfX0kNwWQqOqK38I4pfg7tPogoI4gxbosnKbKwuTCiCRUJadp4wjkwova0nb1G8YIkPnp5KT9YgBWw2RQ4nmfNRYajboEzEzsCN1g6nEaqosfqOIJGDWmOV8pGUxeYYUJIcKyRWGGiyK5iKjTULEv7OZkrFtcvaGQ4bBUa', 1, '2018-10-02 08:34:18', '2018-10-02 08:34:18'),
(14, 'Default', 'MLaOPYuwcZbLpIojIsvNPvCJ0IvZ1EYkAVb9xh9kbreyNRmhlIXTn9oask4zVN1medQYmR50qOt9spMQsOjrGl7VWfs3krS2gFwJeWdChTgwGoNmxjrilIwEiNlx955kDLA9JpYGwYYgImqa4O95Q42gPdLOiXWVy3FDzSz7GyuMg4utHFMf7wNgN8TbR40YDuyDxXL6BLGN1HVGpPUBKYIMYDYTdcMGJco7guxuFXuqH4zAUB4dBGjWxeCuGvQa', 1, '2018-10-08 09:59:19', '2018-10-08 09:59:19'),
(15, 'Default', 'FTrdh6grNpdAQLUhPC1znFkRQ6io5X3Hm9mfn7XyOaueyCmdeGK6vV3N5n9dYYpugfowOwGPJ2EAx0fZYDqOJ4KS8buR6ljk24KLykC5oyPrzbNP5aT5YcUEhPcOhIb6dUq9VKZZYn0GyMzWlxQnLL8sENRhOh7gCzci7DCwkDanP1nDp2G89gg87MXrAgBxgplCeSgXeLW0ram7cUVWsM66T9avesDy8ipFAd0O3qExxRPKoMAFqxauuTwbIs4K', 1, '2018-10-16 08:34:02', '2018-10-16 08:34:02'),
(16, 'Default', 'ZHrH6bI9nCL5KB95vDRoDcNm6ORxVf2bx7u8zenMcpoAHokS3jrPuurlsQW5ztzOeIVCkMkwjWOlfXg2Cgkd2RcoQHuBKQDrrcrIRHMlXHfsqGwOjVaKSWc4HjMwN7IInOsninIE3C3tIPtbU0uah7SLwUFXMzCr58oG9MN6n2NFVaHTJhzsAAmYKzioST2nLFCjb3cRvUKWpqry0yClvYE1527rMVlihreYP86VyPSQPg39utMXd0QzqrY8NF0z', 1, '2018-11-13 04:17:31', '2018-11-13 04:17:31'),
(17, 'Default', 'Z4f0ePEfxx1lkGt1Tjh97k8m9A3JYwpueGWI4fyYai1xsOL929agldvrUcs6XakGM2mAtlESyMgNFVZIwLzIN9LzdI75baWSh0vLhButcAVVEYElIrxwEUsJh1ARMSvdXDYxPLSp8NpJbnpWGy385Lsv7bjbdihImtuWqk2rNDTnTEEm18blcNA8dYjC55DAwxZ7Uo1UuMOtE6lYJJkwY93eKWZ50MOUdczYOqj1fNgWubxOSTJPn56xLHB3geQe', 1, '2018-11-24 07:28:38', '2018-11-24 07:28:38'),
(18, 'Default', '0iLYW5YEJJ1uAamC8EbkW72TbYFtvxFDmYm03bR80C97T71EeG66W5lsYwOlwUaWBM0wrdjG4fv4XWJTYvNoCloWMiWw5wWsIiGct2JWzYW1U64kiYrAMIIT4IGOgPrC2bsgW88suyks7TcsvN3Nzhmv0AlfvySRqUc9zoXyqUZF1IFjPItJpOf2Zle8rYXtLFSIXO3DRc4LACgpruN0NlgZRqOAjtCJqLXsU9y2qVHlePxZVp67h9ffDksmIRbG', 1, '2018-12-01 04:20:32', '2018-12-01 04:20:32'),
(19, 'Default', 'TBx7NksMCpFe7zir0yjyAAlTzeiJn08cj0mN9cZVgLFrlTkihMiTOYmxOCu8iI1xoUZwejFj3IZsR91oGmyUzNr54p47JcIQr6gzI4ARWkSdub96mJwf0UZbyb16RrfBwHoy6JkLsQtGoLIV6Txmat0UInVw672dsqE5Lv5Y7y3JNbAzQrUDygdvzsoQdEZbJJWRNqcoLIAtJtTi5TmlceVd1TU9altSFgPxET50UAyY4bmTKUCMUYqu081iQ2Di', 1, '2018-12-09 04:10:36', '2018-12-09 04:10:36'),
(20, 'Default', 'Dyw4kwowLaB7SL2ye0w3pis1lEJ0jSI6xezfaSOULKKNOkwfLGr1ubG0HGmeLq2k1Pmpv8IqbgSKfKLuTaIyFEqRFUgOK38pPcIpXlsuxHqPB43jh6IN8F4F5FXnCCpwoYLL9OtKTPLXbKnCM3wuMTqrEMs9pCa3r0FvWvCjTNRO54lhf1DHDYKZibyAhUNZ5oMUB4Hv8nDJ7gai3Mr74QlQcg6Hm7z42g8agXfjcJihWJXAF9OUU8uXsKqPjzE9', 1, '2019-01-14 04:15:45', '2019-01-14 04:15:45'),
(21, 'Default', 'u34GUqWkfZu6HgkpkUou6HkhjzWYXGM54P3Wa7ohNTFuP6z1sXUxYNcqcWZSRh4azJ1r2sxxbjQWlr6dwHl8slKFP4avqdwEjpt1fuLKDQXZRejOGbi9zPvm6MUYDR7KoV9c5MT2jrBBBMaxohOhbbVlyhAQNnumUeoOT6OwhwCcPa97sNd16hmwS11kTZE4jwWeTaHO08wSRQldqcFeyEegLqjm0aRhd0c5Jj0up2nFsTds2hj1cwWJUfWNrPqb', 1, '2019-01-20 07:36:56', '2019-01-20 07:36:56'),
(22, 'Default', 'v7WMEmpI9bF26UR25Yvqnm1jZyGmQunS7Whs5NIZ5ZQy3p8O8LR3UJjvduaGYmFy09mXpsTz6g01ElRIGnqUnBtwVBoX2eicPH3ZBQbntc9Yf4ONXCxF1xVzgBoYchJPSYlp9XY4LjcYf9kO7LXp8vi1QveA1VA7UQ6cpHwGAggcNxingHBQBteVs3wWxYqUgnuCshPI2n8clnkefRdURu9pCORL0e392KJNbHsf26oA3fg5Z3iJRhuB9042BEfN', 1, '2019-01-21 05:11:27', '2019-01-21 05:11:27'),
(23, 'Default', 'RwjQWVV2bFm6AHY10soGimJTpGDIhcUFU0NlSXNoMKBfkHvKGi4kyXorB4xqp7MjBFHBM8s8v0N1Q4d9nKqJ7U8E43dtSMSPYqwpOpPjoxchVZ837Js44j5zBlsyjQ3vsS33l997R7jVzTDUUbvKfpQdpH8PvG6ab8xpln23pP8Hd05uHYoanH1cnL13c2UVTO24CfABLMehQjKD2BiMrKRNTHLOZ2pxEv8sQ4X4qD7s4TohOHSdiM25uo1Z5P21', 1, '2019-02-14 04:14:31', '2019-02-14 04:14:31'),
(24, 'Default', '5KofizTVYb7rGqjrV1kp9Od0FLqDnd4WH7A7LV7fiZA5J4I56C0nbI9PeQEnV9DoEicttjNodfdd34MkaCZZuQIXFQBMGTTI19XVaycK5YBCnwFIHFMuDN1IQrPh1Y8HtqycURmIsrcwe2lIpxFRJYJKZ2wd8DdSDoVNcpksv6VI6jjKyg7B3nSQEDZh7tcl571LdtDNBufelE1N74qlOYnnkaKfUb1AhYXO6aE853ikjENAHvaTSp7bP8uMHxAb', 1, '2019-02-22 06:43:40', '2019-02-22 06:43:40'),
(25, 'Default', '4oqDiaf5QCu6j3eoZddvjH7UZ31zbmdAMGI7tU4VUGu17DHyIQ4Ytg6asKoeLxgLR8ZOURyjvINfnYwh2Dz0qBWFCv9Pye8gpDnCLPlWMTPr9bTAMtN2A9SFEkAD3sDIxCp1Zc8bIUjKWvWSoy3XDk7rXyBUCTyjUaxOlQ82Pe8yBnDRwqivJ1wmXrx4u6u9WH18u5QdPzYLhHUrncKjszLWOyzp3CCsRBvepdL6pxpTG9NWRC5x5VEtVc6Eg70n', 1, '2019-10-02 15:04:42', '2019-10-02 15:04:42'),
(26, 'Default', 'pSqluqg0YTaBVXzpkdpckNbFKAxeJOjjHTwvumIl6SFOPYUZjo9GyxdK4UpaRnHP61Kc52aUrqp19PoOP06LsFxaRsL6dE2s6ZhNitJL0GESg2yzzbvji7Rz4BPKtRyQu2IWLCGmwvdGeaNppdAcBj4lZVsEDro3k3txPzuDyMmdtCoqd1JWpkoKoegm8JtQUoyollAr0tcTtcLwGFKaKFbreuOQI7nIK8wDGO8Jfj2FMbBd06oy5eYPsd7WSvjo', 1, '2019-11-15 11:34:46', '2019-11-15 11:34:46'),
(27, 'Default', 'BMwXdLwAnVL4azZBGdfKzx58HOQt9ScjCIqY18RfRghoQf1jO8dq5RxaOyCCdkGCsf2Esiuc0ZRtZbTG1arfeyFDrxE9paZhf6gNZMaAeMoRqb5he3DnvWfMGTUtyxA9MOWe3j363iWWsPiDq9oW9olO8Y2etzjdjFCHdP6p3NOuxxYUqcEjvJ8BhP8ab7HUJSFrFkpfJ7Jfj6qNgt68zC1502yGNTUYaizbsLSmI1chBvGYNKzIwSRFsv0Xk989', 1, '2019-11-29 18:25:50', '2019-11-29 18:25:50'),
(28, 'Default', 'ELYJjijbOXp1hE2RioTHzLfmrRRf2Jr8l8d6QLOccwVj9MSAB5qBh7ybHLjYD6sxFOzXvdKfx0iNQsEtt9tDgoABipFKx3kP78aPHuL3HCwl7x6n4v2Sgdgn9IKPRbITMfTuPHhx7w9SJ0ys6eimNjnRsgE5INrPoZd4uHyCSAmXJpOmwKPOeLR7XlnlfVKSLQLZKoG8T5kBsmHaeb6BgZKccroHS5X6eOX3jHjpQfGtbfBCBo3qzyhsZFN1H4Wk', 1, '2020-07-19 09:33:53', '2020-07-19 09:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '192.168.0.172'),
(2, 8, '192.168.0.178'),
(3, 26, '192.168.0.179');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(17, 26, '602d7c33268afd8415dbcd3ca0', '192.168.0.178', '2019-11-22 16:30:36', '2019-11-22 16:30:36'),
(16, 26, '4dd533f8b3f6818abb8d63e088', '192.168.0.179', '2019-11-22 16:30:30', '2019-11-22 16:30:48'),
(15, 26, 'a9fc923f18c56c293da9c72ef4', '192.168.0.179', '2019-11-22 16:30:22', '2019-11-22 16:30:22'),
(14, 26, 'b6a3cfed460407309bc07e3324', '192.168.0.179', '2019-11-22 16:30:17', '2019-11-22 16:30:17'),
(13, 26, '84e2448fc975e16efb2eabc341', '192.168.0.179', '2019-11-22 16:29:35', '2019-11-22 16:30:05'),
(9, 26, 'abe1f30a9c8164d81dc3e50147', '192.168.0.178', '2019-11-22 16:03:15', '2019-11-22 16:03:15'),
(10, 26, '9bd058871c39efcc26d7dc0d6d', '192.168.0.178', '2019-11-22 16:28:28', '2019-11-22 16:28:28'),
(11, 26, '7087dfca8c85b2a9f1af706dad', '192.168.0.178', '2019-11-22 16:28:33', '2019-11-22 16:28:33'),
(12, 26, '555710fc8d5af599017a770f39', '192.168.0.178', '2019-11-22 16:28:57', '2019-11-22 16:28:57'),
(18, 26, '5f1cf7eab1bab594380de74411', '192.168.0.178', '2019-11-22 16:30:38', '2019-11-22 16:30:38'),
(19, 26, '647982f8424c4029eb0a720925', '192.168.0.178', '2019-11-22 16:30:49', '2019-11-22 16:30:49'),
(20, 26, '06cfb3d2cfbfc12c099ae9b0d6', '192.168.0.178', '2019-11-22 16:30:53', '2019-11-22 16:30:53'),
(21, 26, 'ddd425e00033bf99e49b638af8', '192.168.0.179', '2019-11-22 16:31:08', '2019-11-22 16:31:08'),
(22, 26, 'c766c42a0109fa55abb2dc63e8', '192.168.0.179', '2019-11-22 16:31:16', '2019-11-22 16:31:16'),
(23, 26, 'cebab84c36d99e4eef549a0b03', '192.168.0.179', '2019-11-22 16:31:27', '2019-11-22 16:31:48'),
(24, 26, 'e22564a42fde6d93ec891e96ab', '192.168.0.179', '2019-11-22 16:31:59', '2019-11-22 16:31:59'),
(25, 26, '22cf5642862ac4e269eb558f0d', '192.168.0.179', '2019-11-22 16:32:22', '2019-11-22 16:32:22'),
(26, 26, 'cb7fa1a7f6ebc6baa577bb6663', '192.168.0.179', '2019-11-22 16:32:31', '2019-11-22 16:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, ' LeftBanner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(115, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(322, 8, 3, 'commodo ', '#', 'catalog/demo/manufacturer/8.png', 0),
(321, 8, 3, 'adaptations', '#', 'catalog/demo/manufacturer/1.png', 0),
(320, 8, 3, 'untrammelled', '#', 'catalog/demo/manufacturer/2.png', 0),
(319, 8, 3, 'reprehenderit', '#', 'catalog/demo/manufacturer/3.png', 0),
(318, 8, 3, 'renaissance', '#', 'catalog/demo/manufacturer/4.png', 0),
(317, 8, 3, 'laboriosam', '#', 'catalog/demo/manufacturer/7.png', 0),
(277, 9, 3, 'left-banner', '#', 'catalog/demo/banners/left-banner.jpg', 0),
(233, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(316, 8, 3, 'praesentium', '#', 'catalog/demo/manufacturer/6.png', 0),
(315, 8, 3, 'randomised', '#', 'catalog/demo/manufacturer/5.png', 0),
(314, 8, 2, 'esentium', '#', 'catalog/demo/manufacturer/8.png', 0),
(313, 8, 2, 'renaissance', '#', 'catalog/demo/manufacturer/1.png', 0),
(312, 8, 2, 'randomised', '#', 'catalog/demo/manufacturer/2.png', 0),
(276, 9, 2, 'left-banner', '#', 'catalog/demo/banners/left-banner.jpg', 0),
(356, 7, 2, 'mainbanner3', '#', 'catalog/demo/banners/main-banner-03.png', 3),
(311, 8, 2, 'laboriosam', '#', 'catalog/demo/manufacturer/4.png', 0),
(310, 8, 2, 'reprehenderit', '#', 'catalog/demo/manufacturer/6.png', 0),
(355, 7, 2, 'mainbanner2', '#', 'catalog/demo/banners/main-banner-02.png', 2),
(309, 8, 2, 'untrammelled', '#', 'catalog/demo/manufacturer/7.png', 0),
(354, 7, 2, 'mainbanner1', '#', 'catalog/demo/banners/main-banner-01.png', 1),
(308, 8, 2, 'consectetur ', '#', 'catalog/demo/manufacturer/3.png', 0),
(307, 8, 2, 'commodo ', '#', 'catalog/demo/manufacturer/5.png', 0),
(306, 8, 1, 'esentium', '#', 'catalog/demo/manufacturer/8.png', 0),
(305, 8, 1, 'laboriosam', '#', 'catalog/demo/manufacturer/7.png', 0),
(275, 9, 1, 'left-banner', '#', 'catalog/demo/banners/left-banner.jpg', 0),
(304, 8, 1, 'praesentium', '#', 'catalog/demo/manufacturer/6.png', 0),
(303, 8, 1, 'renaissance', '#', 'catalog/demo/manufacturer/4.png', 0),
(302, 8, 1, 'untrammelled', '#', 'catalog/demo/manufacturer/2.png', 0),
(301, 8, 1, 'adaptations', '#', 'catalog/demo/manufacturer/1.png', 0),
(300, 8, 1, 'consectetur ', '#', 'catalog/demo/manufacturer/3.png', 0),
(299, 8, 1, 'commodo ', '#', 'catalog/demo/manufacturer/5.png', 0),
(353, 7, 1, 'mainbanner3', '#', 'catalog/demo/banners/main-banner-03.png', 3),
(352, 7, 1, 'mainbanner2', '#', 'catalog/demo/banners/main-banner-02.png', 2),
(351, 7, 1, 'mainbanner1', '#', 'catalog/demo/banners/main-banner-01.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger`
--

CREATE TABLE `oc_blogger` (
  `blogger_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger`
--

INSERT INTO `oc_blogger` (`blogger_id`, `module_id`, `status`, `image`, `date_added`, `date_modified`) VALUES
(1, 45, 1, 'catalog/demo/blog/1.jpg', '2018-05-21 12:42:56', '2019-12-06 15:52:45'),
(3, 45, 1, 'catalog/demo/blog/3.jpg', '2018-05-21 12:46:32', '2019-12-06 15:52:30'),
(8, 45, 1, 'catalog/demo/blog/5.jpg', '2019-12-05 16:11:40', '2019-12-06 15:51:41'),
(5, 45, 1, 'catalog/demo/blog/5.jpg', '2018-05-21 12:48:17', '2019-12-06 15:52:18'),
(6, 45, 1, 'catalog/demo/blog/2.jpg', '2018-09-26 10:52:33', '2019-12-06 15:52:03'),
(7, 45, 1, 'catalog/demo/blog/4.jpg', '2018-12-14 16:17:55', '2019-12-06 15:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment`
--

CREATE TABLE `oc_blogger_comment` (
  `blogger_comment_id` int(11) NOT NULL,
  `blogger_id` int(11) NOT NULL,
  `approved` int(1) NOT NULL DEFAULT 0,
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_comment`
--

INSERT INTO `oc_blogger_comment` (`blogger_comment_id`, `blogger_id`, `approved`, `author`, `email`, `date_added`) VALUES
(1, 5, 1, 'Diana', 'testing@gmail.com', '2018-09-21 14:14:34'),
(2, 6, 1, 'Diana', 'testing@gmail.com', '2018-10-01 12:59:55'),
(3, 4, 1, 'Diana', 'testing@gmail.com', '2018-10-02 18:29:08'),
(4, 4, 1, 'Diana', 'testing@gmail.com', '2018-10-02 18:29:29'),
(5, 3, 1, 'Diana', 'testing@gmail.com', '2018-10-15 11:25:49'),
(6, 6, 1, 'Dianaaaa', 'testing@gmail.com', '2018-11-30 09:29:54'),
(7, 6, 1, 'Dianaaaa', 'testing@gmail.com', '2018-11-30 09:30:13'),
(8, 7, 1, 'Diana', 'test@gmail.com', '2019-02-24 13:36:19'),
(9, 8, 1, 'Alex', 'testing@demo.com', '2019-12-11 16:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment_description`
--

CREATE TABLE `oc_blogger_comment_description` (
  `blogger_comment_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_comment_description`
--

INSERT INTO `oc_blogger_comment_description` (`blogger_comment_id`, `language_id`, `comment`) VALUES
(1, 1, 'fgfgftrdtegfhfhfhfhfhfhfhfhfhfhfhfhfhfhg xcxx'),
(2, 1, 'hikj;lllllllllllllliuyguyguyuy'),
(3, 1, 'fdgdffffffffffffffffffdgdg'),
(4, 1, 'fdgdffffffffffffffffffdgdg'),
(5, 1, 'bd,;lmskfl;d'),
(6, 1, 'vcvccvbbbbbbbbbfdgdfgfdgfg'),
(7, 1, 'vcvccvbbbbbbbbbfdgdfgfdgfg'),
(8, 1, 'aaaaaaaaaaaaaaaaa'),
(9, 1, 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_description`
--

CREATE TABLE `oc_blogger_description` (
  `blogger_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_description`
--

INSERT INTO `oc_blogger_description` (`blogger_id`, `language_id`, `title`, `description`) VALUES
(3, 2, 'sed quia non numquam eius', 'sed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.'),
(8, 2, 'denouncing pleasure ', 'dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.'),
(5, 2, 'At vero eos et accusamus', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. '),
(8, 1, 'denouncing pleasure ', 'dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.'),
(5, 1, 'At vero eos et accusamus', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. '),
(3, 1, 'sed quia non numquam eius', 'sed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.'),
(6, 1, ' established fact', 'tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.'),
(6, 2, ' established fact', 'tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.'),
(1, 1, 'Urna pretium elit', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(1, 2, 'Urna pretium elit', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(7, 1, 'Turpis at eleifend ps', 'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(7, 2, 'Turpis at eleifend ps', 'ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(4, 0, 3, '39669508e9252b1b094dbec40a', 51, 0, '{\"228\":\"2011-04-22\"}', 1, '2018-09-26 11:05:54'),
(8, 0, 4, '392021261e4d89f1d935aa66cd', 32, 0, '[]', 1, '2019-01-17 17:01:23'),
(9, 0, 4, '392021261e4d89f1d935aa66cd', 40, 0, '[]', 1, '2019-01-17 17:01:23'),
(16, 0, 5, 'f36603bccbd814043d1035988e', 45, 0, '[]', 1, '2019-01-20 17:30:26'),
(17, 0, 5, 'f36603bccbd814043d1035988e', 44, 0, '[]', 1, '2019-01-20 17:30:26'),
(19, 0, 6, '4755b377e3964dade1847e66fd', 44, 0, '[]', 1, '2019-02-22 11:00:39'),
(20, 0, 6, '4755b377e3964dade1847e66fd', 51, 0, '{\"228\":\"2011-04-22\"}', 1, '2019-02-22 16:08:09'),
(21, 0, 6, '4755b377e3964dade1847e66fd', 36, 0, '[]', 2, '2019-02-22 16:08:12'),
(35, 0, 7, 'cb7fa1a7f6ebc6baa577bb6663', 51, 0, '{\"228\":\"2011-04-22\"}', 1, '2019-03-03 13:39:55'),
(38, 0, 13, '9ac16db73f8112c8f223bb88e8', 30, 0, '{\"226\":\"16\"}', 1, '2019-12-12 17:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(84, '', 0, 0, 2, 5, 1, '2019-02-22 11:14:02', '2019-12-11 18:45:05'),
(70, '', 0, 0, 0, 3, 1, '2018-09-24 09:49:22', '2019-12-06 21:54:13'),
(74, '', 67, 1, 5, 0, 1, '2018-10-02 17:06:32', '2019-12-06 21:51:42'),
(24, '', 49, 1, 1, 1, 1, '2009-01-20 02:36:26', '2020-07-26 00:36:21'),
(28, '', 43, 0, 0, 1, 1, '2009-02-02 13:11:12', '2019-12-06 21:49:58'),
(68, '', 0, 0, 1, 9, 1, '2018-09-23 18:24:44', '2019-12-06 21:32:24'),
(34, 'catalog/demo/banners/cat-banner-01.jpg', 0, 1, 3, 1, 1, '2009-02-03 14:18:11', '2019-11-21 23:03:38'),
(43, 'catalog/demo/product/1.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2019-12-06 21:47:17'),
(44, '', 86, 0, 0, 0, 1, '2010-09-21 15:39:21', '2019-12-06 21:43:58'),
(47, '', 43, 0, 0, 0, 1, '2010-11-07 11:13:16', '2019-12-06 21:50:32'),
(48, '', 0, 0, 0, 5, 1, '2010-11-07 11:13:33', '2019-12-11 18:47:37'),
(49, '', 86, 1, 0, 1, 1, '2010-11-07 11:14:04', '2019-12-06 21:38:23'),
(50, '', 43, 0, 0, 0, 1, '2010-11-07 11:14:23', '2019-12-06 21:50:53'),
(51, '', 49, 1, 0, 4, 1, '2010-11-07 11:14:38', '2019-12-06 21:44:59'),
(52, '', 86, 1, 0, 3, 1, '2010-11-07 11:16:09', '2019-12-06 21:46:36'),
(53, '', 86, 0, 0, 0, 1, '2010-11-07 11:28:53', '2019-12-06 21:45:55'),
(55, '', 49, 0, 0, 0, 1, '2010-11-08 10:31:32', '2019-12-06 21:44:37'),
(67, 'catalog/demo/product/12.jpg', 34, 1, 0, 3, 1, '2018-09-23 18:21:52', '2019-12-06 21:51:19'),
(77, '', 0, 1, 1, 2, 1, '2018-10-10 15:02:55', '2019-12-06 21:53:35'),
(75, '', 67, 1, 6, 0, 1, '2018-10-02 17:09:50', '2019-12-06 21:52:05'),
(76, '', 67, 1, 7, 0, 1, '2018-10-02 17:11:10', '2019-12-06 21:52:29'),
(80, 'catalog/demo/product/10.jpg', 34, 0, 1, 0, 1, '2018-10-15 15:40:25', '2019-12-06 21:49:06'),
(81, '', 80, 0, 1, 0, 1, '2018-10-15 15:41:46', '2019-12-06 21:48:28'),
(82, '', 80, 0, 1, 0, 1, '2018-10-15 15:42:28', '2019-12-06 21:47:38'),
(83, '', 80, 0, 1, 0, 1, '2018-10-15 15:43:20', '2019-12-06 21:49:28'),
(86, '', 0, 1, 1, 2, 1, '2019-02-23 11:58:21', '2019-12-06 21:33:01'),
(88, '', 0, 0, 0, 5, 1, '2019-02-23 11:59:52', '2019-12-11 18:47:17'),
(89, '', 0, 1, 1, 0, 1, '2020-07-26 00:41:08', '2020-07-26 00:58:57'),
(90, '', 89, 0, 1, 0, 1, '2020-07-26 00:59:53', '2020-09-06 01:30:55'),
(91, '', 90, 0, 1, 0, 1, '2020-07-26 01:02:50', '2020-07-26 01:02:50'),
(92, '', 90, 0, 1, 0, 1, '2020-07-26 01:05:09', '2020-07-26 01:05:09'),
(93, '', 91, 0, 1, 0, 1, '2020-07-26 01:08:56', '2020-07-26 01:11:42'),
(94, '', 91, 0, 1, 0, 1, '2020-07-26 02:00:51', '2020-07-26 02:00:51'),
(95, '', 92, 0, 1, 0, 1, '2020-07-27 11:04:01', '2020-07-27 11:04:01'),
(96, '', 0, 1, 1, 0, 1, '2020-09-02 10:35:31', '2020-09-02 10:36:21'),
(97, '', 96, 0, 1, 0, 1, '2020-09-02 10:37:43', '2020-09-02 10:37:43'),
(98, '', 97, 0, 1, 0, 1, '2020-09-02 10:38:51', '2020-09-02 10:38:51'),
(99, '', 96, 0, 1, 0, 1, '2020-09-02 10:50:39', '2020-09-02 10:50:39'),
(100, '', 89, 0, 1, 0, 1, '2020-09-06 01:12:55', '2020-09-06 01:12:55'),
(101, '', 0, 1, 1, 0, 1, '2020-09-06 01:34:34', '2020-09-06 01:34:34'),
(102, '', 101, 1, 1, 1, 1, '2020-09-06 01:35:27', '2020-09-06 01:37:26'),
(103, '', 102, 1, 1, 0, 1, '2020-09-06 01:38:30', '2020-09-06 01:38:30'),
(104, '', 102, 1, 1, 0, 1, '2020-09-06 01:39:29', '2020-09-06 01:39:29'),
(105, '', 102, 1, 1, 0, 1, '2020-09-06 01:40:16', '2020-09-06 01:40:16'),
(106, '', 102, 1, 1, 0, 1, '2020-09-06 01:40:57', '2020-09-06 01:40:57'),
(107, '', 101, 1, 1, 0, 1, '2020-09-06 01:41:55', '2020-09-06 01:41:55'),
(108, '', 107, 1, 1, 0, 1, '2020-09-06 01:43:06', '2020-09-06 01:43:06'),
(109, '', 107, 1, 1, 0, 1, '2020-09-06 01:43:41', '2020-09-06 01:43:41'),
(110, '', 107, 1, 1, 0, 1, '2020-09-06 01:44:20', '2020-09-06 01:44:20'),
(111, '', 102, 1, 1, 0, 1, '2020-09-06 01:45:45', '2020-09-06 01:45:45'),
(112, '', 101, 1, 1, 0, 1, '2020-09-06 05:31:07', '2020-09-06 05:31:07'),
(113, '', 112, 1, 1, 0, 1, '2020-09-06 05:32:10', '2020-09-06 05:32:10'),
(114, '', 112, 1, 1, 0, 1, '2020-09-06 05:32:42', '2020-09-06 05:32:42'),
(115, '', 112, 1, 1, 0, 1, '2020-09-06 05:33:19', '2020-09-06 05:33:19'),
(116, '', 112, 1, 1, 0, 1, '2020-09-06 05:34:10', '2020-09-06 05:34:10'),
(117, '', 101, 1, 1, 0, 1, '2020-09-06 05:35:17', '2020-09-06 05:35:51'),
(118, '', 117, 1, 1, 0, 1, '2020-09-06 05:37:01', '2020-09-06 05:37:01'),
(119, '', 117, 1, 1, 0, 1, '2020-09-06 05:37:38', '2020-09-06 05:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(24, 1, 'culinary nuts', 'consectetur eiusmod sunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. proident, sed do  adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur incididunt\r\n\r\niste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis\r\n \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n\r\nNeque porro quisquam est,qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem voluptas sit\r\ndolorem ipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta\r\nsunt explicabo.\r\n', 'culinary nuts', '', ''),
(51, 1, 'mushroom', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mushroom', '', ''),
(34, 2, 'our store', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'our store', '', ''),
(34, 3, 'our store', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'our store', '', ''),
(77, 1, ' porridges', '', ' porridges', '', ''),
(77, 2, ' porridges', '', ' porridges', '', ''),
(34, 1, 'our store', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'our store', '', ''),
(68, 1, 'Legumes', 'It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Legumes', '', ''),
(68, 2, 'Legumes', 'It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Legumes', '', ''),
(76, 2, 'Irish cheeses', '', 'Irish cheeses', '', ''),
(74, 2, 'American cheeses', '', 'American cheeses', '', ''),
(52, 2, 'potato', 'aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'potato', '', ''),
(48, 1, 'pasta', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.', 'pasta', '', ''),
(48, 2, 'pasta', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.', 'pasta', '', ''),
(24, 2, 'culinary nuts', 'consectetur eiusmod sunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. proident, sed do  adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur incididunt\r\n\r\niste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis\r\n \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n\r\nNeque porro quisquam est,qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem voluptas sit\r\ndolorem ipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta\r\nsunt explicabo.\r\n', 'culinary nuts', '', ''),
(52, 1, 'potato', 'aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'potato', '', ''),
(51, 2, 'mushroom', 'incididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mushroom', '', ''),
(49, 1, 'carrot ', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\nsed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\nincididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'carrot ', '', ''),
(53, 1, ' edible seeds', 'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n\r\nNeque porro quisquam est,qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem voluptas sit\r\ndolorem ipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta\r\nsunt explicabo.\r\n\r\n\r\n\r\nvoluptas sit odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\nNeque porro quisquam est, qui dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem aspernatur aut dolores sequi nesciunt dolorem\r\nipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam,\r\neaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\n\r\n\r\nvoluptas sit odit aut fugit, sed quia consequuntur magni . Neque porro quisquam est, qui dolor sit amet Sed ut omnis iste natus error sit\r\nvoluptatem eos qui ratione voluptatem aspernatur aut perspiciatis unde inventore veritatis et quasi architecto dolores sequi nesciunt dolorem ipsum quia enim ipsam voluptatem\r\nquia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo beatae vitae dicta sunt explicabo. voluptas sit odit aut fugit, sed quia consequuntur magni.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', ' edible seeds', '', ''),
(53, 2, ' edible seeds', 'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n\r\nNeque porro quisquam est,qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem voluptas sit\r\ndolorem ipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta\r\nsunt explicabo.\r\n\r\n\r\n\r\nvoluptas sit odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\nNeque porro quisquam est, qui dolor sit amet Sed ut perspiciatis unde omnis iste natus error sit voluptatem eos qui ratione voluptatem aspernatur aut dolores sequi nesciunt dolorem\r\nipsum quia enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam,\r\neaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n\r\n\r\n\r\nvoluptas sit odit aut fugit, sed quia consequuntur magni . Neque porro quisquam est, qui dolor sit amet Sed ut omnis iste natus error sit\r\nvoluptatem eos qui ratione voluptatem aspernatur aut perspiciatis unde inventore veritatis et quasi architecto dolores sequi nesciunt dolorem ipsum quia enim ipsam voluptatem\r\nquia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo beatae vitae dicta sunt explicabo. voluptas sit odit aut fugit, sed quia consequuntur magni.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', ' edible seeds', '', ''),
(55, 2, ' onion ', 'aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat  proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deseru commodo consequ\r\n\r\ndolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', ' onion ', '', ''),
(55, 1, ' onion ', 'aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat  proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deseru commodo consequ\r\n\r\ndolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', ' onion ', '', ''),
(44, 1, 'eggplant ', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\nsed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\nincididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'eggplant ', '', ''),
(44, 2, 'eggplant ', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\nsed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\nincididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'eggplant ', '', ''),
(43, 2, 'breads', 'exercitation ullamco Excepteur sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit\r\n\r\n\r\nsunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur\r\n\r\nconsectetur eiusmod sunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. proident, sed do  adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur incididunt\r\n\r\niste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis\r\n \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n', 'breads', '', ''),
(28, 2, 'sweet breads', 'Ut enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n', 'sweet breads', '', ''),
(28, 1, 'sweet breads', 'Ut enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n', 'sweet breads', '', ''),
(84, 1, ' eggs', '', ' eggs', '', ''),
(67, 1, 'cheeses', 'it look like readable English. Many desktop publishing packages and web page ', 'cheeses', '', ''),
(67, 2, 'cheeses', 'it look like readable English. Many desktop publishing packages and web page ', 'cheeses', '', ''),
(86, 2, 'vegetables', '', 'vegetables', '', ''),
(82, 2, 'American breads', '', 'American breads', '', ''),
(81, 1, ' buns', '', ' buns', '', ''),
(75, 2, 'brined cheeses', '', 'brined cheeses', '', ''),
(70, 1, ' maize dishes', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking ', ' maize dishes', '', ''),
(49, 2, 'carrot ', 'consectetur adipiscing elit, Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\nsed do eiusmod tempor incididunt consectetur adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\nincididunt consectetur sed do eiusmod tempor  adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officiamollit anim id est laborum deserunt \r\ntempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua.\r\n\r\nUt enim ad minim veniam,anim id est laborum quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n\r\n\r\neiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in  esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun voluptate velit\r\n\r\ncupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'carrot ', '', ''),
(70, 2, ' maize dishes', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking ', ' maize dishes', '', ''),
(43, 1, 'breads', 'exercitation ullamco Excepteur sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit\r\n\r\n\r\nsunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur\r\n\r\nconsectetur eiusmod sunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur. proident, sed do  adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit Excepteur incididunt\r\n\r\niste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis\r\n \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet Sed ut perspiciatis unde omnis   iste natus error sit voluptatem\r\n\r\nNemo enim ipsam voluptatem quia accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\nrnatur aut odit aut fugit, sed quia consequuntur magni dolores sequi nesciunt.\r\n\r\n', 'breads', '', ''),
(81, 2, ' buns', '', ' buns', '', ''),
(83, 2, 'quick breads', '', 'quick breads', '', ''),
(84, 2, ' eggs', '', ' eggs', '', ''),
(83, 1, 'quick breads', '', 'quick breads', '', ''),
(76, 1, 'Irish cheeses', '', 'Irish cheeses', '', ''),
(74, 1, 'American cheeses', '', 'American cheeses', '', ''),
(75, 1, 'brined cheeses', '', 'brined cheeses', '', ''),
(47, 2, 'British breads', '', 'British breads', '', ''),
(80, 1, 'bread rolls', '', 'bread rolls', '', ''),
(80, 2, 'bread rolls', '', 'bread rolls', '', ''),
(86, 1, 'vegetables', '', 'vegetables', '', ''),
(88, 1, 'dough foods', '', 'dough foods', '', ''),
(88, 2, 'dough foods', '', 'dough foods', '', ''),
(82, 1, 'American breads', '', 'American breads', '', ''),
(50, 2, ' Indian breads', '', ' Indian breads', '', ''),
(50, 1, ' Indian breads', '', ' Indian breads', '', ''),
(47, 1, 'British breads', '', 'British breads', '', ''),
(89, 1, 'Electronics', '&lt;ol style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;&quot;&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.merriam-webster.com/dictionary/encompasses&quot; class=&quot;md-dictionary-link md-dictionary-tt-off&quot; data-term=&quot;encompasses&quot; style=&quot;color: rgb(0, 0, 0); border-bottom: 2px dotted rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;encompasses&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;an exceptionally broad range of&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/technology&quot; class=&quot;md-crosslink autoxref&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;technology&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. The term originally was applied to the study of&amp;nbsp;&lt;/span&gt;&lt;span id=&quot;ref194658&quot; style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/science/electron&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;electron&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;behaviour and movement, particularly as observed in the first&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/electron-tube&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;electron tubes&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. It came to be used in its broader sense with advances in knowledge about the fundamental nature of electrons and about the way in which the motion of these particles could be utilized. Today many scientific and technical&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.merriam-webster.com/dictionary/disciplines&quot; class=&quot;md-dictionary-link md-dictionary-tt-off&quot; data-term=&quot;disciplines&quot; style=&quot;color: rgb(0, 0, 0); border-bottom: 2px dotted rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;disciplines&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;deal with different aspects of electronics. Research in these fields has led to the development of such key devices as&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/transistor&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;transistors&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/integrated-circuit&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;integrated circuits&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/laser&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;lasers&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;, and&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/science/fiber-optics&quot; class=&quot;md-crosslink&quot; style=&quot;color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px; background-color: rgb(255, 255, 255);&quot;&gt;optical fibres&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. These in turn have made it possible to manufacture a wide array of electronic consumer, industrial, and military products. Indeed, it can be said that the world is in the midst of an electronic revolution at least as significant as the industrial revolution of the 19th century.&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;', 'Electronics', '', '');
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(89, 2, 'Electronics', '&lt;ol style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;&quot;&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.merriam-webster.com/dictionary/encompasses&quot; class=&quot;md-dictionary-link md-dictionary-tt-off&quot; data-term=&quot;encompasses&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); border-bottom: 2px dotted rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;encompasses&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;an exceptionally broad range of&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/technology&quot; class=&quot;md-crosslink autoxref&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;technology&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. The term originally was applied to the study of&amp;nbsp;&lt;/span&gt;&lt;span id=&quot;ref194658&quot; style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/science/electron&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;electron&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;behaviour and movement, particularly as observed in the first&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/electron-tube&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;electron tubes&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. It came to be used in its broader sense with advances in knowledge about the fundamental nature of electrons and about the way in which the motion of these particles could be utilized. Today many scientific and technical&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.merriam-webster.com/dictionary/disciplines&quot; class=&quot;md-dictionary-link md-dictionary-tt-off&quot; data-term=&quot;disciplines&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); border-bottom: 2px dotted rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;disciplines&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;&amp;nbsp;deal with different aspects of electronics. Research in these fields has led to the development of such key devices as&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/transistor&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;transistors&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/integrated-circuit&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;integrated circuits&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/technology/laser&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;lasers&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;, and&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.britannica.com/science/fiber-optics&quot; class=&quot;md-crosslink&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(20, 89, 157); font-family: Georgia, serif; font-size: 20px;&quot;&gt;optical fibres&lt;/a&gt;&lt;span style=&quot;color: rgb(26, 26, 26); font-family: Georgia, serif; font-size: 20px;&quot;&gt;. These in turn have made it possible to manufacture a wide array of electronic consumer, industrial, and military products. Indeed, it can be said that the world is in the midst of an electronic revolution at least as significant as the industrial revolution of the 19th century.&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;', 'Electronics', '', ''),
(90, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'accessories', '', ''),
(91, 1, 'Mobiles', '&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Mobile phones, particularly the smartphones that have become our inseparable companions today, are relatively new.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;However, the history of mobile phones goes back to 1908 when a US Patent was issued in Kentucky for a wireless telephone.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Mobile phones were invented as early as the 1940s when engineers working at AT&amp;amp;T developed cells for mobile phone base stations.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;The very&amp;nbsp;&lt;strong&gt;first mobile phones&lt;/strong&gt;&amp;nbsp;were not really mobile phones at all. They were two-way radios that allowed people like taxi drivers and the emergency services to communicate.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Instead of relying on base stations with separate cells (and the signal being passed from one cell to another), the first mobile phone networks involved one very powerful base station covering a much wider area.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Motorola, on 3 April 1973 were first company to mass produce the the first handheld mobile phone.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;These early mobile phones are often referred to as&amp;nbsp;&lt;strong&gt;0G&lt;/strong&gt;&amp;nbsp;mobile phones, or&amp;nbsp;&lt;strong&gt;Zero Generation&lt;/strong&gt;&amp;nbsp;mobile phones. Most phones today rely on&amp;nbsp;&lt;strong&gt;3G&lt;/strong&gt;&amp;nbsp;or&amp;nbsp;&lt;strong&gt;4G&lt;/strong&gt;&amp;nbsp;mobile technology.&lt;/p&gt;', 'mobiles', '', ''),
(91, 2, 'Mobiles', '&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Mobile phones, particularly the smartphones that have become our inseparable companions today, are relatively new.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;However, the history of mobile phones goes back to 1908 when a US Patent was issued in Kentucky for a wireless telephone.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Mobile phones were invented as early as the 1940s when engineers working at AT&amp;amp;T developed cells for mobile phone base stations.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;The very&amp;nbsp;&lt;strong&gt;first mobile phones&lt;/strong&gt;&amp;nbsp;were not really mobile phones at all. They were two-way radios that allowed people like taxi drivers and the emergency services to communicate.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Instead of relying on base stations with separate cells (and the signal being passed from one cell to another), the first mobile phone networks involved one very powerful base station covering a much wider area.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;Motorola, on 3 April 1973 were first company to mass produce the the first handheld mobile phone.&lt;/p&gt;&lt;p style=&quot;margin-top: 0.5em; margin-bottom: 1em; font-size: 1.25em; line-height: 1.4em; color: rgb(20, 20, 36); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif;&quot;&gt;These early mobile phones are often referred to as&amp;nbsp;&lt;strong&gt;0G&lt;/strong&gt;&amp;nbsp;mobile phones, or&amp;nbsp;&lt;strong&gt;Zero Generation&lt;/strong&gt;&amp;nbsp;mobile phones. Most phones today rely on&amp;nbsp;&lt;strong&gt;3G&lt;/strong&gt;&amp;nbsp;or&amp;nbsp;&lt;strong&gt;4G&lt;/strong&gt;&amp;nbsp;mobile technology.&lt;/p&gt;', 'mobiles', '', ''),
(92, 1, 'Tablets', '&lt;ul style=&quot;list-style-type: none; margin-bottom: 20px; color: rgb(119, 119, 119); font-family: &amp;quot;Open Sans&amp;quot;;&quot;&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;Abortion pills are quite safe and effective.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;A check-up can be done in about 10 days to ensure that all has gone well.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;In 2 weeks’ time, it is advisable to do a sonography to confirm that there are no retained products.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;In about 3 weeks one can do a home or blood pregnancy test to confirm that the procedure is complete.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;One would have the next normal period in about 4-5 weeks.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;It is important to confirm that the process is complete as it is not advisable to continue the pregnancy in case the tablets do not work.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;The tablets have the potential to cause serious birth defects in case the pregnancy continues.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;If there are significant retained products then one would need to do a surgical procedure to remove them.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;It is important to avoid sex in the first week after abortion as one can get pregnant again.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;Further, one must address the issue of contraception and accept a method that is acceptable to both partners.&lt;/li&gt;&lt;/ul&gt;', 'tablets', '', ''),
(92, 2, 'Tablets', '&lt;ul style=&quot;margin-bottom: 20px; list-style-type: none; color: rgb(119, 119, 119); font-family: &amp;quot;Open Sans&amp;quot;;&quot;&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;Abortion pills are quite safe and effective.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;A check-up can be done in about 10 days to ensure that all has gone well.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;In 2 weeks’ time, it is advisable to do a sonography to confirm that there are no retained products.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;In about 3 weeks one can do a home or blood pregnancy test to confirm that the procedure is complete.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;One would have the next normal period in about 4-5 weeks.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;It is important to confirm that the process is complete as it is not advisable to continue the pregnancy in case the tablets do not work.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;The tablets have the potential to cause serious birth defects in case the pregnancy continues.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;If there are significant retained products then one would need to do a surgical procedure to remove them.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;It is important to avoid sex in the first week after abortion as one can get pregnant again.&lt;/li&gt;&lt;li style=&quot;padding: 0px 0px 10px 30px; position: relative;&quot;&gt;Further, one must address the issue of contraception and accept a method that is acceptable to both partners.&lt;/li&gt;&lt;/ul&gt;', 'tablets', '', ''),
(93, 1, 'xiamoi', '&lt;div class=&quot;mod&quot; data-md=&quot;61&quot; lang=&quot;en-IN&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div aria-level=&quot;3&quot; class=&quot;LGOjhe&quot; role=&quot;heading&quot; data-attrid=&quot;wa:/description&quot; data-hveid=&quot;CBEQBA&quot; style=&quot;overflow: hidden; padding-bottom: 20px;&quot;&gt;&lt;span class=&quot;ILfuVd c3biWd&quot; style=&quot;font-size: 16px; line-height: 1.375;&quot;&gt;&lt;span class=&quot;hgKElc&quot; style=&quot;padding: 0px 8px 0px 0px;&quot;&gt;&lt;b&gt;Redmi&lt;/b&gt;&amp;nbsp;is a sub-brand owned by the Chinese electronics company Xiaomi. It was first announced in July 2013 as a budget smartphone line, and became a separate sub-brand of Xiaomi in 2019 with entry-level and mid-range devices, while Xiaomi itself produces upper-range and flagship Mi phones.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:found&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA0QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwBXoECA0QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAFegQIDRAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Founded:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;July 2013; 7 years ago; (as Xiaomi ...&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:parent&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA4QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwBnoECA4QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAGegQIDhAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Parent:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://en.wikipedia.org/wiki/Xiaomi&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQoC4oADAGegQIDhAC&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://en.wikipedia.org/wiki/Xiaomi&amp;amp;ved=2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQoC4oADAGegQIDhAC&quot; style=&quot;color: rgb(26, 13, 171); cursor: pointer;&quot;&gt;Xiaomi&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:key_peopl&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA8QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwB3oECA8QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAHegQIDxAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Key people:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;Lu Weibing (General Manager)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', 'xiamoi', '', ''),
(93, 2, 'xiamoi', '&lt;div class=&quot;mod&quot; data-md=&quot;61&quot; lang=&quot;en-IN&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div aria-level=&quot;3&quot; class=&quot;LGOjhe&quot; role=&quot;heading&quot; data-attrid=&quot;wa:/description&quot; data-hveid=&quot;CBEQBA&quot; style=&quot;overflow: hidden; padding-bottom: 20px;&quot;&gt;&lt;span class=&quot;ILfuVd c3biWd&quot; style=&quot;font-size: 16px; line-height: 1.375;&quot;&gt;&lt;span class=&quot;hgKElc&quot; style=&quot;padding: 0px 8px 0px 0px;&quot;&gt;&lt;b&gt;Redmi&lt;/b&gt;&amp;nbsp;is a sub-brand owned by the Chinese electronics company Xiaomi. It was first announced in July 2013 as a budget smartphone line, and became a separate sub-brand of Xiaomi in 2019 with entry-level and mid-range devices, while Xiaomi itself produces upper-range and flagship Mi phones.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:found&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA0QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwBXoECA0QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAFegQIDRAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Founded:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;July 2013; 7 years ago; (as Xiaomi ...&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:parent&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA4QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwBnoECA4QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAGegQIDhAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Parent:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://en.wikipedia.org/wiki/Xiaomi&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQoC4oADAGegQIDhAC&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://en.wikipedia.org/wiki/Xiaomi&amp;amp;ved=2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQoC4oADAGegQIDhAC&quot; style=&quot;color: rgb(26, 13, 171); cursor: pointer;&quot;&gt;Xiaomi&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;mod&quot; data-attrid=&quot;ss:/webfacts:key_peopl&quot; data-md=&quot;1001&quot; lang=&quot;en-IN&quot; data-hveid=&quot;CA8QAA&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQkCkwB3oECA8QAA&quot; style=&quot;clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwiW6KaAk-rqAhUg_XMBHTokA7EQyxMoADAHegQIDxAB&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Key people:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv&quot;&gt;Lu Weibing (General Manager)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', 'xiamoi', '', ''),
(94, 1, 'samsung', '', 'samsung', '', ''),
(94, 2, 'samsung', '', 'samsung', '', ''),
(95, 1, 'tablet1', '', 'tablet1', '', ''),
(95, 2, 'tablet1', '', 'tablet1', '', ''),
(96, 2, 'fruits', '', 'fruits', '', ''),
(96, 1, 'fruits', '', 'fruits', '', ''),
(97, 1, 'vegtables', '', 'vegtables', '', ''),
(97, 2, 'vegtables', '', 'vegtables', '', ''),
(98, 1, 'non-vegtables', '', 'non-vegtables', '', ''),
(98, 2, 'non-vegtables', '', 'non-vegtables', '', ''),
(99, 1, 'non veg', '', 'non veg', '', ''),
(99, 2, 'non veg', '', 'non veg', '', ''),
(100, 1, 'mobiles', '', 'mobiles', '', ''),
(100, 2, 'mobiles', '', 'mobiles', '', ''),
(90, 2, 'Accessories', '', 'Accessories', '', ''),
(101, 1, 'men', '', 'men', '', ''),
(101, 2, 'men', '', 'men', '', ''),
(102, 2, 'footwear', '', 'footwear', '', ''),
(102, 1, 'footwear', '', 'footwear', '', ''),
(103, 1, 'sports shoe', '', 'sports shoe', '', ''),
(103, 2, 'sports shoe', '', 'sports shoe', '', ''),
(104, 1, 'casual shoe', '', 'casual shoe', '', ''),
(104, 2, 'casual shoe', '', 'casual shoe', '', ''),
(105, 1, 'formal shoe', '', 'formal shoe', '', ''),
(105, 2, 'formal shoe', '', 'formal shoe', '', ''),
(106, 1, 'sandals and floaters', '', 'sandals and floaters', '', ''),
(106, 2, 'sandals and floaters', '', 'sandals and floaters', '', ''),
(107, 1, 'mens\'s gromming', '', 'mens\'s gromming', '', ''),
(107, 2, 'mens\'s gromming', '', 'mens\'s gromming', '', ''),
(108, 1, 'deodorants', '', 'deodorants', '', ''),
(108, 2, 'deodorants', '', 'deodorants', '', ''),
(109, 1, 'perfumes', '', 'perfumes', '', ''),
(109, 2, 'perfumes', '', 'perfumes', '', ''),
(110, 1, 'shaving and after shaving', '', 'shaving and after shaving', '', ''),
(110, 2, 'shaving and after shaving', '', 'shaving and after shaving', '', ''),
(111, 1, 'loafers', '', 'loafers', '', ''),
(111, 2, 'loafers', '', 'loafers', '', ''),
(112, 1, 'top wear', '', 'top wear', '', ''),
(112, 2, 'top wear', '', 'top wear', '', ''),
(113, 1, 'T-shirts', '', 'T-shirts', '', ''),
(113, 2, 'T-shirts', '', 'T-shirts', '', ''),
(114, 1, 'casuals', '', 'casuals', '', ''),
(114, 2, 'casuals', '', 'casuals', '', ''),
(115, 1, 'formals', '', 'formals', '', ''),
(115, 2, 'formals', '', 'formals', '', ''),
(116, 1, 'bottom wear', '', 'bottom wear', '', ''),
(116, 2, 'bottom wear', '', 'bottom wear', '', ''),
(117, 2, 'Bottom Wear', '', 'Bottom Wear', '', ''),
(117, 1, 'Bottom Wear', '', 'Bottom Wear', '', ''),
(118, 1, 'Casual Troursers', '', 'Casual Troursers', '', ''),
(118, 2, 'Casual Troursers', '', 'Casual Troursers', '', ''),
(119, 1, 'formal Trousers', '', 'formal Trousers', '', ''),
(119, 2, 'formal Trousers', '', 'formal Trousers', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(24, 1),
(24, 6),
(24, 14),
(24, 15),
(28, 1),
(28, 6),
(28, 7),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 12),
(34, 13),
(34, 14),
(34, 15),
(43, 1),
(43, 7),
(43, 14),
(43, 15),
(44, 1),
(44, 6),
(44, 7),
(44, 15),
(47, 1),
(47, 7),
(47, 14),
(47, 15),
(48, 1),
(48, 6),
(48, 7),
(48, 14),
(48, 15),
(49, 1),
(49, 6),
(49, 7),
(49, 14),
(49, 15),
(50, 1),
(50, 7),
(50, 14),
(50, 15),
(51, 1),
(51, 6),
(51, 7),
(51, 14),
(51, 15),
(52, 1),
(52, 7),
(52, 14),
(52, 15),
(53, 1),
(53, 6),
(53, 7),
(53, 15),
(55, 1),
(55, 6),
(55, 7),
(55, 14),
(74, 1),
(74, 6),
(74, 7),
(74, 14),
(75, 1),
(75, 6),
(75, 7),
(75, 14),
(75, 15),
(76, 1),
(76, 6),
(76, 15),
(77, 1),
(77, 15),
(80, 1),
(80, 7),
(80, 14),
(81, 1),
(81, 7),
(81, 14),
(82, 1),
(82, 7),
(82, 14),
(83, 1),
(83, 6),
(83, 15),
(86, 1),
(86, 7),
(86, 14),
(89, 1),
(89, 6),
(89, 7),
(89, 14),
(90, 7),
(90, 14),
(91, 6),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(97, 1),
(97, 7),
(99, 1),
(99, 7),
(100, 1),
(100, 7),
(103, 1),
(103, 14),
(104, 1),
(104, 14),
(105, 1),
(105, 14),
(106, 1),
(106, 14),
(108, 1),
(108, 7),
(109, 1),
(109, 14),
(110, 1),
(110, 7),
(112, 7),
(113, 1),
(114, 1),
(114, 14),
(115, 1),
(115, 7),
(116, 1),
(116, 7),
(118, 1),
(119, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(28, 43, 1),
(28, 28, 2),
(74, 74, 2),
(24, 24, 2),
(34, 34, 0),
(28, 34, 0),
(43, 34, 0),
(43, 43, 1),
(50, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 2),
(48, 48, 0),
(49, 49, 1),
(50, 43, 1),
(50, 50, 2),
(51, 51, 2),
(52, 52, 1),
(53, 53, 1),
(55, 49, 1),
(55, 55, 2),
(47, 43, 1),
(67, 67, 1),
(70, 70, 0),
(68, 68, 0),
(77, 77, 0),
(75, 67, 1),
(75, 75, 2),
(76, 67, 1),
(76, 76, 2),
(67, 34, 0),
(75, 34, 0),
(76, 34, 0),
(74, 34, 0),
(74, 67, 1),
(86, 86, 0),
(84, 84, 0),
(80, 34, 0),
(80, 80, 1),
(81, 80, 1),
(81, 34, 0),
(81, 81, 2),
(82, 34, 0),
(82, 80, 1),
(82, 82, 2),
(83, 34, 0),
(83, 80, 1),
(83, 83, 2),
(88, 88, 0),
(53, 86, 0),
(44, 86, 0),
(49, 86, 0),
(55, 86, 0),
(24, 86, 0),
(51, 86, 0),
(52, 86, 0),
(24, 49, 1),
(51, 49, 1),
(89, 89, 0),
(90, 89, 0),
(90, 90, 1),
(91, 89, 0),
(91, 90, 1),
(91, 91, 2),
(92, 89, 0),
(92, 90, 1),
(92, 92, 2),
(93, 89, 0),
(93, 90, 1),
(93, 91, 2),
(93, 93, 3),
(94, 89, 0),
(94, 90, 1),
(94, 91, 2),
(94, 94, 3),
(95, 89, 0),
(95, 90, 1),
(95, 92, 2),
(95, 95, 3),
(96, 96, 0),
(97, 96, 0),
(97, 97, 1),
(98, 96, 0),
(98, 97, 1),
(98, 98, 2),
(99, 96, 0),
(99, 99, 1),
(100, 89, 0),
(100, 100, 1),
(101, 101, 0),
(102, 101, 0),
(102, 102, 1),
(103, 101, 0),
(103, 102, 1),
(103, 103, 2),
(104, 101, 0),
(104, 102, 1),
(104, 104, 2),
(105, 101, 0),
(105, 102, 1),
(105, 105, 2),
(106, 101, 0),
(106, 102, 1),
(106, 106, 2),
(107, 101, 0),
(107, 107, 1),
(108, 101, 0),
(108, 107, 1),
(108, 108, 2),
(109, 101, 0),
(109, 107, 1),
(109, 109, 2),
(110, 101, 0),
(110, 107, 1),
(110, 110, 2),
(111, 101, 0),
(111, 102, 1),
(111, 111, 2),
(112, 101, 0),
(112, 112, 1),
(113, 101, 0),
(113, 112, 1),
(113, 113, 2),
(114, 101, 0),
(114, 112, 1),
(114, 114, 2),
(115, 101, 0),
(115, 112, 1),
(115, 115, 2),
(116, 101, 0),
(116, 112, 1),
(116, 116, 2),
(117, 101, 0),
(117, 117, 1),
(118, 101, 0),
(118, 117, 1),
(118, 118, 2),
(119, 101, 0),
(119, 117, 1),
(119, 119, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(34, 0, 0),
(43, 0, 0),
(50, 0, 0),
(55, 0, 0),
(84, 0, 0),
(44, 0, 0),
(47, 0, 0),
(51, 0, 0),
(49, 0, 0),
(48, 0, 0),
(52, 0, 0),
(53, 0, 0),
(28, 0, 0),
(24, 0, 0),
(74, 0, 0),
(70, 0, 0),
(68, 0, 0),
(67, 0, 0),
(77, 0, 0),
(75, 0, 0),
(76, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(86, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(24, 0),
(28, 0),
(34, 0),
(43, 0),
(44, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(55, 0),
(67, 0),
(68, 0),
(70, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(86, 0),
(88, 0),
(89, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2020-10-18 04:11:04'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'testing', 'testing', 'testing@gmail.com', '99501', '', '35b90852515d4edf87b645a16bf7cd6e685a68c9', '4WTrOLig8', NULL, NULL, 1, 0, '', '192.168.0.172', 1, 0, '', 'lTKHGCyRjy5zbjyG6wBwo7lH4nl18LHKbHENRRXa', '2018-06-01 12:29:04'),
(2, 1, 0, 1, 'testing', 'testing', 'admin@localhost.com', 'admin@localhost.com', '', 'ffb8f7c4c92a2964b9655ed90c67e15684ac16cb', 'waRVgzpr1', NULL, NULL, 1, 0, '', '192.168.0.172', 1, 0, '', '', '2018-06-06 16:03:40'),
(3, 1, 0, 1, 'test', 'test', 'test1410@gmail.com', '123456789', '', '77a04b9b00382f64c6406aed20489c11ab12c1be', 'Zwai8hMwf', NULL, NULL, 0, 1, '', '192.168.0.173', 1, 0, '', '', '2018-09-26 11:05:26'),
(4, 1, 0, 1, 'new', 'new', 'new@demo.com', '789456123', '', '3b544e9028ff3dee2fa0acae739040a2d8a6999c', 'OVt3RfSMd', NULL, NULL, 0, 2, '', '192.168.0.178', 1, 0, '', '', '2019-01-17 17:00:19'),
(5, 1, 0, 1, 'testing', 'testing', 'new@gmail.com', '123456789', '', '1b1a85cfa307d7a8cb1ee1e3887c02ac6f159ee5', 'W3uVUerRp', NULL, NULL, 0, 3, '', '192.168.0.178', 1, 0, '', '', '2019-01-20 17:30:19'),
(6, 1, 0, 1, 'test', 'test', 'test@gmail.com', '123456789', '', 'a922dcf14043036e111edc295f0cd885e53d527a', 'i5SctsMxf', NULL, NULL, 0, 4, '', '192.168.0.178', 1, 0, '', '', '2019-02-17 18:16:58'),
(7, 1, 0, 1, 'test', 'test', 'test123@gmail.com', '123456789', '', '12132f2690a99432640e51dd5212683f5ca7dae3', 'nbD0wcplD', NULL, NULL, 0, 5, '', '192.168.0.179', 1, 0, '', '', '2019-03-02 17:42:33'),
(8, 1, 0, 1, 'test', 'test', 'admin@gmail.com', '1234567890', '', '244d53c2a17ec47ca53433c18de0e549b1864bb2', 'yNKAjaXwr', NULL, NULL, 0, 6, '', '192.168.0.179', 1, 0, '', '', '2019-10-02 21:54:33'),
(9, 1, 0, 3, 'admin', 'admin', 'admin123@gmail.com', '1234567890', '', '5b9ad8855fcaaa767a433eae6acc43b293d53434', '68KlVClmh', NULL, NULL, 0, 7, '', '192.168.0.179', 1, 0, '', '', '2019-11-16 18:24:17'),
(10, 1, 0, 1, 'test', 'test', 'test222@gmail.com', '1234567890', '', '1910bd65ea31f620d4383c1bb6e34bee0909472f', 'jHQTubScu', NULL, NULL, 0, 0, '', '192.168.0.178', 1, 0, '', '', '2019-11-23 20:45:55'),
(11, 1, 0, 2, 'test', 'test', 'testing222@gmail.com', '1234567890', '', 'ca8836d0a2d59f18b224ef97cdc6532a9c672bbf', '2LAHhJqf3', NULL, NULL, 0, 0, '', '192.168.0.178', 1, 0, '', '', '2019-11-23 21:12:20'),
(12, 1, 0, 1, 'admin', 'admin', 'testing123@gmail.com', '1234567890', '', '841a88595be16865ba3a70ff0cbf92cfa7620cf9', 'HvCISNp9t', NULL, NULL, 0, 0, '', '192.168.0.178', 1, 0, '', '', '2019-12-06 23:05:55'),
(13, 1, 0, 1, 'test12345', 'test12345', 'test12345@gmail.com', '1234567890', '', '50f6d5250785513559b9976b2cf5f323dc4782e2', 'EppMIufx0', NULL, NULL, 0, 8, '', '192.168.0.178', 1, 0, '', '', '2019-12-12 17:37:09'),
(14, 1, 0, 1, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', '', '29dcfbbd0310cbbfbe4f8b80958fa4a30160b43a', 'lWzXt9WHw', NULL, NULL, 1, 9, '', '157.49.207.175', 1, 0, '', 'WL8QpYryaa3KSRJbdQfQ0jVpY4BxmQ4ezjbkJahx', '2020-08-08 01:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.0.172', '2018-06-01 12:29:05'),
(2, 2, '192.168.0.172', '2018-06-06 16:03:42'),
(3, 3, '192.168.0.173', '2018-09-26 11:05:54'),
(4, 4, '192.168.0.178', '2019-01-17 17:01:23'),
(5, 5, '192.168.0.178', '2019-01-20 17:30:26'),
(6, 6, '192.168.0.178', '2019-02-17 18:17:07'),
(7, 6, '192.168.0.175', '2019-02-18 11:48:22'),
(8, 7, '192.168.0.178', '2019-03-02 17:42:40'),
(9, 7, '192.168.0.175', '2019-03-03 10:34:09'),
(10, 8, '192.168.0.178', '2019-10-02 21:54:47'),
(11, 9, '192.168.0.178', '2019-11-16 18:24:18'),
(12, 9, '192.168.0.179', '2019-11-21 16:59:57'),
(13, 8, '192.168.0.179', '2019-11-22 16:29:38'),
(14, 7, '192.168.0.179', '2019-11-22 16:32:35'),
(15, 10, '192.168.0.178', '2019-11-23 20:45:57'),
(16, 11, '192.168.0.178', '2019-11-23 21:12:22'),
(17, 12, '192.168.0.178', '2019-12-06 23:05:56'),
(18, 13, '192.168.0.178', '2019-12-12 17:37:21'),
(19, 14, '157.46.94.197', '2020-08-08 01:37:04'),
(20, 14, '157.49.201.126', '2020-09-13 00:55:39'),
(21, 14, '157.49.234.141', '2020-09-13 01:33:39'),
(22, 14, '157.49.207.175', '2020-10-18 00:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(2, 'admin', '192.168.0.172', 3, '2018-05-28 04:29:16', '2018-07-28 05:28:41'),
(3, 'admin', '192.168.0.176', 1, '2018-05-28 04:43:31', '2018-05-28 04:43:31'),
(4, 'admin@localhost.com', '192.168.0.178', 1, '2018-08-28 11:20:40', '2018-08-28 11:20:40'),
(5, 'admin', '192.168.0.173', 1, '2018-09-26 05:33:13', '2018-09-26 05:33:13'),
(6, 'admin', '192.168.0.178', 7, '2018-10-07 03:59:54', '2019-02-17 12:46:19'),
(7, 'admin', '192.168.0.179', 2, '2018-11-30 04:25:19', '2019-12-11 10:44:01'),
(8, 'admin@localhost.com', '192.168.0.176', 1, '2018-12-14 05:05:46', '2018-12-14 05:05:46'),
(9, 'test@gmail.com', '192.168.0.175', 4, '2019-03-03 04:49:07', '2019-03-03 04:50:25'),
(11, 'testing@gmail.com', '192.168.0.178', 3, '2019-11-16 12:52:01', '2019-11-16 12:52:58'),
(12, 'admin123@localhost.com', '192.168.0.178', 5, '2019-11-16 12:55:58', '2019-11-21 12:27:06'),
(13, 'admin', '157.46.94.197', 1, '2020-08-08 05:36:20', '2020-08-08 05:36:20'),
(14, 'haribabu@xmediasolution.c', '157.46.76.12', 1, '2020-09-06 06:01:43', '2020-09-06 06:01:43'),
(17, 'admin', '157.49.207.175', 1, '2020-10-18 04:17:45', '2020-10-18 04:17:45'),
(16, 'admin', '157.49.201.126', 1, '2020-09-13 04:55:09', '2020-09-13 04:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(7, 30, '2019-03-02 17:44:14'),
(7, 51, '2019-03-02 17:44:17'),
(7, 32, '2019-03-02 17:44:25'),
(9, 36, '2019-11-21 18:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'html'),
(43, 'module', 'category_tab'),
(44, 'module', 'bestseller'),
(45, 'module', 'latest'),
(46, 'module', 'special'),
(47, 'module', 'blogger'),
(49, 'module', 'newsletters'),
(50, 'module', 'filter'),
(55, 'analytics', 'google'),
(56, 'module', 'pavmegamenu'),
(58, 'module', 'elfsight_form_builder');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(110, 0, 'productslidergrid-option.ocmod.zip', '2019-12-11 21:18:59'),
(107, 0, 'nutripe.ocmod.zip', '2019-12-11 20:23:09'),
(111, 0, 'pavmegamenu.ocmod.zip', '2020-07-27 02:48:49'),
(114, 0, 'optiondescription3x.ocmod.zip', '2020-08-02 10:51:27'),
(118, 0, 'clproductaskquestionv1.03x.ocmod.zip', '2020-08-02 11:31:47'),
(119, 0, 'elfsightformbuilder3.0.0.0.ocmod.zip', '2020-08-02 11:34:18'),
(120, 0, 'MultipleMinimumQty.ocmod.zip', '2020-10-17 01:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(11, 110, 'catalog/view/javascript/jquery/slick', '2019-12-11 21:19:06'),
(12, 110, 'catalog/view/javascript/jquery/slick/Thumbs.db', '2019-12-11 21:19:06'),
(13, 110, 'catalog/view/javascript/jquery/slick/slick-theme.css', '2019-12-11 21:19:06'),
(14, 110, 'catalog/view/javascript/jquery/slick/slick.css', '2019-12-11 21:19:06'),
(15, 110, 'catalog/view/javascript/jquery/slick/slick.js', '2019-12-11 21:19:06'),
(16, 111, 'admin/model/extension/menu', '2020-07-27 02:48:56'),
(17, 111, 'admin/view/image/filemanager', '2020-07-27 02:48:56'),
(18, 111, 'admin/view/image/pavmegamenu', '2020-07-27 02:48:56'),
(19, 111, 'admin/view/javascript/pavmegamenu', '2020-07-27 02:48:56'),
(20, 111, 'admin/view/stylesheet/pavmegamenu.css', '2020-07-27 02:48:56'),
(21, 111, 'admin/view/stylesheet/pavmegamenu_live.css', '2020-07-27 02:48:56'),
(22, 111, 'catalog/model/extension/menu', '2020-07-27 02:48:56'),
(23, 111, 'admin/controller/extension/module/pavmegamenu.php', '2020-07-27 02:48:56'),
(24, 111, 'admin/model/extension/menu/megamenu.php', '2020-07-27 02:48:56'),
(25, 111, 'admin/model/extension/menu/tree.php', '2020-07-27 02:48:56'),
(26, 111, 'admin/view/image/filemanager/edit-copy.png', '2020-07-27 02:48:56'),
(27, 111, 'admin/view/image/filemanager/edit-cut.png', '2020-07-27 02:48:56'),
(28, 111, 'admin/view/image/filemanager/edit-delete.png', '2020-07-27 02:48:56'),
(29, 111, 'admin/view/image/filemanager/edit-paste.png', '2020-07-27 02:48:56'),
(30, 111, 'admin/view/image/filemanager/edit-rename.png', '2020-07-27 02:48:56'),
(31, 111, 'admin/view/image/filemanager/folder.png', '2020-07-27 02:48:56'),
(32, 111, 'admin/view/image/filemanager/refresh.png', '2020-07-27 02:48:56'),
(33, 111, 'admin/view/image/filemanager/upload.png', '2020-07-27 02:48:56'),
(34, 111, 'admin/view/image/pavmegamenu/config.png', '2020-07-27 02:48:56'),
(35, 111, 'admin/view/image/pavmegamenu/delete.png', '2020-07-27 02:48:56'),
(36, 111, 'admin/view/image/pavmegamenu/widget.png', '2020-07-27 02:48:56'),
(37, 111, 'admin/view/javascript/pavmegamenu/jquery.nestable.js', '2020-07-27 02:48:56'),
(38, 111, 'admin/view/javascript/pavmegamenu/jquerycookie.js', '2020-07-27 02:48:56'),
(39, 111, 'catalog/controller/extension/module/pavmegamenu.php', '2020-07-27 02:48:56'),
(40, 111, 'catalog/controller/extension/module/pavobuilder', '2020-07-27 02:48:56'),
(41, 111, 'catalog/model/extension/menu/megamenu.php', '2020-07-27 02:48:56'),
(42, 111, 'admin/language/en-gb/extension/module/pavmegamenu.php', '2020-07-27 02:48:56'),
(43, 111, 'admin/view/template/extension/module/pavmegamenu', '2020-07-27 02:48:56'),
(44, 111, 'catalog/controller/extension/module/pavobuilder/inc', '2020-07-27 02:48:56'),
(45, 111, 'catalog/language/en-gb/extension/module/pavmegamenu.php', '2020-07-27 02:48:56'),
(46, 111, 'catalog/view/theme/default/stylesheet/pavmegamenu', '2020-07-27 02:48:56'),
(47, 111, 'admin/view/template/extension/module/pavmegamenu/megamenu-tree.twig', '2020-07-27 02:48:56'),
(48, 111, 'admin/view/template/extension/module/pavmegamenu/megamenutree.twig', '2020-07-27 02:48:56'),
(49, 111, 'admin/view/template/extension/module/pavmegamenu/pavmegamenu.twig', '2020-07-27 02:48:56'),
(50, 111, 'admin/view/template/extension/module/pavmegamenu/pavmegamenu_form.twig', '2020-07-27 02:48:56'),
(51, 111, 'catalog/controller/extension/module/pavobuilder/inc/widgets', '2020-07-27 02:48:56'),
(52, 111, 'catalog/view/theme/default/stylesheet/pavmegamenu/style.css', '2020-07-27 02:48:56'),
(53, 111, 'catalog/controller/extension/module/pavobuilder/inc/widgets/mega_menu.php', '2020-07-27 02:48:56'),
(54, 111, 'catalog/view/theme/default/template/extension/module/pavmegamenu.twig', '2020-07-27 02:48:56'),
(55, 111, 'catalog/view/theme/default/template/extension/module/pavoheader', '2020-07-27 02:48:56'),
(56, 111, 'catalog/view/theme/default/template/extension/module/pavoheader/mega_menu.twig', '2020-07-27 02:48:56'),
(84, 118, 'catalog/language/bg', '2020-08-02 11:31:49'),
(85, 118, 'catalog/language/bg/extension', '2020-08-02 11:31:49'),
(86, 118, 'catalog/controller/extension/module/claskquestion.php', '2020-08-02 11:31:49'),
(87, 118, 'catalog/language/bg/extension/module', '2020-08-02 11:31:49'),
(88, 118, 'catalog/language/bg/extension/module/claskquestion.php', '2020-08-02 11:31:49'),
(89, 118, 'catalog/language/en-gb/extension/module/claskquestion.php', '2020-08-02 11:31:49'),
(90, 119, 'admin/controller/extension/module/elfsight-portal-params.json', '2020-08-02 11:34:20'),
(91, 119, 'admin/controller/extension/module/elfsight_form_builder.php', '2020-08-02 11:34:20'),
(92, 119, 'admin/controller/extension/module/form-builder-assets', '2020-08-02 11:34:20'),
(93, 119, 'admin/controller/extension/module/form-builder-assets/popup.css', '2020-08-02 11:34:20'),
(94, 119, 'admin/controller/extension/module/form-builder-assets/popup.js', '2020-08-02 11:34:20'),
(95, 119, 'admin/controller/extension/module/form-builder-assets/popup.php', '2020-08-02 11:34:20'),
(96, 119, 'admin/controller/extension/module/form-builder-assets/reasons.php', '2020-08-02 11:34:20'),
(97, 119, 'admin/language/en-gb/extension/module/elfsight_form_builder.php', '2020-08-02 11:34:20'),
(98, 119, 'admin/view/template/extension/module/elfsight_form_builder.twig', '2020-08-02 11:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(5, 1, 5),
(4, 1, 4),
(3, 1, 3),
(2, 1, 2),
(1, 1, 1),
(6, 2, 0),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(15, 3, 0),
(14, 3, 1),
(13, 3, 2),
(12, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(4, 2, 1, 'أسود'),
(5, 2, 1, 'أزرق'),
(6, 2, 2, '$50.00 - $200.00 '),
(6, 1, 2, '$50.00 - $200.00 '),
(7, 2, 2, '$201.00 - $500.00 '),
(5, 1, 1, 'Blue'),
(15, 2, 3, 'XL'),
(15, 1, 3, 'XL'),
(14, 2, 3, 'L'),
(4, 1, 1, 'Black'),
(3, 2, 1, 'أحمر'),
(2, 1, 1, 'Yellow'),
(7, 1, 2, '$201.00 - $500.00 '),
(8, 2, 2, '$501.00 - $800.00'),
(8, 1, 2, '$501.00 - $800.00'),
(9, 2, 2, '$801.00 - $2000.00'),
(9, 1, 2, '$801.00 - $2000.00'),
(14, 1, 3, 'L'),
(13, 2, 3, 'M'),
(13, 1, 3, 'M'),
(12, 2, 3, 'S'),
(12, 1, 3, 'S'),
(3, 1, 1, 'red'),
(2, 2, 1, 'الأصفر'),
(1, 2, 1, 'زهري'),
(1, 1, 1, 'pink'),
(6, 3, 2, '$50.00 - $200.00 '),
(5, 3, 1, 'Blue'),
(15, 3, 3, 'XL'),
(4, 3, 1, 'Black'),
(2, 3, 1, 'Yellow'),
(7, 3, 2, '$201.00 - $500.00 '),
(8, 3, 2, '$501.00 - $800.00'),
(9, 3, 2, '$801.00 - $2000.00'),
(14, 3, 3, 'L'),
(13, 3, 3, 'M'),
(12, 3, 3, 'S'),
(3, 3, 1, 'red'),
(1, 3, 1, 'pink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 2),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'الألوان'),
(2, 1, 'price'),
(3, 2, 'size'),
(1, 1, 'color'),
(2, 2, 'price'),
(3, 1, 'size'),
(2, 3, 'price'),
(1, 3, 'color'),
(3, 3, 'size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'About Us', '\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our company&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.&lt;/p&gt;\r\n&lt;ul class=&quot;list-1&quot;&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Top quality products&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Best customer service&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;30-days money back guarantee&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our team&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem set sint occaecat cupidatat non &lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Testimonials&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', ' &lt;div&gt;&lt;strong&gt;Privacy Notice&lt;/strong&gt;\r\n&lt;p&gt;This privacy notice discloses the privacy practices for &lt;span&gt;(website address)&lt;/span&gt;. This privacy notice applies solely to information collected by this website. It will notify you of the following:&lt;/p&gt;\r\n&lt;ol type=&quot;1&quot;&gt;\r\n&lt;li&gt;What personally identifiable information is collected from you through the website, how it is used and with whom it may be shared.&lt;/li&gt;\r\n&lt;li&gt;What choices are available to you regarding the use of your data.&lt;/li&gt;\r\n&lt;li&gt;The security procedures in place to protect the misuse of your information.&lt;/li&gt;\r\n&lt;li&gt;How you can correct any inaccuracies in the information.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&lt;strong&gt;Information Collection, Use, and Sharing&lt;/strong&gt; &lt;br&gt;We are the sole owners of the information collected on this site. We only have access to/collect information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone.&lt;/p&gt;\r\n&lt;p&gt;We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.&lt;/p&gt;\r\n&lt;p&gt;Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Access to and Control Over Information&lt;/strong&gt; &lt;br&gt;You may opt out of any future contacts from us at any time. You can do the following at any time by contacting us via the email address or phone number given on our website:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;See what data we have about you, if any.&lt;/li&gt;\r\n&lt;li&gt;Change/correct any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Have us delete any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Express any concern you have about our use of your data.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Security&lt;/strong&gt; &lt;br&gt;We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.&lt;/p&gt;\r\n&lt;p&gt;Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a lock icon in the address bar and looking for &quot;https&quot; at the beginning of the address of the Web page.&lt;/p&gt;\r\n&lt;p&gt;While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;If you feel that we are not abiding by this privacy policy, you should contact us immediately via telephone at &lt;span style=&quot;text-decoration: underline;&quot;&gt;XXX YYY-ZZZZ&lt;/span&gt; or &lt;span style=&quot;text-decoration: underline;&quot;&gt;via email&lt;/span&gt;.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;div class=&quot;privacy-policy&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;h2&gt;Shipments and returns&lt;/h2&gt;\r\n&lt;h3&gt;Your pack shipment&lt;/h3&gt;\r\n&lt;p&gt;Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.&lt;/p&gt;\r\n&lt;p&gt;Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.&lt;br&gt;&lt;br&gt;Boxes are amply sized and your items are well-protected.&lt;/p&gt;', 'Delivery Information', '', ''),
(4, 1, 'About Us', '\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our company&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.&lt;/p&gt;\r\n&lt;ul class=&quot;list-1&quot;&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Top quality products&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Best customer service&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;30-days money back guarantee&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our team&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem set sint occaecat cupidatat non &lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Testimonials&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', ' &lt;div&gt;&lt;strong&gt;Privacy Notice&lt;/strong&gt;\r\n&lt;p&gt;This privacy notice discloses the privacy practices for &lt;span&gt;(website address)&lt;/span&gt;. This privacy notice applies solely to information collected by this website. It will notify you of the following:&lt;/p&gt;\r\n&lt;ol type=&quot;1&quot;&gt;\r\n&lt;li&gt;What personally identifiable information is collected from you through the website, how it is used and with whom it may be shared.&lt;/li&gt;\r\n&lt;li&gt;What choices are available to you regarding the use of your data.&lt;/li&gt;\r\n&lt;li&gt;The security procedures in place to protect the misuse of your information.&lt;/li&gt;\r\n&lt;li&gt;How you can correct any inaccuracies in the information.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&lt;strong&gt;Information Collection, Use, and Sharing&lt;/strong&gt; &lt;br&gt;We are the sole owners of the information collected on this site. We only have access to/collect information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone.&lt;/p&gt;\r\n&lt;p&gt;We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.&lt;/p&gt;\r\n&lt;p&gt;Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Access to and Control Over Information&lt;/strong&gt; &lt;br&gt;You may opt out of any future contacts from us at any time. You can do the following at any time by contacting us via the email address or phone number given on our website:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;See what data we have about you, if any.&lt;/li&gt;\r\n&lt;li&gt;Change/correct any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Have us delete any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Express any concern you have about our use of your data.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Security&lt;/strong&gt; &lt;br&gt;We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.&lt;/p&gt;\r\n&lt;p&gt;Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a lock icon in the address bar and looking for &quot;https&quot; at the beginning of the address of the Web page.&lt;/p&gt;\r\n&lt;p&gt;While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;If you feel that we are not abiding by this privacy policy, you should contact us immediately via telephone at &lt;span style=&quot;text-decoration: underline;&quot;&gt;XXX YYY-ZZZZ&lt;/span&gt; or &lt;span style=&quot;text-decoration: underline;&quot;&gt;via email&lt;/span&gt;.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;div class=&quot;privacy-policy&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;h2&gt;Shipments and returns&lt;/h2&gt;\r\n&lt;h3&gt;Your pack shipment&lt;/h3&gt;\r\n&lt;p&gt;Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.&lt;/p&gt;\r\n&lt;p&gt;Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.&lt;br&gt;&lt;br&gt;Boxes are amply sized and your items are well-protected.&lt;/p&gt;', 'Delivery Information', '', ''),
(5, 3, 'Terms &amp; Conditions', ' &lt;div&gt;&lt;strong&gt;Privacy Notice&lt;/strong&gt;\r\n&lt;p&gt;This privacy notice discloses the privacy practices for &lt;span&gt;(website address)&lt;/span&gt;. This privacy notice applies solely to information collected by this website. It will notify you of the following:&lt;/p&gt;\r\n&lt;ol type=&quot;1&quot;&gt;\r\n&lt;li&gt;What personally identifiable information is collected from you through the website, how it is used and with whom it may be shared.&lt;/li&gt;\r\n&lt;li&gt;What choices are available to you regarding the use of your data.&lt;/li&gt;\r\n&lt;li&gt;The security procedures in place to protect the misuse of your information.&lt;/li&gt;\r\n&lt;li&gt;How you can correct any inaccuracies in the information.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&lt;strong&gt;Information Collection, Use, and Sharing&lt;/strong&gt; &lt;br&gt;We are the sole owners of the information collected on this site. We only have access to/collect information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone.&lt;/p&gt;\r\n&lt;p&gt;We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.&lt;/p&gt;\r\n&lt;p&gt;Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Access to and Control Over Information&lt;/strong&gt; &lt;br&gt;You may opt out of any future contacts from us at any time. You can do the following at any time by contacting us via the email address or phone number given on our website:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;See what data we have about you, if any.&lt;/li&gt;\r\n&lt;li&gt;Change/correct any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Have us delete any data we have about you.&lt;/li&gt;\r\n&lt;li&gt;Express any concern you have about our use of your data.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;strong&gt;Security&lt;/strong&gt; &lt;br&gt;We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.&lt;/p&gt;\r\n&lt;p&gt;Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a lock icon in the address bar and looking for &quot;https&quot; at the beginning of the address of the Web page.&lt;/p&gt;\r\n&lt;p&gt;While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;If you feel that we are not abiding by this privacy policy, you should contact us immediately via telephone at &lt;span style=&quot;text-decoration: underline;&quot;&gt;XXX YYY-ZZZZ&lt;/span&gt; or &lt;span style=&quot;text-decoration: underline;&quot;&gt;via email&lt;/span&gt;.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 3, 'Privacy Policy', '&lt;div class=&quot;privacy-policy&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.&lt;/p&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 3, 'Delivery Information', '&lt;h2&gt;Shipments and returns&lt;/h2&gt;\r\n&lt;h3&gt;Your pack shipment&lt;/h3&gt;\r\n&lt;p&gt;Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.&lt;/p&gt;\r\n&lt;p&gt;Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.&lt;br&gt;&lt;br&gt;Boxes are amply sized and your items are well-protected.&lt;/p&gt;', 'Delivery Information', '', ''),
(4, 3, 'About Us', '\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our company&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.&lt;/p&gt;\r\n&lt;ul class=&quot;list-1&quot;&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Top quality products&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;Best customer service&lt;/li&gt;\r\n&lt;li&gt;&lt;em class=&quot;icon-ok&quot;&gt;&lt;/em&gt;30-days money back guarantee&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Our team&lt;/strong&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem set sint occaecat cupidatat non &lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;aboutus-block&quot;&gt;\r\n&lt;h3 class=&quot;page-subheading&quot;&gt;&lt;strong&gt;Testimonials&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Lorem ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;testimonials&quot;&gt;\r\n&lt;div class=&quot;inner&quot;&gt;&lt;span class=&quot;before&quot;&gt;“&lt;/span&gt;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.&lt;span class=&quot;after&quot;&gt;”&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;&lt;strong class=&quot;dark&quot;&gt;Ipsum dolor sit&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'About Us', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'ar', 'ar-ar', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, ' Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(6618, 6, 'newsletters', 'footer_left', 0),
(6643, 7, 'newsletters', 'footer_left', 0),
(6625, 10, 'newsletters', 'footer_left', 0),
(6617, 6, 'html.39', 'footer_bottom', 2),
(6624, 10, 'html.39', 'footer_bottom', 2),
(6642, 7, 'html.39', 'footer_bottom', 2),
(6561, 8, 'newsletters', 'footer_left', 0),
(6591, 2, 'newsletters', 'footer_left', 0),
(6569, 4, 'html.39', 'footer_bottom', 2),
(6598, 13, 'newsletters', 'footer_left', 0),
(6597, 13, 'html.39', 'footer_bottom', 2),
(6605, 9, 'newsletters', 'footer_left', 0),
(6616, 6, 'html.35', 'footer_bottom', 1),
(6675, 3, 'banner.32', 'column_left', 3),
(6641, 7, 'html.35', 'footer_bottom', 1),
(6640, 7, 'html.90', 'footer_bottom', 0),
(6615, 6, 'html.90', 'footer_bottom', 0),
(6577, 11, 'newsletters', 'footer_left', 0),
(6687, 5, 'newsletters', 'footer_left', 0),
(6604, 9, 'html.39', 'footer_bottom', 2),
(6568, 4, 'html.35', 'footer_bottom', 1),
(6682, 3, 'html.105', 'header_top', 0),
(6680, 3, 'newsletters', 'footer_left', 0),
(6560, 8, 'html.39', 'footer_bottom', 2),
(6553, 12, 'html.39', 'footer_bottom', 2),
(6567, 4, 'html.90', 'footer_bottom', 0),
(6576, 11, 'html.39', 'footer_bottom', 2),
(6688, 5, 'html.36', 'footer_right', 0),
(6671, 1, 'html.105', 'header_top', 0),
(6668, 1, 'html.39', 'footer_bottom', 2),
(6681, 3, 'html.36', 'footer_right', 0),
(6670, 1, 'html.36', 'footer_right', 0),
(6614, 6, 'account', 'column_left', 0),
(6623, 10, 'html.35', 'footer_bottom', 1),
(6622, 10, 'html.90', 'footer_bottom', 0),
(6621, 10, 'account', 'column_left', 0),
(6679, 3, 'html.39', 'footer_bottom', 2),
(6678, 3, 'html.35', 'footer_bottom', 1),
(6639, 7, 'account', 'column_left', 0),
(6552, 12, 'html.35', 'footer_bottom', 1),
(6559, 8, 'html.35', 'footer_bottom', 1),
(6558, 8, 'html.90', 'footer_bottom', 0),
(6557, 8, 'account', 'column_left', 0),
(6566, 4, 'latest.62', 'column_left', 3),
(6565, 4, 'banner.32', 'column_left', 2),
(6575, 11, 'html.35', 'footer_bottom', 1),
(6574, 11, 'html.90', 'footer_bottom', 0),
(6573, 11, 'account', 'column_left', 0),
(6686, 5, 'html.39', 'footer_bottom', 2),
(6669, 1, 'newsletters', 'footer_left', 0),
(6677, 3, 'html.90', 'footer_bottom', 0),
(6667, 1, 'html.35', 'footer_bottom', 1),
(6590, 2, 'html.39', 'footer_bottom', 2),
(6596, 13, 'html.35', 'footer_bottom', 1),
(6595, 13, 'html.90', 'footer_bottom', 0),
(6665, 1, 'blogger.45', 'content_bottom', 9),
(6594, 13, 'account', 'column_left', 0),
(6603, 9, 'html.35', 'footer_bottom', 1),
(6602, 9, 'html.90', 'footer_bottom', 0),
(6666, 1, 'html.90', 'footer_bottom', 0),
(6601, 9, 'account', 'column_left', 0),
(6676, 3, 'latest.62', 'column_left', 4),
(6589, 2, 'html.35', 'footer_bottom', 1),
(6564, 4, 'category', 'column_left', 0),
(6663, 1, 'html.111', 'content_bottom', 7),
(6588, 2, 'html.90', 'footer_bottom', 0),
(6664, 1, 'html.72', 'content_bottom', 8),
(6551, 12, 'html.35', 'footer_bottom', 0),
(6662, 1, 'html.112', 'content_bottom', 6),
(6661, 1, 'featured.61', 'content_bottom', 5),
(6659, 1, 'html.102', 'content_bottom', 0),
(6660, 1, 'carousel.29', 'content_bottom', 1),
(6658, 1, 'slideshow.27', 'content_top', 0),
(6554, 12, 'newsletters', 'footer_left', 0),
(6555, 12, 'html.36', 'footer_right', 0),
(6556, 12, 'html.105', 'header_top', 0),
(6562, 8, 'html.36', 'footer_right', 0),
(6563, 8, 'html.105', 'header_top', 0),
(6570, 4, 'newsletters', 'footer_left', 0),
(6571, 4, 'html.36', 'footer_right', 0),
(6572, 4, 'html.105', 'header_top', 0),
(6578, 11, 'html.36', 'footer_right', 0),
(6579, 11, 'html.105', 'header_top', 0),
(6689, 5, 'html.105', 'header_top', 0),
(6685, 5, 'html.35', 'footer_bottom', 1),
(6684, 5, 'html.90', 'footer_bottom', 0),
(6683, 5, 'account', 'column_left', 0),
(6592, 2, 'html.36', 'footer_right', 0),
(6593, 2, 'html.105', 'header_top', 0),
(6599, 13, 'html.36', 'footer_right', 0),
(6600, 13, 'html.105', 'header_top', 0),
(6606, 9, 'html.36', 'footer_right', 0),
(6607, 9, 'html.105', 'header_top', 0),
(6608, 14, 'html.90', 'footer_bottom', 0),
(6609, 14, 'html.35', 'footer_bottom', 1),
(6610, 14, 'html.39', 'footer_bottom', 2),
(6611, 14, 'newsletters', 'footer_left', 0),
(6612, 14, 'html.36', 'footer_right', 0),
(6613, 14, 'html.105', 'header_top', 0),
(6619, 6, 'html.36', 'footer_right', 0),
(6620, 6, 'html.105', 'header_top', 0),
(6626, 10, 'html.36', 'footer_right', 0),
(6627, 10, 'html.105', 'header_top', 0),
(6674, 3, 'bestseller.88', 'column_left', 2),
(6644, 7, 'html.36', 'footer_right', 0),
(6645, 7, 'html.105', 'header_top', 0),
(6673, 3, 'filter', 'column_left', 1),
(6672, 3, 'category', 'column_left', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(644, 6, 0, 'account/%'),
(645, 10, 0, 'affiliate/%'),
(650, 3, 0, 'product/category'),
(649, 1, 0, 'common/home'),
(640, 2, 0, 'product/product'),
(638, 11, 0, 'information/information'),
(647, 7, 0, 'checkout/%'),
(636, 8, 0, 'information/contact'),
(642, 9, 0, 'information/sitemap'),
(637, 4, 0, ''),
(651, 5, 0, 'product/manufacturer'),
(635, 12, 0, 'product/compare'),
(641, 13, 0, 'product/search'),
(643, 14, 0, 'information/blogger/blogs');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'randomised', 'catalog/demo/htc_logo.jpg', 0),
(6, 'renaissance', 'catalog/demo/palm_logo.jpg', 0),
(7, 'praesentium', 'catalog/demo/hp_logo.jpg', 0),
(8, 'indignation', 'catalog/demo/apple_logo.jpg', 0),
(9, 'laboriosam', 'catalog/demo/canon_logo.jpg', 0),
(10, 'reprehenderit', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `is_group` smallint(6) NOT NULL DEFAULT 2,
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT 2,
  `show_title` smallint(6) NOT NULL DEFAULT 1,
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT 0,
  `published` smallint(6) NOT NULL DEFAULT 1,
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `show_sub` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `submenu_content` text DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT 0,
  `badges` text DEFAULT '',
  `icon` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `badges`, `icon`) VALUES
(41, '', 1, 0, '', '12', NULL, NULL, '', '1', 'category', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', 'vegetable', NULL, '', '', 0, 0, 0, 0, '', NULL),
(42, '', 1, 0, '', '12', NULL, NULL, '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 0, '', NULL),
(43, '', 1, 0, '', '12', NULL, NULL, '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(41, 2, 'vegetables', ''),
(41, 1, 'Vegetables', ''),
(42, 1, 'Movies', ''),
(42, 2, 'movies', ''),
(43, 1, 'Electronics', ''),
(43, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:\"video_code\";s:168:\"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:\"html\";a:1:{i:1;s:275:\"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.\";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:5:\"limit\";s:2:\"12\";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(104, 107, 'nutripe-theme', 'nutripe-theme', 'Thementic', '3.x', '', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n    <name>nutripe-theme</name>\r\n    <code>nutripe-theme</code>\r\n    <version>3.x</version>\r\n    <author>Thementic</author>\r\n    <file path=\"admin/language/en-gb/design/layout.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_column_right\']   = \'Column Right\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_column_right\']   = \'Column Right\';\r\n\r\n			$_[\'text_footer_top\']    = \'Footer Top\';\r\n			$_[\'text_footer_left\']    = \'Footer Left\';\r\n			$_[\'text_footer_right\']    = \'Footer Right\';\r\n			$_[\'text_footer_bottom\']    = \'Footer Bottom\';\r\n			$_[\'text_header_top\']    = \'Header Top\';\r\n			$_[\'text_header_bottom\']    = \'Header Bottom\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/view/template/design/layout_form.twig\">\r\n        <operation>\r\n            <search><![CDATA[\r\n							<button type=\"button\" onclick=\"addModule(\'content-bottom\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n							<button type=\"button\" onclick=\"addModule(\'content-bottom\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n                </table>\r\n\r\n    \r\n				\r\n				<table id=\"module-footer-top\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_footer_top }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'footer_top\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'footer-top\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n                </table>\r\n				\r\n				<table id=\"module-footer-bottom\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_footer_bottom }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'footer_bottom\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'footer-bottom\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n                </table>\r\n				\r\n				<table id=\"module-footer-left\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_footer_left }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'footer_left\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'footer-left\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n                </table>\r\n				\r\n				<table id=\"module-footer-right\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_footer_right }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'footer_right\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'footer-right\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n        </table>\r\n\r\n\r\n				<table id=\"module-header-top\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_header_top }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'header_top\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'header-top\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                  </tfoot>\r\n                </table>\r\n				\r\n				<table id=\"module-header-bottom\" class=\"table table-striped table-bordered table-hover\">\r\n                  <thead>\r\n                    <tr>\r\n                      <td class=\"text-center\">{{ text_header_bottom }}</td>\r\n                    </tr>\r\n                  </thead>\r\n                  <tbody>\r\n                    {% for layout_module in layout_modules %}\r\n                    {% if layout_module.position == \'header_bottom\' %}\r\n                    <tr id=\"module-row{{ module_row }}\">\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            {% if extension.code == layout_module.code %}\r\n                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% endif %}\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            {% if module.code == layout_module.code %}\r\n                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\r\n                            {% else %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endif %}\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\r\n                          <input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\r\n                          <div class=\"input-group-btn\"><a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-pencil\"></i></a>\r\n                            <button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\"><i class=\"fa fa fa-minus-circle\"></i></button>\r\n                          </div>\r\n                        </div></td>\r\n                    </tr>\r\n                    {% set module_row = module_row + 1 %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                  </tbody>\r\n                  <tfoot>\r\n                    <tr>\r\n                      <td class=\"text-left\"><div class=\"input-group\">\r\n                          <select class=\"form-control input-sm\">\r\n                            <option value=\"\"></option>\r\n                            {% for extension in extensions %}\r\n                            <optgroup label=\"{{ extension.name }}\">\r\n                            {% if not extension.module %}\r\n                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\r\n                            {% else %}\r\n                            {% for module in extension.module %}\r\n                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\r\n                            {% endfor %}\r\n                            {% endif %}\r\n                            </optgroup>\r\n                            {% endfor %}\r\n                          </select>\r\n                          <div class=\"input-group-btn\">\r\n                            <button type=\"button\" onclick=\"addModule(\'header-bottom\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\"><i class=\"fa fa-plus-circle\"></i></button>\r\n                          \r\n			\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').delegate(\'select[name*=\\\'code\\\']\', \'change\', function() {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom, #module-footer-bottom, #module-footer-top, #module-footer-right, #module-footer-left, #module-header-bottom, #module-header-top\').delegate(\'select[name*=\\\'code\\\']\', \'change\', function() {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').trigger(\'change\');\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom, #module-footer-bottom, #module-footer-top, #module-footer-right, #module-footer-left, #module-header-bottom, #module-header-top\').trigger(\'change\');\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));\r\n		\r\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\r\n			$data[\'footer_bottom\'] = $this->load->controller(\'common/footer_bottom\');\r\n			$data[\'footer_left\'] = $this->load->controller(\'common/footer_left\');\r\n			$data[\'footer_right\'] = $this->load->controller(\'common/footer_right\');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			return $this->load->view(\'common/footer\', $data);\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\r\n			$data[\'footer_bottom\'] = $this->load->controller(\'common/footer_bottom\');\r\n			$data[\'footer_left\'] = $this->load->controller(\'common/footer_left\');\r\n			$data[\'footer_right\'] = $this->load->controller(\'common/footer_right\');\r\n			\r\n			return $this->load->view(\'common/footer\', $data);\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n    $data[\'name\'] = $this->config->get(\'config_name\');\r\n    ]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n    $data[\'name\'] = $this->config->get(\'config_name\');\r\n    $data[\'mytemplate\'] = $this->config->get(\'theme_default_directory\');\r\n    ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$data[\'name\'] = $this->config->get(\'config_name\');\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$data[\'name\'] = $this->config->get(\'config_name\');\r\n			$data[\'mytemplate\'] = $this->config->get(\'theme_default_directory\');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$data[\'return\'] = $this->url->link(\'account/return/add\', \'\', true);\r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', true);\r\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', true);\r\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\');	\r\n			\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			return $this->load->view(\'common/header\', $data);\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			// For page specific css\r\n		if (isset($this->request->get[\'route\'])) {\r\n			if (isset($this->request->get[\'product_id\'])) {\r\n				$class = \'-\' . $this->request->get[\'product_id\'];\r\n			} elseif (isset($this->request->get[\'path\'])) {\r\n				$class = \'-\' . $this->request->get[\'path\'];\r\n			} elseif (isset($this->request->get[\'manufacturer_id\'])) {\r\n				$class = \'-\' . $this->request->get[\'manufacturer_id\'];\r\n			} elseif (isset($this->request->get[\'information_id\'])) {\r\n				$class = \'-\' . $this->request->get[\'information_id\'];\r\n			} else {\r\n				$class = \'\';\r\n			}\r\n\r\n			$data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']) . $class;\r\n			} else {\r\n				$data[\'class\'] = \'common-home\';\r\n			}\r\n			\r\n			$data[\'column_left\'] = $this->load->controller(\'common/column_left\');\r\n			$data[\'column_right\'] = $this->load->controller(\'common/column_right\');	\r\n			$data[\'header_top\'] = $this->load->controller(\'common/header_top\');	\r\n			$data[\'header_bottom\'] = $this->load->controller(\'common/header_bottom\');	\r\n	\r\n			return $this->load->view(\'common/header\', $data);\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/menu.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$this->load->model(\'catalog/product\');\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$this->load->model(\'catalog/product\');\r\n			$type=\"module\";\r\n    	$this->load->model(\'setting/module\');\r\n		$result=$this->model_setting_module->getModule($type);\r\n		foreach($result as $result){\r\n			if($result[\'code\']===\"blogger\"){\r\n				$data[\'blog_enable\'] =1;\r\n			}\r\n		}\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$categories = $this->model_catalog_category->getCategories(0);\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$categories = $this->model_catalog_category->getCategories(0);\r\n			$data[\'home\'] = $this->url->link(\'common/home\');\r\n			$data[\'text_blog\'] = $this->language->get(\'text_blog\');\r\n            $data[\'all_blogs\'] = $this->url->link(\'information/blogger/blogs\');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$children_data[] = array(\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$childs_data = array();\r\n			$child_2 = $this->model_catalog_category->getCategories($child[\'category_id\']);\r\n\r\n			foreach ($child_2 as $childs) {\r\n				$filter_data = array(\r\n					\'filter_category_id\'  => $childs[\'category_id\'],\r\n					\'filter_sub_category\' => true\r\n				);\r\n\r\n				$childs_data[] = array(\r\n					\'name\'  => $childs[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),\r\n					\'href\'  => $this->url->link(\'product/category\', \'path=\' . $category[\'category_id\'] . \'_\' . $child[\'category_id\'] . \'_\' . $childs[\'category_id\'])\r\n				);\r\n			}\r\n				\r\n			$children_data[] = array(\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'name\'  => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'name\'  => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),\r\n			\'childs\' => $childs_data,\r\n			\'column\'   => $child[\'column\'] ? $child[\'column\'] : 1,\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/bestseller.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n				\r\n						if(isset($images[0][\'image\']) && !empty($images)){\r\n						$images = $images[0][\'image\']; \r\n						}else\r\n						{\r\n						$images = $image;\r\n						}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $setting[\'width\'], $setting[\'height\']),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'rating\'      => $rating,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			\'rating\'      => $rating,\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\']),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\'])\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			public function index() {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			public function index($setting) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$this->load->language(\'extension/module/category\');\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$this->load->language(\'extension/module/category\');\r\n			$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/featured.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($product_info[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $setting[\'width\'], $setting[\'height\']),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'rating\'      => $rating,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'percentsaving\' 	 => round((($product_info[\'price\'] - $product_info[\'special\'])/$product_info[\'price\'])*100, 0),\r\n			\'rating\'      => $rating,\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\'])\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\']),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $product_info[\'product_id\'])\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/latest.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $setting[\'width\'], $setting[\'height\']),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'rating\'      => $rating,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			\'rating\'      => $rating,\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\']),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\'])\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/special.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $setting[\'width\'], $setting[\'height\']),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'rating\'      => $rating,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			\'rating\'      => $rating,\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\']),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\'])\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'tax\'         => $tax,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'tax\'         => $tax,\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/compare.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($product_info[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'        => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'        => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_compare_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_compare_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'special\'      => $special,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'special\'      => $special,\r\n			\'percentsaving\' 	 => round((($product_info[\'price\'] - $product_info[\'special\'])/$product_info[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/manufacturer.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'tax\'         => $tax,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'tax\'         => $tax,\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url),\r\n			\'quick\'       => $this->url->link(\'product/quick_view\',\'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/product.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_related_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_related_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'tax\'         => $tax,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'tax\'         => $tax,\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\']),\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\'])\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/search.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'tax\'         => $tax,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'tax\'         => $tax,\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\']),\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/product/special.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n			if(isset($images[0][\'image\']) && !empty($images)){\r\n				$images = $images[0][\'image\']; \r\n			}else{\r\n				$images = $image;\r\n			}\r\n			if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'thumb\'       => $image,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'thumb\'       => $image,\r\n			\'thumb_swap\'  => $this->model_tool_image->resize($images , $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'tax\'         => $tax,\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'tax\'         => $tax,\r\n			\'percentsaving\' 	 => round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0),\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			\'quick\'        => $this->url->link(\'product/quick_view\',\'&product_id=\' . $result[\'product_id\']),\r\n			\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url)\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/en-gb.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'button_compare\']        = \'Compare this Product\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'button_compare\']        = \'Compare this Product\';\r\n            $_[\'button_quickview\']       = \'Quick view\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/checkout/cart.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_items\']     = \'%s item(s) - %s\';\r\n			$_[\'heading_title\'] = \'My cart\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_items\']     = \'<span>%s</span> %s\';\r\n			$_[\'heading_title\'] = \'My cart\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/common/cart.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_items\']     = \'%s item(s) - %s\';\r\n			$_[\'heading_title\'] = \'My cart\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_items\']     = \'<span>%s</span> %s\';\r\n			$_[\'heading_title\'] = \'My cart\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_affiliate\']    = \'Affiliate\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_affiliate\']    = \'Affiliates\';\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_powered\']      = \'Powered By <a href=\"http://www.opencart.com\">OpenCart</a><br /> %s &copy; %s\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_powered\']      = \'Powered By <a href=\"#\">OpenCart</a> %s &copy; %s\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_all\']           = \'Show All\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_all\']           = \'Show All\';\r\n			$_[\'txt_affiliate\']      = \'Affiliate\';\r\n			$_[\'txt_voucher\']        = \'Gift Certificates\';\r\n			$_[\'txt_manufacturer\']   = \'Brands\';\r\n			$_[\'txt_return\']         = \'Returns\';\r\n			$_[\'txt_sitemap\']        = \'Sitemap\';\r\n			$_[\'txt_contact\']        = \'contact Us\';\r\n			$_[\'text_blog\']          = \'Blogs\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/common/menu.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_all\'] = \'Show All\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_all\'] = \'Show All\';\r\n      $_[\'text_home\'] = \'Home\';\r\n      $_[\'txt_affiliate\']      = \'Affiliate\';\r\n      $_[\'txt_voucher\']        = \'Gift Certificates\';\r\n      $_[\'txt_manufacturer\']   = \'Brands\';\r\n      $_[\'txt_return\']         = \'Returns\';\r\n      $_[\'txt_sitemap\']        = \'Sitemap\';\r\n      $_[\'txt_contact\']        = \'contact us\';\r\n			$_[\'text_blog\'] = \'Blogs\';\r\n			$_[\'txt_aboutus\'] = \'about us\';\r\n			\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/category_tab.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'categorytab_heading_title\'] = \'our Categories\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'categorytab_heading_title\'] = \'Top Categories\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/featured.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'heading_title\'] = \'Featured\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'heading_title\'] = \'Featured products\';\r\n			$_[\'sub_title\'] = \'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusemod tempor incididunt\r\n			ut labore et dolore magna aliqua.\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/search.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'text_search\'] = \'Search\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'text_search\'] = \'search keywords....\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/bestseller.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'heading_title\'] = \'Bestsellers\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'heading_title\'] = \'Best selling\';\r\n           $_[\'sub_title\'] = \'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusemod tempor incididunt\r\nut labore et dolore magna aliqua.\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/blogger.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'heading_title\'] = \'latest news\';\r\n      $_[\'sub_title\'] = \'latest blogs\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'heading_title\'] = \'latest blog\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/category_tab.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'category_heading_title\'] = \'Category products\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			 $_[\'category_heading_title\'] = \'Top categories\';\r\n             $_[\'sub_title\'] = \'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusemod tempor incididunt\r\nut labore et dolore magna aliqua.\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/latest.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'heading_title\'] = \'Latest\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'heading_title\'] = \'latest products\';\r\n            $_[\'sub_title\'] = \'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusemod tempor incididunt\r\nut labore et dolore magna aliqua.\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/special.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$_[\'heading_title\'] = \'Specials\';\r\n			]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n			$_[\'heading_title\'] = \'Special Product\';\r\n            $_[\'sub_title\'] = \'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusemod tempor incididunt\r\nut labore et dolore magna aliqua.\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/en-gb/extension/module/newsletter.php\">\r\n        <operation>\r\n         <search><![CDATA[\r\n      $_[\'heading_title\'] = \'Newsletter\';\r\n      $_[\'heading_desc\'] = \'Ipsum is simply dummy text of  printingand  industry. has been the  industrys standard\';\r\n      $_[\'email_button\']       = \'send\';\r\n      ]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n      $_[\'heading_title\'] = \'Connected with our updates and subscribe newsletter !\';\r\n      $_[\'heading_desc\'] = \'You may unsubscribe at any moment.\';\r\n      $_[\'email_button\'] = \'Subscribe\';\r\n      ]]></add>\r\n        </operation>\r\n    </file>\r\n    <!-- Theme background image change from admin panel -->\r\n    <file path=\"admin/view/template/setting/setting.twig\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[\r\n               <div class=\"col-sm-10\"><a href=\"\" id=\"thumb-logo\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ logo }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\r\n              ]]></search>\r\n            <add position=\"after\" offset=\"3\"><![CDATA[\r\n              <div class=\"form-group\">\r\n                <label class=\"col-sm-2 control-label\" for=\"input-icon\">{{ entry_background_image }}</label>\r\n                <div class=\"col-sm-10\"><a href=\"\" id=\"thumb-background-image\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ background_image }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\r\n                  <input type=\"hidden\" name=\"config_background_image\" value=\"{{ config_background_image }}\" id=\"input-background-image\" /><strong>{{ text_background_positon }}</strong>\r\n                  <select  name=\"config_background_image_position\">\r\n                    <option value=\"\">------</option>\r\n                    {% for key,value in entry_background_positon %}\r\n                        <option value=\"{{ key }}\" {{ config_background_image_position == key  ? \'selected\' : \'\' }}>{{ value }}</option>\r\n                    {% endfor %}\r\n                </select>\r\n                <span class=\"text-success\"></span>\r\n                </div>\r\n            </div> \r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/controller/setting/setting.php\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[$this->load->language(\'setting/setting\');]]></search>\r\n            <add position=\"after\"><![CDATA[$data[\'entry_background_image\'] = $this->language->get(\'entry_background_image\');\r\n            $data[\'text_background_positon\'] = $this->language->get(\'text_background_positon\');\r\n            $data[\'entry_background_positon\'] = $this->language->get(\'entry_background_positon\');\r\n            $data[\'text_like_extension\'] = $this->language->get(\'text_like_extension\');]]></add>\r\n        </operation>\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[\r\n          if (isset($this->request->post[\'config_icon\'])) {\r\n          ]]></search>\r\n            <add position=\"before\"><![CDATA[if (isset($this->request->post[\'config_background_image_position\'])) {\r\n            $data[\'config_background_image_position\'] = $this->request->post[\'config_background_image_position\'];\r\n        } else {\r\n            $data[\'config_background_image_position\'] = $this->config->get(\'config_background_image_position\');\r\n        }\r\n\r\n        if (isset($this->request->post[\'config_background_image\'])) {\r\n            $data[\'config_background_image\'] = $this->request->post[\'config_background_image\'];\r\n        } else {\r\n            $data[\'config_background_image\'] = $this->config->get(\'config_background_image\');\r\n        }\r\n\r\n        if (isset($this->request->post[\'background_image\']) && is_file(DIR_IMAGE . $this->request->post[\'background_image\'])) {\r\n            $data[\'background_image\'] = $this->model_tool_image->resize($this->request->post[\'config_logo\'], 100, 100);\r\n        } elseif ($this->config->get(\'config_background_image\') && is_file(DIR_IMAGE . $this->config->get(\'config_background_image\'))) {\r\n            $data[\'background_image\'] = $this->model_tool_image->resize($this->config->get(\'config_background_image\'), 100, 100);\r\n        } else {\r\n            $data[\'background_image\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\r\n        }]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/language/*/setting/setting.php\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[<?php]]></search>\r\n            <add position=\"after\"><![CDATA[$_[\'entry_background_image\']= \'Theme Background Image\';\r\n            $_[\'text_background_positon\']           = \'Background Property:\';\r\n            $_[\'entry_background_positon\']          = array(\r\n            \'fixed\' => \'fixed\',\r\n\r\n            \'cover\' => \'cover\', );\r\n      ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[$this->load->language(\'common/header\');]]></search>\r\n            <add position=\"before\"><![CDATA[if (is_file(DIR_IMAGE . $this->config->get(\'config_background_image\'))) {\r\n            $data[\'background_image\'] = $server . \'image/\' . $this->config->get(\'config_background_image\');\r\n            } else {\r\n                $data[\'background_image\'] = \'\';\r\n            }\r\n            if ($this->config->get(\'config_background_image_position\')) {\r\n                $data[\'config_background_image_position\'] = $this->config->get(\'config_background_image_position\');\r\n            } else {\r\n                $data[\'config_background_image_position\'] = \'\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[</head>]]></search>\r\n            <add position=\"before\"><![CDATA[<style type=\"text/css\">\r\n              body{\r\n                background:url(\'{{ background_image }}\') no-repeat center!important;\r\n               {% if config_background_image_position == \'fixed\' %}\r\n                background-attachment: {{ config_background_image_position }} !important;\r\n                background-size: cover !important;\r\n                {% endif %}\r\n                {% if config_background_image_position == \'cover\'  %}\r\n                -webkit-background-size: {{ config_background_image_position }} !important; \r\n                -moz-background-size: {{ config_background_image_position }} !important;\r\n                -o-background-size: {{ config_background_image_position }} !important;\r\n                background-size: {{ config_background_image_position }} !important;\r\n                {% endif %}\r\n              }\r\n            </style>\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2019-12-11 20:23:18');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(107, 110, 'productslidergrid-option', 'productslidergrid-option', 'Thementic', '3.x', '', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n    <name>productslidergrid-option</name>\r\n    <code>productslidergrid-option</code>\r\n    <version>3.x</version>\r\n    <author>Thementic</author>\r\n \r\n    <!--slider/grid -->\r\n	   <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n	        <operation error=\"skip\">\r\n			<search><![CDATA[</head>]]></search>\r\n			 <add position=\"before\"><![CDATA[\r\n			 <link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/javascript/jquery/slick/slick.css\" />\r\n			<link rel=\"stylesheet\" type=\"text/css\" href=\"catalog/view/javascript/jquery/slick/slick-theme.css\" />\r\n			 <script  type=\"text/javascript\" src=\"catalog/view/javascript/jquery/slick/slick.js\"></script>]]></add> \r\n			</operation>\r\n    </file>\r\n	\r\n	 <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n	  <operation>\r\n	  	<search><![CDATA[</head>]]></search>\r\n		\r\n		 <add position=\"before\"><![CDATA[\r\n		 <script  type=\"text/javascript\">\r\n		 function leftslider(){    \r\n  // slick carousel\r\n			 if ($(window).width() >=980)  {\r\n			 $(\'#column-left .product-carousel,#column-right .product-carousel\').not(\'.slick-initialized\').slick({\r\n				dots: false,\r\n				arrows: true,\r\n				infinite: false,\r\n				slidesPerRow: 1,\r\n				rows: 3,\r\n			  \r\n			});\r\n			 }\r\n			 \r\n			if ($(window).width() < 980)  {\r\n			  var lrcolumn = jQuery(\"#column-left .product-carousel,#column-right .product-carousel\");\r\n				lrcolumn.owlCarousel({\r\n									 slideBy: 2,\r\n				});\r\n			\r\n			 }\r\n			}\r\n			\r\n			jQuery(window).load(function() {\r\n					leftslider()\r\n				});\r\n				jQuery(window).resize(function() {\r\n					leftslider()\r\n				}); </script>]]></add>\r\n	\r\n	</operation>\r\n    </file>\r\n	\r\n    <file path=\"admin/controller/extension/module/{featured,special,latest,bestseller,category_tab}*.php\">\r\n        <operation>\r\n            <search><![CDATA[ if (isset($this->request->post[\'status\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n	     if (isset($this->request->post[\'grid\'])) {\r\n			$data[\'grid\'] = $this->request->post[\'grid\'];\r\n		} elseif (!empty($module_info)) {\r\n			$data[\'grid\'] = $module_info[\'grid\'];\r\n		} else {\r\n			$data[\'grid\'] = \'\';\r\n		}	\r\n		]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/language/*/extension/module/{featured,special,latest,bestseller,category_tab}*.php\">\r\n        <operation>\r\n            <search><![CDATA[ $_[\'entry_height\']     = \'Height\'; ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n	$_[\'entry_status\']     = \'Status\';\r\n    $_[\'entry_grid\']     = \'Slider/Grid\';\r\n	$_[\'text_grid\']                     = \'Grid\';\r\n    $_[\'text_slider\']                   = \'Slider\';\r\n	$_[\'text_noteinfo\']                = \'Note:Slider is working if \"Number of product\" is set more than 4.\';\r\n	]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/language/*/en-gb.php\">\r\n        <operation>\r\n            <search><![CDATA[ $_[\'text_disabled\']                 = \'Disabled\'; ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n		$_[\'text_grid\']                     = \'Grid\';\r\n        $_[\'text_slider\']                   = \'Slider\';\r\n       ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/view/template/extension/module/{featured,special,latest,bestseller,category_tab}*.twig\">\r\n        <operation>\r\n            <search><![CDATA[</form>]]></search>\r\n            <add position=\"before\"><![CDATA[  \r\n		   <div class=\"form-group\">\r\n           <label class=\"col-sm-2 control-label\" for=\"input-grid\">{{ entry_grid }}</label>\r\n            <div class=\"col-sm-10\">\r\n               <select name=\"grid\" id=\"input-grid\" class=\"form-control\">\r\n              {% if grid %}\r\n                  <option value=\"1\" selected=\"selected\">{{ text_grid }}</option>\r\n                  <option value=\"0\">{{ text_slider }}</option>\r\n              {% else %}\r\n                  <option value=\"1\">{{ text_grid }}</option>\r\n                  <option value=\"0\" selected=\"selected\">{{ text_slider }}</option>\r\n              {% endif %}\r\n               </select>\r\n            </div>\r\n			<label class=\"col-sm-2 control-label\" for=\"input-status\"></label>\r\n            <span class=\"col-sm-10\" style=\"padding-top:10px;font-style: italic;color: #959595;\">{{text_noteinfo}}</span>\r\n\r\n          </div>]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/{featured,special,latest,bestseller}*.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'] = array();]]></search>\r\n            <add position=\"after\"><![CDATA[ $data[\'grid\'] = $setting[\'grid\']; \r\n		  ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	 <file path=\"catalog/controller/extension/module/category_tab.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'setting\'] = $setting;]]></search>\r\n            <add position=\"after\"><![CDATA[ $data[\'grid\'] = $setting[\'grid\']; \r\n      ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	 <file path=\"catalog/view/theme/*/template/extension/module/{featured,special,latest,bestseller}*.twig\"> \r\n	 <operation>\r\n            <search><![CDATA[{% if productCount >= sliderFor %}]]></search>\r\n            <add position=\"replace\"><![CDATA[{% if productCount >= sliderFor and grid != 1 %}]]></add>\r\n        </operation> \r\n	 </file>\r\n	\r\n    <file path=\"catalog/view/theme/*/template/extension/module/featured.twig\">\r\n        <operation>\r\n            <search><![CDATA[ {% set productCount = products|length %} ]]></search>\r\n            <add position=\"after\"><![CDATA[ {% if grid == 1 %}\r\n		 {% set set1 = products|batch(1, \'No item\')%}\r\n		 {% else %}\r\n		 {% set set1 = products|batch(2, \'No item\')%}\r\n		 {% endif %}\r\n		  ]]></add>\r\n        </operation>\r\n        \r\n        <operation>\r\n            <search><![CDATA[{% for row in products|batch(2, \'No item\') %}]]></search>\r\n            <add position=\"replace\"><![CDATA[{% for row in set1 %}]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<file path=\"catalog/view/theme/*/template/extension/module/category_tab.twig\"> \r\n   <operation>\r\n            <search><![CDATA[<div class=\"owl-carousel owl-demo-tabcate\">]]></search>\r\n            <add position=\"replace\"><![CDATA[<div class=\"{% if grid == 0 %}owl-carousel owl-demo-tabcate{% else %}categorytab-grid{% endif %}\">]]></add>\r\n  </operation> \r\n  <operation>\r\n            <search><![CDATA[<div class=\"product-block-wrapper\">]]></search>\r\n            <add position=\"replace\"><![CDATA[<div class=\"{% if grid == 0 %} categorytab-slider {% else %}categorytab-grid col-lg-3 col-md-4 col-sm-4 col-xs-6 {% endif %} \">]]></add>\r\n  </operation> \r\n   </file>\r\n  \r\n</modification>', 1, '2019-12-11 21:19:08'),
(108, 111, 'Pavo Megamenu', 'pavmegamenu', 'pavothemes', '1.0.0', 'http://www.pavothemes.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Pavo Megamenu</name>\r\n	<code>pavmegamenu</code>\r\n	<version>1.0.0</version>\r\n	<author>pavothemes</author>\r\n	<link>http://www.pavothemes.com</link>\r\n   \r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[// Catalog]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                // pavmegamenu language file\r\n                $this->load->language(\'extension/module/pavmegamenu\');\r\n\r\n                // pavmegamenu Settings menu\r\n                $settings = array();\r\n                // view settings panel\r\n                if ( $this->user->hasPermission( \'access\', \'extension/module/pavmegamenu\' ) ) {\r\n                    $settings[] = array(\r\n                        \'name\'     => $this->language->get(\'text_megamenu_menus\'),\r\n                        \'href\'     => $this->url->link(\'extension/module/pavmegamenu\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                        \'children\' => array()\r\n                    );\r\n                }\r\n\r\n                if ( $settings ) {\r\n                    $data[\'menus\'][] = array(\r\n                        \'id\'       => \'pavmegamenu\',\r\n                        \'icon\'     => \'fa fa-bars\',\r\n                        \'name\'     => $this->language->get( \'text_megamenu_menus\' ),\r\n                        \'href\'     => \'\',\r\n                        \'children\' => $settings\r\n                    );\r\n                }\r\n                // End pavmegamenu Settings menu\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    \r\n</modification>', 0, '2020-07-27 02:48:57'),
(109, 114, 'Options Description', 'options_description_extension_bazaar', 'Extensions Bazaar', '1.0', '', '<modification>\r\n	<name>Options Description</name>\r\n	<version>1.0</version>\r\n	<code>options_description_extension_bazaar</code>\r\n	<author>Extensions Bazaar</author>\r\n	\r\n	<file path=\"catalog/model/catalog/product.php\">\r\n	  <operation>\r\n		 <search><![CDATA[\'name\'                 => $product_option[\'name\'],]]></search>\r\n		 <add position=\"before\"><![CDATA[\r\n			\'description\'          => html_entity_decode($product_option[\'description\'], ENT_QUOTES, \'UTF-8\'),\r\n		]]></add>\r\n	  </operation>\r\n	  <operation>\r\n		 <search><![CDATA[public function getProductDiscounts]]></search>\r\n		 <add position=\"before\"><![CDATA[\r\n			public function createoptiondescriptiontable(){\r\n				$query = $this->db->query(\"SHOW COLUMNS FROM `\" . DB_PREFIX . \"option_description` LIKE \'description\'\");\r\n				if(!$query->num_rows){\r\n					$this->db->query(\"ALTER TABLE `\" . DB_PREFIX . \"option_description` ADD `description` text NOT NULL AFTER `name`\");\r\n				}\r\n			}\r\n		]]></add>\r\n	  </operation>\r\n	  <operation>\r\n		 <search><![CDATA[public function getProduct($product_id) {]]></search>\r\n		 <add position=\"after\"><![CDATA[\r\n			$this->createoptiondescriptiontable();\r\n		]]></add>\r\n	  </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n	  <operation>\r\n		<search><![CDATA[\'name\'                 => $option[\'name\'],]]></search>\r\n		<add position=\"before\"><![CDATA[\'description\'          => html_entity_decode($option[\'description\'], ENT_QUOTES, \'UTF-8\'),\r\n		\'description_status\'          => strip_tags($option[\'description\']),\r\n		]]></add>\r\n	  </operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\r\n		<operation>\r\n			<search><![CDATA[{% for option in options %}]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				{% if option[\'description_status\'] %}\r\n					<div id=\"optiondescription{{ option[\'product_option_id\'] }}\" class=\"modal fade\" role=\"dialog\">\r\n					  <div class=\"modal-dialog\">\r\n						<div class=\"modal-content\">\r\n						  <div class=\"modal-body\">\r\n							<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n							<p>{{ option[\'description\'] }}</p>\r\n						  </div>\r\n						</div>\r\n					  </div>\r\n					</div>\r\n				{% endif %}\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[{{ option.name }}</label>]]></search>\r\n			<add position=\"replace\"><![CDATA[{% if option[\'description_status\']!=\'\'%} <a style=\"cursor: pointer;\" data-toggle=\"modal\" data-target=\"#optiondescription{{ option[\'product_option_id\'] }}\">{{ option[\'name\'] }} <i class=\"fa fa-question-circle\"></i></a> {% else %} {{option[\'name\']}} {% endif %} </label>]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/option_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-sort-order\">]]></search>\r\n			<add position=\"before\" offset=\"1\"><![CDATA[\r\n				 <div class=\"form-group\">\r\n			<label class=\"col-sm-2 control-label\" for=\"input-description\">Description</label>\r\n			<div class=\"col-sm-10\">\r\n			 <ul class=\"nav nav-tabs\" id=\"language\">\r\n				{% for language in languages %}\r\n                <li><a href=\"#language{{ language.language_id }}\" data-toggle=\"tab\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /> {{ language.name }}</a></li>\r\n                {% endfor %}\r\n			  </ul>\r\n			   <div class=\"tab-content\">\r\n			   {% for language in languages %}\r\n			    <div class=\"tab-pane\" id=\"language{{ language.language_id }}\">\r\n					<textarea name=\"option_description[{{ language.language_id }}][description]\" data-toggle=\"summernote\" data-lang=\"{{ summernote }}\" class=\"form-control summernote\">{{ option_description[language.language_id] ? option_description[language.language_id].description }}</textarea>\r\n				</div>\r\n				 {% endfor %}\r\n			  </div>\r\n			</div>\r\n		  </div>\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[{{ footer }}]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				 <link href=\"view/javascript/codemirror/lib/codemirror.css\" rel=\"stylesheet\" />\r\n				  <link href=\"view/javascript/codemirror/theme/monokai.css\" rel=\"stylesheet\" />\r\n				  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/codemirror.js\"></script> \r\n				  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/xml.js\"></script> \r\n				  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/formatting.js\"></script> \r\n				  \r\n				  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote.js\"></script>\r\n				  <link href=\"view/javascript/summernote/summernote.css\" rel=\"stylesheet\" />\r\n				  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote-image-attributes.js\"></script>\r\n				  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script>\r\n					<script type=\"text/javascript\"><!--\r\n						$(\'#language a:first\').tab(\'show\');  \r\n					//--></script>\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/catalog/option.php\">\r\n		<operation>\r\n			<search><![CDATA[public function getTotalOptions() {]]></search>\r\n			<add position=\"after\"><![CDATA[$this->createtable();]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[public function getTotalOptions() {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				public function createtable(){\r\n					$this->db->query(\"CREATE TABLE IF NOT EXISTS `\" . DB_PREFIX .\"product_option_value_data` (`product_option_value_data_id` int(11) NOT NULL AUTO_INCREMENT, `product_option_value_id` INT(11) NOT NULL,`product_id` INT(11) NOT NULL, `image` varchar(255) NOT NULL,`model` varchar(255) NOT NULL,`sku` varchar(255) NOT NULL, PRIMARY KEY(`product_option_value_data_id`))\");\r\n		\r\n					$query = $this->db->query(\"SHOW COLUMNS FROM `\" . DB_PREFIX . \"option_description` LIKE \'description\'\");\r\n					if(!$query->num_rows){\r\n						$this->db->query(\"ALTER TABLE `\" . DB_PREFIX . \"option_description` ADD `description` text NOT NULL AFTER `name`\");\r\n					}\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[name = \'\" . $this->db->escape($value[\'name\']) . \"\']]></search>\r\n			<add position=\"replace\"><![CDATA[name = \'\" . $this->db->escape($value[\'name\']) . \"\',description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\'name\' => $result[\'name\']]]></search>\r\n			<add position=\"replace\"><![CDATA[\'name\' => $result[\'name\'],\'description\' => $result[\'description\']]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2020-08-02 10:51:29'),
(113, 118, 'Product Contact Form', 'cl_product_contact_form', 'Veselin Totev, Corllete Ltd.', '1.0', 'http://www.corllete.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Product Contact Form</name>\n  <version>1.0</version>\n  <author>Veselin Totev, Corllete Ltd.</author>\n  <code>cl_product_contact_form</code>\n  <link>http://www.corllete.com</link>\n  <file path=\"catalog/controller/product/product.php\">\n    <operation>\n      <search position=\"after\"><![CDATA[\n			$data[\'heading_title\'] = $product_info[\'name\'];\n            ]]></search>\n      <add><![CDATA[\n      $this->load->language(\'extension/module/claskquestion\');\n			//Get customer data\n			$data[\'name\']         = $this->customer->getFirstName() . \' \' . $this->customer->getLastName();\n			$data[\'email\']        = $this->customer->getEmail();\n			$data[\'phone\']        = $this->customer->getTelephone();\n			//Get product data\n			$data[\'product_url\']  = $actual_link = (isset($_SERVER[\'HTTPS\']) && $_SERVER[\'HTTPS\'] === \'on\' ? \"https\" : \"http\") . \"://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]\";\n			$data[\'product_name\'] = $product_info[\'name\'];\n          ]]></add>\n    </operation>\n  </file>\n\n  <file path=\"catalog/view/theme/*/template/product/product.twig\">\n    <operation>\n      <search><![CDATA[\n            {% if options %}\n            ]]></search>\n      <add position=\"before\"><![CDATA[\n        <a class=\"btn btn-primary btn-block\" role=\"button\" data-toggle=\"collapse\" href=\"#collapseAskaQ\" aria-expanded=\"false\" aria-controls=\"collapseAskaQ\">\n          {{ text_cl_title }}\n        </a>\n        <div class=\"collapse\" id=\"collapseAskaQ\">\n          <form style=\"margin-top: 15px; margin-bottom: 15px;\" method=\"post\" id=\"form-questions\">\n            <fieldset>\n              <div class=\"form-group required\">\n                <label class=\"control-label\" for=\"input-name\">{{ text_cl_name }}</label>\n                <input type=\"text\" name=\"name\" value=\"{{ name }}\" id=\"input-name\" class=\"form-control\" />\n              </div>\n              <div class=\"form-group required\">\n                <label class=\"control-label\" for=\"input-phone\">{{ text_cl_telephone }}</label>\n                <input type=\"text\" name=\"phone\" value=\"{{ phone }}\" id=\"input-phone\" class=\"form-control\" />\n              </div>\n              <div class=\"form-group required\">\n                <label class=\"control-label\" for=\"input-email\">{{ text_cl_email }}</label>\n                <input type=\"text\" name=\"email\" value=\"{{ email }}\" id=\"input-email\" class=\"form-control\" />\n              </div>\n              <div class=\"form-group required\">\n                <label class=\"control-label\" for=\"input-questions\">{{ text_cl_ask }}</label>\n                <textarea name=\"questions\" rows=\"10\" id=\"input-questions\" class=\"form-control\"></textarea>\n              </div>\n              <input type=\"hidden\" name=\"prod_id\" value=\"{{ product_id }}\" />\n              <input type=\"hidden\" name=\"prod_name\" value=\"{{ product_name }}\" />\n              <input type=\"hidden\" name=\"prod_url\" value=\"{{ product_url }}\" />\n            </fieldset>\n            <p class=\"help-block\"><span style=\"color:red;\">*</span> {{ text_cl_required_help }}</p>\n            <div style=\"text-align: center\">\n              <button id=\"button-questions\" type=\"button\" class=\"btn btn-primary\">{{ text_cl_submit }}</button>\n            </div>\n          </form>\n          <script type=\"text/javascript\"><!--\n            $(\'#button-questions\').on(\'click\', function() {\n              $.ajax({\n                url: \'index.php?route=extension/module/claskquestion/send\',\n                type: \'post\',\n                dataType: \'json\',\n                data: $(\"#form-questions\").serialize(),\n                beforeSend: function() {\n                  $(\'#button-questions\').button(\'loading\');\n                },\n                complete: function() {\n                  $(\'#button-questions\').button(\'reset\');\n                },\n                success: function(json) {\n                  if (json[\'error\']) {\n                    $(\'#collapseAskaQ\').before(\'<div class=\"alert alert-dismissible alert-danger\"><i class=\"fa fa-exclamation-circle pull-left\"></i> \' + json[\'error\'] + \'</div>\');\n                  }\n                  if (json[\'success\']) {\n                    $(\'#collapseAskaQ\').before(\'<div class=\"alert alert-dismissible alert-success\"><i class=\"fa fa-check-circle pull-left\"></i> \' + json[\'success\'] + \'</div>\');\n                    $(\'input[name=\\\'name\\\']\').val(\'\');\n                    $(\'input[name=\\\'phone\\\']\').val(\'\');\n                    $(\'input[name=\\\'email\\\']\').val(\'\');\n                    $(\'textarea[name=\\\'questions\\\']\').val(\'\');\n                  }\n                }\n              });\n            });\n            //--></script>\n        </div>\n              ]]></add>\n    </operation>\n  </file>\n</modification>', 1, '2020-08-02 11:31:49'),
(114, 120, 'Qty added should be multiple of minimum (cartbinder@gmail.com)', 'qasbmom', 'CertBinder', '2.01', 'https://www.cartbinder.com/', '<modification>\r\n<name>Qty added should be multiple of minimum (cartbinder@gmail.com)</name>\r\n<version>2.01</version>\r\n<link>https://www.cartbinder.com/</link>\r\n<author>CertBinder</author>\r\n<code>qasbmom</code>\r\n<file path=\"catalog/model/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[return array(]]></search>\r\n      <add position=\"before\">\r\n        <![CDATA[\r\n        $qtyquery = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"product_minqty WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n        if($qtyquery->num_rows) {\r\n          $multipleminimumqty =  $qtyquery->row[\'multipleminimumqty\'];\r\n        } else {\r\n          $multipleminimumqty = 0;\r\n        }\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[return array(]]></search>\r\n      <add position=\"after\">\r\n        <![CDATA[\'multipleminimumqty\'  => $multipleminimumqty,]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n   <file path=\"system/library/cart/cart.php\">\r\n    <operation>\r\n      <search><![CDATA[$product_data[] = array(]]></search>\r\n      <add position=\"before\">\r\n        <![CDATA[\r\n        $qtyquery = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"product_minqty WHERE product_id = \'\" . (int)$cart[\'product_id\'] . \"\'\");\r\n        if($qtyquery->num_rows) {\r\n          $multipleminimumqty =  $qtyquery->row[\'multipleminimumqty\'];\r\n        } else {\r\n          $multipleminimumqty = 0;\r\n        }\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[$product_data[] = array(]]></search>\r\n      <add position=\"after\">\r\n        <![CDATA[\'multipleminimumqty\'      => $multipleminimumqty,]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n<file path=\"admin/controller/catalog/product.php\">\r\n  <operation>\r\n    <search><![CDATA[if (isset($this->request->post[\'price\'])) {]]>\r\n    </search>\r\n    <add position=\"before\"><![CDATA[\r\n      if (isset($this->request->post[\'multipleminimumqty\'])) {\r\n        $data[\'multipleminimumqty\'] = $this->request->post[\'multipleminimumqty\'];\r\n      } elseif (!empty($product_info)) {\r\n        $data[\'multipleminimumqty\'] = $this->model_catalog_product->getMinimumQty($this->request->get[\'product_id\']);\r\n      } else {\r\n        $data[\'multipleminimumqty\'] = 1;\r\n      }\r\n      ]]>\r\n    </add>\r\n  </operation>\r\n  </file>\r\n  <file path=\"admin/model/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[if (isset($data[\'product_store\'])) {]]>\r\n      </search>\r\n      <add position=\"before\"><![CDATA[\r\n        $this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_minqty WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_minqty SET  multipleminimumqty = \'\" . (int)$data[\'multipleminimumqty\'] . \"\', product_id = \'\" . (int)$product_id . \"\'\");\r\n    ]]></add>\r\n    </operation>\r\n     <operation>\r\n      <search><![CDATA[public function getProducts($data = array()) {]]>\r\n      </search>\r\n      <add position=\"after\"><![CDATA[\r\n         if ($this->db->query(\"SHOW TABLES LIKE \'\". DB_PREFIX .\"product_minqty\'\")->num_rows == 0) {\r\n              $sql = \"CREATE TABLE IF NOT EXISTS `\" . DB_PREFIX . \"product_minqty` (\r\n               `product_id` int(11) NOT NULL,\r\n               `multipleminimumqty` int(11) NOT NULL,\r\n                PRIMARY KEY (`product_id`,`multipleminimumqty`)\r\n                ) ENGINE=MyISAM COLLATE=utf8_general_ci\";\r\n              $this->db->query($sql);\r\n          }\r\n    ]]></add>\r\n    </operation>\r\n     <operation>\r\n      <search><![CDATA[public function getProducts($data = array()) {]]>\r\n      </search>\r\n      <add position=\"before\"><![CDATA[\r\n         public function getMinimumQty($product_id) {\r\n          $query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"product_minqty WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n            if($query->num_rows) {\r\n              return $query->row[\'multipleminimumqty\'];\r\n            } else {\r\n              return 0;\r\n            }\r\n        }\r\n    ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/view/template/catalog/product_form.twig\">\r\n    <operation>\r\n      <search><![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-subtract\">{{ entry_subtract }}</label>]]>\r\n      </search>\r\n      <add position=\"before\"><![CDATA[\r\n          <label class=\"col-sm-2 control-label\">Multiple Minimum Qty</label>\r\n          <div class=\"col-sm-10\">\r\n            <label class=\"radio-inline\">\r\n              {% if (multipleminimumqty) %} \r\n              <input type=\"radio\" name=\"multipleminimumqty\" value=\"1\" checked=\"checked\" />\r\n              {{ text_yes }} \r\n              {% else %} \r\n              <input type=\"radio\" name=\"multipleminimumqty\" value=\"1\" />\r\n              {{ text_yes }} \r\n              {% endif %} \r\n            </label>\r\n            <label class=\"radio-inline\">\r\n              {% if (not multipleminimumqty) %} \r\n              <input type=\"radio\" name=\"multipleminimumqty\" value=\"0\" checked=\"checked\" />\r\n              {{ text_no }} \r\n              {% else %} \r\n              <input type=\"radio\" name=\"multipleminimumqty\" value=\"0\" />\r\n              {{ text_no }} \r\n              {% endif %} \r\n            </label>\r\n          </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n <file path=\"catalog/controller/checkout/cart.php\">\r\n     <operation>\r\n      <search><![CDATA[if ($product[\'image\']) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        if($product[\'multipleminimumqty\']) {\r\n          $temp = $product_total/$product[\'minimum\'];\r\n        if(!is_int($temp)) {\r\n          $data[\'error_warning\'] = sprintf($this->language->get(\'error_minimum_multiple\'), $product[\'name\'], $product[\'minimum\']);\r\n        }\r\n        }\r\n  ]]></add>\r\n    </operation>\r\n     <operation>\r\n      <search><![CDATA[$quantity = (int)$this->request->post[\'quantity\'];]]></search>\r\n      <add position=\"replace\"><![CDATA[\r\n        if($product_info[\'multipleminimumqty\']) {\r\n          if($this->request->post[\'quantity\'] == $product_info[\'minimum\']){\r\n            $quantity =  $this->request->post[\'quantity\']; \r\n          } else {\r\n            if ($product_info[\'minimum\'] != 0 && ($this->request->post[\'quantity\'] % $product_info[\'minimum\'] <> 0)) { $temp = floor($this->request->post[\'quantity\']/$product_info[\'minimum\']); $quantity = $temp * $product_info[\'minimum\'] + $product_info[\'minimum\']; } else { $quantity = (int)$this->request->post[\'quantity\']; }\r\n          }\r\n        } else {\r\n          $quantity = (int)$this->request->post[\'quantity\'];\r\n        }\r\n  ]]></add>\r\n    </operation>\r\n  </file>  \r\n   <file path=\"catalog/controller/checkout/checkout.php\">\r\n     <operation>\r\n      <search><![CDATA[if ($product[\'minimum\'] > $product_total) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n         if($product[\'multipleminimumqty\'] && $product[\'minimum\']) {\r\n      $temp = $product_total/$product[\'minimum\'];\r\n      if(!is_int($temp)) {\r\n        $this->response->redirect($this->url->link(\'checkout/cart\'));\r\n      }\r\n      }\r\n  ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"catalog/language/*/checkout/cart.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'error_minimum\']]]>\r\n      </search>\r\n      <add position=\"before\"><![CDATA[$_[\'error_minimum_multiple\']   = \'Minimum order amount for %s should be in multiple of %s!\';]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2020-10-17 01:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Carousel-HomePage', 'carousel', '{\"name\":\"Carousel-HomePage\",\"banner_id\":\"8\",\"width\":\"117\",\"height\":\"94\",\"status\":\"1\"}'),
(27, ' Slideshow-HomePage', 'slideshow', '{\"name\":\" Slideshow-HomePage\",\"banner_id\":\"7\",\"width\":\"1903\",\"height\":\"812\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, ' Left Banner', 'banner', '{\"name\":\" Left Banner\",\"banner_id\":\"9\",\"width\":\"278\",\"height\":\"320\",\"status\":\"1\"}'),
(90, 'Service CMS', 'html', '{\"name\":\"Service CMS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pst_serviceblock&quot; class=&quot;pst_serviceblock-block link-block&quot;&gt;\\r\\n  &lt;h5&gt;services&lt;\\/h5&gt;\\r\\n\\r\\n   &lt;ul class=&quot;pst-service-wrapper&quot;&gt;\\r\\n      &lt;li class=&quot;pst-service-item  col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n         &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n            &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n               &lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;service-right&quot;&gt;\\r\\n              &lt;span class=&quot;pst-service-title&quot;&gt;Free shipping &lt;\\/span&gt;\\r\\n               &lt;span class=&quot;pst-service-desc&quot;&gt;on order over $90&lt;\\/span&gt;\\r\\n           \\r\\n           &lt;\\/div&gt;\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/li&gt;\\r\\n      &lt;li class=&quot;pst-service-item  col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n         &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n            &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n               &lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;service-right&quot;&gt;\\r\\n              &lt;span class=&quot;pst-service-title&quot;&gt;Online support&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;pst-service-desc&quot;&gt;Hours : 8AM-11PM&lt;\\/span&gt;\\r\\n           &lt;\\/div&gt;\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/li&gt;\\r\\n     &lt;li class=&quot;pst-service-item col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                  &lt;div class=&quot;service-right&quot;&gt;\\r\\n                    &lt;span class=&quot;pst-service-title&quot;&gt;money back&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;pst-service-desc&quot;&gt; gurantee in 7 days&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;\\/li&gt;\\r\\n               &lt;li class=&quot;pst-service-item col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                  &lt;div class=&quot;service-right&quot;&gt;\\r\\n                    &lt;span class=&quot;pst-service-title&quot;&gt;special gift &lt;\\/span&gt;\\r\\n                     &lt;span class=&quot;pst-service-desc&quot;&gt;weekly special offers&lt;\\/span&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n\\t\\t\\t   &lt;\\/li&gt;\\r\\n   &lt;\\/ul&gt;\\r\\n\\r\\n  &lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pst_serviceblock&quot; class=&quot;pst_serviceblock-block link-block&quot;&gt;\\r\\n  &lt;h5&gt;services&lt;\\/h5&gt;\\r\\n\\r\\n   &lt;ul class=&quot;pst-service-wrapper&quot;&gt;\\r\\n      &lt;li class=&quot;pst-service-item  col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n         &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n            &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n               &lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;service-right&quot;&gt;\\r\\n              &lt;span class=&quot;pst-service-title&quot;&gt;Free shipping &lt;\\/span&gt;\\r\\n               &lt;span class=&quot;pst-service-desc&quot;&gt;on order over $90&lt;\\/span&gt;\\r\\n           \\r\\n           &lt;\\/div&gt;\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/li&gt;\\r\\n      &lt;li class=&quot;pst-service-item  col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n         &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n            &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n               &lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;service-right&quot;&gt;\\r\\n              &lt;span class=&quot;pst-service-title&quot;&gt;Online support&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;pst-service-desc&quot;&gt;Hours : 8AM-11PM&lt;\\/span&gt;\\r\\n           &lt;\\/div&gt;\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/li&gt;\\r\\n     &lt;li class=&quot;pst-service-item col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                  &lt;div class=&quot;service-right&quot;&gt;\\r\\n                    &lt;span class=&quot;pst-service-title&quot;&gt;money back&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;pst-service-desc&quot;&gt; gurantee in 7 days&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;\\/li&gt;\\r\\n               &lt;li class=&quot;pst-service-item col-xs-12 col-sm-6 col-md-3 col-lg-3&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-service-inner&quot;&gt;\\r\\n                  &lt;div class=&quot;pst-image-block&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;span class=&quot;pst-image-icon&quot;&gt;&amp;nbsp;&lt;\\/span&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                  &lt;div class=&quot;service-right&quot;&gt;\\r\\n                    &lt;span class=&quot;pst-service-title&quot;&gt;special gift &lt;\\/span&gt;\\r\\n                     &lt;span class=&quot;pst-service-desc&quot;&gt;weekly special offers&lt;\\/span&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n\\t\\t\\t   &lt;\\/li&gt;\\r\\n   &lt;\\/ul&gt;\\r\\n\\r\\n  &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(35, 'Footer Social CMS ', 'html', '{\"name\":\"Footer Social CMS \",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;social-cms&quot;&gt;\\r\\n\\r\\n    &lt;ul class=&quot;social&quot;&gt; \\r\\n        &lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;Facebook&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;Twitter&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;Youtube&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;pinterest&quot;&gt;&lt;a href=&quot;#&quot;&gt;Pinterest&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;Instagram&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n    &lt;\\/ul&gt; \\r\\n&lt;\\/div&gt; \\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;social-cms&quot;&gt;\\r\\n\\r\\n    &lt;ul class=&quot;social&quot;&gt; \\r\\n        &lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;Facebook&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;Twitter&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;Youtube&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;pinterest&quot;&gt;&lt;a href=&quot;#&quot;&gt;Pinterest&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n        &lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;Instagram&lt;\\/a&gt;&lt;\\/li&gt; \\r\\n    &lt;\\/ul&gt; \\r\\n&lt;\\/div&gt; \"}},\"status\":\"1\"}'),
(36, 'Footer Contact CMS ', 'html', '{\"name\":\"Footer Contact CMS \",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;contact&quot;&gt;\\r\\n&lt;h5&gt;Contact us&lt;\\/h5&gt;\\r\\n&lt;ul id=&quot;block-contact_list&quot;&gt;\\r\\n   \\r\\n    &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n             &lt;span&gt;Address : 507- UTC, Near Apple hospital, Udhana road.&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n    &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n          &lt;span&gt;Mail : &lt;a href=&quot;#&quot;&gt;support@company.com &lt;\\/a&gt;&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n   &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n           &lt;span&gt;Phone : +7852478965&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n \"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;contact&quot;&gt;\\r\\n&lt;h5&gt;Contact us&lt;\\/h5&gt;\\r\\n&lt;ul id=&quot;block-contact_list&quot;&gt;\\r\\n   \\r\\n    &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n             &lt;span&gt;Address : 507- UTC, Near Apple hospital, Udhana road.&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n    &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n          &lt;span&gt;Mail : &lt;a href=&quot;#&quot;&gt;support@company.com &lt;\\/a&gt;&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n   &lt;li&gt;\\r\\n        &lt;div class=&quot;data&quot;&gt;\\r\\n           &lt;span&gt;Phone : +7852478965&lt;\\/span&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n \"}},\"status\":\"1\"}'),
(39, 'Footer Payment CMS', 'html', '{\"name\":\"Footer Payment CMS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;paymentcmsblock&quot;&gt;\\r\\n   &lt;div class=&quot;payment-block&quot;&gt;\\t\\r\\n\\t\\t\\t&lt;ul class=&quot;payment-block-inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;discover icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/discover.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;maestro icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/maestro.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                &lt;li class=&quot;master icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/master.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;visa icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/visa.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;paypal icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/paypal.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t&lt;\\/ul&gt;\\r\\n\\t&lt;\\/div&gt;\\t\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;paymentcmsblock&quot;&gt;\\r\\n   &lt;div class=&quot;payment-block&quot;&gt;\\t\\r\\n\\t\\t\\t&lt;ul class=&quot;payment-block-inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;discover icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/discover.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;maestro icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/maestro.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                &lt;li class=&quot;master icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/master.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;visa icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/visa.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t\\t&lt;li class=&quot;paypal icon&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/paypal.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t\\t\\t&lt;\\/ul&gt;\\r\\n\\t&lt;\\/div&gt;\\t\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(41, 'Home Bestseller Products ', 'bestseller', '{\"name\":\"Home Bestseller Products \",\"limit\":\"12\",\"width\":\"278\",\"height\":\"320\",\"status\":\"0\",\"grid\":\"0\"}'),
(42, 'Home Latest Products ', 'latest', '{\"name\":\"Home Latest Products \",\"limit\":\"12\",\"width\":\"278\",\"height\":\"320\",\"status\":\"0\",\"grid\":\"0\"}'),
(43, 'Home Special Products', 'special', '{\"name\":\"Home Special Products\",\"limit\":\"12\",\"width\":\"278\",\"height\":\"320\",\"status\":\"0\",\"grid\":\"0\"}'),
(44, 'Sidebar-FeatureProducts', 'featured', '{\"name\":\"Sidebar-FeatureProducts\",\"product_name\":\"\",\"product\":[\"44\",\"41\",\"47\",\"30\",\"28\",\"48\",\"45\"],\"limit\":\"4\",\"width\":\"80\",\"height\":\"92\",\"status\":\"0\",\"grid\":\"1\"}'),
(45, 'Home Blog', 'blogger', '{\"module_id\":\"45\",\"name\":\"Home Blog\",\"status\":\"1\",\"width\":\"893\",\"height\":\"892\",\"limit\":\"6\",\"char_limit\":\"100\",\"comments\":\"1\",\"login\":\"0\",\"auto_approve\":\"1\"}'),
(62, 'Sidebar-LatestProduct', 'latest', '{\"name\":\"Sidebar-LatestProduct\",\"limit\":\"3\",\"width\":\"80\",\"height\":\"92\",\"status\":\"1\",\"grid\":\"1\"}'),
(61, 'Home Feature Products', 'featured', '{\"name\":\"Home Feature Products\",\"product_name\":\"\",\"product\":[\"40\",\"41\",\"30\",\"51\",\"48\",\"28\",\"44\",\"49\",\"36\",\"32\"],\"limit\":\"12\",\"width\":\"278\",\"height\":\"320\",\"status\":\"1\",\"grid\":\"0\"}'),
(88, 'Sidebar-Bestseller', 'bestseller', '{\"name\":\"Sidebar-Bestseller\",\"limit\":\"3\",\"width\":\"80\",\"height\":\"92\",\"status\":\"1\",\"grid\":\"1\"}'),
(72, 'Testimonial CMS', 'html', '{\"name\":\"Testimonial CMS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;psttestimonialcmsblock&quot; class=&quot;testimonial-block&quot;&gt;\\r\\n   &lt;div class=&quot;testimonial-inner&quot;&gt;\\r\\n      &lt;ul id=&quot;psttestimonial-carousel&quot; class=&quot;psttestimonial-carousel product_list&quot;&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;Mack Jeckno&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person1.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin. &lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;Mack Jeckno&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Financer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;jack loor&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person2.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin. &lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;jack loor&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;accountant&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;john Mack&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person3.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum is therefore always free from repetition or non-characteristic words etc.&lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;john Mack&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Financer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;john due&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person4.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin.&lt;\\/p&gt;\\r\\n           \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;john due&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Web developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n               &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n      &lt;\\/ul&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;psttestimonialcmsblock&quot; class=&quot;testimonial-block&quot;&gt;\\r\\n   &lt;div class=&quot;testimonial-inner&quot;&gt;\\r\\n      &lt;ul id=&quot;psttestimonial-carousel&quot; class=&quot;psttestimonial-carousel product_list&quot;&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;Mack Jeckno&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person1.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin. &lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;Mack Jeckno&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Financer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;jack loor&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person2.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin. &lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;jack loor&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;accountant&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;john Mack&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person3.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum is therefore always free from repetition or non-characteristic words etc.&lt;\\/p&gt;\\r\\n            \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;john Mack&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Financer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n         &lt;li class=&quot;item&quot;&gt;\\r\\n            &lt;div class=&quot;testimonial-img&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; title=&quot;john due&quot;&gt;\\r\\n               &lt;img alt=&quot;testmonial&quot; src=&quot;image\\/catalog\\/demo\\/banners\\/person4.jpg&quot;&gt;\\r\\n               &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;testimonial-desc&quot;&gt;\\r\\n               &lt;p&gt;Lorem Ipsum proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lo rem quis bendum nisi elit\\r\\nconsequat ipsum, nec sagittis sem nibh id elit. Duissed odiio sit amet. Lorem Ipsum proin nibh vel velit a\\r\\nuctor aliquet. Aenean sollicitudin.&lt;\\/p&gt;\\r\\n           \\r\\n            &lt;div class=&quot;testimonial-info&quot;&gt;\\r\\n               &lt;span class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;john due&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n               &lt;span class=&quot;designation&quot;&gt;Web developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n               &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt;\\r\\n      &lt;\\/ul&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(112, 'About us CMS', 'html', '{\"name\":\"About us CMS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;blockaboutus&quot;&gt;\\r\\n   &lt;div class=&quot;aboutus-wapper&quot;&gt;\\r\\n      &lt;div class=&quot;aboutus-img1&quot;&gt;\\r\\n        &lt;span class=&quot;aboutusimg&quot;&gt;\\r\\n          &lt;a href=&quot;#&quot; class=&quot;abtimg&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/demo\\/bestprice_710x440.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n     &lt;div class=&quot;aboutus-img1&quot;&gt;&lt;span class=&quot;aboutusimg&quot;&gt;&lt;br&gt;&lt;\\/span&gt;\\r\\n     \\r\\n     &lt;\\/div&gt;\\r\\n     &lt;div class=&quot;block-aboutus&quot;&gt;&lt;div class=&quot;aboutus-desc&quot;&gt;\\r\\n\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n    &lt;span style=&quot;color: inherit; font-family: inherit; font-size: 23px;&quot;&gt;Contact Form&lt;\\/span&gt;\\r\\n  &lt;form action=&quot;index.php?route=common\\/home\\/sendmail&quot; method=&quot;post&quot;&gt;\\r\\n    &lt;input type=&quot;text&quot; id=&quot;name&quot; name=&quot;name&quot; placeholder=&quot;Your name..&quot;&gt;\\r\\n\\r\\n    &lt;input type=&quot;text&quot; id=&quot;email&quot; name=&quot;email&quot; placeholder=&quot;Your Email ID..&quot;&gt;\\r\\n\\r\\n    &lt;input type=&quot;text&quot; id=&quot;phone&quot; name=&quot;phone&quot; placeholder=&quot;Your Phone No..&quot;&gt;\\r\\n\\r\\n    &lt;textarea id=&quot;comment&quot; name=&quot;comment&quot; placeholder=&quot;Write something..&quot; style=&quot;height:100px&quot;&gt;&lt;\\/textarea&gt;\\r\\n\\r\\n    &lt;input type=&quot;submit&quot; value=&quot;Submit&quot;&gt;\\r\\n  &lt;\\/form&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;&lt;style&gt;\\r\\ninput[type=text], select, textarea {\\r\\n  width: 100%;\\r\\n  padding: 12px;\\r\\n  border: 1px solid #ccc;\\r\\n  border-radius: 4px;\\r\\n  box-sizing: border-box;\\r\\n  margin-top: 6px;\\r\\n  margin-bottom: 16px;\\r\\n  resize: vertical;\\r\\n}\\r\\n\\r\\ninput[type=submit] {\\r\\n  background-color: #4CAF50;\\r\\n  color: white;\\r\\n  padding: 12px 20px;\\r\\n  border: none;\\r\\n  border-radius: 4px;\\r\\n  cursor: pointer;\\r\\n}\\r\\n\\r\\ninput[type=submit]:hover {\\r\\n  background-color: #45a049;\\r\\n}\\r\\n\\r\\n&lt;\\/style&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;blockaboutus&quot;&gt;\\r\\n   &lt;div class=&quot;aboutus-wapper&quot;&gt;\\r\\n      &lt;div class=&quot;aboutus-img1&quot;&gt;\\r\\n        &lt;span class=&quot;aboutusimg&quot;&gt;\\r\\n          &lt;a href=&quot;#&quot; class=&quot;abtimg&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/demo\\/bestprice_710x440.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div class=&quot;aboutus-img1&quot;&gt;&lt;span class=&quot;aboutusimg&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;span style=&quot;color: inherit; font-family: inherit; font-size: 23px;&quot;&gt;Contact Form&lt;\\/span&gt;&lt;\\/div&gt;&lt;div class=&quot;block-aboutus&quot;&gt;&lt;div class=&quot;aboutus-desc&quot;&gt;\\r\\n\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n  &lt;form action=&quot;\\/action_page.php&quot;&gt;\\r\\n    &lt;input type=&quot;text&quot; id=&quot;name&quot; name=&quot;name&quot; placeholder=&quot;Your name..&quot;&gt;\\r\\n\\r\\n    &lt;input type=&quot;text&quot; id=&quot;email&quot; name=&quot;email&quot; placeholder=&quot;Your Email ID..&quot;&gt;\\r\\n\\r\\n    &lt;input type=&quot;text&quot; id=&quot;phone&quot; name=&quot;phone&quot; placeholder=&quot;Your Phone No..&quot;&gt;\\r\\n\\r\\n    &lt;textarea id=&quot;comment&quot; name=&quot;comment&quot; placeholder=&quot;Write something..&quot; style=&quot;height:100px&quot;&gt;&lt;\\/textarea&gt;\\r\\n\\r\\n    &lt;input type=&quot;submit&quot; value=&quot;Submit&quot;&gt;\\r\\n  &lt;\\/form&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n         &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;&lt;style&gt;\\r\\ninput[type=text], select, textarea {\\r\\n  width: 100%;\\r\\n  padding: 12px;\\r\\n  border: 1px solid #ccc;\\r\\n  border-radius: 4px;\\r\\n  box-sizing: border-box;\\r\\n  margin-top: 6px;\\r\\n  margin-bottom: 16px;\\r\\n  resize: vertical;\\r\\n}\\r\\n\\r\\ninput[type=submit] {\\r\\n  background-color: #4CAF50;\\r\\n  color: white;\\r\\n  padding: 12px 20px;\\r\\n  border: none;\\r\\n  border-radius: 4px;\\r\\n  cursor: pointer;\\r\\n}\\r\\n\\r\\ninput[type=submit]:hover {\\r\\n  background-color: #45a049;\\r\\n}\\r\\n\\r\\n&lt;\\/style&gt;\"}},\"status\":\"1\"}'),
(113, 'Sidebar-Special Product', 'special', '{\"name\":\"Sidebar-Special Product\",\"limit\":\"3\",\"width\":\"80\",\"height\":\"92\",\"status\":\"1\",\"grid\":\"1\"}'),
(100, 'Top Category', 'category_tab', '{\"name\":\"Top Category\",\"heading\":\"\",\"category\":\"\",\"product_category\":[\"34\",\"48\",\"55\"],\"category_limit\":\"3\",\"product_limit\":\"20\",\"width\":\"278\",\"height\":\"320\",\"status\":\"0\",\"grid\":\"0\"}'),
(102, 'Category CMS Block', 'html', '{\"name\":\"Category CMS Block\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pst_categorycmsblock&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n\\r\\n  &lt;div class=&quot;col-xs-12 col-sm-12 col-md-5 col-lg-5 categorycmsblock-desc&quot;&gt;\\r\\n   \\r\\n      &lt;span class=&quot; box-heading&quot;&gt;healthy food &lt;br&gt;&lt;span class=&quot;cat-title1&quot;&gt;restaurant&lt;\\/span&gt;&lt;\\/span&gt;\\r\\n   \\r\\n    &lt;div class=&quot;cat-des&quot;&gt;\\r\\n      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiuse\\r\\nmod tempor incididunt ut labore et dolore magna aliqua. Ut enim mn\\r\\nim veniam, quis nostrud exerctction ullamco laboris nisi.\\r\\n      &lt;div class=&quot;cat-btn&quot;&gt; &lt;a href=&quot;#&quot;&gt;shop now&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n  &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;col-xs-12 col-sm-12 col-md-7 col-lg-7 categorycmsblock-wrapper&quot;&gt;\\r\\n            &lt;ul&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                    &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                     &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                      \\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;c-food&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;fruits&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;juice&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;water&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                     &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;burger&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;view all&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n            &lt;\\/ul&gt;\\r\\n         &lt;\\/div&gt;\\r\\n   \\t\\t\\t\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pst_categorycmsblock&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n\\r\\n  &lt;div class=&quot;col-xs-12 col-sm-12 col-md-5 col-lg-5 categorycmsblock-desc&quot;&gt;\\r\\n   \\r\\n      &lt;span class=&quot; box-heading&quot;&gt;healthy food &lt;br&gt;&lt;span class=&quot;cat-title1&quot;&gt;restaurant&lt;\\/span&gt;&lt;\\/span&gt;\\r\\n   \\r\\n    &lt;div class=&quot;cat-des&quot;&gt;\\r\\n      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiuse\\r\\nmod tempor incididunt ut labore et dolore magna aliqua. Ut enim mn\\r\\nim veniam, quis nostrud exerctction ullamco laboris nisi.\\r\\n      &lt;div class=&quot;cat-btn&quot;&gt; &lt;a href=&quot;#&quot;&gt;shop now&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n  &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;col-xs-12 col-sm-12 col-md-7 col-lg-7 categorycmsblock-wrapper&quot;&gt;\\r\\n            &lt;ul&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                    &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                     &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                      \\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;c-food&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;fruits&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;juice&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;water&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                     &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;burger&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n                  &lt;li class=&quot;cat-item col-xs-12 col-sm-6 col-md-4 col-lg-4&quot;&gt;\\r\\n                  &lt;div class=&quot;item-inner&quot;&gt;\\r\\n                      &lt;span class=&quot;cat-img&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;cat-icon&quot;&gt;&amp;nbsp;&lt;\\/a&gt;&lt;\\/span&gt;\\r\\n                     &lt;a href=&quot;#&quot; class=&quot;cat-text&quot;&gt;view all&lt;\\/a&gt;\\r\\n                     &lt;\\/div&gt;\\r\\n                  &lt;\\/li&gt;\\r\\n            &lt;\\/ul&gt;\\r\\n         &lt;\\/div&gt;\\r\\n   \\t\\t\\t\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}},\"status\":\"1\"}'),
(111, 'Sub Banner CMS', 'html', '{\"name\":\"Sub Banner CMS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;subbanner&quot; class=&quot;subbanner&quot;&gt;\\r\\n  &lt;div class=&quot;subbanner-wrapper&quot;&gt;\\r\\n      &lt;ul&gt;\\r\\n         &lt;li class=&quot;subbanner-item&quot;&gt;\\r\\n            &lt;div class=&quot;subbanner-item-inner&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; class=&quot;cms-img&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/sub-banner.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt; \\r\\n      &lt;\\/ul&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;subbanner&quot; class=&quot;subbanner&quot;&gt;\\r\\n  &lt;div class=&quot;subbanner-wrapper&quot;&gt;\\r\\n      &lt;ul&gt;\\r\\n         &lt;li class=&quot;subbanner-item&quot;&gt;\\r\\n            &lt;div class=&quot;subbanner-item-inner&quot;&gt;\\r\\n               &lt;a href=&quot;#&quot; class=&quot;cms-img&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/sub-banner.jpg&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n         &lt;\\/li&gt; \\r\\n      &lt;\\/ul&gt;\\r\\n   &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(105, 'Block top CM', 'html', '{\"name\":\"Block top CM\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pstblocktopcms&quot;&gt;\\r\\n\\t&lt;div class=&quot;blocktopcms&quot;&gt;Welcome Here, Get Free Shipping On Orders Over $99! &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;pstblocktopcms&quot;&gt;\\r\\n\\t&lt;div class=&quot;blocktopcms&quot;&gt;Welcome Here, Get Free Shipping On Orders Over $99! &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `news_id` int(11) NOT NULL,
  `news_email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_newsletter`
--

INSERT INTO `oc_newsletter` (`news_id`, `news_email`) VALUES
(1, 'haribabu@xmediasolution.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Radio', ''),
(2, 1, 'Checkbox', ''),
(4, 1, 'Text', ''),
(6, 1, 'Textarea', ''),
(8, 1, 'Date', ''),
(7, 1, 'File', ''),
(5, 1, 'Select', ''),
(9, 1, 'Time', ''),
(10, 1, 'Date &amp; Time', ''),
(12, 1, 'Delivery Date', ''),
(11, 1, 'Size', ''),
(1, 2, 'Radio', ''),
(2, 2, 'Checkbox', ''),
(4, 2, 'Text', ''),
(6, 2, 'Textarea', ''),
(8, 2, 'Date', ''),
(7, 2, 'File', ''),
(5, 2, 'Select', ''),
(9, 2, 'Time', ''),
(10, 2, 'Date &amp; Time', ''),
(12, 2, 'Delivery Date', ''),
(11, 2, 'Size', ''),
(1, 3, 'Radio', ''),
(2, 3, 'Checkbox', ''),
(4, 3, 'Text', ''),
(6, 3, 'Textarea', ''),
(8, 3, 'Date', ''),
(7, 3, 'File', ''),
(5, 3, 'Select', ''),
(9, 3, 'Time', ''),
(10, 3, 'Date &amp; Time', ''),
(12, 3, 'Delivery Date', ''),
(11, 3, 'Size', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(5, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc010012/upload/', 0, 1, 'testing', 'testing', 'testingg@gmail.comg', '99501', '', '[]', 'testing', 'testing', '', 'testing', 't', 'testing', '99501', 'United States', 223, 'Arkansas', 3617, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', 't', 'testing', '99501', 'United States', 223, 'Arkansas', 3617, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '70.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-06-06 12:26:07', '2018-06-06 12:26:27'),
(6, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc010012/upload/', 0, 1, 'testing', 'testing', 'test@testing.com', '99501', '', '[]', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'Tanzania, United Republic of', 208, 'Kilimanjaro', 3169, '', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'Tanzania, United Republic of', 208, 'Kilimanjaro', 3169, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '70.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-06-21 10:54:51', '2018-06-21 10:57:03'),
(7, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc010021/upload/', 0, 1, 'testing', 'testing', 'test@gmail.com', '99501', '', '[]', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'vcdsfs', '67.6000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-07-10 10:33:15', '2018-07-10 10:33:34'),
(8, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc010021/upload/', 0, 1, 'testing', 'testing', 'test@gmail.com', '99501', '', '[]', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Bedfordshire', 3518, '', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Bedfordshire', 3518, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '118.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-07-10 10:42:44', '2018-07-10 10:43:14'),
(9, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc020024/upload/', 0, 1, 'testing', 'testing', 'test@gmail.com', '99501', '', '[]', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Argyll and Bute', 3517, '', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Argyll and Bute', 3517, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '118.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-08-02 11:58:45', '2018-08-02 11:59:36'),
(10, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.170/user2/opencart/opc0200031/upload/', 0, 1, 'testing', 'testing', 'test@gmail.com', '99501', '', '[]', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Argyll and Bute', 3517, '', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'testing', '', 'testing', '99501', 'United Kingdom', 222, 'Argyll and Bute', 3517, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'hhhh', '383.6000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.172', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2018-07-29 11:19:41', '2018-07-29 11:20:01'),
(11, 0, 'INV-2018-00', 0, 'Wingstore Mega Store', 'http://192.168.0.170/user3/opencart/OPC010004/', 3, 1, 'test', 'test', 'test1410@gmail.com', '123456789', '', '', 'test', 'test', 'test', 'test', 'test', 'test', '394305', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'test', 'test', 'test', 'test', '394305', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.173', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.35 Safari/537.36', 'en-US,en;q=0.9', '2018-09-26 11:06:16', '2018-09-26 11:06:22'),
(12, 0, 'INV-2018-00', 0, 'Wingstore Mega Store', 'http://192.168.0.170/user3/opencart/OPC010004/', 3, 1, 'test', 'test', 'test1410@gmail.com', '123456789', '', '', 'test', 'test', 'test', 'test', 'test', 'test', '394305', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'test', 'test', 'test', 'test', '394305', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.173', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.35 Safari/537.36', 'en-US,en;q=0.9', '2018-09-26 11:06:42', '2018-09-26 11:06:47'),
(13, 0, 'INV-2018-00', 0, 'Rshawn Pet Store', 'http://192.168.0.170/user8/OPENCART/OPC0200052/upload/', 0, 1, 'testing', 'testing', 'testing1@gmail.com', '7894561236', '', '[]', 'testing', 'testing', '', 'newyork', '', 'newyork', '10015', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'newyork', '', 'newyork', '10015', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '155.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.175', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.17 Safari/537.36', 'en-US,en;q=0.9', '2018-12-14 10:39:27', '2018-12-14 10:39:34'),
(14, 0, 'INV-2019-00', 0, 'Stylert Fashion Store', 'http://192.168.0.170/user8/OPENCART/OPC0200092/upload/', 6, 1, 'test', 'test', 'test@gmail.com', '123456789', '', '', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', 'dadsad', '465.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.178', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.39 Safari/537.36', 'en-US,en;q=0.9', '2019-02-17 18:17:20', '2019-02-17 18:17:24'),
(15, 0, 'INV-2019-00', 0, 'Stylert Fashion Store', 'http://192.168.0.170/user8/OPENCART/OPC0200092/upload/', 6, 1, 'test', 'test', 'test@gmail.com', '123456789', '', '', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', ' uy 8ik8yujkj rhef uiyhuruhujudftghkmbg', '795.0000', 1, 0, '0.0000', 0, '', 1, 3, 'EUR', '0.78460002', '192.168.0.175', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.46 Safari/537.36', 'en-US,en;q=0.9', '2019-02-18 11:48:41', '2019-02-18 11:48:50'),
(16, 0, 'INV-2019-00', 0, 'Tapstore Electronic Store', 'http://192.168.0.170/user8/OPENCART/OPC0300141/', 7, 1, 'test', 'test', 'test123@gmail.com', '123456789', '', '[]', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'Delaware', 3627, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'Delaware', 3627, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1005.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.178', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.56 Safari/537.36', 'en-US,en;q=0.9', '2019-03-02 17:43:25', '2019-11-22 16:32:56'),
(17, 0, 'INV-2019-00', 0, 'Tapstore Electronic Store', 'http://192.168.0.170/user8/OPENCART/OPC0300141/', 0, 1, 'testing', 'testing', 'testing1@gmail.com', '7894561236', '', '[]', 'testing', 'testing', '', 'newyork', '', 'newyork', '10015', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'testing', 'testing', '', 'newyork', '', 'newyork', '10015', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '283.0000', 5, 0, '0.0000', 0, '', 1, 3, 'EUR', '0.78460002', '192.168.0.175', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.56 Safari/537.36', 'en-US,en;q=0.9', '2019-03-03 10:25:51', '2019-11-22 16:30:51'),
(18, 0, 'INV-2019-00', 0, 'Tapstore Electronic Store', 'http://192.168.0.170/user8/OPENCART/OPC0300141/', 8, 1, 'test', 'test', 'admin@gmail.com', '1234567890', '', '[]', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'test', 'test', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '283.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.178', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.21 Safari/537.36', 'en-US,en;q=0.9', '2019-10-02 21:54:58', '2019-11-22 16:30:07'),
(19, 0, 'INV-2019-00', 0, 'Tapstore Electronic Store', 'http://192.168.0.170/user8/OPENCART/OPC0300141/', 9, 1, 'admin', 'admin', 'admin123@gmail.com', '1234567890', '', '[]', 'admin', 'admin', 'new', 'newyork', '', 'newyork', '', 'India', 99, 'Nagaland', 1497, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', 'new', 'newyork', '', 'newyork', '', 'India', 99, 'Nagaland', 1497, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '103.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.178', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.29 Safari/537.36', 'en-US,en;q=0.9', '2019-11-22 16:30:28', '2019-11-22 16:31:51'),
(20, 0, 'INV-2019-00', 0, 'Tapstore Electronic Store', 'http://192.168.0.170/user8/OPENCART/OPC0300141/', 9, 1, 'admin', 'admin', 'admin123@gmail.com', '1234567890', '', '', 'admin', 'admin', 'new', 'newyork', '', 'newyork', '', 'India', 99, 'Nagaland', 1497, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', 'new', 'newyork', '', 'newyork', '', 'India', 99, 'Nagaland', 1497, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '2703.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.179', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.29 Safari/537.36', 'en-US,en;q=0.9', '2019-11-23 21:14:41', '2019-11-23 21:15:20'),
(21, 0, 'INV-2019-00', 0, 'Nutripe  Food Store', 'http://192.168.0.170/user9/OPENCART/OPC0300148/upload/', 13, 1, 'test12345', 'test12345', 'test12345@gmail.com', '1234567890', '', '', 'test12345', 'test12345', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'test12345', 'test12345', 'new', 'newyork', '', 'newyork', '10001', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '905.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.178', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.56 Safari/537.36', 'en-US,en;q=0.9', '2019-12-12 17:37:37', '2019-12-12 17:37:40'),
(22, 0, 'INV-2020-00', 0, 'Snapp Shoppy', 'https://websiteseoworks.com/test/test/', 14, 1, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', '', '', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'd', '235.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '157.46.94.197', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'en-US,en;q=0.9', '2020-08-08 01:37:51', '2020-08-08 01:37:59'),
(23, 0, 'INV-2020-00', 0, 'Snapp Shoppy', 'https://websiteseoworks.com/test/test/', 14, 1, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', '', '', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '55.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '157.46.94.197', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'en-US,en;q=0.9', '2020-08-08 01:43:41', '2020-08-08 01:43:43'),
(24, 0, 'INV-2020-00', 0, 'Snapp Shoppy', 'https://websiteseoworks.com/test/test/', 14, 1, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', '', '', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '9005.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '157.49.201.126', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', 'en-US,en;q=0.9', '2020-09-13 00:56:03', '2020-09-13 00:56:09'),
(25, 0, 'INV-2020-00', 0, 'Snapp Shoppy', 'https://websiteseoworks.com/test/test/', 14, 1, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', '', '', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'hari', 'hari', 'society', 'chennai', '', 'chennai', '600053', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '149.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '157.49.207.175', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 'en-US,en;q=0.9', '2020-10-18 00:18:28', '2020-10-18 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(7, 5, 1, 0, '', '2018-06-06 12:26:22'),
(8, 5, 1, 0, '', '2018-06-06 12:26:27'),
(9, 6, 1, 0, '', '2018-06-21 10:55:07'),
(10, 6, 1, 0, '', '2018-06-21 10:57:03'),
(11, 7, 1, 0, '', '2018-07-10 10:33:24'),
(12, 7, 1, 0, '', '2018-07-10 10:33:34'),
(13, 8, 1, 0, '', '2018-07-10 10:43:08'),
(14, 8, 1, 0, '', '2018-07-10 10:43:14'),
(15, 9, 1, 0, '', '2018-08-02 11:58:56'),
(16, 9, 1, 0, '', '2018-08-02 11:59:36'),
(17, 10, 1, 0, '', '2018-07-29 11:19:46'),
(18, 10, 1, 0, '', '2018-07-29 11:20:01'),
(23, 11, 1, 0, '', '2018-09-26 11:06:22'),
(24, 12, 1, 0, '', '2018-09-26 11:06:47'),
(25, 13, 1, 0, '', '2018-12-14 10:39:31'),
(26, 13, 1, 0, '', '2018-12-14 10:39:34'),
(27, 14, 1, 0, '', '2019-02-17 18:17:24'),
(28, 15, 1, 0, '', '2019-02-18 11:48:47'),
(29, 15, 1, 0, '', '2019-02-18 11:48:50'),
(30, 16, 1, 0, '', '2019-03-02 17:43:30'),
(31, 17, 1, 0, '', '2019-03-03 10:25:56'),
(32, 17, 1, 0, '', '2019-03-03 10:26:15'),
(33, 18, 1, 0, '', '2019-10-02 21:55:03'),
(34, 18, 0, 0, '', '2019-11-22 16:29:57'),
(35, 18, 1, 0, '', '2019-11-22 16:29:59'),
(36, 18, 0, 0, '', '2019-11-22 16:30:05'),
(37, 18, 5, 0, '', '2019-11-22 16:30:07'),
(38, 19, 1, 0, '', '2019-11-22 16:30:32'),
(39, 17, 0, 0, '', '2019-11-22 16:30:48'),
(40, 17, 5, 0, '', '2019-11-22 16:30:51'),
(41, 19, 0, 0, '', '2019-11-22 16:31:49'),
(42, 19, 5, 0, '', '2019-11-22 16:31:51'),
(43, 16, 0, 0, '', '2019-11-22 16:32:54'),
(44, 16, 5, 0, '', '2019-11-22 16:32:56'),
(45, 20, 1, 0, '', '2019-11-23 21:14:46'),
(46, 20, 1, 0, '', '2019-11-23 21:15:20'),
(47, 21, 1, 0, '', '2019-12-12 17:37:40'),
(48, 22, 1, 0, '', '2020-08-08 01:37:59'),
(49, 23, 1, 0, '', '2020-08-08 01:43:43'),
(50, 24, 1, 0, '', '2020-09-13 00:56:09'),
(51, 25, 1, 0, '', '2020-10-18 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 10, 20, 226, 16, 'Select', 'Blue', 'select'),
(2, 10, 22, 227, 0, 'Delivery Date', '2011-04-22', 'date'),
(3, 10, 23, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(4, 11, 24, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(5, 12, 25, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(6, 13, 26, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(7, 15, 30, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(13, 17, 43, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(11, 18, 39, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(14, 19, 45, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(15, 20, 49, 228, 0, 'Delivery Date', '2011-04-22', 'date'),
(16, 25, 54, 228, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(13, 5, 44, 'dapibus tortor', 'Product 17', 1, '65.0000', '65.0000', '0.0000', 700),
(14, 6, 44, 'dapibus tortor', 'Product 17', 1, '65.0000', '65.0000', '0.0000', 700),
(15, 7, 28, 'praesent viverra', 'Product 1', 1, '48.0000', '48.0000', '11.6000', 400),
(16, 8, 48, 'pellentesque dolor', 'product 20', 1, '90.0000', '90.0000', '20.0000', 0),
(17, 9, 48, 'pellentesque dolor', 'product 20', 1, '90.0000', '90.0000', '20.0000', 0),
(18, 10, 44, 'dapibus tortor', 'Product 17', 1, '40.0000', '40.0000', '10.0000', 700),
(19, 10, 40, 'consequat nibh', 'product 11', 1, '55.0000', '55.0000', '13.0000', 0),
(20, 10, 30, 'elementum urna', 'Product 3', 1, '65.0000', '65.0000', '15.0000', 200),
(21, 10, 46, 'phasellus maximus', 'Product 19', 1, '48.0000', '48.0000', '11.6000', 0),
(22, 10, 50, 'mollis consequat', 'Product 21', 1, '40.0000', '40.0000', '10.0000', 300),
(23, 10, 47, 'qui blanditiis', 'Product 21', 1, '55.0000', '55.0000', '13.0000', 300),
(24, 11, 51, 'aenean dignissim', 'Product 21', 1, '100.0000', '100.0000', '0.0000', 300),
(25, 12, 51, 'aenean dignissim', 'Product 21', 1, '100.0000', '100.0000', '0.0000', 300),
(26, 13, 51, 'aenean dignissim', 'Product 21', 1, '150.0000', '150.0000', '0.0000', 300),
(27, 14, 40, 'consequat nibh', 'product 11', 2, '230.0000', '460.0000', '0.0000', 0),
(28, 15, 28, 'praesent viverra', 'Product 1', 1, '180.0000', '180.0000', '0.0000', 400),
(29, 15, 40, 'consequat nibh', 'product 11', 2, '230.0000', '460.0000', '0.0000', 0),
(30, 15, 51, 'aenean dignissim', 'Product 21', 1, '150.0000', '150.0000', '0.0000', 300),
(46, 16, 44, 'dapibus tortor', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(43, 17, 51, 'aenean dignissim', 'Product 21', 1, '48.0000', '48.0000', '0.0000', 300),
(42, 17, 40, 'consequat nibh', 'product 11', 1, '230.0000', '230.0000', '0.0000', 0),
(39, 18, 51, 'aenean dignissim', 'Product 21', 1, '48.0000', '48.0000', '0.0000', 300),
(38, 18, 40, 'consequat nibh', 'product 11', 1, '230.0000', '230.0000', '0.0000', 0),
(45, 19, 51, 'aenean dignissim', 'Product 21', 1, '48.0000', '48.0000', '0.0000', 300),
(44, 19, 41, 'donec pulvinar', 'Product 14', 1, '50.0000', '50.0000', '0.0000', 0),
(47, 20, 32, 'vitae faucibus', 'Product 5', 1, '650.0000', '650.0000', '0.0000', 0),
(48, 20, 44, 'dapibus tortor', 'Product 17', 2, '1000.0000', '2000.0000', '0.0000', 1400),
(49, 20, 51, 'aenean dignissim', 'Product 21', 1, '48.0000', '48.0000', '0.0000', 300),
(50, 21, 48, 'pellentesque dolor', 'product 20', 2, '450.0000', '900.0000', '0.0000', 0),
(51, 22, 40, 'consequat nibh', 'product 11', 1, '230.0000', '230.0000', '0.0000', 0),
(52, 23, 41, 'donec pulvinar', 'Product 14', 1, '50.0000', '50.0000', '0.0000', 0),
(53, 24, 59, 'MI prime 3s', '3s', 1, '9000.0000', '9000.0000', '0.0000', 0),
(54, 25, 51, 'aenean dignissim', 'Product 21', 3, '48.0000', '144.0000', '0.0000', 900);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(15, 5, 'sub_total', 'Sub-Total', '65.0000', 1),
(16, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(17, 5, 'total', 'Total', '70.0000', 9),
(18, 6, 'sub_total', 'Sub-Total', '65.0000', 1),
(19, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(20, 6, 'total', 'Total', '70.0000', 9),
(21, 7, 'sub_total', 'Sub-Total', '48.0000', 1),
(22, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(23, 7, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(24, 7, 'tax', 'VAT (20%)', '10.6000', 5),
(25, 7, 'total', 'Total', '67.6000', 9),
(26, 8, 'sub_total', 'Sub-Total', '90.0000', 1),
(27, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(28, 8, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(29, 8, 'tax', 'VAT (20%)', '19.0000', 5),
(30, 8, 'total', 'Total', '118.0000', 9),
(31, 9, 'sub_total', 'Sub-Total', '90.0000', 1),
(32, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(33, 9, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(34, 9, 'tax', 'VAT (20%)', '19.0000', 5),
(35, 9, 'total', 'Total', '118.0000', 9),
(36, 10, 'sub_total', 'Sub-Total', '303.0000', 1),
(37, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(38, 10, 'tax', 'Eco Tax (-2.00)', '14.0000', 5),
(39, 10, 'tax', 'VAT (20%)', '61.6000', 5),
(40, 10, 'total', 'Total', '383.6000', 9),
(41, 11, 'sub_total', 'Sub-Total', '100.0000', 1),
(42, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(43, 11, 'total', 'Total', '105.0000', 9),
(44, 12, 'sub_total', 'Sub-Total', '100.0000', 1),
(45, 12, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(46, 12, 'total', 'Total', '105.0000', 9),
(47, 13, 'sub_total', 'Sub-Total', '150.0000', 1),
(48, 13, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(49, 13, 'total', 'Total', '155.0000', 9),
(50, 14, 'sub_total', 'Sub-Total', '460.0000', 1),
(51, 14, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(52, 14, 'total', 'Total', '465.0000', 9),
(53, 15, 'sub_total', 'Sub-Total', '790.0000', 1),
(54, 15, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(55, 15, 'total', 'Total', '795.0000', 9),
(81, 16, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(80, 16, 'sub_total', 'Sub-Total', '1000.0000', 1),
(75, 17, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(74, 17, 'sub_total', 'Sub-Total', '278.0000', 1),
(70, 18, 'total', 'Total', '283.0000', 9),
(69, 18, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(68, 18, 'sub_total', 'Sub-Total', '278.0000', 1),
(78, 19, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(77, 19, 'sub_total', 'Sub-Total', '98.0000', 1),
(76, 17, 'total', 'Total', '283.0000', 9),
(79, 19, 'total', 'Total', '103.0000', 9),
(82, 16, 'total', 'Total', '1005.0000', 9),
(83, 20, 'sub_total', 'Sub-Total', '2698.0000', 1),
(84, 20, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(85, 20, 'total', 'Total', '2703.0000', 9),
(86, 21, 'sub_total', 'Sub-Total', '900.0000', 1),
(87, 21, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(88, 21, 'total', 'Total', '905.0000', 9),
(89, 22, 'sub_total', 'Sub-Total', '230.0000', 1),
(90, 22, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(91, 22, 'total', 'Total', '235.0000', 9),
(92, 23, 'sub_total', 'Sub-Total', '50.0000', 1),
(93, 23, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(94, 23, 'total', 'Total', '55.0000', 9),
(95, 24, 'sub_total', 'Sub-Total', '9000.0000', 1),
(96, 24, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(97, 24, 'total', 'Total', '9005.0000', 9),
(98, 25, 'sub_total', 'Sub-Total', '144.0000', 1),
(99, 25, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(100, 25, 'total', 'Total', '149.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `buynow` int(11) NOT NULL,
  `bestprice` int(11) NOT NULL,
  `holesaleprice` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `buynow`, `bestprice`, `holesaleprice`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 937, 7, 'catalog/demo/product/7.jpg', 10, 1, '400.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2019-11-23 15:54:22', 0, 0, 0),
(30, 'Product 3', '', '', '', '', '', '', '', 6, 6, 'catalog/demo/product/4.jpg', 9, 1, '300.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 16:59:00', '2020-08-02 09:29:34', 0, 0, 0),
(32, 'Product 5', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/14.jpg', 8, 1, '720.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 17:07:26', '2019-02-16 10:02:48', 0, 0, 0),
(51, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/1.jpg', 7, 1, '150.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 3, 0, 1, 32, '2018-05-28 09:31:05', '2020-10-17 06:12:29', 1, 1, 1),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/3.jpg', 7, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2019-01-19 15:27:41', 0, 0, 0),
(54, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/10.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2018-05-28 09:41:50', '2019-11-23 15:53:29', 0, 0, 0),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/product/12.jpg', 9, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2019-02-16 10:02:57', 0, 0, 0),
(40, 'product 11', '', '', '', '', '', '', '', 962, 5, 'catalog/demo/product/3.jpg', 8, 1, '230.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 82, '2009-02-03 21:07:12', '2019-11-23 15:54:25', 0, 0, 0),
(41, 'Product 14', '', '', '', '', '', '', '', 975, 5, 'catalog/demo/product/5.jpg', 7, 1, '260.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 21:07:26', '2019-02-18 09:17:24', 0, 0, 0),
(44, 'Product 17', '', '', '', '', '', '', '', 994, 5, 'catalog/demo/product/14.jpg', 7, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:00', '2019-03-02 17:46:39', 0, 0, 0),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/9.jpg', 5, 1, '820.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2019-11-23 15:54:11', 0, 0, 0),
(46, 'Product 19', '', '', '', '', '', '', '', 999, 5, 'catalog/demo/product/6.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2019-01-19 15:25:58', 0, 0, 0),
(47, 'Product 21', '', '', '', '', '', '', '', 900, 5, 'catalog/demo/product/5.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2019-02-16 10:04:37', 0, 0, 0),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 991, 5, 'catalog/demo/product/8.jpg', 6, 1, '600.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2019-02-16 10:03:57', 0, 0, 0),
(49, 'SAM1', '', '', '', '', '', '', '', 1000, 8, 'catalog/demo/product/2.jpg', 9, 1, '700.0000', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2019-11-23 15:53:32', 0, 0, 0),
(50, 'Product 21', '', '', '', '', '', '', '', 800, 5, 'catalog/demo/product/11.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2018-05-28 09:28:50', '2020-09-06 01:15:08', 0, 0, 0),
(57, 'Product 21', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/17.jpg', 0, 1, '140.0000', 0, 0, '2018-12-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2018-12-01 11:37:33', '2018-12-11 10:48:11', 0, 0, 0),
(58, 'product 11', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/12.jpg', 0, 1, '120.0000', 0, 0, '2018-12-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2018-12-01 11:45:12', '2019-02-16 10:04:22', 0, 0, 0),
(59, '3s', '', '', '', '', '', '', 'chennai', 99, 6, 'catalog/demo/product/realme-5-pro-rmx1971-1.jpg', 0, 1, '9000.0000', 0, 9, '2020-07-26', '100.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2020-07-26 00:55:00', '2020-09-06 01:14:12', 0, 0, 0),
(60, 'poco', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '175000.0000', 0, 9, '2020-08-02', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 4, 1, 1, 0, '2020-08-02 09:27:09', '2020-08-02 09:56:25', 0, 0, 0),
(61, 'apple', '', '', '', '', '', '', '', 100, 6, '', 0, 1, '100.0000', 0, 9, '2020-09-02', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2020-09-02 11:00:32', '2020-09-02 11:01:56', 0, 0, 0),
(62, 'fragnance', '', '', '', '', '', '', '', 20, 6, 'catalog/demo/damir-spanic-MJ4y9aJpwxk-unsplash.jpg', 0, 1, '299.0000', 0, 9, '2020-09-06', '120.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 2, 1, 1, 32, '2020-09-06 01:52:50', '2020-10-17 01:27:10', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(47, 2, 3, '4'),
(47, 2, 2, '4'),
(50, 4, 1, '16GB'),
(47, 4, 1, '16GB'),
(54, 4, 1, '16GB'),
(51, 4, 2, '16GB'),
(54, 2, 3, '4'),
(50, 4, 2, '16GB'),
(47, 2, 1, '4'),
(51, 4, 1, '16GB'),
(50, 2, 2, '4'),
(50, 2, 1, '4'),
(54, 4, 2, '16GB'),
(54, 2, 2, '4'),
(54, 2, 1, '4'),
(47, 4, 2, '16GB'),
(47, 4, 3, '16GB'),
(51, 2, 2, '4'),
(54, 4, 3, '16GB'),
(51, 2, 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(48, 3, 'pellentesque dolor', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'pellentesque dolor', '', ''),
(40, 2, 'consequat nibh', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'consequat nibh', '', ''),
(28, 3, 'praesent viverra', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'praesent viverra', '', ''),
(45, 1, 'scelerisque lacinia ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'scelerisque lacinia ', '', ''),
(46, 3, 'phasellus maximus', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'phasellus maximus', '', ''),
(54, 1, 'Vivamus fringilla', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Vivamus fringilla', '', ''),
(48, 2, 'pellentesque dolor', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'pellentesque dolor', '', ''),
(36, 3, 'vestibu	lumporta ', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'vestibu	lumporta ', '', ''),
(50, 1, 'mollis consequat', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'mollis consequat', '', ''),
(50, 2, 'mollis consequat', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'mollis consequat', '', ''),
(32, 3, 'vitae faucibus', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'vitae faucibus', '', ''),
(30, 1, 'elementum urna', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'elementum urna', '', ''),
(47, 3, 'qui blanditiis', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'qui blanditiis', '', ''),
(41, 3, 'donec pulvinar', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'donec pulvinar', '', ''),
(34, 1, 'tincidunt dolor', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'tincidunt dolor', '', ''),
(44, 2, 'dapibus tortor', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'dapibus tortor', '', ''),
(40, 3, 'consequat nibh', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'consequat nibh', '', ''),
(28, 2, 'praesent viverra', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'praesent viverra', '', ''),
(49, 3, 'vehicula aliquet', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'vehicula aliquet', '', ''),
(45, 2, 'scelerisque lacinia ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'scelerisque lacinia ', '', ''),
(46, 2, 'phasellus maximus', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'phasellus maximus', '', ''),
(54, 2, 'Vivamus fringilla', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Vivamus fringilla', '', ''),
(36, 2, 'vestibu	lumporta ', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'vestibu	lumporta ', '', ''),
(32, 2, 'vitae faucibus', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'vitae faucibus', '', ''),
(30, 2, 'elementum urna', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'elementum urna', '', ''),
(47, 2, 'qui blanditiis', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'qui blanditiis', '', ''),
(41, 2, 'donec pulvinar', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'donec pulvinar', '', ''),
(34, 2, 'tincidunt dolor', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'tincidunt dolor', '', ''),
(44, 3, 'dapibus tortor', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'dapibus tortor', '', ''),
(49, 2, 'vehicula aliquet', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'vehicula aliquet', '', ''),
(48, 1, 'pellentesque dolor', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'pellentesque dolor', '', ''),
(28, 1, 'praesent viverra', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'praesent viverra', '', ''),
(45, 3, 'scelerisque lacinia ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'scelerisque lacinia ', '', ''),
(46, 1, 'phasellus maximus', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'phasellus maximus', '', ''),
(54, 3, 'Vivamus fringilla', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Vivamus fringilla', '', ''),
(36, 1, 'vestibu	lumporta ', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'vestibu	lumporta ', '', ''),
(32, 1, 'vitae faucibus', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'vitae faucibus', '', ''),
(51, 2, 'aenean dignissim', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;&lt;p&gt;&amp;lt;embed type=&quot;video/webm&quot; src=&quot;movie.mp4&quot; width=&quot;400&quot; height=&quot;300&quot;&amp;gt;&lt;br&gt;&lt;/p&gt;\r\n', '', 'aenean dignissim', '', ''),
(47, 1, 'qui blanditiis', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'qui blanditiis', '', ''),
(41, 1, 'donec pulvinar', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'donec pulvinar', '', ''),
(34, 3, 'tincidunt dolor', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'tincidunt dolor', '', ''),
(40, 1, 'consequat nibh', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'consequat nibh', '', ''),
(49, 1, 'vehicula aliquet', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'vehicula aliquet', '', ''),
(44, 1, 'dapibus tortor', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'dapibus tortor', '', ''),
(57, 1, 'scelerisque tortor', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n&lt;/p&gt;', '', 'scelerisque tortor', '', ''),
(57, 2, 'scelerisque tortor', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n&lt;/p&gt;', '', 'scelerisque tortor', '', ''),
(57, 3, 'scelerisque tortor', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui officia deserunt mollit anim id est labor\r\n \r\naliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\nExcepteur sint occaecat cupidatat non proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia deserun \r\n&lt;/p&gt;', '', 'scelerisque tortor', '', ''),
(58, 1, 'Excepteur', '&lt;p&gt;exercitation ullamco Excepteur sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit\r\n\r\n\r\nsunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;', '', 'Excepteur', '', ''),
(58, 2, 'Excepteur', '&lt;p&gt;exercitation ullamco Excepteur sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit\r\n\r\n\r\nsunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;', '', 'Excepteur', '', ''),
(58, 3, 'Excepteur', '&lt;p&gt;exercitation ullamco Excepteur sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n proident, sunt in tempor sed do  incididunt consectetur eiusmod adipiscing elit, Lorem ipsum dolor sit amet,culpa qui t mollit anim id est labor officia reprehenderit\r\n\r\n\r\nsunt in tempor exercitation ullamco sint occaecat dolore eu fugiat nulla cupidatat non eiusmod adipiscing aliquip ex ea commodo consequatut labore et dolore magna aliqua. \r\nUt enim ad minim veniam, quis nostrud  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in  in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;', '', 'Excepteur', '', ''),
(59, 1, 'MI prime 3s', '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;; font-size: 16px;&quot;&gt;The Xiaomi Redmi 3S Prime is a great addition to the company\'s offerings in the sub-Rs. 10,000 price segment. The metal body and 4100mAh battery are the device\'s main highlights. Quick fingerprint recognition will enable you to unlock the phone in no time and works even with wet fingers. The only real problems we faced were occasional heating while using the camera app, and some random reboots. Overall, the Redmi 3S Prime offers great value for money.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', '3s', 'The Xiaomi Redmi 3S Prime is a great addition to the company\'s offerings in the sub-Rs. 10,000 price segment. The metal body and 4100mAh battery are the device\'s main highlights. Quick fingerprint recognition will enable you to unlock the phone in no time', '3s prime'),
(59, 2, 'MI prime 3s', '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;; font-size: 16px;&quot;&gt;The Xiaomi Redmi 3S Prime is a great addition to the company\'s offerings in the sub-Rs. 10,000 price segment. The metal body and 4100mAh battery are the device\'s main highlights. Quick fingerprint recognition will enable you to unlock the phone in no time and works even with wet fingers. The only real problems we faced were occasional heating while using the camera app, and some random reboots. Overall, the Redmi 3S Prime offers great value for money.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', '3s', '', ''),
(60, 1, 'poco x1', '&lt;br&gt;', 'tag', 'poco', 'description\r\n', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(60, 2, 'poco x1', '&lt;table cellspacing=&quot;0&quot; style=&quot;background-color: rgb(250, 250, 250); margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 1048px;&quot;&gt;&lt;tbody style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2modules&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word; background: rgb(255, 255, 255);&quot;&gt;Motorized pop-up 20 MP, f/2.2, (wide), 1/3.4&quot;, 0.8µm&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2modules&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word; background: rgb(255, 255, 255);&quot;&gt;No&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2modules&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word; background: rgb(255, 255, 255);&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;td class=&quot;ttl&quot; style=&quot;margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; word-break: normal; color: rgb(125, 116, 100); padding: 2px 5px !important; width: 103px !important;&quot;&gt;&lt;a href=&quot;https://www.gsmarena.com/glossary.php3?term=camera&quot; style=&quot;color: rgb(85, 85, 85); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;Features&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2features&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;HDR&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2features&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2features&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;td class=&quot;ttl&quot; style=&quot;margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; word-break: normal; color: rgb(125, 116, 100); padding: 2px 5px !important; width: 103px !important;&quot;&gt;&lt;a href=&quot;https://www.gsmarena.com/glossary.php3?term=camera&quot; style=&quot;color: rgb(85, 85, 85); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;Video&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2video&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;1080p@30fps, 720p@120fps&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2video&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;cam2video&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table cellspacing=&quot;0&quot; style=&quot;background-color: rgb(250, 250, 250); margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 1048px;&quot;&gt;&lt;tbody style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;th rowspan=&quot;3&quot; scope=&quot;row&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-transform: uppercase; width: 88px; color: rgb(213, 0, 0);&quot;&gt;SOUND&lt;/th&gt;&lt;td class=&quot;ttl&quot; style=&quot;margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; word-break: normal; color: rgb(125, 116, 100); padding: 2px 5px !important; width: 103px !important;&quot;&gt;&lt;a href=&quot;https://www.gsmarena.com/glossary.php3?term=loudspeaker&quot; style=&quot;color: rgb(85, 85, 85); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;Loudspeaker&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;Yes&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;Yes&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;td class=&quot;ttl&quot; style=&quot;margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; word-break: normal; color: rgb(125, 116, 100); padding: 2px 5px !important; width: 103px !important;&quot;&gt;&lt;a href=&quot;https://www.gsmarena.com/glossary.php3?term=audio-jack&quot; style=&quot;color: rgb(85, 85, 85); margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;3.5mm jack&lt;/a&gt;&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;Yes&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;Yes&lt;/td&gt;&lt;td class=&quot;nfo&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px 1px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;td class=&quot;ttl&quot; style=&quot;margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; word-break: normal; color: rgb(125, 116, 100); padding: 2px 5px !important; width: 103px !important;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;nfo&quot; data-spec=&quot;optionalother&quot; style=&quot;padding: 2px 10px; margin: 0px; border-width: 0px 0px medium 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(221, 221, 221); border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative; width: 287px; word-break: break-word;&quot;&gt;24-bit/192kHz audio&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', '', 'poco x1', '', ''),
(61, 2, 'apple', '', '', 'apple', '', ''),
(61, 1, 'apple', '', '', 'apple', '', ''),
(62, 2, 'Infusion von Rose Eau de Parfum - Frauen Parfum', '&lt;p&gt;&lt;span style=&quot;font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;he fragrance counter, like the&amp;nbsp;wine aisle, can be a bit intimidating to navigate. Training your&amp;nbsp;nose to decipher the intricacies of a scent is an art that requires lots of practice and while you may know you like rose or citrus notes, things start to get&amp;nbsp;confusing when termslike gourmand, oud and oriental are thrown into the mix.&amp;nbsp;We asked perfume master&amp;nbsp;Ben Krigler, fifth generation heir to the historic&amp;nbsp;house&amp;nbsp;of&amp;nbsp;&lt;/span&gt;&lt;a class=&quot;body-link&quot; href=&quot;http://krigler.com/index.html&quot; target=&quot;_blank&quot; data-vars-ga-outbound-link=&quot;http://krigler.com/index.html&quot; style=&quot;background-image: linear-gradient(rgb(255, 255, 255) 0px, rgb(255, 255, 255) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(179, 0, 16); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;Krigler&lt;/a&gt;&lt;span style=&quot;font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;&amp;nbsp;perfumes (the brand\'s creations were&amp;nbsp;beloved by Grace Kelly, Marlene Dietrich,&amp;nbsp;Audrey Hepburn and John F. Kennedy, to name&amp;nbsp;a few), to take us through the differences between some common, but obscure, descriptions.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Infusion von Rose Eau de Parfum - Frauen Parfum', '', ''),
(62, 1, 'Infusion von Rose Eau de Parfum - Frauen Parfum', '&lt;p&gt;&lt;span style=&quot;font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;he fragrance counter, like the&amp;nbsp;wine aisle, can be a bit intimidating to navigate. Training your&amp;nbsp;nose to decipher the intricacies of a scent is an art that requires lots of practice and while you may know you like rose or citrus notes, things start to get&amp;nbsp;confusing when termslike gourmand, oud and oriental are thrown into the mix.&amp;nbsp;We asked perfume master&amp;nbsp;Ben Krigler, fifth generation heir to the historic&amp;nbsp;house&amp;nbsp;of&amp;nbsp;&lt;/span&gt;&lt;a class=&quot;body-link&quot; href=&quot;http://krigler.com/index.html&quot; target=&quot;_blank&quot; data-vars-ga-outbound-link=&quot;http://krigler.com/index.html&quot; style=&quot;background-image: linear-gradient(rgb(255, 255, 255) 0px, rgb(255, 255, 255) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(179, 0, 16); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;Krigler&lt;/a&gt;&lt;span style=&quot;font-family: Charter, Georgia, Times, serif; font-size: 19px;&quot;&gt;&amp;nbsp;perfumes (the brand\'s creations were&amp;nbsp;beloved by Grace Kelly, Marlene Dietrich,&amp;nbsp;Audrey Hepburn and John F. Kennedy, to name&amp;nbsp;a few), to take us through the differences between some common, but obscure, descriptions.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Infusion von Rose Eau de Parfum - Frauen Parfum', '', ''),
(51, 1, 'aenean dignissim', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;&amp;lt;embed type=&quot;video/webm&quot; src=&quot;movie.mp4&quot; width=&quot;400&quot; height=&quot;300&quot;&amp;gt;&lt;br&gt;\r\n', '', 'aenean dignissim', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(534, 51, 1, 2, 0, '12.0000', '2020-10-17', '2020-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 4),
(28, 7),
(28, 14),
(30, 2),
(30, 7),
(30, 15),
(32, 1),
(32, 9),
(32, 14),
(34, 3),
(34, 6),
(34, 12),
(36, 6),
(36, 12),
(40, 2),
(40, 3),
(40, 4),
(40, 7),
(41, 1),
(41, 7),
(41, 15),
(44, 2),
(44, 9),
(45, 2),
(45, 9),
(45, 14),
(46, 2),
(46, 9),
(46, 12),
(47, 1),
(47, 6),
(48, 2),
(48, 8),
(48, 12),
(49, 2),
(49, 8),
(49, 12),
(50, 1),
(50, 6),
(51, 1),
(51, 6),
(54, 1),
(54, 6),
(57, 1),
(57, 6),
(57, 14),
(58, 1),
(58, 6),
(58, 15),
(59, 7),
(61, 6),
(62, 1),
(62, 6),
(62, 7),
(62, 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `videolink_status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `videolink_status`) VALUES
(3778, 34, 'catalog/demo/product/10.jpg', 0, 0),
(3826, 47, 'catalog/demo/product/14.jpg', 0, 0),
(3952, 40, 'catalog/demo/product/7.jpg', 0, 0),
(3795, 32, 'catalog/demo/product/15.jpg', 0, 0),
(3825, 47, 'catalog/demo/product/11.jpg', 0, 0),
(3888, 44, 'catalog/demo/product/15.jpg', 0, 0),
(3868, 41, 'catalog/demo/product/4.jpg', 0, 0),
(3966, 30, 'catalog/demo/product/6.jpg', 0, 0),
(3748, 46, 'catalog/demo/product/11.jpg', 0, 0),
(3940, 45, 'catalog/demo/product/6.jpg', 0, 0),
(3816, 48, 'catalog/demo/product/5.jpg', 0, 0),
(4140, 51, 'https://www.youtube.com/embed/tgbNymZ7vqY?controls=0', 0, 1),
(4139, 51, 'catalog/demo/product/6.jpg', 0, 0),
(4138, 51, 'catalog/logo.png', 0, 0),
(4137, 51, 'catalog/demo/product/5.jpg', 0, 0),
(3887, 44, 'catalog/demo/product/13.jpg', 0, 0),
(3886, 44, 'catalog/demo/product/10.jpg', 0, 0),
(3869, 41, 'catalog/demo/product/13.jpg', 0, 0),
(3965, 30, 'catalog/demo/product/2.jpg', 0, 0),
(3815, 48, 'catalog/demo/product/13.jpg', 0, 0),
(3814, 48, 'catalog/demo/product/14.jpg', 0, 0),
(3945, 28, 'catalog/demo/product/11.jpg', 0, 0),
(3944, 28, 'catalog/demo/product/10.jpg', 0, 0),
(3777, 34, 'catalog/demo/product/15.jpg', 0, 0),
(3802, 36, 'catalog/demo/product/14.jpg', 0, 0),
(3794, 32, 'catalog/demo/product/11.jpg', 0, 0),
(3925, 54, 'catalog/demo/product/15.jpg', 0, 0),
(3824, 47, 'catalog/demo/product/7.jpg', 0, 0),
(3973, 50, 'catalog/demo/product/9.jpg', 0, 0),
(3747, 46, 'catalog/demo/product/15.jpg', 0, 0),
(3939, 45, 'catalog/demo/product/10.jpg', 0, 0),
(3932, 49, 'catalog/demo/product/15.jpg', 0, 0),
(3972, 50, 'catalog/demo/product/10.jpg', 0, 0),
(3801, 36, 'catalog/demo/product/15.jpg', 0, 0),
(4136, 51, 'catalog/demo/product/12.jpg', 0, 0),
(3951, 40, 'catalog/demo/product/15.jpg', 0, 0),
(3950, 40, 'catalog/demo/product/8.jpg', 0, 0),
(3867, 41, 'catalog/demo/product/12.jpg', 0, 0),
(3964, 30, 'catalog/demo/product/7.jpg', 0, 0),
(3971, 50, 'catalog/demo/product/8.jpg', 0, 0),
(3970, 50, 'catalog/demo/product/3.jpg', 0, 0),
(3813, 48, 'catalog/demo/product/11.jpg', 0, 0),
(3746, 46, 'catalog/demo/product/9.jpg', 0, 0),
(3745, 46, 'catalog/demo/product/2.jpg', 0, 0),
(3744, 46, 'catalog/demo/product/14.jpg', 0, 0),
(3943, 28, 'catalog/demo/product/15.jpg', 0, 0),
(3942, 28, 'catalog/demo/product/14.jpg', 0, 0),
(3823, 47, 'catalog/demo/product/2.jpg', 0, 0),
(3822, 47, 'catalog/demo/product/4.jpg', 0, 0),
(3938, 45, 'catalog/demo/product/13.jpg', 0, 0),
(3937, 45, 'catalog/demo/product/14.jpg', 0, 0),
(3936, 45, 'catalog/demo/product/12.jpg', 0, 0),
(3935, 45, 'catalog/demo/product/5.jpg', 0, 0),
(3776, 34, 'catalog/demo/product/8.jpg', 0, 0),
(3775, 34, 'catalog/demo/product/12.jpg', 0, 0),
(3774, 34, 'catalog/demo/product/5.jpg', 0, 0),
(3931, 49, 'catalog/demo/product/10.jpg', 0, 0),
(3800, 36, 'catalog/demo/product/3.jpg', 0, 0),
(3799, 36, 'catalog/demo/product/9.jpg', 0, 0),
(3798, 36, 'catalog/demo/product/13.jpg', 0, 0),
(3793, 32, 'catalog/demo/product/6.jpg', 0, 0),
(3924, 54, 'catalog/demo/product/3.jpg', 0, 0),
(3949, 40, 'catalog/demo/product/6.jpg', 0, 0),
(3812, 48, 'catalog/demo/product/12.jpg', 0, 0),
(3811, 48, 'catalog/demo/product/6.jpg', 0, 0),
(3923, 54, 'catalog/demo/product/7.jpg', 0, 0),
(3948, 40, 'catalog/demo/product/5.jpg', 0, 0),
(3941, 28, 'catalog/demo/product/13.jpg', 0, 0),
(3930, 49, 'catalog/demo/product/5.jpg', 0, 0),
(3743, 46, 'catalog/demo/product/6.jpg', 0, 0),
(3792, 32, 'catalog/demo/product/11.jpg', 0, 0),
(3704, 57, 'catalog/demo/product/2.jpg', 0, 0),
(3703, 57, 'catalog/demo/product/12.jpg', 0, 0),
(3702, 57, 'catalog/demo/product/15.jpg', 0, 0),
(3820, 58, 'catalog/demo/product/10.jpg', 0, 0),
(3819, 58, 'catalog/demo/product/15.jpg', 0, 0),
(3818, 58, 'catalog/demo/product/4.jpg', 0, 0),
(3705, 57, 'catalog/demo/product/7.jpg', 0, 0),
(3706, 57, 'catalog/demo/product/1.jpg', 0, 0),
(3865, 41, 'catalog/demo/product/15.jpg', 0, 0),
(3947, 40, 'catalog/demo/product/9.jpg', 0, 0),
(3817, 58, 'catalog/demo/product/5.jpg', 0, 0),
(3969, 50, 'catalog/demo/product/2.jpg', 0, 0),
(3791, 32, 'catalog/demo/product/3.jpg', 0, 0),
(3797, 36, 'catalog/demo/product/8.jpg', 0, 0),
(3929, 49, 'catalog/demo/product/14.jpg', 0, 0),
(3928, 49, 'catalog/demo/product/1.jpg', 0, 0),
(3779, 34, 'catalog/demo/product/2.jpg', 0, 0),
(3885, 44, 'catalog/demo/product/11.jpg', 0, 0),
(3922, 54, 'catalog/demo/product/2.jpg', 0, 0),
(3796, 32, 'catalog/demo/product/13.jpg', 0, 0),
(3927, 49, 'catalog/demo/product/9.jpg', 0, 0),
(3821, 58, 'catalog/demo/product/17.jpg', 0, 0),
(3827, 47, 'catalog/demo/product/15.jpg', 0, 0),
(3866, 41, 'catalog/demo/product/6.jpg', 0, 0),
(3864, 41, 'catalog/demo/product/2.jpg', 0, 0),
(3963, 30, 'catalog/demo/product/12.jpg', 0, 0),
(3870, 41, 'catalog/demo/product/3.jpg', 0, 0),
(3962, 30, 'catalog/demo/product/13.jpg', 0, 0),
(3884, 44, 'catalog/demo/product/12.jpg', 0, 0),
(3889, 44, 'catalog/demo/product/6.jpg', 0, 0),
(3926, 54, 'catalog/demo/product/6.jpg', 0, 0),
(3933, 49, 'catalog/demo/product/7.jpg', 0, 0),
(3934, 49, 'catalog/demo/product/6.jpg', 0, 0),
(3946, 28, 'catalog/demo/product/1.jpg', 0, 0),
(3953, 40, 'catalog/demo/product/10.jpg', 0, 0),
(3967, 30, 'catalog/demo/product/14.jpg', 0, 0),
(3968, 30, 'catalog/demo/product/3.jpg', 0, 0),
(3974, 50, 'catalog/demo/product/5.jpg', 0, 0),
(3994, 62, 'catalog/demo/jeroen-den-otter-2b0JeJTEclQ-unsplash.jpg', 0, 0),
(4135, 51, 'catalog/demo/product/11.jpg', 0, 0),
(4134, 51, 'catalog/demo/product/13.jpg', 0, 0),
(4133, 51, 'catalog/demo/product/14.jpg', 0, 0),
(4132, 51, 'catalog/demo/product/15.jpg', 0, 0),
(4131, 51, 'catalog/demo/product/10.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(227, 50, 12, '2011-04-22', 1),
(225, 47, 12, '2011-04-22', 1),
(226, 30, 5, '', 1),
(228, 51, 12, '2011-04-22', 1),
(230, 54, 12, '2011-04-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(16, 226, 30, 5, 40, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value_data`
--

CREATE TABLE `oc_product_option_value_data` (
  `product_option_value_data_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 32),
(28, 34),
(28, 41),
(28, 44),
(28, 45),
(28, 46),
(28, 48),
(28, 58),
(30, 45),
(30, 46),
(30, 47),
(30, 49),
(30, 50),
(30, 51),
(30, 54),
(30, 57),
(30, 58),
(32, 28),
(32, 36),
(32, 40),
(32, 41),
(32, 44),
(32, 47),
(32, 49),
(32, 50),
(32, 51),
(32, 54),
(32, 57),
(34, 28),
(34, 34),
(34, 44),
(34, 45),
(34, 48),
(36, 32),
(36, 40),
(36, 41),
(36, 44),
(36, 45),
(36, 47),
(36, 50),
(36, 51),
(36, 54),
(40, 32),
(40, 36),
(40, 40),
(40, 44),
(40, 45),
(40, 47),
(40, 48),
(40, 50),
(40, 51),
(40, 54),
(40, 57),
(40, 58),
(41, 28),
(41, 32),
(41, 36),
(41, 45),
(41, 46),
(41, 48),
(41, 49),
(41, 57),
(41, 58),
(44, 28),
(44, 32),
(44, 34),
(44, 36),
(44, 40),
(44, 45),
(44, 48),
(44, 49),
(44, 57),
(44, 58),
(45, 28),
(45, 30),
(45, 34),
(45, 36),
(45, 40),
(45, 41),
(45, 44),
(45, 48),
(45, 49),
(46, 28),
(46, 30),
(46, 41),
(46, 47),
(46, 48),
(46, 50),
(46, 51),
(46, 54),
(46, 57),
(47, 30),
(47, 32),
(47, 36),
(47, 40),
(47, 46),
(47, 47),
(47, 48),
(47, 49),
(47, 50),
(47, 51),
(47, 54),
(48, 28),
(48, 34),
(48, 40),
(48, 41),
(48, 44),
(48, 45),
(48, 46),
(48, 47),
(48, 48),
(48, 50),
(48, 51),
(48, 54),
(49, 30),
(49, 32),
(49, 41),
(49, 44),
(49, 45),
(49, 47),
(49, 50),
(49, 51),
(49, 54),
(49, 58),
(50, 30),
(50, 32),
(50, 36),
(50, 40),
(50, 46),
(50, 47),
(50, 48),
(50, 49),
(50, 51),
(50, 54),
(51, 30),
(51, 32),
(51, 36),
(51, 40),
(51, 46),
(51, 47),
(51, 48),
(51, 49),
(51, 50),
(51, 57),
(51, 58),
(54, 30),
(54, 32),
(54, 36),
(54, 40),
(54, 46),
(54, 47),
(54, 48),
(54, 49),
(54, 50),
(57, 30),
(57, 32),
(57, 40),
(57, 41),
(57, 44),
(57, 46),
(57, 51),
(58, 28),
(58, 30),
(58, 40),
(58, 41),
(58, 44),
(58, 49),
(58, 51);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(698, 47, 1, 300),
(711, 28, 1, 400),
(713, 30, 1, 200),
(703, 44, 1, 700),
(710, 45, 1, 800),
(714, 50, 1, 300),
(708, 54, 1, 300),
(730, 51, 1, 300),
(709, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(614, 44, 1, 0, '850.0000', '2019-02-02', '2019-07-12'),
(618, 49, 1, 0, '600.0000', '0000-00-00', '2021-03-12'),
(612, 41, 1, 0, '50.0000', '2019-02-19', '2022-09-24'),
(608, 48, 1, 0, '450.0000', '0000-00-00', '2020-09-15'),
(620, 28, 1, 0, '180.0000', '0000-00-00', '2021-01-07'),
(619, 45, 1, 0, '720.0000', '0000-00-00', '2021-07-06'),
(605, 32, 1, 0, '650.0000', '0000-00-00', '2020-07-18'),
(606, 36, 1, 0, '65.0000', '0000-00-00', '2020-07-16'),
(639, 51, 1, 0, '48.0000', '2019-11-11', '2022-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 24),
(28, 48),
(30, 34),
(30, 94),
(32, 34),
(32, 48),
(32, 55),
(34, 34),
(34, 55),
(36, 34),
(36, 48),
(36, 55),
(40, 24),
(40, 48),
(41, 34),
(41, 48),
(41, 55),
(44, 34),
(44, 48),
(45, 48),
(46, 34),
(46, 48),
(46, 55),
(47, 34),
(47, 48),
(47, 55),
(48, 34),
(48, 48),
(48, 55),
(49, 34),
(49, 55),
(50, 34),
(50, 48),
(50, 55),
(50, 100),
(51, 34),
(51, 48),
(51, 55),
(51, 94),
(51, 96),
(54, 34),
(54, 55),
(57, 34),
(58, 34),
(58, 48),
(58, 55),
(59, 90),
(59, 100),
(60, 93),
(61, 97),
(62, 109);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(49, 0, 0),
(47, 0, 0),
(30, 0, 0),
(28, 0, 0),
(41, 0, 0),
(40, 0, 0),
(48, 0, 0),
(36, 0, 0),
(34, 0, 0),
(32, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(50, 0, 0),
(51, 0, 0),
(54, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(30, 0),
(32, 0),
(34, 0),
(36, 0),
(40, 0),
(41, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(54, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return`
--

INSERT INTO `oc_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(1, 25, 0, 14, 'hari', 'hari', 'haribabu@xmediasolution.com', 'admin', 'aenean dignissim', 'Product 21', 1, 1, 1, 3, 3, '', '2020-10-18', '2020-10-18 00:19:28', '2020-10-18 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_history`
--

INSERT INTO `oc_return_history` (`return_history_id`, `return_id`, `return_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 3, 1, '', '2020-10-18 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 51, 0, 'Diana', 'There was a confusion with the delivery date of the order I placed as Saturday was displayed as a working day for Battery Megastore on the web. I expected the battery to be delivered on the very next working day but later learned that the online orders are processed on Saturday (therefore, +1 day more for the delivery).', 4, 1, '2018-05-28 09:46:55', '2018-05-28 09:54:42'),
(3, 40, 0, 'maria', 'We are extremely sorry for the delay in receiving your order. Your item was dispatch on time and on a next working day service. Unfortunately the courier had issues finding your property and this is why you were asked details about your property to pass on to the courier to help them locate. We did everything we could to provide UK Mail with the information you provided us and can only apologise that you were not happy with this.', 5, 1, '2018-05-28 09:47:32', '2018-10-02 14:51:54'),
(4, 44, 0, 'samantha', 'I have given one star, unfortunately minus 10 stars is not available.\r\nI browsed for a 027 bosch s5005 car van battery and one option was battery megastore on ebay. Their ad was tagged/ and headed 027 heavy duty Bosch s5005 car van battery 12v ', 4, 1, '2018-05-28 09:47:53', '2018-05-28 09:54:31'),
(5, 30, 0, 'Alejandra', 'I have now used Battery Megastore TWICE. The first time was in Aug-17 when I was able to get an exact match for the Varta battery that was originally fitted to my Skoda Octavia 2.0 TDi at the factory. It arrived within 24 hours of ordering and at a very competiteve price.\r\nThe second time was just before Christmas 2017 when my daughter in law\'s battery on her 2004 Toyota Yaris gave up the ghost. George in the sales dept was extremely helpful and once again I got a very good deal on the battery itself and brilliant customer service', 4, 1, '2018-05-28 09:48:09', '2018-05-28 09:54:28'),
(6, 50, 0, 'Sara', 'Bought 3 different car batteries off these folks over the last few years, latest one arrived today, looks fine and shows 12.6 volts out of the box - always get the best Varta I can afford, so wouldn\'t expect any trouble with the product (fingers crossed).\r\nTheir price has been very decent, packaging good enough and delivery worked fine enough for me - there cant be many couriers who will carry stuff like this.\r\nThe negative reviews about customer service are a worry, in this day and age you cant persistently upset people - but so far I am a happy customer', 5, 1, '2018-05-28 09:48:25', '2018-05-28 09:54:26'),
(8, 48, 0, 'viridiana', 'I ordered battery at 15.30 yesterday. Got email at 09.30 today saying it would be here between 13-14.00. It arrived 13.30. Prefect fit even packaging is great.. I’ve already got a use for the great it was sent in. I bought cheapest battery for my CR-V as I’m changing it in a month or so. Best price I could find anywhere and states 4 year guarantee. £7.50 postage is cheap too.', 5, 1, '2018-05-28 09:49:17', '2018-05-28 09:54:21'),
(9, 46, 0, 'Alexa', 'Megastore web-site could not find a battery with a Linux Mint browser; neither number plate nor model and make worked. 24 hour delivery was delayed by UK Mail which was inconvenient. Megastore staff were helpful though with both problems. A previous order 4 years ago did not have any problems.', 5, 1, '2018-05-28 09:49:33', '2018-10-02 14:51:48'),
(10, 28, 0, 'Morgane', 'A poor service .paid for a np2412i battery they should have had 5 in stock . Had a phone call out of stock due in next Tuesday and if I am lucky it should be sent out Wednesday so Fri I might just get it . But they still show 5 in stock.', 4, 1, '2018-05-28 09:49:55', '2018-05-28 09:54:12'),
(11, 47, 0, 'Monique', 'I purchased a Varta battery for my car - it arrived the next working day as advised (courier UKMail). Good value. I have bought from this site previously so was confident of everything going to plan. Would happily recommend. ', 4, 1, '2018-05-28 09:50:10', '2018-05-28 09:54:07'),
(12, 45, 0, 'sandra', 'Completely shocking customer service. Within 2 hours of use the Battery exploded battery acid all over my engine bay. Messaged customer services, won’t offer a replacement. I removed the transportation bungs, the battery had adequate ventilation and was not charged before use. Jack, the guy I spoke to seems to think his management are above the law and consumers rights. I am now £60 down with no replacement battery, wasting my time on a case through eBay. AVOID AT ALL COSTS!!', 5, 1, '2018-05-28 09:50:30', '2018-10-02 14:51:46'),
(13, 34, 0, 'marian', 'Purchased at 4.30pm and received tracking details 10 mins later stating it will be delivered tomorrow. Cheap and efficient, what\'s not to like?\r\n\r\n', 5, 1, '2018-05-28 09:50:46', '2018-05-28 09:54:00'),
(14, 36, 0, 'Joyce', 'Great company to deal with. Good quality product with next day delivery. Excellent communication. Highly recommended.', 5, 1, '2018-05-28 09:51:08', '2018-05-28 09:53:57'),
(15, 32, 0, 'Emeline', 'This review is long overdo! I am actually writing this review for my fiance John! The ring that was given to me from John is the most beautiful ring I have ever seen!!! I actually told him that I don\'t…&quot; read more\r\nin Jewelry', 4, 1, '2018-05-28 09:51:56', '2018-05-28 09:53:54'),
(16, 54, 0, 'Leodanis', 'Words cannot express what a horrific shopping experience I had here today. A couple of weeks ago, I was wrongly charged twice for an item and had to come in store with my receipt to get a refund for overcharge. Fast forward to today, I came in again to shop and was pulled aside by the cashier. Please see a picture of her below.', 4, 1, '2018-05-28 09:52:18', '2018-05-28 09:53:50'),
(17, 49, 0, 'Ramiro', 'Extremely affordable - even cheaper than F21.  It is extremely crowded though.  You get what you pay for - no idea why people are complaining so much.  It\'s an old school Asian shop with good products - the products sell itself and you don\'t need much customer service asides from check-out.  There\'s definitely some gems in here. :)', 5, 1, '2018-05-28 09:52:39', '2018-10-02 14:51:45'),
(18, 41, 0, 'hibram', 'Love this place, they have some of the same brands and same exact clothes that all these boutiques carry in oc but for a lot cheaper! Those boutiques rip you off when you can just come get it here. I always always always find cute stuff in fashion young :)', 4, 1, '2018-05-28 09:55:44', '2018-05-28 09:56:07'),
(19, 58, 0, 'john', 'good', 4, 1, '2018-05-05 15:40:06', '0000-00-00 00:00:00'),
(20, 57, 0, 'Diana', 'well done', 4, 1, '2018-05-03 15:40:06', '0000-00-00 00:00:00'),
(21, 62, 0, 'wersdf', 'werwerewrsdfsdfds dsfsdfds sdfdsdf sdfdsfsd sdfdsf', 4, 1, '2020-10-17 03:30:37', '2020-10-17 03:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(1380, 0, 1, 'product_id=48', 'ipod-classic'),
(861, 0, 1, 'manufacturer_id=8', 'apple'),
(981, 0, 1, 'information_id=4', 'about_us'),
(1440, 0, 1, 'category_id=34', 'mp3-players'),
(1457, 0, 1, 'category_id=28', 'monitor'),
(1462, 0, 1, 'category_id=24', 'smartphone'),
(1456, 0, 1, 'category_id=43', 'test11'),
(1450, 0, 1, 'category_id=44', 'test12'),
(1458, 0, 1, 'category_id=47', 'test15'),
(1461, 0, 1, 'category_id=48', 'test16'),
(1449, 0, 1, 'category_id=49', 'test17'),
(1459, 0, 1, 'category_id=50', 'test18'),
(1452, 0, 1, 'category_id=51', 'test19'),
(1455, 0, 1, 'category_id=52', 'test20'),
(1454, 0, 1, 'category_id=53', 'test21'),
(1451, 0, 1, 'category_id=55', 'test23'),
(1463, 0, 1, 'product_id=30', 'canon-eos-5d'),
(1381, 0, 1, 'product_id=47', 'hp-lp3065'),
(1443, 0, 1, 'product_id=28', 'htc-touch-hd'),
(1406, 0, 1, 'product_id=44', 'macbook-air'),
(1442, 0, 1, 'product_id=45', 'macbook-pro'),
(1441, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(1346, 0, 1, 'product_id=46', 'sony-vaio'),
(1386, 0, 1, 'product_id=41', 'imac'),
(1444, 0, 1, 'product_id=40', 'iphone'),
(1378, 0, 1, 'product_id=36', 'ipod-nano'),
(1350, 0, 1, 'product_id=34', 'ipod-shuffle'),
(1377, 0, 1, 'product_id=32', 'ipod-touch'),
(862, 0, 1, 'manufacturer_id=9', 'canon'),
(864, 0, 1, 'manufacturer_id=5', 'htc'),
(863, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(865, 0, 1, 'manufacturer_id=6', 'palm'),
(866, 0, 1, 'manufacturer_id=10', 'sony'),
(868, 0, 1, 'information_id=6', 'delivery'),
(869, 0, 1, 'information_id=3', 'privacy'),
(870, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('00059042b6a2104f078f4a3688', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wHRQix0EFKhanuDkFKY84I8JSgXMYLSV\"}', '2018-10-10 11:03:16'),
('000a2802d33ffd32e57ceb49d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-06 18:10:02'),
('0060486cb43ab4d0c96c68da3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 05:54:10'),
('00ee46bcaf64cccd7cb5a9baf2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"x30wfP6nxQaqVhirDUokyHH1fyApIdiG\"}', '2019-12-06 17:33:22'),
('01896ec36283621e95ebc79333', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-02 15:01:48'),
('026a835f04e412f8d210301886', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IOrOOJDJ0RV6o1UKoVjex3iClaKkpE4n\"}', '2018-07-04 09:38:35'),
('0275fc366b2eb33bfd64c2b033', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-02 13:23:21'),
('028ae9a18ab2a3e378f3e0f444', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 06:36:07'),
('02d0f5b4eac6705f567d83405a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 08:12:59'),
('02e339ef8ce0779cb9e7ac7987', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 12:37:01'),
('0380c569cb9aa069059d6bda6a', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xc2XMf7RBoGGA7t1L9ogy7P3hhzFKKZB\"}', '2018-07-29 11:31:10'),
('0449cb410ce34649b3e5435cd5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NzoWwmVrhDhpuaP1AzTgeOd7N43zPHFu\"}', '2018-07-28 12:47:07'),
('048772d28b5259e26242f683b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"i7An4mRnq4VqMm4hauiFGGuYj6pFhMnt\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc020024\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=4\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-07-19 18:27:29'),
('04d45dc22970fbc795d1d676a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 13:26:15'),
('04d540ca8ac1e89a7408cb3b8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-17 12:45:38'),
('04e63bad48623f7dd1f093f485', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tdTyGILvx7VuiBrHQmDjmpIyuoMwDX3A\",\"install\":\"bbk26tbARM\"}', '2019-11-23 16:13:22'),
('04ead140fc4b11d71860b83714', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 10:28:43'),
('056d9c761b3c3fab5627dedf8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"51\"]}', '2020-10-25 07:45:05'),
('05f64751518a054206ae5fbf19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 12:31:13'),
('06a64af31ad5df3bbde362802b', '{\"api_id\":\"8\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:17:35'),
('06afb7d3bd6bd3b81e108daa20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-05 12:33:20'),
('06cfb3d2cfbfc12c099ae9b0d6', '{\"api_id\":\"26\"}', '2019-11-22 11:24:54'),
('06d64db0be122ac9bbbdb8926b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 11:39:27'),
('06e63fb3e8d4966484076ada98', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-11-21 16:07:15'),
('075fdff3f0647fce2442318e0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:48'),
('07eab17f5f97075d16d927dd0f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mec81R4gACCjiiSUo8hy74lJQOlFmPMx\"}', '2018-05-26 08:39:58'),
('08642ff6f79cf25c3ed870c70d', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ASKcMeRRzSCiSAmvF9EL37l8NAm2Ys6b\"}', '2018-08-04 12:08:29'),
('0877f93c657320859c7def8d20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 09:26:33'),
('09ec1a8647741e7acd64661e65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8iXvGF7DIWDwisVyEkbWlC5BGGFe1LnB\"}', '2018-10-06 09:10:00'),
('0a279cd75fdd486fe5c9bb957f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 13:06:00'),
('0a876c01df327075a7cff2f85f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Qdlb70aak7V8o15Um8YyyExhLNSLF9F1\",\"install\":\"hknpt8yUXE\"}', '2018-10-06 13:26:16'),
('0ac901a2997d1764b05b5bc8bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 05:58:38'),
('0b5fd04c660b9f26c48a996f69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LTUFJVg5dKExoFoWJ094NLRCYfMIyWQp\"}', '2018-11-15 13:20:33'),
('0c0ea280a373ef166506dc1f9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-03-04 10:18:44'),
('0cb1e40641c0349e50ceaa28db', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0HeIhPIdclMuI6wPm00lWk92cgO51ygg\",\"customer_id\":\"14\",\"payment_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null}}', '2020-08-08 06:56:55'),
('0ce10c981a7f6769ba9bd3cc33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-15 04:15:18'),
('0d023fb7be1c203a41a25e453c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"51 \"]}', '2018-06-21 07:06:54'),
('0d81599692c89c24c04a3d1343', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7PdodHcQptjxU4FBUmF3ca1k2awP8ZGx\"}', '2018-07-18 17:11:51'),
('0e0e3e6bf1f204503b708d3cab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-04 04:29:14'),
('0f24aa38385d2a89b818444769', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-20 18:18:18'),
('0f7519d23dab24226a67236c25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:27:51'),
('0f7b1531aefc1d14fb20c1a696', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-02-17 09:04:38'),
('105398061a51af6315a89fc531', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"x4dl7tMTyhq19KrxIqzNcgQMkSoGSS7L\"}', '2019-03-02 07:30:10'),
('10ae4f5a5811ed275c1fa314dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"54XavJ1qpDzd7Csv797qtmUCKCxBQMYq\",\"install\":\"jWfudSJ9Ii\"}', '2018-05-11 11:49:08'),
('11261b34b47ea9721f581a45e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"eROz230EaYGUf1dnHN5Cco9KMS8udOj8\",\"compare\":[\"32 \"],\"wishlist\":[\"32 \",\"40 \"],\"install\":\"jR0oXtuY36\"}', '2018-11-18 13:26:40'),
('1128ef111370535dff7ca22e03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-28 10:32:49'),
('11543db9b6179443fa1cea7cef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"P2Gm8O22JfBRRHVubqBafAxhVBF08eZS\"}', '2019-12-08 12:29:44'),
('1205b35c33d838df964e97eaba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:55'),
('1215b2cbcb40ee3a259ae66f7a', '{\"api_id\":\"8\"}', '2018-09-21 11:17:42'),
('122ca9ed71f8ba6893eca02f74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-11 11:35:32'),
('12a58d26341c0ff6c70a698e35', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"48 \",\"48\"],\"wishlist\":[\"48 \",\"48\"],\"vouchers\":[],\"customer_id\":\"12\"}', '2019-12-06 17:59:57'),
('12adeb9e024cf07e8c900226e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 17:55:32'),
('12cc34c1154e06a20c359125d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-06 04:46:44'),
('13e2ae98206dd9f29165225a3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 09:39:14'),
('14389218800f0bdb1797bbb75d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zpt5327kSQRQrwMD23kVURwttQubgFGb\"}', '2018-06-20 11:12:46'),
('14a3b0e6de0e7d57f26954028a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Q8Vy4L4aqAL2R4s5yUADUmHJ7jfR2isS\",\"compare\":[\"51 \"]}', '2018-10-16 13:24:32'),
('159c5e73622ed8b776fda72e4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dlnhWCG64Lx39LUufTYoX7Gv4scNVNif\"}', '2018-09-24 10:37:29'),
('15d23d3e32c615f0cfc0059646', '{\"user_id\":\"1\",\"user_token\":\"XwuA0QAdyd5IYfWyefCNHZtgFZyoDs28\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"u3RHtPWewc\"}', '2019-11-15 14:34:35'),
('15d98d03f2ecbe29096bba0016', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 18:45:24'),
('164eee9fe2e2a83409d9587387', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"UhFzI3T6c75PlKwCvBdR9ZeZY2tIzQpO\",\"vouchers\":[]}', '2018-07-03 13:01:23'),
('17833efbb951a61a5cc56fc55a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-02 14:28:05'),
('182fb16d1564370f3890b4dc90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BPcXZycuXEnRmUmQiunWk584HfsiePs4\"}', '2018-07-30 10:05:54'),
('1862255c1b47910ec78b1a07ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-29 10:31:48'),
('18d217d06b45431c4ca007136f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-03 07:48:29'),
('1987d1996de37a60f21158bdc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tOuic7Mbw8N986cHiej7aJKk4foFktc1\",\"install\":\"hkAtWpc2fB\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200038\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-08-20 11:22:05'),
('1988ad6832aeaa98f1f4ae5856', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-03 11:46:23'),
('19d83da416673a9f857ae4e702', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7kzOhQSjPp4oZhOynEwhT1pXmQiduOHA\",\"install\":\"hbtMimOP0x\",\"wishlist\":[\"41 \"],\"compare\":[\"41 \"]}', '2018-12-10 13:27:44'),
('1a6d227ce8427c016af4a76253', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3AEJ0zhM9UpHSAMCCmB38aJF084XZzB8\"}', '2018-05-29 09:41:11'),
('1a6d45ac03dd2df2a9f062a017', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 05:54:55'),
('1b2f297191e36e4e24e9d52317', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uss5RT8jxVcbZQUIyIhqfNHAKBTvQ2eD\"}', '2018-10-05 13:22:24'),
('1b5ddd27329eac46eddcef9acb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-23 13:00:00'),
('1b6fccb4cd8bb19515a4fdee0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 10:08:23'),
('1bfc54be42f179d72b4bf7f490', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-18 08:28:42'),
('1bffcabf7081beee34f9fdee7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ImjfvBpZY2IdfGQ38T9X6Pkddf9j6z8C\",\"install\":\"h1XbhoSEWC\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200069\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=7\"}', '2019-01-19 13:28:03'),
('1c72e934f6c5cbe710a2978148', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7aW4WV4jflNOdHgz2arTlkpdCVFZFw7S\"}', '2018-06-19 12:06:39'),
('1cc9839592030424b5f7fe0d5b', '{\"user_id\":\"1\",\"user_token\":\"yMBzzqJAqUVMpd490RP5F6KpDC1yfegl\"}', '2020-09-14 14:24:06'),
('1cf5cef0df0cd357d7966d0bbc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DrjCIf4t5fB0xLKZ2vIXbSiHTSa7FKS9\"}', '2018-12-22 13:17:51'),
('1d09b76b19f43113855dfde79a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-11-16 15:53:32'),
('1d0cc90beb1c1a4fcfe9f467c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-08 16:44:28'),
('1d23af9a4843f67a729bfd3124', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 09:26:19'),
('1db7c50cadea930918152f5f68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:53'),
('1ddc9543b7e0a8c8208ef1f15f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"h0Z17XChwDdcnsFXeCMOypCuahjp3t5U\"}', '2018-10-18 04:14:33'),
('1e14839236c8ff498553d48f62', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"n21OGXgcpVobMySefpev2tR2NEwMBPT0\"}', '2018-06-29 13:05:12'),
('1e1f7ad8802f0f4c28ae5298b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-06 13:11:49'),
('1e7daca744a8ecd519187a79ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-19 08:57:53'),
('1ef740d80c4714931c991ae317', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-22 10:24:05'),
('1f35b738fb5cb9f7b5dde4f845', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-06 11:03:27'),
('1f86a168ff9e88fff97f87a490', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-07 09:32:56'),
('1ffc22b979352c3148e6e6716a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-19 08:07:38'),
('206bb4949cebd61820f834570c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10015\",\"city\":\"newyork\",\"country_id\":\"223\",\"zone_id\":\"3655\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"New York\",\"zone_code\":\"NY\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10015\",\"city\":\"newyork\",\"country_id\":\"223\",\"zone_id\":\"3655\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"custom_field\":[]},\"wishlist\":[\"50 \"],\"compare\":[\"50 \"]}', '2018-12-14 09:00:46'),
('207aefff857d8b33ade40fcb56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 07:52:35'),
('208ccba7e072d9648bc3868ae3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0PH2IldG4n5T34HAWkqcUx7vBb9o2I7n\"}', '2019-02-28 12:58:35'),
('216e4e2e93091391551673f57f', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8nSHR6N0oeExd2A0ovYBWkqnP2gQCvuV\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010004\\/upload\\/index.php?route=account\\/account\",\"compare\":[\"32 \",\"36 \",\"30 \"]}', '2018-10-07 13:28:22'),
('21babc7d2398197ede763bbdc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:39'),
('224b6d253f2af724ac2285c037', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"71i6iLnOQRfWDsFEGQ4HsxoYhxBtd4gr\"}', '2019-12-11 10:32:38'),
('227533a842038e472d8197e614', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 13:04:04'),
('22888cbc8d6f6f17b66a40c968', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-26 13:24:05'),
('2291523e35f235be342cf4dcea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Klb1fC3etBp9DNlPFimFaaAH6GlCWJRS\",\"install\":\"dvaAuQLnUs\"}', '2018-05-23 06:40:45'),
('22cf5642862ac4e269eb558f0d', '{\"api_id\":\"26\"}', '2019-11-22 11:26:23'),
('23e2daf31ed6c4a7a0c3995047', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aEvRPpaWwmrUe2WaAFNz4bdqzoQVRpy5\"}', '2019-12-11 09:53:43'),
('23ec92df14d6f62bfc95e1ecf2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SsmuNhFHXCtk6Ni0WYJ138xrXcaHStmY\"}', '2019-01-01 07:22:53'),
('23edefac53330999781918eab3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-22 12:36:29'),
('2487816e086d3d52d5f2e31b5e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LBzX5kmYPCNCqsjT79Tj3d81b9vVKetd\"}', '2018-09-15 13:22:25'),
('24fca8b3753620fff807550e06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-02 09:36:42'),
('25d6b32b0ae67e5e52a48b3e04', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-12 07:15:41'),
('2776bae3cd572a8a54264d36ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vGlHZehrXorOtf1YkJdDvtHo5b6zY6El\"}', '2019-12-11 16:22:11'),
('27b2b6533bb511a768f681b893', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QhkS1a7ZcgnzMjFD79lt9fEwNG711SND\"}', '2018-06-06 10:06:30'),
('285054943d5e624345759f7e8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-26 05:06:29'),
('28c5dd46c6c17b21b5d21814ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oGSs8snY2L5GtM3Nd1ZvYdBBIDbTv9GO\"}', '2018-10-08 13:26:55'),
('291133a0f9ea4c670ebc6660d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 12:07:08'),
('292d0d18946f8eba1ff1191593', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"G1GU5Ytiseafb6JavwYB1trGT0HnxjKV\",\"success\":\"Success: You have modified Category Tab Product module!\"}', '2018-09-24 12:45:18'),
('292dfc83aeebf30e83b63a5a73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-08 12:38:43'),
('2998ba5da8fc451388eacd8d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-17 14:41:27'),
('29a626cc66351482596ab9c2a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-06 17:40:48'),
('2adc3adfae05b0d156add56c21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-17 11:54:20'),
('2b171d0ab6841976692bb2cbd6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DrXpcpEnj9SQQsrR5eFBGuPzdc7i3OpV\"}', '2018-06-04 05:45:32'),
('2bceb5e094496bc0a9888f6463', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-06 13:07:08'),
('2bf23382362a674ece5befd85b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-02 04:14:37'),
('2bfc50a151b53b2fbddba00a86', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7SyMkIjgkF6cl7uRG9pUdEDh3tjKWdgC\"}', '2020-09-27 06:21:00'),
('2c48cdc07471599ad1f24c8287', '{\"user_id\":\"1\",\"user_token\":\"2I1ezy5rMgQImN949vq3ijCUv2s4ro5U\"}', '2020-09-12 04:10:14'),
('2cfb023e0aec43d8c914aa4204', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wZmaLgiQMmiVDajULetCA7OnkO8UY0D4\",\"compare\":[\"54 \",\"36\"],\"wishlist\":[\"36\"]}', '2018-11-29 13:29:00'),
('2d3f45279e9e1af459d1721c12', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wXa2JynvuWkGx5efdw0zkfozDL52Cgd8\"}', '2018-05-23 08:55:12'),
('2d5beded7a2281da4dd41fa54d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-14 14:18:37'),
('2d83ac4d872525dec55f4d03a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-04 07:00:20'),
('2dc8cda6709d28f91d56fd93ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-02 12:49:40'),
('2e018c785236e3736effec4fba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XuX7EYEQScvIZXqrx2t0zsFuR6AlbAkI\"}', '2018-12-02 13:27:08'),
('2e1e8812bffd6c355307770fdf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-16 11:32:50'),
('2e9ebc2bf8033f922f24be0bf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 12:54:47'),
('2eb56625a1ab9b328c58fd2a2a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"81awfKfE63Ky7VtqWP2pkqpRsPSueiSO\",\"wishlist\":[\"28 \"]}', '2019-02-15 13:31:10'),
('2f03fd2a7ee034d526b2a53f38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-19 16:19:17'),
('2f4619a70d85c1d0131d549553', '{\"api_id\":\"1\"}', '2018-05-23 10:43:14'),
('2f6a9e19cd91dca383a749a128', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"kloVOz4OmoMJGVuVfc18IBsT94oSuxG5\"}', '2018-09-19 06:18:58'),
('2fb9c6c082fbfa223cb4fb7335', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-28 08:58:17'),
('300b5d7964ea83e7628e36e387', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Oq7bg3B4uDeywCU39SZmmLkUbj0UDv3R\"}', '2018-09-29 07:07:41'),
('307c612560086e17d208c1dc6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2018-06-13 13:04:46'),
('30f2f884bbc27c04a19e612f78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-05 15:56:26'),
('31014d7c5b8119ab795870ff98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-17 14:44:16'),
('3124414b2c9c6a2af00da4b258', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PKCVhCdqJl2vXLYnkx3PYVl9KIHALQwr\",\"install\":\"hFWfPsGRaB\"}', '2018-06-28 11:47:12'),
('313a8fbeb3e3ef0604fc0011bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B8fYB658gjknWPY68FzR1VoLDgzc9sYx\",\"install\":\"bI6RNjH2nh\"}', '2018-12-23 06:54:21'),
('31b57a077b708ee8e0c0ff5336', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZXJxlMwYz3usxx8B64LXkqEoB5pBZXz3\",\"install\":\"YdjJKNwvMt\"}', '2018-10-02 13:27:53'),
('31b6c59eca6822bfe77595ec4e', '{\"user_id\":\"1\",\"user_token\":\"JMqNj0KsF4mch1HpHXDwfzwYcbTDWPga\"}', '2019-11-22 11:26:37'),
('31cb910dd2e9037135883e87b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-27 06:38:47'),
('31d23c7196ac87dcf6e6446c19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-03 04:41:36'),
('3232472c01788dc9ae65d3e2be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-29 09:33:36'),
('32ad7c3a4d409147c6e565b134', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-27 11:08:13'),
('3324208ea6ea81b5b90b4487d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-19 13:51:14'),
('3379a0cab54806d7069ffa4177', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"JMSq0UWzeqmNCSegqERv1V0PbThFxB6C\"}', '2020-10-01 05:45:32'),
('34ce0be3fe66ebea6c40ee5fd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-25 11:47:16'),
('351af4d4481f699bc9eb7c8f50', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"sGitkhop8FpxBqCVAtqjXeL8LTWVYxSQ\"}', '2019-12-12 11:42:20'),
('35228600f5ea007b87197e308c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 10:14:41'),
('3525b7f3d8eb13aa43b3fc27f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-29 04:18:41'),
('35ee57121aaf053605fb5fbf2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-26 09:54:26'),
('36615b0fdb73740a85d5e889b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Drd69e7Z1siK0BYAdOrbCpTR4w3kWgRs\",\"install\":\"V3k56SHmJ3\"}', '2018-10-04 10:09:03'),
('366a1dce3a2cb675460396bb5d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IRZggpszSfz6L5um9VOzZSFkKMhexU60\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"t\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3617\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"Arkansas\",\"zone_code\":\"AR\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"t\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3617\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"Arkansas\",\"zone_code\":\"AR\",\"custom_field\":[]},\"wishlist\":[\"44 \"],\"customer_id\":\"2\",\"vouchers\":[]}', '2018-06-06 13:06:11'),
('368d405cba28ee28028d26e7bc', '{\"api_id\":\"8\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:16:50'),
('36a2e4ea56f5b6c6ce27b1046c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 05:55:44'),
('36ecbbdc7b4a8812cdb7869299', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-15 10:41:39'),
('374cc952d91edbbc3adae7dfd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-01 12:12:53'),
('375a4229d36255885d75189f52', '{\"api_id\":\"8\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:16:59'),
('377908dde0c98015e2995b7260', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-01 09:46:26'),
('3792ceae27da9a1214cca92a38', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"S6rC6FcM459JGnj9kBpqIYdwgwhKner6\"}', '2018-06-07 13:09:24'),
('38ad7ae206a53c26fc15c43de6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Vw8OYsyrMo7Hr30DvY7V1XCzsOOxqm7x\",\"wishlist\":[\"41 \"],\"compare\":[\"41 \"]}', '2018-10-10 08:42:23'),
('38e00a20834ccf57b6a96a643b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-19 12:11:26'),
('38e58c95fa3c8a28fdb377f802', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-08 08:47:06'),
('38f4c3f592a25a82ee4e9954ab', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-11-24 12:57:26'),
('3903f7bf005a65535348c94091', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-19 05:59:45'),
('392021261e4d89f1d935aa66cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YFFYhJl9aympe44dDYutM1jpidfGFr10\",\"compare\":[\"36 \"],\"account\":\"register\",\"customer_id\":\"4\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"new\",\"lastname\":\"new\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"new\",\"lastname\":\"new\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"vouchers\":[]}', '2019-01-17 13:23:43'),
('39509483c2a1c5f76e32a228a8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"44 \"]}', '2019-11-22 10:27:07'),
('39669508e9252b1b094dbec40a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Pg4kNe92FgiKN6lAGDH7VF8Jxi0Tv7Wp\",\"account\":\"register\",\"customer_id\":\"3\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"test\",\"address_1\":\"test\",\"address_2\":\"test\",\"postcode\":\"394305\",\"city\":\"test\",\"zone_id\":\"1485\",\"zone\":\"Gujarat\",\"zone_code\":\"GU\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"test\",\"address_1\":\"test\",\"address_2\":\"test\",\"postcode\":\"394305\",\"city\":\"test\",\"zone_id\":\"1485\",\"zone\":\"Gujarat\",\"zone_code\":\"GU\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"comment\":\"\",\"order_id\":12,\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"vouchers\":[]}', '2018-09-26 08:35:22'),
('3973ba45b0fde1258525499cff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:17:54'),
('39e8dc4feee1ca95a993d51832', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MXUV6BG6M5zx01HfL5tNZrHpdYYFrKDb\"}', '2020-09-02 16:19:01'),
('3a50d9e948dcf1a57d1fd6dee9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4xCBlSxycy0zssKzFdWHUrHk32nif7VJ\"}', '2018-07-13 10:29:16'),
('3ab3f404eb47f948762c9fcd3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2GwE3RnVn0sCJopop6Arffvrl8HAQM7G\"}', '2018-05-30 12:14:27'),
('3ac7f69b0c9e56c1d5325561f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FeXzpuZcBIXl2XDOYFNtdol4G7gBiK7g\"}', '2018-10-11 13:25:46'),
('3ae7c5d0f4770177f882bbceb3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"55rqChx5LKGYBkX2fsY9JB2aTfpaD1ED\"}', '2018-09-25 13:24:35'),
('3af359c2a84dd28512113cd819', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-11 10:18:28'),
('3b3df5b96357b0b20535365aeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-06 08:58:10'),
('3b8e68a137f515a021da4287ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 17:57:28'),
('3bbf971cfa3c0c00302ea1e922', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-04 09:59:14'),
('3c19f182088ca785e6704ec183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-16 12:24:58'),
('3d2b41561875ee90713dab819f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-17 09:29:11'),
('3d8f8ee95f327ad80ea39dd783', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-12 13:31:04'),
('3e13f9437916e48d1987cbeb01', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"U7PZn3B3zVmT5B8MCjblzx1kEjMtgtmt\"}', '2018-10-17 13:08:49'),
('3e1acbda0a2840db564285c446', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"51\"],\"compare\":[\"51\",\"32 \"],\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200052\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\",\"user_id\":\"1\",\"user_token\":\"XeXRE6kQORCB73SUgEF0IbrKVkmLHTPI\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-12-14 06:32:36'),
('3e7928f26e51e222f092049067', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GUp93B24FgsZeRGe09nOzVPqRmnlNOzl\"}', '2018-10-10 13:25:51'),
('3e9e5cefdd6164ea3698953e18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-05 12:09:16'),
('3ef460d4e551db18a4ed4b9884', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"us3xr4mQrrraouC2yJSXTP7LREoSBCGj\",\"install\":\"1hslyg1OjI\"}', '2019-12-11 15:42:27'),
('3f28ce3dcce3f6b7700e5ef7d8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ad8Kb0kSJF5kqlOoRUiYcmkVFl7Xuc6Z\"}', '2018-05-19 08:45:33'),
('3f51c4181631c691986b26fd84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RpGVgiD52DSGEEG6knanceDmEqv3ow9x\",\"wishlist\":[\"54 \"],\"install\":\"THI2Aqawc7\"}', '2018-11-30 12:33:51'),
('3f53f76a58d18725b026093f3e', 'false', '2020-09-19 16:39:23'),
('3f727fa7c5ad2aa4f019d1c385', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DWSD0oOO3SQyNt12TdJo4rJUB9nAu8gt\",\"install\":\"moT0TaJj34\",\"wishlist\":[\"48 \",\"53 \"],\"compare\":[\"48 \",\"51 \"]}', '2018-05-28 11:01:11'),
('3f85b41e2005460c43eb12e123', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-08 17:58:25'),
('3fa2490dcae2036a645a5d3054', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-23 11:31:47'),
('4004133c98e858e6010ac874e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7T6sJ2I8FoQa0bkCVRMod2xEdxwghMGN\",\"install\":\"sDp1UiVDXT\",\"compare\":[\"40\"],\"wishlist\":[\"40\"],\"account\":\"register\"}', '2019-10-02 18:48:47'),
('400fb9e12310cb70991857d438', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1s2wec1fWWrisGwgfv8E3G1NT5iECWz4\"}', '2018-06-11 04:54:23'),
('40236ff324a42173c57c12c99d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-28 11:14:14'),
('406379d6e7a325ebb58f5cd7c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bj5URqannsQJo6rlmr2vwhx6udzxqYr1\",\"install\":\"8CaKy0cxHr\"}', '2019-12-08 18:48:46'),
('4071e722f34f0a9da6970c385c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-16 18:32:55'),
('40973ace3aeac369990812058d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qkBegIBC9rFkrvxakmZpRd5ukR5OZyOh\"}', '2018-10-10 06:06:49'),
('412cb0d5821a336657b6cd3bdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-19 16:01:22'),
('41992afd92552d5640456dc8c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 08:48:06'),
('41aab3ef0759984d1a73890e98', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"spAraGCdVwOztw7fcWNsXduiZxMPur73\"}', '2018-10-01 09:04:09'),
('41d6cda95a1629f5683b17d9dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-23 12:24:34'),
('42b1990f03c3b3798f3dcd32d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vsOx5CMuuVxYnMJ9QYoFNpGVu0PaJ0ZZ\",\"install\":\"54ZM0XiOij\"}', '2018-11-13 07:46:20'),
('43ac0a53f0b56d185241e29bf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-22 16:18:05'),
('43f5c01ecd05e8f61a7d2335ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 08:40:55'),
('441e096dcd3ef826cc22558b40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cq7RyoPHo3GJr3j7nM7tU4XglGaXMpXX\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc010021\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=3\"}', '2018-07-02 13:02:48'),
('4438489a2e2d7ddbb3187b759c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:42'),
('44798a74458bef4cecf255e02e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zKt9TJ3d7j3OIj95HsXx94eAGsk6oQnN\"}', '2018-10-19 05:09:17'),
('44bc91617be87a4ffa4f8bfc41', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-10-03 10:37:03'),
('44ccce06ed3da8518d9e876ba0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-29 09:31:31'),
('4514c030c3d7d3515eda5021b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Ky1nFx6gDrL2XdpIHf8WvsheQLJQmAWz\"}', '2018-09-19 08:27:13'),
('4563647c2334ee0fe2a72cbee8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-08 06:18:54'),
('45dd33250383e1bf241092e056', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-03 08:58:26'),
('4604178ab1e91411ae6e190e30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-23 08:42:43'),
('4755b377e3964dade1847e66fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"customer_id\":\"6\",\"vouchers\":[],\"user_id\":\"1\",\"user_token\":\"JH7yjmfMJcqYKyLJQGBsWQ5sSskvaGU3\",\"install\":\"BLNtwAanQy\"}', '2019-02-22 13:26:32'),
('4784c360d50d86cc649755c923', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-05 17:13:38'),
('47b0fff71b7edcd526320bdde8', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-01-20 05:09:05'),
('48061fe1e3849e4c86aee09512', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hjmNtHBNTKqQJVyR4ixc58RQyIJxu5pT\"}', '2018-06-07 09:11:49'),
('48e3d1f1a1dbc19312e9f5314a', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-02-18 11:57:50'),
('49b3f25c10f497d8d36a3f7d78', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-06-19 10:41:05'),
('49c2174ed5d2cfb791a3a086fd', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-09-06 08:55:02'),
('4a01d319691394e6e661b30f68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZlZRus1zKj3iye3d5prUCuhvVkNV1g5E\",\"install\":\"w34aqTNc18\"}', '2018-09-16 13:24:20'),
('4a9b482ec52d1ed5bdb06880a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"04n3jjakdrfDA5ugHjFVnm0SLduGVsnA\"}', '2018-09-24 10:08:03'),
('4af5628991d84d2558846f68cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-15 10:57:03'),
('4b0c22727fc6aa8c1b8312866e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"w5DwGgmJO5nBSMJGztppeRvBLq9vuJ5R\",\"compare\":[\"47 \"],\"vouchers\":[],\"install\":\"0ix898EqRM\"}', '2018-06-08 12:58:13'),
('4b9a45ee8a292ba6f5b9672363', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 06:37:27'),
('4cda7aee66f3a52cc507d534b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:44'),
('4cf486a6123e753dc16473ee36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-02 04:22:03'),
('4dc458a5a7fbe6023291e2202b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"14HJUHe8DKeJMMyEEt5j41SCzTq9DRpw\"}', '2018-06-28 13:01:39'),
('4dd533f8b3f6818abb8d63e088', '{\"api_id\":\"26\",\"language\":\"en-gb\",\"currency\":\"EUR\",\"customer\":{\"customer_id\":\"0\",\"customer_group_id\":\"1\",\"firstname\":\"testing\",\"lastname\":\"testing\",\"email\":\"testing1@gmail.com\",\"telephone\":\"7894561236\",\"custom_field\":[]},\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10015\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10015\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"3.92\\u20ac\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"3.92\\u20ac\"}}', '2019-11-22 11:24:51'),
('4e0f4293459633278c70c49a43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-04 06:50:48'),
('4e2ce107dd62d688a873706bde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 06:02:49'),
('4eae05b6040b436490579b22b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 17:02:37'),
('4ed2db1a69988eb53c187dca64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-28 11:06:48'),
('4f519d8ba003cee246e6f62c68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PuYUD1A0d6XOMS30gllVoY11hzsSscSg\"}', '2019-11-23 11:41:27'),
('5022e7fbc26bddd66783bf3706', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-30 09:19:10'),
('508d2a8ec63dbd717047b12835', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 11:23:14'),
('508dfdb19994adda285b9a2be7', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-06-19 10:17:04'),
('50bbb24d51cdc2e7d2538f9919', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"9\",\"shipping_address\":false}', '2019-11-21 11:55:04'),
('50bfe7c5c738965958ee4ddc81', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-11-16 15:47:21'),
('51090727fefc0c9e32f86fa00b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"029gZ0FifY\",\"user_id\":\"1\",\"user_token\":\"gf9WTEfqz2TX2HdgmyvRBAsNolr36Hkw\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010002\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-09-21 12:31:34'),
('5160f020849f082e75d33f32bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-02 13:45:17'),
('518bb6930ebdf16016d12d610a', '{\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2019-11-22 10:04:58'),
('5199e0f857432861483046fb8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GEGPNLd0IxtP3z19oeXvB2RfZeppTwTu\",\"install\":\"xpxaP2BqDh\"}', '2018-07-22 12:14:56'),
('5203c7e9445ed06bb6c077deba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-15 12:47:45'),
('52409edd0a0edcd3477cd2e2f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\"},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"}}', '2020-09-06 15:35:53'),
('528062fd9b54bc5cdeed86a126', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"F9z2iz04riMInSYy4HwbIMNeg2DHWKXz\"}', '2018-06-26 10:52:44'),
('53bfd26199411cb5acce8369b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hgKC3InAPWXiDW6yNdO7dRiAyc3ckJio\"}', '2018-09-07 13:19:54'),
('53fda5b956f201b9cd7631fd7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2sl2NrqUObiIzESAq3MG9PvUR5aRa7Nc\"}', '2018-07-17 18:30:11'),
('547309f6b2e77172bdf74e29f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-25 12:43:38'),
('54ade84bbe016f907536c61921', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-05 10:10:58'),
('54d3620012cef995a3b9c818ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-09 07:41:33'),
('550b22df86f491130de75fa3a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XUqdx2CZlpE02DmpMNVEUvqghSkjn6Co\",\"install\":\"5009FauXXM\",\"customer_id\":\"9\",\"shipping_address\":false,\"success\":\"Success: You have modified HTML Content module!\"}', '2019-11-16 18:48:14'),
('554349102eef5d295ab8297f66', 'false', '2020-10-18 04:35:03'),
('554c76de258a0427b64e8d2d79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 18:49:45'),
('555710fc8d5af599017a770f39', '{\"api_id\":\"26\"}', '2019-11-22 11:22:58'),
('555a509d8ca3e3567ea3e0b522', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3nUNWoW6hEJkKEhy2XuB2Hn6N7Y4WVz4\"}', '2018-07-11 16:05:37'),
('56101a5069e71348d83f63917c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"saAkECUI1MojZGT77b5CRIofUD8FMQ56\"}', '2018-10-03 05:40:28'),
('56e71d18895f5028a60e0810a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-30 04:06:54'),
('57179ebf997dbe3edad409984f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jSn4T30Oc3fI4UESefv2g5Wws8EPcCl1\"}', '2019-12-07 11:37:50'),
('5746c915cde6f4a826f30dba62', '{\"user_id\":\"1\",\"user_token\":\"qKpOPxX2P7zx3A6cQP4QXfvlsS6Xsu5B\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-16 07:03:32'),
('581b65034b72096a269fda4d40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-01 15:13:31'),
('58746668f23e94dc68d8683721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-14 06:08:41'),
('58e1107a05bd32ef2a17ba9c56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"30 \",\"40 \",\"51 \"],\"user_id\":\"1\",\"user_token\":\"nLx5Dy9VUg5TojY8y98QNptWkAOEthAC\",\"account\":\"register\"}', '2019-03-02 13:29:04'),
('597be95555b68646e9913c7bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-17 08:03:26'),
('599e4b6ff7abd246112748948e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-07 04:08:06'),
('5ab52cd6c8e32c5cc7244e7dbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tmkVDd0fIOKqLDoVwtyM04CIQg9cvDcf\",\"success\":\"Success: You have modified featured module!\"}', '2018-07-13 11:42:07'),
('5accc734db74eb10b8d6f0d2c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-07 08:33:41'),
('5b2b3a6f5554c9701bffa6dfa4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 04:22:34'),
('5b56d8f1bd1738da98f3551901', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tkLuZqH9aZUyrPf0vaWlg7pMzWn698wp\",\"install\":\"UGLCPXGHD0\"}', '2019-11-30 17:11:46'),
('5c362e8f42badf3a6653d22feb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"I5t7OedkiS37LUauo48psjZQC4W8LwIM\",\"install\":\"wIJxMDmTTp\"}', '2018-06-08 05:12:05'),
('5c7fd6fb581fc4045fa06c5225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-09 07:37:12'),
('5d0e1ec506ac8a5cf188cbfe6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-08 12:48:54'),
('5d930603f429c1217b51f674b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-07 08:01:34'),
('5d9eef1118d3dafff1fc7d06ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-08 09:57:00'),
('5e264505ada391f3a3b7e47c1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-04 04:29:16'),
('5e3dd7387d4a73bf5f839f03c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-23 05:05:52'),
('5e7a17881f4236e2af15483cce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 12:17:04'),
('5ecaaeeaded5104e1bf8a064e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-15 11:48:40'),
('5efd41f298c9c54cf47970e5ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 12:10:14'),
('5f044cb306fa5cff8cbb3e50d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-19 04:11:46'),
('5f1cf7eab1bab594380de74411', '{\"api_id\":\"26\"}', '2019-11-22 11:24:38'),
('5f6f592c86db5cf00241b7f897', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 13:20:41'),
('5fba863caf36229a65af14b21c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"m1CVQ4fbMOfTrW1z5RF9G3s1XI7lGHgp\"}', '2018-05-21 10:34:19'),
('602d7c33268afd8415dbcd3ca0', '{\"api_id\":\"26\"}', '2019-11-22 11:24:37'),
('6050ae3d2a6767941eaf847dd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 12:04:59'),
('61bb388a701ff378f6e714bcc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 18:37:30'),
('61c6df16acc5c6fc3c6c2676e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 11:52:40'),
('61e6a92d0ad2db88fe1c160a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 05:56:05'),
('621dff0331b0e5abd918e57561', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 18:00:32'),
('622004a4780b84fd9237562112', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"51 \"]}', '2018-09-30 04:57:43'),
('630208927b3ef151c685e159b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-29 11:02:57'),
('6329f63300ab28b589159e2fac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1IJ1BHHM1LWxKN9toaboO5cwS3vHRfIO\",\"install\":\"4qzZrrEmWG\"}', '2018-09-22 13:25:23'),
('63ff7e3ee1b84b929d86cddbc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-27 04:32:09'),
('64541ef3b43441333c942425b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:41'),
('646e3ce48bfe1080d380141b69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-03 11:07:18'),
('647982f8424c4029eb0a720925', '{\"api_id\":\"26\"}', '2019-11-22 11:24:49'),
('6488d88276bad4eaf531855ef4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GkSlNHH2BcCB9ghvgQvF46e1Sb3b0PTh\"}', '2018-06-02 08:35:36'),
('64994f97ec84f681c4ecd52713', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-25 04:41:14'),
('64d6c3fb6dd62397cbf418b77a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:52'),
('6589f83a9e20b52ecb6bd615a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jOti8KGr7zL6nwwFQse1kylMnYGmGXjD\"}', '2018-05-23 07:33:23');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('65aa7f8fc78462867404acacca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IDDG1JSBrsDCzCHF0yFFCewYSM7P5VoJ\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200098\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=7\"}', '2019-02-24 12:43:02'),
('65d233ab4dc3084185e0a1c06b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-22 14:48:14'),
('6610b56e29bf5e19f67a0b7f5f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-13 13:10:36'),
('661858762b1fc3378b02a826e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-02 11:53:01'),
('6621c2436264f326a2b980f605', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-02 09:41:30'),
('66fd0bb6385116d895614b12a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"a51uaIZ63t4aKAG4faOs3ldrIR6sNvvR\",\"install\":\"m0XQf0GmtA\",\"compare\":[],\"vouchers\":[]}', '2019-02-16 13:34:00'),
('67655e2b198a918fd488ae6058', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-02 08:44:10'),
('67767702892373857d2f6518e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"wishlist\":[\"51 \"]}', '2019-11-21 18:33:12'),
('67884b3ca12febcb03c97d980f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QZlms4PYAio5D2NVwVyVRuIeQINMWa6s\"}', '2019-01-15 05:52:26'),
('68362786ef4d73c336546d4e53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 10:37:50'),
('68ab89d90417b19b4f0b5c49ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nTm6f8oQCkUGfwDWSlaMmwRaLEAeFlxf\"}', '2018-05-22 13:01:01'),
('68d9d3d5cda0a31c9df165de6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"44 \"]}', '2019-03-03 05:21:33'),
('691fe4802693f28579fd6ce0b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 05:44:04'),
('69a8b4e9f7d0e3d1aaeffcde16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-13 11:52:55'),
('69cb807f9679126b5d92cc4612', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 10:47:26'),
('6a3c900e410159047349344004', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 10:27:33'),
('6a5a5ca7c67323f6c37c016b55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-07 17:47:35'),
('6a64fa8d17d1bc32e433702ee4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-26 10:42:58'),
('6aea02abf2d4988ee8288d2278', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xplraq0bI5khF7pfvgMWvCcJw2YUdlLI\"}', '2018-06-09 07:17:16'),
('6b51e3db6776b2a25088f4aaf1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-28 04:23:39'),
('6b9f87269ec6ccb67ab95c45e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 12:04:51'),
('6c2281517ed045b74bdce2f46b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yN652IqFNuZVif9ptDWGZfc6h6FWKylX\",\"install\":\"rejM2tscZZ\",\"wishlist\":[\"51\"]}', '2020-08-02 16:03:19'),
('6c3d85b2c2e351fbe2f2cd8123', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-22 15:12:07'),
('6c472a44113538795d74b2ed3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qKOYk9H8sCbdZwAetvbvCb6AGRqyQ1rL\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010006\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=4\"}', '2018-10-02 13:25:40'),
('6c4dd00356ad25e694c4abd206', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 18:49:45'),
('6cc5de580da07552c1425c9940', '{\"api_id\":\"1\"}', '2018-05-23 10:43:21'),
('6d3055164594cf83bdc26638cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-07 12:19:36'),
('6d75deaa53098424334d32f39b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:29:05'),
('6e2e15dc3d170b75d514745677', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 07:10:21'),
('6f15585041919e225b73bea229', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 08:26:26'),
('704f63d0babe23730d3f83585e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 09:28:21'),
('7087dfca8c85b2a9f1af706dad', '{\"api_id\":\"26\"}', '2019-11-22 11:22:33'),
('70ad47085d2b065fcfbc39459a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 11:03:32'),
('70c3570575044af0762cd3c652', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 13:23:28'),
('70d955602b94fa9480607dd396', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"VvPtHQdbzQav9UZnfLGyR8dF0LZ6dtdo\",\"install\":\"qjVRDt77ma\"}', '2018-10-08 11:41:48'),
('70dbac0669dbc2274c8a948bbc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"l8ash4hMIdITSNduB142KkgXDraE4ma6\"}', '2018-10-06 05:52:15'),
('70e0e6d8ddef9f777c622ae446', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 13:22:34'),
('722a10fa2a24b608ded65f660d', '{\"user_id\":\"1\",\"user_token\":\"3kTHeiZp5JpgMfDxIGr83kI1GoRwBIaf\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-07 18:07:21'),
('73396876c5ad672bf078b5fbc9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7NVj9OA7g3ya9UC9a3tgMCFXaf1arCMf\",\"wishlist\":[\"41 \"],\"compare\":[\"41 \"]}', '2018-11-26 11:12:35'),
('73551254455e734d941eaf5f8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:53:54'),
('737faf11df9a1c5c48f2de8ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vZM9VMqdwwdzJ9AsKZkt5PICjoNRO4G4\",\"install\":\"Ywl6VftpzZ\"}', '2018-07-20 13:41:35'),
('7389f231c3dd03bd8e4cd29257', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:07:46'),
('73b58d431c0bf4a8326fa47be9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-07 12:40:12'),
('740bd6347c019ecce573ae089b', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-09-28 11:45:54'),
('7533918d45607dfa3b2dceeea4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qoiufO7GrSOnLoPcLjDaXB6GqvfWFbKM\"}', '2018-07-06 08:54:14'),
('7550b1c1a4b410d4b81e4c8177', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 08:27:50'),
('75ec7cef58fc38bdc22d8a0b93', '{\"user_id\":\"1\",\"user_token\":\"N1xWVDTlYrPEIq1LpW544Dt8Xf3NfWnv\",\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc010006\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"testing\",\"lastname\":\"testing\",\"email\":\"adtrfymin@localhost.com\",\"telephone\":\"1234567890\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"t\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3626\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"Connecticut\",\"zone_code\":\"CT\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"t\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3626\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"Connecticut\",\"zone_code\":\"CT\",\"custom_field\":[]},\"comment\":\"\",\"order_id\":1,\"install\":\"XlyUx56BjY\"}', '2018-05-23 13:02:45'),
('75f581e396b3ae3e9abdf42b0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:45:20'),
('76886a6876e7c163da7649881b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-13 10:48:24'),
('76d82613d4cbdfa5366fb11381', 'false', '2020-07-25 10:06:49'),
('7742e11726141f13fbc5c271c7', '{\"user_id\":\"1\",\"user_token\":\"sYuGm6CXXnk09JOP3yaIPiiMLKvicZsd\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-17 10:59:13'),
('77dfde01be9832c15fcfd9eda1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:51:01'),
('77e6a8895f99f25f72470c5dc9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"6UuPmPIielojgQsBFdJYW877p5y9RQ2v\"}', '2018-07-31 11:44:08'),
('782d99107a6fd451db2324b363', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 14:22:15'),
('78375e44e6c5ff51cfa37d5704', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-11 12:50:21'),
('78ae260cd7d21bf8b09e2c05fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AShhsQDNJwjeEF2NY7Ua6rxcQNss0Urh\",\"wishlist\":[\"48 \"],\"customer_id\":\"1\"}', '2018-06-01 12:57:13'),
('78b05a1cea0c90c07725014024', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PCjxSoel1OlziSIPNqs4RVa0ay5ezZ9b\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3518\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Bedfordshire\",\"zone_code\":\"BEDS\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3518\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"zone\":\"Bedfordshire\",\"zone_code\":\"BEDS\",\"custom_field\":[]},\"compare\":[\"48 \",\"42 \"]}', '2018-07-10 09:18:42'),
('79365621f4de13140aa460a081', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 12:05:33'),
('79d60eeb01a7ac793bd2e16fab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"m0vVBR6FJYSUzjUuFR4PDx5QuN0Ir5EX\",\"success\":\"Success: You have modified the default store theme!\"}', '2018-08-25 13:24:01'),
('79f91af04b8410a3066bdcd4bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-08 17:58:27'),
('7a0102b55060344c58144ea988', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CtvOB4BTA83K8xO2nEkGPDYBXev6yoEK\"}', '2018-09-24 11:52:29'),
('7aa4f5ad0864dfa3eb58cd41c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TQQVZUachg7x5cILnK3BFtzJc0m78xc6\"}', '2018-11-22 12:56:37'),
('7ae5dc6a128133f05a28cb717e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 10:36:23'),
('7b71000bd9fba8380d43b79289', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"13Chk7qAMLsx0rgiBMt4EDVl6vWQqfKS\"}', '2018-06-05 11:25:23'),
('7bc93ce6e0744c269d68f1ad83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-12 04:17:35'),
('7c820462df71adf4ccdf808d76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 08:43:31'),
('7d6191c1800a065bf439751a97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 11:58:50'),
('7db3d692fd2cced63a690b3137', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-29 04:26:00'),
('7dc8f8d04aa8dc4828d19af576', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ICi0ewXjdEEvJa12tWq7g0PXue5HgAGV\"}', '2018-09-29 04:49:58'),
('7e3aeab46b7a579277f5cf49af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"F1BPhzRbBWxJNonKxUunhLEWSCUDcffV\",\"install\":\"xeZvNzFQ1t\"}', '2018-06-19 12:12:34'),
('7e501f3edc4a891eda1e34686a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-27 11:53:39'),
('7e6fab311d34c74d0256636ec9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-21 07:33:45'),
('7eb926c7d991dd1516d3418f6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 14:27:52'),
('7ed10e89d57ea1523a99d35dd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-22 17:46:41'),
('80464de53c8d4ae7133d0678ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aOwNN15fzHTZqzCjUxB26nJIt85Myj0h\"}', '2019-12-07 13:01:07'),
('8055e047eddadfd9099b5db914', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4TtZRJVrSVS1s5wZtFkwY54xMJaUWM8p\"}', '2018-12-13 06:38:05'),
('806278bde5159bf733b8405531', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Prah63jCS66joMIXRKA4cZRdNv7G6mnY\",\"install\":\"1SUOe4nLiB\"}', '2019-12-09 14:51:12'),
('80645eb9a6709b4a69b28e5e75', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZDELyXfv3a3IevkPKX0yRGLmQWWLL18b\"}', '2019-01-18 09:49:07'),
('80698c15e0c379ced6f51d67d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"40\"],\"compare\":[\"40\"]}', '2020-10-27 02:24:43'),
('80951abd31b7258fa775e3ba91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"iorMWMO6wMzQVL83AhYpAjP3gJWiR4Oj\",\"compare\":[\"42 \"],\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200038\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-08-21 10:44:58'),
('81336ac48a0064f7f8ed8549a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PzFQLnk25zmV4GtLpzoLBWT0DJpQH0wm\"}', '2019-12-04 09:53:01'),
('817eb3519804acebac5a4dcc3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-08 13:04:28'),
('81cbe8d73f1697be030e95935d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 06:19:30'),
('8236a23b2b7f0da818d8f2ecdb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"02YjOFNDlYfBxCboVSLCNOkRY46ywDq5\"}', '2018-08-19 13:27:09'),
('824018f6ae6e4c4ba408008dd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TSwlt8hkff9KleFPv9qQJvRvCcbvuMjc\"}', '2018-07-11 18:02:09'),
('82b44a569e90c5f51ef28aa9b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"R9yV7E8mPQLLKosbDmOzdW51sKab3ZhT\"}', '2019-11-30 18:40:47'),
('82bc11ac3ee1daedf2855ebf14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"p5KlzCyLqQlvty2aoNzSne68WouDrrjn\"}', '2020-07-26 07:35:12'),
('835c7a3a9c5f9653b6d3dc944c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 08:54:14'),
('84e2448fc975e16efb2eabc341', '{\"api_id\":\"26\",\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"8\",\"customer\":{\"customer_id\":\"8\",\"customer_group_id\":\"1\",\"firstname\":\"test\",\"lastname\":\"test\",\"email\":\"admin@gmail.com\",\"telephone\":\"1234567890\",\"custom_field\":[]},\"payment_address\":{\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}}', '2019-11-22 11:24:07'),
('85fec0c7604fca29d6a89f0cd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-02 13:47:07'),
('86145351f579979fe7993c7144', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-28 07:29:44'),
('86c3c74b231ef10dc6ee4a0e66', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uztsfizsfBjgYP8OwknBUtGFh4ROgtzs\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0100019\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-10-30 10:14:49'),
('86d8d5fd3342b3b9c53ce4a0c9', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10015\",\"city\":\"newyork\",\"country_id\":\"223\",\"zone_id\":\"3655\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"New York\",\"zone_code\":\"NY\"},\"shipping_address\":{\"address_id\":\"5\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"customer_id\":\"7\"}', '2019-03-03 05:41:17'),
('86f1593a4f5e1bf3d5047ea2da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tVr2tsbTWqDsxRryGQ9vGYyVAgyuUCDv\",\"vouchers\":[]}', '2019-11-15 18:28:05'),
('876b7684b6f3dbc1bdcd3767fe', '{\"user_id\":\"1\",\"user_token\":\"p4ybZtNoKkTkJzYR8EcRXRK0GVv8Zsfs\"}', '2020-07-19 09:58:24'),
('87cc43033856a8735dd17b6f68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-29 12:57:28'),
('88018e37e30f6f549f566c4b6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KL80otLCZTJGoIVBRwxUvxe3cXfVUQn5\",\"install\":\"Yj9GBpSfyB\"}', '2018-10-09 12:20:00'),
('88167be8d1477b98a52f706ca4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-26 13:12:32'),
('881bba81612ff9f4f9862a863c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MUWuFh6I4o5jm5zjZPBq1TOPSCqSk1xE\",\"compare\":[\"51 \"]}', '2018-10-17 09:23:27'),
('88710596204d8d90c24e1cdf3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-03 05:37:16'),
('889206b8df68274f18f9568b4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user9\\/OPENCART\\/OPC0300148\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=7\"}', '2019-12-05 13:23:32'),
('88946807ba9ec87b2c18c3094c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 12:44:34'),
('8897860518d1444a462cca0d1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nAp6Ess3kDklwjlApzHMxiMbiz7P9sEA\",\"install\":\"eDJ9kRhwih\"}', '2019-01-21 13:26:12'),
('8948b8eda5bbb97a3d318afa7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-02 04:07:09'),
('89531448e47d1af4a05ad75796', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-26 12:53:02'),
('8ae190c6d24b3e93b256141b01', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Z3zNjAes4Q8jvVcH98WkriWSGKkfyI1q\"}', '2018-07-24 18:36:16'),
('8af2240be424788b42e9d95711', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-02-21 08:59:35'),
('8b698f2205707bce3cd854dce3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 09:40:03'),
('8b74a7f784631b3e0a644e7952', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EaK9IRAJcurle5FNZJ9Sc2hxqXvNgwSx\"}', '2018-10-08 13:25:55'),
('8bef6944dc191902791919544d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"30 \",\"48 \"],\"user_id\":\"1\",\"user_token\":\"1vOslq621Dac7vorb7HfHeus3oR3VfH3\",\"install\":\"8wEzjRn6ZT\"}', '2019-12-11 18:47:22'),
('8c01f0c77403a1960fb4c518ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 12:12:38'),
('8c86208d2d2928d6503b95e72f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3Ltat57RJUMCBjzECDASqNePBuNMyhui\"}', '2018-08-02 11:16:38'),
('8d282b12c3943249258ac8a846', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 12:26:26'),
('8d6eff1aeecd83464a0846ac00', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GOlle3n4vAKFt8k5apfc8RhIa06kTUuK\",\"install\":\"CkR4WxLrjp\",\"compare\":[\"44 \",\"41 \"],\"wishlist\":[\"44 \"],\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0100044\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-12-01 13:29:15'),
('8d9a14d5551a7f741eb5e8d150', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-26 07:19:33'),
('8e7e81e76bd3d2790642e278cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-02 16:25:36'),
('8e96ef6259dc1ce04e434ff7ec', '{\"language\":\"fr-Fr\",\"currency\":\"USD\"}', '2018-08-04 12:31:29'),
('8edf1d92eae61eb3099c52dd82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-17 13:02:14'),
('8ef0e21d9770d9f7359b5e6cdf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Sft0t7CcSIo4HApgZOJ0KGsuybLEgHuV\",\"install\":\"vWdQyjdAXK\"}', '2020-10-17 09:59:22'),
('8f86e80d0e030d2e4e81f20676', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dBjGLL1GFxfWhinwdkXKxxi4qrGrX80F\"}', '2018-06-05 13:04:38'),
('8ff24054cebd64f77bae8b57e1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Wn9vJx7W617GVPrG6vF0NIqeSqw7lpbB\"}', '2019-02-02 08:13:11'),
('8ff3b9eba4e158975b31474bee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QyouGpwM37sO5g8mpTiaMLyYBvKRdErU\"}', '2018-11-16 13:26:27'),
('90775e891f8b72b936e4e85da8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FZpe6Br45kbQBQkWuUFlZ7aV5iRnXvK5\",\"install\":\"NWdmEuLTqH\"}', '2019-11-18 14:51:31'),
('9084922812bc330190239ad4ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-05 13:49:03'),
('90871d3b40ae44c04fe80df561', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-30 04:28:46'),
('90d2bb1d1d9a0467dd71a63ef8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 13:53:50'),
('9130b6b45ac454fb29e377b059', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oBd27ki5NYy9AB5VTL8cA7gJyfVPloYK\"}', '2018-06-19 12:58:37'),
('916fcc6762ae698bb87fa5f951', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"srbIirksKPokMkiuhaHVlJcVRp7rHfi7\"}', '2018-10-01 08:56:31'),
('91b975d1ec6240391be4ba23a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"OoafpB0C47fcpBmRQcrbQ3hY4MF6I4yr\",\"wishlist\":[\"51 \"]}', '2018-11-17 13:26:14'),
('92124b401ee8aba7deaf9b526d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 04:22:33'),
('9237117471f45dc8d1ac1e190f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aNBXZY9rQ9FUpzBM0GNVHo4RtXjJgeYf\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3529\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Cheshire\",\"zone_code\":\"CHES\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3529\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"zone\":\"Cheshire\",\"zone_code\":\"CHES\",\"custom_field\":[]},\"compare\":[\"48 \",\"46 \"]}', '2018-05-28 07:25:37'),
('9238715942d383a369b5b69149', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-24 17:08:44'),
('926b37d57a5ad0b5855fdcaa2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-03 04:51:17'),
('92ef99660314e6b66c06815b37', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-30 05:26:02'),
('92f0e3dbd637aec0244d945d21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-04 10:01:37'),
('92ffca933773163a3cf835c6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-29 17:58:20'),
('9317506a12588e9be07427e024', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"L7VDfJOOUdCTX6y2JsqVW8XYZy0tBBg5\",\"install\":\"HJCUwRQh70\"}', '2018-12-09 13:27:07'),
('9345a502a91cb3a32883bf20c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"VKYoiw6KmfknG69mQUbj3P8VAmNDxgHK\"}', '2018-05-23 07:06:49'),
('93944ac69c4dec28f0f17fa4f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-06 17:35:12'),
('941a4496a4dc9a5a91968e06b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uGKOb45fhItL0iRyeLTeHsmUuutDQfd5\"}', '2019-12-05 11:18:41'),
('941f85dd39d270791004c3fccd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hi2gLWnWiAQGvDmk3hVbAnQjYiWW6QoK\",\"install\":\"CZ9sABzizs\"}', '2019-02-23 11:16:57'),
('94c3c7fb1ac500a4dec8d846cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-31 11:39:56'),
('9556ae45053864aed9f18f59c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Fm6fPdi9SpXLe0mfYsa1QnbqPIHAmo7t\"}', '2018-07-10 18:12:29'),
('95a303a9b61ad182495c6c1e4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"c4YhC3jUiORBcoVTJ4hw8GdsqBZ98Whb\",\"success\":\"Success: You have modified banner module!\"}', '2018-07-22 17:07:26'),
('95a3810574707c27704d10f093', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1ULUW3eOniq2ooeg2SbdLlB0gJdkn9rx\"}', '2018-12-30 06:15:02'),
('95f5c9a8af6758661632247bdc', '{\"user_id\":\"1\",\"user_token\":\"vTjCtDRLBPumpqGoKC83PgHKTGx5iyhX\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-18 04:19:45'),
('961615695b36f7984aac4cc6d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 12:41:21'),
('9624abeb35b8316737bc93aeec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 04:02:38'),
('9727af5cc4b75df2b0cf99a003', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0rqRJpojcsmqXn1J1lMcQcMIh3oLS22Y\",\"install\":\"sAOccEbyWU\"}', '2018-06-04 13:02:05'),
('973dfcbc91ff70ca9d965a1a45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-20 11:12:04'),
('98b7e8365f7ce45183e85bc712', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-14 05:46:47'),
('98e83b6ffc5faf109641eafec4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"41 \"]}', '2018-11-18 12:25:29'),
('98f4de7cc65751eb096a08a3a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-12 04:38:48'),
('99150a9c6820ac9454585af470', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"R1igY3i7qSVdHmHCikLgGt0ZwONWDIfj\"}', '2018-08-27 10:11:54'),
('996b2c8bd3770530634242151d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uwQzBaKTeQqzOb3w04V8FiEZkpxCGMP2\"}', '2018-06-08 06:41:27'),
('99d3b4fdd63c0c084b23a2070b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-05 08:04:23'),
('9a23e32d899a24627182a60c54', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BssMFB31JzpvhNkopl7YNrlvBCCorYEy\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-07-06 13:02:50'),
('9a37baf046bb9fe92cfd4bbe3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"x7pUZGRm4A3CAs4OMPWf0PgHDa7vtMmu\",\"compare\":[\"51 \"]}', '2018-07-22 16:26:55'),
('9a7e596bdae7e1e7db9f7a821c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"n8JhBKihi065YbULDj841ABYyMW1mEnP\"}', '2019-12-04 18:41:20'),
('9ac16db73f8112c8f223bb88e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"register\",\"customer_id\":\"13\",\"payment_address\":{\"address_id\":\"8\",\"firstname\":\"test12345\",\"lastname\":\"test12345\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"8\",\"firstname\":\"test12345\",\"lastname\":\"test12345\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"comment\":\"\",\"order_id\":21}', '2019-12-12 12:32:05'),
('9b5b1b87d04fb2a30b20830d4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SfrPWdz5F9u20vDWHcSKxCIkmsRDPB5s\",\"customer_id\":\"7\",\"shipping_address\":{\"address_id\":\"5\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null}}', '2019-03-05 08:38:04'),
('9bcb4e4335c92466b9a41a0b7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-17 11:54:20'),
('9bd058871c39efcc26d7dc0d6d', '{\"api_id\":\"26\"}', '2019-11-22 11:22:28'),
('9c080cbeeeb184d0f5e2bed64a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 06:15:29'),
('9c5530e6580dbfa2b64917caa9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 10:02:58'),
('9c60c76351f5847226493bc5f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-06 09:44:05'),
('9cb42e63ac99bbd3c7ba80efe0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-10 12:31:30'),
('9cd18f2ce41eb16c6fabc3a7e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"40 \"]}', '2019-02-18 06:46:01'),
('9d3673ee40795db028d8e691dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-30 04:28:54'),
('9e1b67049fd5a09a37b0273a9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-07 05:10:53'),
('9e1fa21b901cf0816e01a0bcf0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jrc7zDLuf9ogA2VRS4GqXk1CKsEWQvOG\",\"customer_id\":\"7\",\"shipping_address\":{\"address_id\":\"5\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"compare\":[\"40 \",\"44 \",\"41 \"],\"install\":\"lAJS1tfqhZ\"}', '2019-03-03 13:25:20'),
('9e4e350141eb17af9cce26875c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 09:31:43'),
('9e6793ec011294a6f69fb2a692', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ytff03OlIULq5hmccJiYyVOncV3fIc0O\"}', '2018-07-25 05:14:25'),
('9f0f666b6a3f6bd703cc543274', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 09:47:28'),
('9f1e46f533899771f94a06e636', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-19 14:13:10'),
('9ff9a70543c693d6d9b47bde4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 10:27:13'),
('a03ffc961717dde5cb0437f8ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-23 08:41:06'),
('a050915337b2c8eb944a30d7f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 10:06:13'),
('a05156ea18aaf7e9d3719f7149', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:44'),
('a09234f5342e1461c6a56e329a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 17:01:59'),
('a0c067019c4477881a68cd42f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 11:09:25'),
('a0cabd981de213aa8d485aaa81', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uPblk1fUqoHHW9bFrV7S5iFXMo6zOjuN\"}', '2018-07-30 05:22:57'),
('a13f1e0ffa3181413a9def0569', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-11 12:12:05'),
('a1a8a2265fc03f0072e405bb3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-22 13:16:51'),
('a2591f411f0d742b97a0ed49b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-12 09:44:02'),
('a2e182d9e1d5247fd1142fdbec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-29 04:14:08'),
('a35ddaa6d87a93129fef7b2be5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-17 10:25:14'),
('a37c2f8f3010f87310c45e5456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 12:13:19'),
('a3986fecd15f6e12208b29d5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-27 10:26:25'),
('a3eeb9b56e6afccac0a2925e76', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"r1T5YOACtHgZTEm5yCfaMGsrTApdEBCE\"}', '2019-11-20 10:46:29'),
('a487768ad9452ed9db3e5458d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-27 07:41:46'),
('a4d1a036c4a054ebdb12b409db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 14:24:36'),
('a4d8a2170191cb31bc70787591', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-25 13:11:42'),
('a569f27ab60b87d9369dbda1a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WJTghrph2giBjY3Y7oYRGN0bNsJJdXYn\"}', '2018-06-28 06:10:05'),
('a5a2567d7d3aaab6c0b542de25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zi4GO1fCKAWbL3TCMfZVqa8w2VkIRAHq\",\"install\":\"AKd9Axn9rZ\"}', '2020-07-27 08:36:15'),
('a65eccc200eff0ed862023fb8c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mgDtvc6D9cILU7g02Mykt9fsl5UB91nt\"}', '2018-07-10 12:31:26'),
('a744d8b8b4c35371f65af21cde', '{\"language\":\"fr-Fr\",\"currency\":\"USD\"}', '2018-08-05 04:18:38'),
('a7854552c857dbe4f6fc93f0b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"lD3ZpEl6XJOexprkNLVg8oFcc55WUdog\",\"wishlist\":[],\"install\":\"XWoxHpxgiQ\",\"compare\":[\"45\"]}', '2019-02-18 11:50:46'),
('a79764e2de331b699ba517e35d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 10:52:33'),
('a8005c6d5160a9c38282784b2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dALOxxcZQO5LQnfGG55f4yU7TdSxRinE\"}', '2018-07-26 08:39:57'),
('a8c9fcb65361d8d674ec1c86c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fYEPSklxKhvaplk58gCxPksK9FiGcmQG\",\"compare\":[]}', '2018-12-13 13:26:57'),
('a8d1150d923664215d3f38861d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"X09zaMtYREWID4t8nKohuD22aFvd3lup\",\"wishlist\":[\"51 \",\"51\"],\"compare\":[\"51 \",\"51\"],\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"\",\"zone_id\":\"3271\",\"zone\":\"Fakaofo\",\"zone_code\":\"F\",\"country_id\":\"211\",\"country\":\"Tokelau\",\"iso_code_2\":\"TK\",\"iso_code_3\":\"TKL\",\"address_format\":\"\"}}', '2019-01-24 11:41:15'),
('a8f039d46a90c5a0a42183ac49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-10 11:03:57'),
('a91060a48c594862e217956355', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 15:05:12'),
('a9533ca87957ff6567f9dcc3c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:14:00'),
('a969bec8e490be8a6afff5245d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FrsdctUn5H5scnOzrUpbt5VVX8lXsdJb\"}', '2019-01-18 08:23:34'),
('a980b34e02a3031789784a6741', '{\"user_id\":\"1\",\"user_token\":\"cMnlgQSOcYpaqNCevZ83gVRYx8j5g9fr\"}', '2018-10-09 10:43:05'),
('a9fc923f18c56c293da9c72ef4', '{\"api_id\":\"26\"}', '2019-11-22 11:24:23'),
('aa8cd7420e628fa5d770af4a6d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"clB9dS7UC3EtneBkJDf7UQtocjSsEkwl\"}', '2018-06-19 12:31:24'),
('aa92415874b5c68d5bfe786f9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2SUB3alb34NBmcdubncE3pENPD67I8uz\",\"compare\":[\"44 \"]}', '2018-10-13 08:27:34'),
('aae609b3abbc7412b3d84610d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"K6nXtvi9Iu1NeF5KMDlwXfmr179Q8tnd\"}', '2018-05-25 08:33:25'),
('aae8de0ea9af13dcfd88b7df58', 'false', '2020-09-12 04:44:45'),
('aaefa9ade863170c61fa41446e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-02 04:17:56'),
('aaf3d9cfb22062a4857ff11483', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zKhTNweXCgJb7IM10nkWJmhGjdl06Nga\",\"install\":\"RpMCNp5GWD\"}', '2018-11-25 13:25:48'),
('ab5f3cbef2e163b96522476441', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200045\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-08-28 12:47:10'),
('ab99ec2cf4927b217675f119ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-03 11:41:45'),
('aba511ae188a3c08e21925c2f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"amvtfNQ8pdeLu4W9PZsc2kkEXOCw6e1C\",\"install\":\"UEF3Cwaji5\"}', '2019-02-14 13:32:03'),
('abbc41f468a6d5e4281781ea23', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KmA5vF3WmubOkYsZ8QOxr90oFveSTw28\",\"wishlist\":[\"40 \"],\"compare\":[\"40 \"],\"install\":\"ulW358XLFe\"}', '2018-10-08 06:39:19'),
('abdc7eb6a7200cc64c9a9e80d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-06 05:53:43'),
('abe0bfe1badbdc61142adc827f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-28 09:20:46'),
('abe1f30a9c8164d81dc3e50147', '{\"api_id\":\"26\"}', '2019-11-22 10:57:15'),
('ac0a4001ab6a145d62e366fe5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-21 09:42:01'),
('ac540164e85d8dc62bfa7b95ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:44'),
('ad17f20dd88d30a254b86c0a43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-26 17:49:22'),
('ad6df01135dcf2f15c5d531499', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-03 04:10:45'),
('ada5b11279c30016c2c204fad3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 11:36:32'),
('adac6337d2f177ade13f85ddf1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 16:25:39'),
('adc61718decd9e32c63eb62d67', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-09-11 09:28:16'),
('ae4a356f05cf40fe4a6a456c78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GT2SAdUMLPcmcHzjnkgsa7xSf4Q7k5GV\",\"install\":\"Gotq16ggtb\"}', '2018-09-06 11:34:51'),
('aed15cbe6e8199c2cd75839cd8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ntt6paxqnkdfqSnJQ0f6lvZSIMVBHOOh\",\"compare\":[\"51 \",\"40 \"],\"install\":\"XNOSoORHfx\",\"wishlist\":[\"40 \"]}', '2019-11-21 18:37:03'),
('aedc2477cfa192d74dc315cec1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xvymhdUQNuCR6pZElTRGDNxzqnpktAHT\"}', '2018-11-27 08:26:26'),
('af3da7c8a5b89086ddf7836a7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-16 04:35:49'),
('af965ffc566cf0eb37559061f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-10 08:27:02'),
('af97f142ef561b03e7bc6804ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-17 14:18:52'),
('b0c2f5b37fe98ede47118f9182', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WYzRc111z1mTAgLCZaHkCzow6UTO4iJq\"}', '2018-08-27 08:13:20'),
('b0d594affa4b3c8dc753acba0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-07 11:27:35'),
('b185c0bad26a11e36db5f38098', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 09:34:59'),
('b18e22bbcb0e769ede7d8573a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 12:47:08'),
('b20c5ce689746db6af2da253d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"40 \"]}', '2018-12-14 05:35:38'),
('b28a975ed47c7309f4f3d1f4de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 15:47:02'),
('b2bca67c5c40ab2c3d7fb2ee4e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0LCrUiyFUuvSEEzIXyQ1VMhXzG0Ts9Ck\"}', '2019-03-07 08:49:01'),
('b39fb958fa4b5ee8b0867f7d5a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200069\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\",\"user_id\":\"1\",\"user_token\":\"hllAguFR6RUTHGsybfFTGtrbWyLAdheq\"}', '2019-01-15 08:27:34'),
('b4d54492e8bee388551ab62a73', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fUsmorKPXdKZrncHzxqWc4bhHEL35cmK\"}', '2019-12-11 15:57:24'),
('b4db023f398dcebaf583a15fe9', '{\"language\":\"fr-Fr\",\"currency\":\"USD\"}', '2018-08-05 09:48:14'),
('b4dd5245540fdd9eb7d735d953', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"48 \"]}', '2018-06-16 04:50:46'),
('b4fb17899927b5d37c8092e3f1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AMDuG3elOwzwgR0Vn29B3GRUIDhC2lgy\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0300141\\/index.php?route=information\\/blogger&amp;blogger_id=7\",\"vouchers\":[]}', '2019-11-20 18:47:38'),
('b513515d7b8f7fa200ecff7f53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"llOF7ZBuJ1RuZtdcWTEVGmuNMvwFd2ON\"}', '2018-07-30 12:20:35'),
('b529046ba40877ac97d3a319df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:40'),
('b581f2358013a2c76bccc0420f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-10 07:17:43'),
('b5e8e7bd7051a2ec409677ae2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-05 12:23:52'),
('b61a05e7ec54fd46b5a637f2dd', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-02-14 08:42:58'),
('b65a39e2a3a25a65ef485e2397', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LxVY2xP3BLq9KpiFl5yaF8SuCTbIoZCk\",\"install\":\"3npcqsSOgG\"}', '2018-05-24 13:07:12'),
('b65cac0dbe2ede29a20eda2470', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qWEK0rekREXzy52Xhb47hGxSvcqfxFiG\"}', '2018-09-23 13:25:01'),
('b671688f48ca84d8a9d5b49761', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DdupDJSfD4Ps3PrHOuk1WfMOIShMBYTY\"}', '2018-05-30 07:38:23'),
('b6a3cfed460407309bc07e3324', '{\"api_id\":\"26\"}', '2019-11-22 11:24:17'),
('b6d3052d99c88dfca4319387e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-19 16:50:29'),
('b7bf0065a9b2ca98dd36100092', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MbS4TfBXJMqwus1i44RtCpGAIF3UP15d\"}', '2018-10-03 08:25:09'),
('b7d00c154c57e169c4111884ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2018-06-14 12:47:33'),
('b8be614061bec3f28773ee12bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 05:42:57'),
('b8d5cae618ca53dfdee088bd17', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"N1wI4jlHrqvzAJ3wmRjnqnJsr8RmgBxK\"}', '2018-11-20 08:03:05'),
('b9390c8d2afd9e5847acd3e83d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cheTwkU2uDj1Sv82ek6zJyZXuvUdkbqx\"}', '2018-07-12 15:53:22'),
('b975189b655c2d6a84fbd97171', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-11-22 14:43:51'),
('b9af0ca4a5b9b4d509403a5cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-05 12:14:47'),
('b9f3e1259c3d5995a101ac1999', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-27 10:44:40'),
('ba7b6988053228b8e0a197b259', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-11-16 14:43:57'),
('baeba95ed1fbad1d69c52868bb', '{\"api_id\":\"1\"}', '2018-05-23 10:39:56'),
('bbb9bd76eafd8a18b74216ede1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-23 09:41:16'),
('bc419174e4661032695f166e50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-16 06:14:42'),
('bc9731f91a878c1d0cabcd2cbc', '{\"user_id\":\"1\",\"user_token\":\"ymzYK7LCpY7YNU2bUVajLyB9W8jJBAmm\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-13 14:32:08'),
('be9fc0179e0d22ca7ae598edcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:46'),
('beec92a426e6100ca1fb2554b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-02 08:57:46'),
('bf4f1580615d09409d933c0f65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:50'),
('bfbb5382e1b551535523fc9877', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 11:39:38'),
('bfbf853d370d9e10a51f40396b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"42 \"]}', '2018-06-21 12:30:57'),
('c01eb252dc75ba9606cf7d3a7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"K0RrCJFDlJP1WdaH6NnXjnZAZQRn84qE\"}', '2020-10-12 13:32:13'),
('c09adc786805ad5e9ac4242475', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XPxZRzaVBn97xwly7ipDbwRlTqtWG31g\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-10-09 13:24:45'),
('c20384f01b1326287bb0cf5c66', 'false', '2019-11-23 15:20:49'),
('c29bb6704c5ee2b4f57160ffb7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NeJ8vkVx8s6NSMqyR5INNOWPPHJjMuWN\",\"account\":\"register\",\"wishlist\":[\"50 \"]}', '2019-02-17 13:32:37'),
('c2d52e17acdd2a3f37e40c0bbe', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"wishlist\":[],\"compare\":[\"30 \",\"44 \"],\"customer_id\":\"6\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"4\",\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null}}', '2019-02-18 06:58:51'),
('c38386589dfec437a8356c3efc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TBG5gb79AZC4R1H4oMajbBHQ1aBBJ2ri\",\"customer_id\":\"14\",\"shipping_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null}}', '2020-10-18 05:10:38'),
('c3e662b9ab26f7c16d18e23304', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-15 11:04:25'),
('c41e59c78b4f62d92b86b41005', '{\"language\":\"fr-Fr\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3M6LtRQ6NVRHGKAfQPqTov3GkbicxYxo\"}', '2018-08-04 12:20:22'),
('c441823af34c80adc9fd73c3e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4o0j48nvuXe5tBPKanZrtAGT6x71x4zT\",\"install\":\"cNF3h4lK3m\"}', '2018-11-24 13:26:18'),
('c51737040a8fa9f62dd3231fbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-30 04:37:20');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('c532030a45ffa54d73065a7323', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uBuqloafz0bfI4rGLrZNMwjF6XuVf4Zh\"}', '2018-07-17 14:03:48'),
('c55ce12ce6efd1f00af4894863', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-17 14:17:22'),
('c58c17e77fac91d23205de691c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-11 13:02:49'),
('c5cc23d3b6c18b4ae3ffcbf4ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ejwfZyrKI4uXp1xQuOkdPvIvmOi2wiU5\",\"install\":\"PtKYvHOOVM\"}', '2018-09-25 06:18:40'),
('c5edfb50e0ec85686ac04c5047', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-04 13:13:08'),
('c676348a7c9e0f148639825e1b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Icp0mCx7b4zV5H1eOCvlXTmUVLj1ZlBx\"}', '2018-10-29 04:28:45'),
('c766c42a0109fa55abb2dc63e8', '{\"api_id\":\"26\"}', '2019-11-22 11:25:17'),
('c7a860b86e6cac03efe81a453d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WoSUMD1q8kSO4Mkht7pBcKpoaZLFQ21b\",\"install\":\"Mp9R6QaeW4\"}', '2019-03-04 13:27:58'),
('c7c877722fef1bd22de92b31fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aXcm0ll2yGtggwxrKq2cZ4bX64Mlo0pk\"}', '2018-06-11 07:37:58'),
('c7d6ecce34d869a159766082ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ONhbCfJfYaGyE0LF6mdjvZ5Tw11VpGhQ\"}', '2019-12-07 12:07:03'),
('c82cd461f15ea7956950e9dc17', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-04 08:58:01'),
('c8c95896b0994804fb82c5d5d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-04 06:51:28'),
('c8f813f4b4742c7f005dd131c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-07 10:49:17'),
('c90bfe75481fd0449690449dff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2YSAw2ASX6DYxpX1F2UpdTeNpoJ03nSx\"}', '2018-12-29 13:05:30'),
('c9235507143ea11eabd8a25968', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DCFn0P1V1y25Gh0BG9GmakaDEgmSKn2t\",\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"\",\"zone_id\":\"3655\",\"zone\":\"New York\",\"zone_code\":\"NY\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\"},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"compare\":[\"40\"]}', '2018-12-14 12:14:42'),
('c951341604786fdce41ed74b49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-03-03 06:20:10'),
('ca309d4a7fb0149e974f518e64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AQOolYT0EwFwLrgP2U8r9rxNInUHAiQ3\"}', '2018-07-24 11:27:29'),
('ca5cc8960906e26a81d5273683', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IbdCdaGC2TTTymp1HakYImOSMXeIicMB\"}', '2018-09-28 13:04:28'),
('ca87792e3266b30bc9ae7691f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-26 11:46:08'),
('ca97c73799a1b7c2ca32cf9f5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vN11Qxr0jjaCPgzZ11YeYZOqbiBwxt5J\",\"install\":\"Hz3auL7oyR\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"t\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3617\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"Arkansas\",\"zone_code\":\"AR\"},\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"\",\"zone_id\":\"3621\",\"zone\":\"Armed Forces Europe\",\"zone_code\":\"AE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\"},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}}', '2018-05-25 13:01:34'),
('ca9b4430ccd9c2699cf5fff752', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-28 06:44:03'),
('cad829d1d31d9c78b0681723e3', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-05-31 09:58:07'),
('cb18d26a2edc9403314a3b4ebf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"P3GLWOSeOtnC0zfUeV0sj7thMv0lqjOD\"}', '2019-12-06 18:45:10'),
('cb7fa1a7f6ebc6baa577bb6663', '{\"api_id\":\"26\",\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"7\",\"customer\":{\"customer_id\":\"7\",\"customer_group_id\":\"1\",\"firstname\":\"test\",\"lastname\":\"test\",\"email\":\"test123@gmail.com\",\"telephone\":\"123456789\",\"custom_field\":[]},\"payment_address\":{\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"test\",\"lastname\":\"test\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"10001\",\"city\":\"newyork\",\"zone_id\":\"3627\",\"zone\":\"Delaware\",\"zone_code\":\"DE\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}}', '2019-11-22 11:26:56'),
('cb9d3488c25817e472c3a5f40a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 06:36:50'),
('cd18121bb495859a4ef2c60723', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 10:44:23'),
('cebab84c36d99e4eef549a0b03', '{\"api_id\":\"26\",\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"9\",\"customer\":{\"customer_id\":\"9\",\"customer_group_id\":\"1\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"email\":\"admin123@gmail.com\",\"telephone\":\"1234567890\",\"custom_field\":[]},\"payment_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"newyork\",\"zone_id\":\"1497\",\"zone\":\"Nagaland\",\"zone_code\":\"NA\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":[]},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"shipping_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"newyork\",\"zone_id\":\"1497\",\"zone\":\"Nagaland\",\"zone_code\":\"NA\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}}', '2019-11-22 11:25:51'),
('cf692ff9d247c2448eb915a280', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:47'),
('cf9d2f6cdc64d6f7f6d3264530', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-29 13:25:54'),
('cfbe74c7ad0454c3125ec7225c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MwlUFWBlVWXaQy2lRqe7PJZljPxknbhU\"}', '2019-12-01 18:49:31'),
('d05e01f92ffdef477eb4b28493', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-06 18:08:17'),
('d12a1975a1480e0865fc3c7ff4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-12 09:39:01'),
('d153278d5044e037415d8a9a1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-08 08:31:37'),
('d156d579e2cca9571c3a69c4a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rKCowYsuHZpl9zUE3vxfiZn0DUiSg9JQ\"}', '2018-09-14 12:48:28'),
('d180663ea972579b532b08e298', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-08 08:32:48'),
('d18e07846432ed3998e3fb1997', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:54'),
('d276050fc6cd47cfa01d8c3799', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NoKUy8o1BlfnN2Uo6ncfSlAjGTxaddsN\"}', '2019-12-04 13:21:17'),
('d2be09b73bbdee48cc6565feb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-09 11:22:51'),
('d2e070a8b56f403b4d3ee772fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"44 \"]}', '2019-02-18 06:59:12'),
('d325235639e90d83346d1da82b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-02 16:15:14'),
('d35d294587247e291459bcf80a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Y8dnoFoTr4fqJ6d7kbqy4GADxvMQC6zF\",\"customer_id\":\"14\",\"shipping_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"9\",\"firstname\":\"hari\",\"lastname\":\"hari\",\"company\":\"society\",\"address_1\":\"chennai\",\"address_2\":\"\",\"postcode\":\"600053\",\"city\":\"chennai\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null}}', '2020-09-13 06:05:08'),
('d416cfa1c37d15004e735ab640', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-26 10:22:23'),
('d43a730a016cfe1d0d0944b3b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-12 12:21:32'),
('d4804afdc2a03b92ca469e4252', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-17 11:55:15'),
('d4f301af65b68f4ce42cb98a99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 09:46:01'),
('d596e7f5fc523cb62807fc9900', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:49:15'),
('d5bcb94693557839e4f9515fd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-22 16:34:57'),
('d6af4be10acac6fed21c605265', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-25 11:14:39'),
('d7c75711a6556e82a5bcbb8f7b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"28 \",\"36 \"],\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0100043\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=3\",\"user_id\":\"1\",\"user_token\":\"SV1MCTgauMtxBENNBOYks7rmpNErrfmt\"}', '2018-11-30 08:40:48'),
('d7fab4fbe7509ac4476c2f441a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EsJo4EFzEd7eIqXdarbQbjVTfWxnZoco\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010018\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-10-12 13:25:59'),
('d828031f539d7807a0aaee4cdb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-19 11:43:54'),
('d8cf774a98546aa00ad7ed10d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 12:35:35'),
('d90eb31a4fb339ca4fda38cb8d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KRnK9de3EGFZAWKH1ySlria9knq8BhDX\",\"wishlist\":[\"51 \",\"42 \"]}', '2018-09-17 13:26:15'),
('d94e7a7a7e089eea96effb1072', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-29 10:22:26'),
('d9d084d739e356fdb0532913c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"OWNiA6J7FlUeg5lbDzfEvTrJ2YZMR1sQ\"}', '2018-11-26 13:26:20'),
('d9d17b107088e62a1bfe00aa11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 07:24:31'),
('da08b74874db358d1d996c5558', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-25 11:35:50'),
('da31275cc63d122123e9d86712', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZBK5HbfQPgxrBb9QThTa0BwQ75ArJCdZ\"}', '2020-08-02 13:33:30'),
('da9202759d00bd151c46d8ce08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-18 12:44:21'),
('db290d097dbb9dff49d5d89101', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 09:34:59'),
('db5a3017beb610ef48ac56f8c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"iVI6nEYnPGt6OEAixkaAz0d50P7m4m1z\",\"wishlist\":[\"40 \"],\"compare\":[\"40 \"]}', '2019-10-03 12:31:04'),
('db7240fa49332a3192d04caf24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-22 13:14:58'),
('db85d7a09b9a4ae28f176d0625', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Jfe6yGWhz3Ju9D3D0k9igChKjqzKjpG9\",\"success\":\"Success: You have modified modifications!\"}', '2018-07-28 10:16:17'),
('dc35a8ee2fe34a34332570ad9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-12 05:50:08'),
('dd0651150c167c16d01f6abd58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-09 06:28:48'),
('dd991a4441959f311396cfc370', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-06 04:33:56'),
('ddd425e00033bf99e49b638af8', '{\"api_id\":\"26\"}', '2019-11-22 11:25:09'),
('ddfd923b228747e852732637ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 11:18:06'),
('deac82db2f70704067a1e76625', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-30 13:03:24'),
('dec02a4125f5ce68f1d1d83bbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"51 \"],\"user_id\":\"1\",\"user_token\":\"jk4EHXN7AXLJ40BkxxpwaOkjfKlKtMy7\",\"compare\":[\"45 \"]}', '2018-07-09 12:59:11'),
('df3071023be34979b9e92e74ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 15:53:03'),
('df8baeae30ebc78f566f4ce46a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"lGc4UvUhwmqF8Vla1m1iT9X2mDbXStw7\"}', '2019-01-29 07:22:16'),
('dfa7b165a5e623215171aafacc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"54 \"],\"wishlist\":[\"54 \"],\"user_id\":\"1\",\"user_token\":\"5tIkS71iGwQkufmT93KFzbSsmtkMnLTW\"}', '2018-08-26 10:42:05'),
('e0086da9ab4bd3e8387d597030', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user9\\/OPENCART\\/OPC0300148\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=8\"}', '2019-12-11 11:45:21'),
('e03c5f1e855b3f687cb5bcf8a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"L21bIcfTX5sHU6w2Lt7z7hWzcdfPQMjL\",\"customer_id\":\"9\",\"shipping_address\":{\"address_id\":\"7\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"newyork\",\"zone_id\":\"1497\",\"zone\":\"Nagaland\",\"zone_code\":\"NA\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"7\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"new\",\"address_1\":\"newyork\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"newyork\",\"zone_id\":\"1497\",\"zone\":\"Nagaland\",\"zone_code\":\"NA\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"comment\":\"\",\"order_id\":19,\"vouchers\":[]}', '2019-11-22 18:48:28'),
('e1a1ccfdbe28fac089ed02aea3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 09:35:00'),
('e1b52692ad80e8fe1313133d22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-30 10:04:36'),
('e1d48bcb0272cfa155b0b0e263', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-20 09:16:01'),
('e1d8e944a67d288f9a98a14f26', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vTudb8mVFhYt2AdEQtAAZq34kkl6q7Ge\",\"install\":\"FZF7VsbGLq\"}', '2018-07-30 12:55:09'),
('e22564a42fde6d93ec891e96ab', '{\"api_id\":\"26\"}', '2019-11-22 11:25:59'),
('e25995bd8062012dc882977ae0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DLL3yamaF58zFC9sAwEQVLvGDx3ciUFe\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3517\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Argyll and Bute\",\"zone_code\":\"ARY\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3517\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"zone\":\"Argyll and Bute\",\"zone_code\":\"ARY\",\"custom_field\":[]},\"compare\":[\"44 \"],\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc020024\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-08-02 12:37:21'),
('e361afb4a72e5b280ad2d81578', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-18 11:08:37'),
('e39e43e03fdbaed706cab9cc0c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"36 \"],\"user_id\":\"1\",\"user_token\":\"Vtc8qH77kaaM9rpMnxuQdBTtMPHDBCBs\"}', '2018-07-29 12:52:18'),
('e3bad26f44133a34d3a4ac3392', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0bo4wCGqu3MxLIod4We5eosAdJzQBUBV\",\"install\":\"85grqdOFC3\",\"success\":\"Success: You have modified module specials!\"}', '2018-06-30 08:56:49'),
('e3ddbfbfa833d26dbe5e1b5f75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-30 09:02:28'),
('e3fb9d7afcbc92b128f9b2d4d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 09:03:30'),
('e404d14d7379b8dfbeebd3c508', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"J5idGAmdUaPtD6w16SIjREKLBNOdhiws\"}', '2019-01-31 13:19:05'),
('e457a110a852009aa2a7179d64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-24 10:15:10'),
('e49bfefbdd6e668aed3f47315b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Uc5SnRZ5zbI2Nov642JrvKNkQgs1fBJR\",\"install\":\"KWZLMi7P6d\",\"compare\":[\"44 \",\"41 \",\"32\"]}', '2018-11-19 13:18:28'),
('e4c383bdc7b7199b0f29983491', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"testing\",\"lastname\":\"testing\",\"email\":\"admhbghhkjin@localhost.com\",\"telephone\":\"1234567890\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3628\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"District of Columbia\",\"zone_code\":\"DC\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"testing\",\"country_id\":\"223\",\"zone_id\":\"3628\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"District of Columbia\",\"zone_code\":\"DC\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":4}', '2018-05-28 05:15:44'),
('e4f223f17f8270df2feff32460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 11:14:32'),
('e50c7b21f9faa8f26697b141c9', '{\"user_id\":\"1\",\"user_token\":\"hkK59g5X61GYoRCD1WCQQbpHwSRef7ae\",\"language\":\"ar\",\"currency\":\"USD\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"208\",\"zone_id\":\"3169\",\"country\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Kilimanjaro\",\"zone_code\":\"KJ\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"208\",\"zone_id\":\"3169\",\"country\":\"Tanzania, United Republic of\",\"iso_code_2\":\"TZ\",\"iso_code_3\":\"TZA\",\"address_format\":\"\",\"zone\":\"Kilimanjaro\",\"zone_code\":\"KJ\",\"custom_field\":[]}}', '2018-06-21 07:27:50'),
('e50e0bae8878999eb060a372fa', '{\"language\":\"fr-Fr\",\"currency\":\"USD\"}', '2018-09-24 09:27:31'),
('e5f5289887fe57668ad7635116', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-07 06:52:11'),
('e6619add26751872efca15c0c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uh9YnImCzMEr5xpa8G36G13abCNr4w1j\"}', '2018-07-17 13:02:33'),
('e68b6d52a067a73129d36189be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-07 04:08:10'),
('e6a89d8f5aefb06d228559cb97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-03 04:50:21'),
('e6ba6ab02d0b68216805d1d014', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mGPvXb6icBSjNnf2bSojgV2gIzFuX5Po\"}', '2020-07-27 16:15:32'),
('e6d1b878cbfab340f640586a3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8ImwE2RhgfxqEnVMjevjEuDp7RJ0V7cB\"}', '2018-07-18 12:38:48'),
('e727ec5777783e228b796db96c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-25 07:00:44'),
('e7539e95f85a008cbd7d9bafa1', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AWECW5eRBxv9OZe1ZNAgQEOOV1asyvf6\"}', '2018-05-30 13:04:51'),
('e75c1a1e48818fa5226f393234', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-02-23 08:47:20'),
('e7a41e8e999a5dd31c98cdefcd', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NqLKeeWPpxDvgrHiMTWAcOjfNZSwAlCC\"}', '2018-09-18 13:23:04'),
('e7ca4cb99ec56548139e8b162f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-18 12:42:58'),
('e7e4159b126c5a14b7f4f7d016', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-06 07:05:10'),
('e86e28df9f15493ead3a76d984', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-24 08:42:33'),
('e8ec46f5d05fd15894f21c029b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-16 05:39:49'),
('e95aa2187e667e55778e8badfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-05 06:28:46'),
('e980838419475e08e10ee75f29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PyInp7WtltFcApfO5FWxTZ3Dl44Vx5jw\",\"install\":\"2yVvIz9qaN\"}', '2019-02-15 07:32:28'),
('e982d9a07d3aa07e059aef450c', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"v5ayeYYSsdaSnACWBCcTXqpQ5JRDWqNn\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc020024\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=4\",\"install\":\"l0cCNSPkPp\"}', '2018-07-26 07:36:04'),
('e9e2ac7aa7815c7f51e6725db3', 'false', '2020-10-17 09:01:28'),
('e9ec4fd17c2b4beee6a2891dbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 16:13:56'),
('e9fb9ff9a00816e804586f94a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3gdVN2TGfgvv5SaNyzBD197ebC433H6Z\",\"install\":\"yIsP4AvRIb\"}', '2018-10-16 09:43:49'),
('ea7c747a78e8e6e5cf6ff174b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dtlTfZVey1orDS1H7w4fH6s5Gmz5n3E7\",\"compare\":[\"42 \"],\"account\":\"guest\",\"payment_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3517\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Argyll and Bute\",\"zone_code\":\"ARY\"},\"shipping_address\":{\"firstname\":\"testing\",\"lastname\":\"testing\",\"company\":\"\",\"address_1\":\"testing\",\"address_2\":\"\",\"postcode\":\"99501\",\"city\":\"testing\",\"country_id\":\"222\",\"zone_id\":\"3517\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"zone\":\"Argyll and Bute\",\"zone_code\":\"ARY\",\"custom_field\":[]}}', '2018-07-29 11:07:10'),
('eaa69c89af60a319e57de159ef', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9ydPGrQBUzRLatnGrrzoN5bhlbE6RlpB\"}', '2018-09-28 10:32:10'),
('eaa91054a01ca404fd7fb9eec5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-29 10:57:45'),
('eac78dd1f4ca42cb2ae96cf4a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 12:29:57'),
('eafb67858045404a83968e8049', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:25:28'),
('eaff5df5a05484d5d930208b05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-06 07:45:43'),
('eb1f51eb96b53fd2213b480db1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fgapLs5b3Pp8p0chvtxa3M6Ymcjo7zzy\"}', '2019-02-23 13:27:19'),
('eb3241cb1e74a1310b7cd4c683', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 05:54:41'),
('eb7b491e108138f73092fef796', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-06 12:25:46'),
('ebc9c6547a58600dccee764097', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"VfD0qnFW3JqOYjOJQVNdtWfOcD0wcTiQ\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user9\\/OPENCART\\/OPC0300148\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=7\"}', '2019-12-02 14:49:46'),
('ec190031e260f789678dd0bcdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-10 12:21:23'),
('ec7ed4a8d432b2de1979f5abbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-01 12:36:55'),
('eca23bcb029b27e9279d98bd51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 09:10:57'),
('ed1a8374e23dd815bf61d5a84b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"f5kj0IhvGoH4aVW4AoeWtitKxkkKptci\",\"compare\":[\"44 \",\"34 \"]}', '2018-05-29 14:06:33'),
('ed60f21b4febaab4b5abbfee58', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Q0G1BGwhRjeUNl4sY6yIOgX7pM7UxoGH\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user9\\/OPENCART\\/OPC0300148\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=8\"}', '2019-12-05 18:49:06'),
('ed65d0cae975cab7b37d444e65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"v5V79hfWKEsQVgp02ZwtXFYq7WH5J1AJ\",\"install\":\"86HwswIJqi\"}', '2019-11-17 18:15:32'),
('edb170e80eec23c3462869da02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FgFNbWdwq7uzcTyUMoKwkeju2TEUEf3Y\",\"install\":\"bCzHx9rhiK\"}', '2019-01-14 13:27:04'),
('ee235b871240afb8d9a868907e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pRvnpLEd1Du5AthHyQcorXI0sEcD3p2R\",\"install\":\"hi16EvJuth\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200069\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=7\",\"wishlist\":[\"44 \"],\"compare\":[\"44 \"]}', '2019-01-18 13:26:47'),
('ee3485efc8c5a2aa4a2eeb1a09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-12 11:59:00'),
('ee556532d20f01953179f8bbf6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-01 08:13:26'),
('ef695006a1cd64659207727e15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bKkaE4Ud0J4jB8YJO4FcodsvkSqrVzAh\",\"compare\":[\"44 \"]}', '2018-08-20 09:13:19'),
('f07e6dc388dd8aa9c5996063cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-30 14:25:27'),
('f083adb6150ce4865191238ec3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-25 10:25:47'),
('f0ca69ab36cacdf1cf7ca97e05', '{\"api_id\":\"8\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 11:17:26'),
('f0d168b8dcf9b5ba006c088c43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-04 13:21:41'),
('f0fe5fe58446cfba533967677d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-22 18:06:10'),
('f1a648398af1596fad735b339c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MSjexWTmfwtjaMTkWKG17aG5DEMUsGQg\"}', '2018-09-08 08:24:31'),
('f1ec79d4b0307041018d542442', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yLMtvsvBrBtJ2iHUHjHdZ6Yxbhc4pSzo\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200052\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-12-11 06:40:47'),
('f24d59900877e01997803d173d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-07 10:04:39'),
('f25449f4e2a38c5f66f554088f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KqfoHVDeByEuZbho8Z72qWhWykpJItAd\",\"install\":\"9ODUn0lfps\"}', '2018-06-27 13:05:57'),
('f28d92eca16639568ca2da9574', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZWnGBrVgjO5lyRNus5UQPLxgFwgx9S0s\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010018\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=3\",\"compare\":[\"44 \"]}', '2018-10-15 12:57:45'),
('f303108c27b63f63897ba9defb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-07 12:56:57'),
('f30fbb69dba5a19033ed8a3d1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mx6VTYiUK65nWGpXuv9hQk0caL1eeM0G\",\"install\":\"q3Tz0zF6X9\"}', '2018-09-29 13:25:25'),
('f34dd9ac06859b12cda7822a24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"quaADNAt07WxhMKNWPHw7Jq44iBcHNzQ\"}', '2018-06-09 08:48:59'),
('f36603bccbd814043d1035988e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ayRCokZnv8B5es1USBQ7l0M1ddbNwo7l\",\"install\":\"HIhA2FUiTi\",\"account\":\"register\"}', '2019-01-20 13:28:01'),
('f493eb744fb5ecc8b56f7d2919', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BtVIhMJV7RgKqWzr92guxnVHEmmECCfV\"}', '2018-09-24 10:22:01'),
('f4dd71d69789b5b356c8451b25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8nv5yV5A7ZEV3PUDULhahKZTFyGkxNLd\"}', '2018-09-24 12:04:37'),
('f501ef5c51fa885fd02b1bccd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 15:45:27'),
('f55b9ad87149e3c725ac0fba3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-03 12:52:27'),
('f59332bd2117e02509fcd4658c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-25 08:01:07'),
('f5abf2c69b2c03313a9a8569ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-02 05:32:44'),
('f5c6cb82b5eb3e36ea098dd7bd', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-05-31 07:02:51'),
('f600307438b0ddda41fe127310', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-01-19 11:33:49'),
('f6158926e1a8da16dbee302340', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-20 10:48:18'),
('f646104c23cc0e1acdeb3d4c60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AqzMgOYMUmj0kyL0HdKiI5WbJqDmGYkr\"}', '2019-12-05 11:28:49'),
('f684c03d6ff2bd3e0ca98d5918', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-11 15:59:50'),
('f6f3994e9e2f02f88aa09f60b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XRlCWSPgd3JlJryjnfQeypgvSGUv8qc9\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC010005\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=6\",\"install\":\"khm1M1vc4C\",\"wishlist\":[\"51 \"]}', '2018-10-01 13:31:31'),
('f7102bdeb945762ad566fedeaf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"51 \",\"40 \"]}', '2019-02-18 13:13:17'),
('f71e943b1decc3d47becd72afa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:45:18'),
('f75bedd25eec659aa0e281e0c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-26 11:43:37'),
('f78ba97051785c97b4b0f8c037', '{\"user_id\":\"1\",\"user_token\":\"OG9Vm4fT2b1U0JPy2VcRvQ2TPxvYYDMn\"}', '2020-09-12 05:54:26'),
('f7cd134fd81fc93dab020c6ee8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-04 05:42:14'),
('f83551da1ad3c6a6d5bec8a041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-25 07:20:10'),
('f8387774c3ee6accdaf41973b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-01 06:47:35'),
('f8928839946517514d7558d856', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hGj9g0MWAhPbmkPVZqX1JujH6KkhNejQ\"}', '2019-12-12 12:33:33'),
('f8d00c12c4806adf922e3a18ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-26 04:46:31'),
('f8d3ee62e3ab058614aed38212', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PgksE1yKUHLtSK3FAWsyxxzmVyf6c0l8\"}', '2019-03-01 13:28:13'),
('f8dc3044ea0d920fc4dc2019ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-05 09:54:05'),
('f9a18a80686a22477ee6afda85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"p90P1VWFIpEUAgfAWxcg9Fd7lI6eq5wy\"}', '2019-12-04 11:08:14'),
('fa0514d821d08ba3cb15935ffb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zRdPOolNxy3ul7eMq6W4LLou0he3BMiR\",\"wishlist\":[\"51 \"]}', '2018-07-28 08:47:20'),
('fa251e30528786116be41ad100', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-20 16:14:46'),
('fa556f8e460a42d8529214854f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-10 04:29:16'),
('fa6897c07d87207418463dd4d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-29 18:50:05'),
('fa9f62c3925f3eec52c9cfb8e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 10:29:36'),
('fb485a5dfceb3d3e03c1fb9e45', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4TA70GWPD00jeT8kjzytwdDwIMzAbLP2\",\"success\":\"Success: You have modified featured module!\"}', '2018-07-20 14:28:42'),
('fc421f3732e6460dfc3f183695', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-06 10:18:39'),
('fc7aed4df1b5f115fcb7cbf68a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"w1M6y3OSiKAwgOcUh1qcm6O4DDiiQXEi\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user2\\/opencart\\/opc0200031\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-07-30 06:47:59'),
('fce006cc82d3c243c1ac239fca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-07-27 14:33:03'),
('fd949b2c9cadcb564b27f71134', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-14 11:46:16'),
('fdb45df41efa66f605789f38e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-08 05:42:37'),
('fded7c935f0d71fcbe9e3a6018', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"puzQ1v0fRL1YKyNdxDX3yQJh0rvHE55b\",\"redirect\":\"http:\\/\\/192.168.0.170\\/user8\\/OPENCART\\/OPC0200045\\/upload\\/index.php?route=information\\/blogger&amp;blogger_id=5\",\"compare\":[\"30 \"],\"wishlist\":[\"30 \"]}', '2018-08-28 10:51:48'),
('ff02f49241ce1c780c5d63ae14', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B0hUhse3KM1xFvvJRxF6wdiblKUkeCLP\",\"success\":\"Success: You have modified HTML Content module!\",\"compare\":[\"54 \"]}', '2018-08-27 13:23:25'),
('ff27b5836fa46d336993fa3ae1', '{\"user_id\":\"1\",\"user_token\":\"jzPG0NPtVEHRX7DzDcycb3kC7xfidvYk\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-23 16:10:47'),
('ff2c302153128f213171e3ca9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-05 08:38:06'),
('ff2e8477ac3995c826dd4af8b7', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-06-19 10:10:39'),
('ffe4966c9cb568d8f0ee6e489d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-04 04:29:10'),
('ffeaeeae54214a39d35523588c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-11 16:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(231, 0, 'developer', 'developer_sass', '0', 0),
(230, 0, 'developer', 'developer_theme', '0', 0),
(552, 0, 'module_filter', 'module_filter_status', '1', 0),
(462, 0, 'module_newsletters', 'module_newsletters_status', '1', 0),
(9422, 0, 'config', 'config_encryption', 'j7lmMtaoqQoUOak2mVb2WaAvoXo8p8oEWYd7pw2Q6ae4ag1M9gBPcDkIQ4OVtBLhOc4pNWqBp9kNO7L8tbHrRaElf1OPLof5K3DLghYDu6xFOQ9rAKoJ7Lk4yTq9AQpvctGCxjEixvoHqmjlIx3V0xHKu6ZnEl9NmuBD9njbK4o2WTxTb6PcDJm32xgXniWtmMBowcgXucCSUR9Qd5gOVYkazHuf5uSs9kzObl6mn44HeMswAZIMQlIAEYszJLGi6u9IFcCOQL85VLEDIW1jlwPsVwHXk3r6wC4RiKAnndT0kXuOnWh26eG4t6MhgY7zDYoJlXxzKQe8BzXdovojVVwQ8M7AcDD8AEWJQgFxZKbN5a8NCIvMsQVxbtRo2rFnrDfvfGjhmK2Nc1MpxRlqfMcGFOjGlHO1073lzYlLkcQcYCbDVV4h6K6bbqagT5E3GCwPNMU6xgOROrTGm0XylCvebGLqu62xvHyo8mnavPfj6uW1QeIyvoG9756QHuYAhl1eAObQVSw0vIxe1YZ85Ltk6oME6iUEV3eP6pjkg47P1J3HWYnESE1s8VjxAQKV9ygHvZS6pIIh349uZUr4WrGcgOcjdl5yqkDla1GYXGhrJNuA3q8ewyRtqFZsKY7FF8ZqHkY3DCUzP9Xw8nt4xAaXE2NCrNOSjNJXwmkWhYTPkWntuTTjlA7blQM0KzFYdLhcRYTSRZPFquj9GmwVYRxoEOHmZ9NS2UxFYBGh9395IB71Mo30Hqg8ABdvziqBkAdRsYSXxcVMppcTCgqsIiIMZaAUs3K5ALAdFVdEZRSszxcbBzhGXMnpkO8Xgx7zwDEgzmoPV7cDt0cs2pVbNabb4PxleOUss0vNPpiatQC0DAfgSnKROXEBB46utjsh8zeMsdSe0syVJmlko9P5jhOX4kudp4ddn1TS6ZXhotOpgGdg0NiiqGxwtSLvBrBlmTffCJW83VtG0SMUSXjKtOPFYWbiTIegkvj9zF3NgRDbHSsxRbbcDLjv7rUYZl37', 0),
(9421, 0, 'config', 'config_shared', '0', 0),
(9420, 0, 'config', 'config_password', '1', 0),
(9419, 0, 'config', 'config_secure', '0', 0),
(9418, 0, 'config', 'config_compression', '0', 0),
(8897, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(8896, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(8895, 0, 'theme_default', 'theme_default_image_cart_height', '92', 0),
(8894, 0, 'theme_default', 'theme_default_image_cart_width', '80', 0),
(8892, 0, 'theme_default', 'theme_default_image_wishlist_width', '80', 0),
(8893, 0, 'theme_default', 'theme_default_image_wishlist_height', '92', 0),
(8891, 0, 'theme_default', 'theme_default_image_compare_height', '92', 0),
(8890, 0, 'theme_default', 'theme_default_image_compare_width', '80', 0),
(9417, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(9416, 0, 'config', 'config_seo_url', '0', 0),
(9415, 0, 'config', 'config_maintenance', '0', 0),
(9414, 0, 'config', 'config_mail_alert_email', '', 0),
(9413, 0, 'config', 'config_mail_alert', '[\"account\",\"affiliate\",\"order\",\"review\"]', 1),
(9412, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(9411, 0, 'config', 'config_mail_smtp_port', '465', 0),
(9410, 0, 'config', 'config_mail_smtp_password', 'hari@123', 0),
(9409, 0, 'config', 'config_mail_smtp_username', 'haribabu@xmediasolution.com', 0),
(9408, 0, 'config', 'config_mail_smtp_hostname', 'ssl://smtp.gmail.com', 0),
(9407, 0, 'config', 'config_mail_parameter', 'haribabu@xmediasolution.com', 0),
(9406, 0, 'config', 'config_mail_engine', 'mail', 0),
(9405, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(9404, 0, 'config', 'config_background_image_position', 'fixed', 0),
(9403, 0, 'config', 'config_background_image', 'catalog/background-image.jpg', 0),
(8889, 0, 'theme_default', 'theme_default_image_related_height', '320', 0),
(8886, 0, 'theme_default', 'theme_default_image_additional_width', '585', 0),
(9393, 0, 'config', 'config_affiliate_group_id', '1', 0),
(9394, 0, 'config', 'config_affiliate_approval', '0', 0),
(9395, 0, 'config', 'config_affiliate_auto', '0', 0),
(9396, 0, 'config', 'config_affiliate_commission', '5', 0),
(9397, 0, 'config', 'config_affiliate_id', '4', 0),
(9398, 0, 'config', 'config_return_id', '0', 0),
(9399, 0, 'config', 'config_return_status_id', '2', 0),
(9400, 0, 'config', 'config_captcha', '', 0),
(9401, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(9402, 0, 'config', 'config_logo', 'catalog/Snapp-Shoppy-Logo.png', 0),
(8888, 0, 'theme_default', 'theme_default_image_related_width', '278', 0),
(8887, 0, 'theme_default', 'theme_default_image_additional_height', '674', 0),
(9390, 0, 'config', 'config_stock_display', '1', 0),
(9391, 0, 'config', 'config_stock_warning', '1', 0),
(9392, 0, 'config', 'config_stock_checkout', '0', 0),
(9389, 0, 'config', 'config_api_id', '28', 0),
(8885, 0, 'theme_default', 'theme_default_image_product_height', '320', 0),
(8884, 0, 'theme_default', 'theme_default_image_product_width', '278', 0),
(8883, 0, 'theme_default', 'theme_default_image_popup_height', '922', 0),
(8882, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(8881, 0, 'theme_default', 'theme_default_image_thumb_height', '674', 0),
(8879, 0, 'theme_default', 'theme_default_image_category_height', '200', 0),
(8880, 0, 'theme_default', 'theme_default_image_thumb_width', '585', 0),
(8877, 0, 'theme_default', 'theme_default_product_description_length', '180', 0),
(8878, 0, 'theme_default', 'theme_default_image_category_width', '893', 0),
(8876, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(9371, 0, 'config', 'config_tax_default', 'shipping', 0),
(9372, 0, 'config', 'config_tax_customer', 'shipping', 0),
(9373, 0, 'config', 'config_customer_online', '0', 0),
(9374, 0, 'config', 'config_customer_activity', '0', 0),
(9375, 0, 'config', 'config_customer_search', '0', 0),
(9376, 0, 'config', 'config_customer_group_id', '1', 0),
(9377, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(9378, 0, 'config', 'config_customer_price', '0', 0),
(9379, 0, 'config', 'config_login_attempts', '5', 0),
(9380, 0, 'config', 'config_account_id', '3', 0),
(9381, 0, 'config', 'config_invoice_prefix', 'INV-2020-00', 0),
(9382, 0, 'config', 'config_cart_weight', '1', 0),
(9383, 0, 'config', 'config_checkout_guest', '1', 0),
(9384, 0, 'config', 'config_checkout_id', '5', 0),
(9385, 0, 'config', 'config_order_status_id', '1', 0),
(9386, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(9387, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(9388, 0, 'config', 'config_fraud_status_id', '7', 0),
(9370, 0, 'config', 'config_tax', '1', 0),
(9369, 0, 'config', 'config_voucher_max', '1000', 0),
(9368, 0, 'config', 'config_voucher_min', '1', 0),
(8875, 0, 'theme_default', 'theme_default_status', '1', 0),
(8874, 0, 'theme_default', 'theme_default_directory', 'nutripe', 0),
(9367, 0, 'config', 'config_review_guest', '1', 0),
(9366, 0, 'config', 'config_review_status', '1', 0),
(9365, 0, 'config', 'config_limit_admin', '20', 0),
(9364, 0, 'config', 'config_product_count', '1', 0),
(9363, 0, 'config', 'config_weight_class_id', '1', 0),
(9362, 0, 'config', 'config_length_class_id', '1', 0),
(9361, 0, 'config', 'config_currency_auto', '1', 0),
(9360, 0, 'config', 'config_currency', 'USD', 0),
(9359, 0, 'config', 'config_admin_language', 'en-gb', 0),
(9358, 0, 'config', 'config_language', 'en-gb', 0),
(9357, 0, 'config', 'config_zone_id', '3563', 0),
(9356, 0, 'config', 'config_country_id', '222', 0),
(9355, 0, 'config', 'config_comment', '', 0),
(9354, 0, 'config', 'config_open', '', 0),
(9353, 0, 'config', 'config_image', '', 0),
(9352, 0, 'config', 'config_fax', '', 0),
(9351, 0, 'config', 'config_telephone', '123456789', 0),
(9350, 0, 'config', 'config_email', 'mohanmd1395@gmail.com', 0),
(9349, 0, 'config', 'config_geocode', '', 0),
(9348, 0, 'config', 'config_address', 'Address 1', 0),
(9347, 0, 'config', 'config_owner', 'Your Name', 0),
(9346, 0, 'config', 'config_name', 'Snapp Shoppy', 0),
(9345, 0, 'config', 'config_layout_id', '4', 0),
(9344, 0, 'config', 'config_theme', 'default', 0),
(9343, 0, 'config', 'config_meta_keyword', '', 0),
(9342, 0, 'config', 'config_meta_description', 'My Store', 0),
(9341, 0, 'config', 'config_meta_title', 'Snapp Shoppy', 0),
(9423, 0, 'config', 'config_file_max_size', '300000', 0),
(9424, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(9425, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(9426, 0, 'config', 'config_error_display', '1', 0),
(9427, 0, 'config', 'config_error_log', '1', 0),
(9428, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '27344.6000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '19.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'dc6da712b08d7e7fa330e678e13643a19ea36eba', '6AOWGylDH', 'John', 'Doe', 'mohanmd1395@gmail.com', '', 'Ao5324D4ONQ08QZ3kyaqskLqpF1F4yHUNIU1KXfF', '157.49.207.175', 1, '2020-07-19 09:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/getbestprice\",\"customer\\/holesaleprice\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blogger\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/elfsight_form_builder\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/getbestprice\",\"customer\\/holesaleprice\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blogger\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/elfsight_form_builder\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000'),
(7, '2.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz'),
(7, 1, 'liters', 'lts'),
(7, 2, 'liters', 'lts');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_blogger`
--
ALTER TABLE `oc_blogger`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Indexes for table `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  ADD PRIMARY KEY (`blogger_comment_id`,`blogger_id`);

--
-- Indexes for table `oc_blogger_comment_description`
--
ALTER TABLE `oc_blogger_comment_description`
  ADD PRIMARY KEY (`blogger_comment_id`,`language_id`);

--
-- Indexes for table `oc_blogger_description`
--
ALTER TABLE `oc_blogger_description`
  ADD PRIMARY KEY (`blogger_id`,`language_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Indexes for table `oc_megamenu_description`
--
ALTER TABLE `oc_megamenu_description`
  ADD PRIMARY KEY (`megamenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_option_value_data`
--
ALTER TABLE `oc_product_option_value_data`
  ADD PRIMARY KEY (`product_option_value_data_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `oc_blogger`
--
ALTER TABLE `oc_blogger`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  MODIFY `blogger_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6690;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  MODIFY `megamenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4141;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_product_option_value_data`
--
ALTER TABLE `oc_product_option_value_data`
  MODIFY `product_option_value_data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1464;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9429;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
