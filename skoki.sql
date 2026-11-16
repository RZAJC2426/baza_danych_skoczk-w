-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 11:41 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skoki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasyfikacja_generalna`
--

CREATE TABLE `klasyfikacja_generalna` (
  `id_miejsca` int(11) NOT NULL,
  `skoczkowie_id` int(11) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `klasyfikacja_generalna`
--

INSERT INTO `klasyfikacja_generalna` (`id_miejsca`, `skoczkowie_id`, `punkty`) VALUES
(1, 79, 2128),
(2, 9, 1790),
(3, 112, 1679),
(4, 95, 1592),
(5, 47, 1065),
(6, 103, 984),
(7, 75, 902),
(8, 121, 853),
(9, 20, 851),
(10, 3, 755),
(11, 64, 736),
(12, 5, 688),
(13, 6, 639),
(14, 99, 608),
(15, 63, 607),
(16, 78, 574),
(17, 110, 498),
(18, 117, 449),
(19, 89, 449),
(20, 84, 393),
(21, 82, 387),
(22, 111, 309),
(23, 72, 280),
(24, 49, 275),
(25, 118, 274),
(26, 128, 270),
(27, 88, 246),
(28, 67, 231),
(29, 1, 227),
(30, 70, 218),
(31, 100, 190),
(32, 102, 181),
(33, 138, 170),
(34, 2, 168),
(35, 69, 168),
(36, 81, 85),
(37, 36, 77),
(38, 31, 69),
(39, 22, 63),
(40, 68, 60),
(41, 11, 59),
(42, 113, 51),
(43, 50, 49),
(44, 91, 48),
(45, 132, 44),
(46, 140, 40),
(47, 127, 38),
(48, 55, 35),
(49, 29, 33),
(50, 97, 30),
(51, 114, 29),
(52, 17, 26),
(53, 87, 24),
(54, 52, 21),
(55, 137, 21),
(56, 76, 19),
(57, 93, 18),
(58, 122, 17),
(59, 86, 17),
(60, 135, 16),
(61, 19, 16),
(62, 39, 15),
(63, 51, 14),
(64, 46, 14),
(65, 130, 14),
(66, 125, 13),
(67, 40, 13),
(68, 25, 11),
(69, 90, 10),
(70, 66, 10),
(71, 13, 8),
(72, 16, 7),
(73, 123, 6),
(74, 131, 6),
(75, 126, 5),
(76, 119, 5),
(77, 92, 4),
(78, 77, 4),
(79, 94, 4),
(80, 14, 3),
(81, 60, 2),
(82, 54, 2),
(83, 104, 2),
(84, 30, 1),
(85, 21, 1),
(86, 27, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `puchar_narodow`
--

CREATE TABLE `puchar_narodow` (
  `idp` int(11) NOT NULL,
  `reprezentacje_id` int(11) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `puchar_narodow`
--

INSERT INTO `puchar_narodow` (`idp`, `reprezentacje_id`, `punkty`) VALUES
(1, 1, 7093),
(2, 12, 5631),
(3, 15, 5573),
(4, 13, 4889),
(5, 11, 4512),
(6, 7, 2035),
(7, 17, 782),
(8, 6, 459),
(9, 20, 415),
(10, 16, 356),
(11, 4, 72),
(12, 5, 64),
(13, 2, 63),
(14, 14, 57),
(15, 19, 41),
(16, 8, 35),
(17, 18, 16),
(18, 9, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reprezentacje`
--

CREATE TABLE `reprezentacje` (
  `id` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `skrot` text NOT NULL,
  `zwiazek` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reprezentacje`
--

INSERT INTO `reprezentacje` (`id`, `nazwa`, `skrot`, `zwiazek`) VALUES
(1, 'Austria', 'AUT', 'OSV'),
(2, 'Bułgaria', 'BUL', 'BFS'),
(3, 'Chiny', 'CHN', 'CSA'),
(4, 'Czechy', 'CZE', 'SLC'),
(5, 'Estonia', 'EST', 'ES'),
(6, 'Finlandia', 'FIN', 'SH'),
(7, 'Japonia', 'JPN', 'SAJ'),
(8, 'Kanada', 'CAN', 'CSC'),
(9, 'Kazachstan', 'KAZ', 'SFK'),
(10, 'Korea_Południowa', 'KOR', 'KSA'),
(11, 'Niemcy', 'GER', 'DSV'),
(12, 'Norwegia', 'NOR', 'NS'),
(13, 'Polska', 'POL', 'PZN'),
(14, 'Rumunia', 'ROU', 'FRS'),
(15, 'Słowenia', 'SLO', 'SZS'),
(16, 'Stany_Zjednoczone', 'USA', 'USA'),
(17, 'Szwajcaria', 'SUI', 'SSV'),
(18, 'Turcja', 'TUR', 'TKF'),
(19, 'Ukraina', 'UKR', 'ASU'),
(20, 'Włochy', 'ITA', 'FIS');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skoczkowie`
--

CREATE TABLE `skoczkowie` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `data_urodzenia` date NOT NULL,
  `reprezentacje_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skoczkowie`
--

INSERT INTO `skoczkowie` (`id`, `imie`, `nazwisko`, `data_urodzenia`, `reprezentacje_id`) VALUES
(1, 'Clemens', 'Aigner', '1993-02-02', 1),
(2, 'Philipp', 'Aschenwald', '1995-11-12', 1),
(3, 'Manuel ', 'Fettner', '1985-06-17', 1),
(4, 'Andre ', 'Fussenegger', '2003-01-31', 1),
(5, 'Michael', 'Hayboeck', '1991-03-05', 1),
(6, 'Jan ', 'Hoerl', '1998-10-16', 1),
(7, 'Daniel', 'Huber', '1993-01-02', 1),
(8, 'Timon', 'Pascal-Kahofer', '1999-03-10', 1),
(9, 'Stefan', 'Kraft', '1993-05-13', 1),
(10, 'Hannes', 'Landerer', '2002-10-20', 1),
(11, 'Clemens ', 'Leitner', '1998-11-07', 1),
(12, 'Francisco', 'Moerth', '1999-07-09', 1),
(13, 'Markus ', 'Mueller', '2002-07-17', 1),
(14, 'Maximilian ', 'Ortner', '2002-06-04', 1),
(15, 'Stefan', 'Rainer', '1999-08-15', 1),
(16, 'Markus', 'Rupitsch', '1997-11-08', 1),
(17, 'Jonas', 'Schuster', '2003-08-25', 1),
(18, 'Julian ', 'Smid', '2003-06-12', 1),
(19, 'Maximilian', 'Steiner', '1996-05-04', 1),
(20, 'Daniel', 'Tschofenig', '2002-03-28', 1),
(21, 'Urlich', 'Wohlgenannt', '1994-08-01', 1),
(22, 'Vladimir', 'Zografski', '1993-07-14', 2),
(23, 'Song ', 'Qiwu', '2001-08-20', 3),
(24, 'Zhen', 'Weijie', '2003-10-16', 3),
(25, 'Roman', 'Koudelka', '1989-07-09', 4),
(26, 'Frantisek ', 'Lejsek', '2002-04-05', 4),
(27, 'Radek', 'Rydl', '2001-07-15', 4),
(28, 'Filip', 'Sakala', '1996-05-21', 4),
(29, 'Artti', 'Aigro', '1999-08-29', 5),
(30, 'Kevin', 'Maltsev', '2000-07-04', 5),
(31, 'Antti ', 'Aalto', '1995-04-05', 6),
(32, 'Mico', 'Ahonen', '2001-11-27', 6),
(33, 'Kalle', 'Heikkinen', '1999-09-16', 6),
(34, 'Henri', 'Kavilo', '1999-07-05', 6),
(35, 'Tomas', 'Kuisma', '2004-07-30', 6),
(36, 'Niko', 'Kytoesaho', '1999-12-18', 6),
(37, 'Jarkko', 'Maeaettae', '1994-12-28', 6),
(38, 'Eetu', 'Merilaeinen', '1997-04-17', 6),
(39, 'Eetu', 'Nousiainen', '1997-04-27', 6),
(40, 'Vilho', 'Palosaari', '2004-07-20', 6),
(41, 'Arttu', 'Pohjola', '2001-06-07', 6),
(42, 'Kasperi', 'Valto', '2003-07-03', 6),
(43, 'Yumu', 'Harada', '1990-09-15', 7),
(44, 'Yuken', 'Iwasa', '1999-07-02', 7),
(45, 'Noriaki', 'Kasai', '1972-06-06', 7),
(46, 'Junshiro', 'Kobayashi', '1991-06-11', 7),
(47, 'Ryoyu', 'Kobayashi', '1996-11-08', 7),
(48, 'Tomofuri', 'Naito', '1993-02-22', 7),
(49, 'Naoki', 'Nakamura', '1996-09-16', 7),
(50, 'Ren', 'Nikaido', '2001-05-24', 7),
(51, 'Keichi', 'Sato', '1997-07-27', 7),
(52, 'Yukiya', 'Sato', '1995-06-19', 7),
(53, 'Reruhi', 'Shimizu', '1993-12-04', 7),
(54, 'Taku', 'Takeuchi', '1987-05-20', 7),
(55, 'Mackenzie', 'Boyd ', '1991-07-13', 8),
(56, 'Nikita', 'Devyatkin', '1999-04-03', 9),
(57, 'Sabyrzhan ', 'Muminow', '1994-04-16', 9),
(58, 'Svetoslav', 'Nazaryenko', '2004-08-07', 9),
(59, 'Sergey', 'Tkachenko', '1999-06-08', 9),
(60, 'Danil', 'Vasilyev', '2004-07-22', 9),
(61, 'Choi ', 'Heung-chul', '1981-12-03', 10),
(62, 'Finn ', 'Braun', '2002-01-14', 11),
(63, 'Markus', 'Eisenbichler', '1991-04-03', 11),
(64, 'Karl', 'Geiger', '1993-02-11', 11),
(65, 'Martin', 'Hamann', '1997-04-10', 11),
(66, 'Felix', 'Hoffmann', '1997-10-14', 11),
(67, 'Stephan ', 'Leyhe', '1992-01-05', 11),
(68, 'Justin', 'Lisso', '1999-12-12', 11),
(69, 'Pius ', 'Paschke', '1990-05-20', 11),
(70, 'Philipp', 'Raimund', '2000-06-23', 11),
(71, 'Luca', 'Roth', '2000-04-14', 11),
(72, 'Constantin ', 'Schmid', '1999-12-27', 11),
(73, 'David', 'Siegel', '1996-08-28', 11),
(74, 'Simon', 'Spiewok', '2002-01-12', 11),
(75, 'Andreas ', 'Wellinger', '1995-08-25', 11),
(76, 'Joacim', 'Odegard Bjoereng', '1995-12-14', 12),
(77, 'Anders ', 'Fannemel', '1991-05-13', 12),
(78, 'Johann', 'Andre-Forfang', '1994-07-04', 12),
(79, 'Halvor', 'Egner-Granerud', '1996-05-29', 12),
(80, 'Anders ', 'Hare', '1999-12-07', 12),
(81, 'Bendik', 'Jakobsen Heggli', '2001-10-14', 12),
(82, 'Robert', 'Johansson', '1990-03-23', 12),
(83, 'Sindre', 'Ulven Joergensen', '2002-01-13', 12),
(84, 'Marius', 'Lindvik', '1998-06-27', 12),
(85, 'Iver ', 'Olaussen', '2002-08-10', 12),
(86, 'Benjamin', 'Oestvold', '2001-01-13', 12),
(87, 'Sondre', 'Ringen', '1996-10-09', 12),
(88, 'Kristoffer', 'Eriksen Sundal', '2001-02-07', 12),
(89, 'Daniel', 'Andre Tande', '1994-01-24', 12),
(90, 'Fredrik', 'Vilumstad', '1999-03-21', 12),
(91, 'Jan', 'Habdas', '2002-12-02', 13),
(92, 'Stefan ', 'Hula', '1986-09-29', 13),
(93, 'Kacper', 'Juroszek', '2001-06-05', 13),
(94, 'Maciej', 'Kot', '1991-06-09', 13),
(95, 'Dawid', 'Kubacki', '1990-03-12', 13),
(96, 'Klemens', 'Murańka', '1994-08-31', 13),
(97, 'Tomasz', 'Pilch', '2000-10-20', 13),
(98, 'Andrzej', 'Stękała', '1995-06-30', 13),
(99, 'Kamil', 'Stoch', '1987-05-25', 13),
(100, 'Paweł', 'Wąsek', '1999-02-06', 13),
(101, 'Jakub', 'Wolny', '1995-05-15', 13),
(102, 'Aleksander', 'Zniszczoł', '1994-03-08', 13),
(103, 'Piotr', 'Żyła', '1987-01-16', 13),
(104, 'Daniel', 'Andrei Cacina', '2001-10-17', 14),
(105, 'Andrei', 'Feldorean', '2000-04-13', 14),
(106, 'Sorin', 'Mitrofan', '1999-03-26', 14),
(107, 'Mihnea', 'Alexandru Spulber', '2000-12-11', 14),
(108, 'Tilen ', 'Bartol', '1997-04-17', 15),
(109, 'Maksim', 'Bartolj', '2003-05-01', 15),
(110, 'Ziga', 'Jelar', '1997-10-22', 15),
(111, 'Lovro', 'Kos', '1999-07-23', 15),
(112, 'Anze', 'Lanisek', '1996-04-20', 15),
(113, 'Rok', 'Masle', '2004-04-20', 15),
(114, 'Zak', 'Mogel', '2001-03-02', 15),
(115, 'Rok ', 'Oblak', '2001-07-16', 15),
(116, 'Jernej', 'Presecnik', '2002-01-18', 15),
(117, 'Domen', 'Prevc', '1999-06-04', 15),
(118, 'Peter', 'Prevc', '1992-09-20', 15),
(119, 'Matja', 'Vidic', '2000-08-30', 15),
(120, 'Patrik', 'Vitez', '1998-06-14', 15),
(121, 'Timi', 'Zajc', '2000-04-26', 15),
(122, 'Erik', 'Beshlaw', '2004-08-23', 16),
(123, 'Decker', 'Dean', '2000-08-08', 16),
(124, 'Tate', 'Frantz', '2005-03-28', 16),
(125, 'Casey', 'Larson', '1998-12-16', 16),
(126, 'Andrew', 'Urlaub', '2001-04-12', 16),
(127, 'Simon', 'Ammann', '1981-06-25', 17),
(128, 'Gregor', 'Deschwanden', '1991-02-27', 17),
(129, 'Sandro', 'Hauswirth', '2000-08-29', 17),
(130, 'Remo', 'Imhof', '2003-11-19', 17),
(131, 'Kilian', 'Peier', '1995-03-28', 17),
(132, 'Dominik', 'Peter', '2001-05-30', 17),
(133, 'Muhammed', 'Ali Bedir', '2000-03-24', 18),
(134, 'Muhammed', 'Irfan Cintimar', '1997-07-16', 18),
(135, 'Fatih', 'Arda Ipcioglu', '1997-09-28', 18),
(136, 'Vitaly', 'Kalinichenko', '1993-08-09', 19),
(137, 'Jehwen', 'Marusiak', '2000-03-16', 19),
(138, 'Giovanni', 'Bresadola', '2001-02-17', 20),
(139, 'Francesco', 'Cecon', '2001-11-13', 20),
(140, 'Alex', 'Insam', '1997-12-19', 20);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasyfikacja_generalna`
--
ALTER TABLE `klasyfikacja_generalna`
  ADD PRIMARY KEY (`id_miejsca`),
  ADD KEY `skoczkowie_id` (`skoczkowie_id`);

--
-- Indeksy dla tabeli `puchar_narodow`
--
ALTER TABLE `puchar_narodow`
  ADD PRIMARY KEY (`idp`),
  ADD KEY `reprezentacje_id` (`reprezentacje_id`);

--
-- Indeksy dla tabeli `reprezentacje`
--
ALTER TABLE `reprezentacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `skoczkowie`
--
ALTER TABLE `skoczkowie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reprezentacje_id` (`reprezentacje_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasyfikacja_generalna`
--
ALTER TABLE `klasyfikacja_generalna`
  MODIFY `id_miejsca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `puchar_narodow`
--
ALTER TABLE `puchar_narodow`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reprezentacje`
--
ALTER TABLE `reprezentacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `skoczkowie`
--
ALTER TABLE `skoczkowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
