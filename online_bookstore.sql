-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 13 фев 2025 в 10:23
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `online_bookstore`
--

-- --------------------------------------------------------

--
-- Структура на таблица `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'J.R.R. Tolkien'),
(4, 'Agatha Christie'),
(5, 'Stephen King'),
(6, 'Джон Смит'),
(7, 'Анна Уилямс'),
(8, 'Михаил Георгиев'),
(9, 'Мария Иванова'),
(10, 'Иван Димитров'),
(11, 'Сун Дзъ'),
(12, 'Дейл Карнеги'),
(13, 'Робърт Кийосаки'),
(14, 'Ричард Брансън'),
(15, 'Наполеон Хил'),
(16, 'Франк Хърбърт'),
(17, 'Дж. Р. Р. Толкин'),
(18, 'Джордж Р. Р. Мартин'),
(19, 'Стивън Кинг'),
(20, 'Рей Бредбъри'),
(21, 'Агата Кристи'),
(22, 'Дан Браун'),
(23, 'Томас Харис'),
(24, 'Стиг Ларшон'),
(25, 'Гилиан Флин'),
(26, 'Джейн Остин'),
(27, 'Никълъс Спаркс'),
(28, 'Елизабет Гилбърт'),
(29, 'Стефани Майър'),
(30, 'Габриел Гарсия Маркес'),
(31, 'Ювал Ноа Харари'),
(32, 'Насим Талеб'),
(33, 'Шон Карол'),
(34, 'Ролф Добели');

-- --------------------------------------------------------

--
-- Структура на таблица `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `popularity` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `genre_id`, `price`, `stock`, `popularity`, `image_url`) VALUES
(4, 'Simple Way Of Piece Life', 1, 1, 40.00, 100, 5, ''),
(56, 'Градинарство за всеки', 1, 1, 22.99, 50, 90, 'images/book_1.jpg'),
(57, 'Перфектният дом', 2, 1, 29.99, 40, 80, 'images/book_2.jpg'),
(58, 'Мебели и дизайн', 3, 1, 35.99, 30, 85, 'images/book_3.jpg'),
(59, 'Домашни рецепти', 4, 1, 19.99, 20, 70, 'images/book_4.jpg'),
(60, 'Био градинарство', 5, 1, 25.50, 60, 95, 'images/book_5.jpg'),
(61, 'Изкуството на войната', 6, 2, 19.99, 55, 80, 'images/book_6.jpg'),
(62, 'Как да печелим приятели', 7, 2, 24.99, 40, 85, 'images/book_7.jpg'),
(63, 'Финансовото бъдеще', 8, 2, 27.99, 50, 88, 'images/book_8.jpg'),
(64, 'Пътят на предприемача', 9, 2, 31.50, 45, 92, 'images/book_9.jpg'),
(65, 'Успех без граници', 10, 2, 22.99, 35, 78, 'images/book_10.jpg'),
(66, 'Дюн', 11, 3, 29.99, 60, 95, 'images/book_11.jpg'),
(67, 'Властелинът на пръстените', 12, 3, 35.99, 55, 98, 'images/book_12.jpg'),
(68, 'Игра на тронове', 13, 3, 32.50, 50, 97, 'images/book_13.jpg'),
(69, 'То', 14, 3, 26.99, 45, 92, 'images/book_14.jpg'),
(70, '451 градуса по Фаренхайт', 15, 3, 24.99, 40, 85, 'images/book_15.jpg'),
(71, 'Убийство в Ориент експрес', 16, 4, 19.99, 50, 80, 'images/book_16.jpg'),
(72, 'Шифърът на Леонардо', 17, 4, 24.99, 45, 95, 'images/book_17.jpg'),
(73, 'Мълчанието на агнетата', 18, 4, 22.99, 35, 85, 'images/book_18.jpg'),
(74, 'Момичето с драконовата татуировка', 19, 4, 27.50, 40, 78, 'images/book_19.jpg'),
(75, 'Изчезналото дете', 20, 4, 23.99, 30, 75, 'images/book_20.jpg'),
(76, 'Гордост и предразсъдъци', 21, 5, 18.99, 60, 95, 'images/book_21.jpg'),
(77, 'Тетрадката', 22, 5, 22.99, 55, 85, 'images/book_22.jpg'),
(78, 'Яж, моли се и обичай', 23, 5, 20.99, 50, 90, 'images/book_23.jpg'),
(79, 'Здрач', 24, 5, 25.50, 45, 88, 'images/book_24.jpg'),
(80, 'Любов по време на холера', 25, 5, 24.99, 40, 82, 'images/book_25.jpg'),
(81, 'Сапиенс: Кратка история на човечеството', 26, 6, 28.99, 50, 98, 'images/book_26.jpg'),
(82, '21 урока за 21 век', 27, 6, 30.99, 45, 97, 'images/book_27.jpg'),
(83, 'Черният лебед', 28, 6, 27.50, 40, 96, 'images/book_28.jpg'),
(84, 'Голямата картина', 29, 6, 26.99, 35, 90, 'images/book_29.jpg'),
(85, 'Изкуството на добрия живот', 30, 6, 22.99, 50, 85, 'images/book_30.jpg');

-- --------------------------------------------------------

--
-- Структура на таблица `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Fantasy'),
(2, 'Дом, градина и хоби'),
(3, 'Професионална и справочна литература'),
(4, 'Научна фантастика, фентъзи и хорър'),
(5, 'Криминални и трилъри'),
(6, 'Романтични'),
(7, 'Световна проза'),
(8, 'Българска литература'),
(9, 'Поезия и пиеси'),
(10, 'Хумор'),
(11, 'Комикси'),
(12, 'Здраве и семейство'),
(13, 'Популярна психология'),
(14, 'История, културология и публицистика'),
(15, 'Изкуство, фотография, кино, музика'),
(16, 'Духовност, митология, езотерика'),
(17, 'Бизнес'),
(18, 'Наука'),
(19, 'Туризъм и спорт');

-- --------------------------------------------------------

--
-- Структура на таблица `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Индекси за таблица `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `address_id` (`address_id`);

--
-- Индекси за таблица `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индекси за таблица `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индекси за таблица `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Ограничения за таблица `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Ограничения за таблица `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Ограничения за таблица `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
