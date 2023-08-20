-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 11, 2023 at 05:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofbsphp**`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Core Airways', 165),
(2, 'Echo Airline', 220),
(3, 'Spark Airways', 125),
(4, 'Peak Airways', 210),
(5, 'Homelander Airways', 185),
(9, 'Blue Airlines', 200),
(10, 'GoldStar Airways', 205),
(11, 'Novar Airways', 158),
(12, 'Aero Airways', 210),
(13, 'Nep Airways', 215),
(14, 'Delta Airlines', 135);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('San Jose'),
('Chicago'),
('Olisphis'),
('Shiburn'),
('Weling'),
('Chiby'),
('Odonhull'),
('Hegan'),
('Oriaridge'),
('Flerough'),
('Yleigh'),
('Oyladnard'),
('Trerdence'),
('Zhotrora'),
('Otiginia'),
('Plueyby'),
('Vrexledo'),
('Ariosey');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `email`, `q1`, `q2`, `q3`, `rate`) VALUES
(1, 'darkgulliotine7@gmail.com', 'decent', 'Search Engine', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT 20,
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2023-08-15 10:00:00', '2023-08-15 09:00:00', 'Chicago', 'San', 'Core Airways', '-6', '1', 175, '', '', '32E', 20, ''),
(2, 1, '2022-07-05 11:15:00', '2022-07-05 10:05:00', 'Shiburn', 'Olisphis', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2022-07-05 12:13:00', '2022-07-05 10:13:00', 'Weling', 'Olisphis', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2022-07-05 16:30:00', '2022-07-05 15:26:00', 'Weling', 'Shiburn', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2022-07-05 15:30:00', '2022-07-05 12:30:00', 'Chiby', 'Shiburn', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2022-07-05 17:55:00', '2022-07-05 15:30:00', 'Chiby', 'Weling', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2022-07-05 20:50:00', '2022-07-05 18:50:00', 'Odonhull', 'Chiby', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2022-07-06 00:55:00', '2022-07-05 17:00:00', 'Oyladnard', 'Odonhull', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2022-07-05 17:09:00', '2022-07-05 16:05:00', 'Chiby', 'Olisphis', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2022-07-06 13:10:00', '2022-07-06 11:05:00', 'Hegan', 'Shiburn', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2022-07-05 19:10:00', '2022-07-05 18:05:00', 'Oriaridge', 'Flerough', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2022-07-05 21:10:00', '2022-07-05 19:05:00', 'Chicago', 'Yleigh', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2022-07-05 13:50:00', '2022-07-05 12:56:00', 'Olisphis', 'Chicago', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2022-07-05 11:08:00', '2022-07-05 09:07:00', 'Oyladnard', 'San', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2022-07-05 10:10:00', '2022-07-05 08:10:00', 'Weling', 'Chicago', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2022-07-05 18:10:00', '2022-07-05 16:09:00', 'Flerough', 'San', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2022-07-05 17:10:00', '2022-07-05 16:10:00', 'San', 'Chiby', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2022-07-05 19:15:00', '2022-07-05 16:12:00', 'San', 'Flerough', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2022-07-05 23:40:00', '2022-07-05 20:31:00', 'Shiburn', 'Oyladnard', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2022-07-05 23:58:00', '2022-07-05 22:14:00', 'Zhotrora', 'Trerdence', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2022-07-06 10:14:00', '2022-07-05 23:15:00', 'Odonhull', 'Otiginia', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 5, 1, '4374503092', '2023-08-09 00:00:00', 'AREAF', 'NO LAST', 'NAME'),
(2, 5, 1, '4374503092', '2023-08-07 00:00:00', 'AREAF', 'NO LAST', 'NAME'),
(3, 5, 1, '4374503092', '2023-08-01 00:00:00', 'Areaf', 'Blank', 'Blank');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('0213021040214', 5, 1, '12/28', 175),
('030320320320', 5, 1, '12/29', 175),
('032030202400324', 5, 1, '12/29', 175),
('040320034200', 5, 1, '12/24', 175),
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('120012201021201', 5, 1, '12/27', 175),
('1201200102021', 5, 1, '12/24', 175),
('120214012040124', 5, 1, '12/26', 175),
('1230124040212102', 5, 1, '12/24', 175),
('123124125125', 5, 1, '12/24', 175),
('123456789101112', 5, 1, '12/29', 175),
('12345678911112', 5, 1, '12/28', 175),
('12345714249410', 5, 1, '12/27', 175),
('1239129491249', 5, 1, '12/24', 175),
('123921492149', 5, 1, '12/26', 175),
('1239419421902', 5, 1, '12/28', 175),
('129194921949214', 5, 1, '12/28', 175),
('12924192149142', 5, 1, '12/23', 175),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('2101300313100', 5, 1, '12/23', 175),
('210429129199', 5, 1, '12/27', 175),
('23431001205302', 5, 1, '12/29', 175),
('239929493292', 5, 1, '12/24', 175),
('29149291491249', 5, 1, '12/24', 175),
('30004004040320', 5, 1, '02/29', 175),
('3020320320032', 5, 1, '12/27', 175),
('302203403204', 5, 1, '12/28', 175),
('3024032023040324', 5, 1, '02/29', 175),
('3044033040340', 5, 1, '12/28', 175),
('320302032023003', 5, 1, '12/29', 175),
('321593251399532', 5, 1, '12/28', 175),
('324003203204', 5, 1, '10/29', 175),
('324003204203', 5, 1, '12/28', 175),
('324030032043', 5, 1, '12/28', 175),
('324030240024032', 5, 1, '12/28', 175),
('32424324324513', 5, 1, '12/29', 175),
('3242525235251', 5, 1, '11/27', 175),
('3290329032932', 5, 1, '12/27', 175),
('4204558500014587', 1, 1, '02/25', 350),
('91291399129213', 5, 1, '02/29', 175);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(75, 1, 1, 5, '31F', 175, 'E'),
(77, 2, 1, 5, '32B', 175, 'E'),
(79, 3, 1, 5, '32D', 175, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'darkuser35', 'darkgulliotine7@gmail.com', '$2y$10$K3wI9qCo1Y9ieDiXVKGUpeDZJP.BGIqIqtorcZoyhPzqBsSayiC4K');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `flightControl` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
