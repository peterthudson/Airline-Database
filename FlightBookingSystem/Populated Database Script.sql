-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2020 at 06:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phudson03`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `Address_ID` int(11) NOT NULL,
  `Address_Line_One` varchar(255) NOT NULL,
  `Address_Line_Two` varchar(255) NOT NULL,
  `Town_City` varchar(255) NOT NULL,
  `Postcode` varchar(255) NOT NULL,
  `Country_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`Address_ID`, `Address_Line_One`, `Address_Line_Two`, `Town_City`, `Postcode`, `Country_ID`) VALUES
(1, 'Aéroport de Bordeaux-Mérignac', 'Cidex 40', 'Bordeaux', '33700 Mérignac', 1),
(2, 'B.P.', '113 Lyon-Saint Exupéry Aeroport', 'Lyon', '69125', 1),
(3, 'Sabena technics Dinard', 'Aéroport de Dinard Pleurtuit Saint Malo', 'Dinard', '35800 Dinard', 1),
(4, 'Saatwinkler Damm', '', 'Berlin', '13405', 2),
(5, 'Flughafenstraße 41', '', 'Dresden', '01109', 2),
(6, 'Flughafenstraße 32', '', 'Stuttgart', '70629', 2),
(7, '84', 'Via del Triumvirato', 'Bologna', '40132 BO', 3),
(8, 'Via dell', 'Aeroporto di Fiumicino', 'Rome Fiumicino', '00054 RM', 3),
(9, 'Caselle', 'Province of Verona', 'Verona', '37066', 3),
(10, '202', 'Evert van de Beekstraat', 'Amsterdam', '1118 CP Schiphol', 4),
(11, 'Faro', '', 'Faro', '8006-901', 5),
(12, 'Alameda das Comunidades Portuguesas', '', 'Lisbon', '1700-111', 5),
(13, '', '', 'Madeira Porto Santo', '9400-110', 5),
(14, 'El Prat de Llobregat', '', 'Barcelona', '08820', 6),
(15, 'Carretera de Sant Climent', '', 'Illes Balears', '07712', 6),
(16, 'Carretera del Aeropuerto', '', 'Valencia', '46940 Manises', 6),
(17, 'Saint-Louis', '', 'Basel', '68300', 7),
(18, 'Route de l\'Aéroport 21', 'Le Grand-Saconnex', 'Geneva', '1215', 7),
(19, 'Kloten', '', 'Zurich', '8058', 7),
(20, 'Dyce', '', 'Aberdeen', 'AB21 7DU', 8),
(21, 'Airport Rd', '', 'Belfast', 'BT29 4AB', 8),
(22, 'Horley', '', 'Gatwick', 'RH6 0NP', 8),
(83, '23', 'Balloo Road', 'Belfast', 'BT23 8TY', 8),
(84, '87', 'Ormeau Road', 'Belfast', 'BT12 5UP', 8),
(85, '12', 'The Fairways', 'Downpatrick', 'BT56 9TD', 8),
(86, '56', 'Killdare Road', 'Belfast', 'BT45 6FR', 8),
(87, '46', 'Fane Street', 'Larne', 'BT83 3VT', 8),
(88, '12', 'Castle Street', 'Strangford', 'BT45 2RX', 8),
(89, '83', 'Primacy Road', 'Dungannon', 'BT29 7TB', 8),
(90, '47', 'Lisburn Road', 'Enniskillen', 'BT56 9GH', 8),
(91, '12', 'Beachview Road', 'Portrush', 'BT10 8HG', 8),
(92, '87', 'Fieldview Street', 'Coleraine', 'BT67 9FE', 8),
(101, '45', 'Derry Road', 'Belfast', 'BT67 8FR', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Airplane`
--

CREATE TABLE `Airplane` (
  `Airplane_ID` int(11) NOT NULL,
  `Airplane_Model` varchar(255) NOT NULL,
  `Airplane_Capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Airplane`
--

INSERT INTO `Airplane` (`Airplane_ID`, `Airplane_Model`, `Airplane_Capacity`) VALUES
(1, 'Airbus A220', '546'),
(2, 'Airbus A320', '665'),
(3, 'Airbus A330', '770'),
(4, 'Airbus A350 XWB', '350'),
(5, 'Airbus A380', '450'),
(6, 'Boeing 737', '215'),
(7, 'Boeing 747', '605'),
(8, 'Boeing 767', '375'),
(9, 'Boeing 777', '550'),
(10, 'Boeing 787', '330');

-- --------------------------------------------------------

--
-- Table structure for table `Airport`
--

CREATE TABLE `Airport` (
  `Airport_ID` int(11) NOT NULL,
  `Airport_Name` varchar(255) NOT NULL,
  `Airport_Code` varchar(255) NOT NULL,
  `Address_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Airport`
--

INSERT INTO `Airport` (`Airport_ID`, `Airport_Name`, `Airport_Code`, `Address_ID`) VALUES
(1, 'Bordeaux', 'BOD', 1),
(2, 'Lyon', 'LYS', 2),
(3, 'Dinard', 'DNR', 3),
(4, 'Berlin Tegel', 'TXL', 4),
(5, 'Dresden', 'DRS', 5),
(6, 'Stuttgart', 'STR', 6),
(7, 'Bologna', 'BLQ', 7),
(8, 'Rome Fiumicino', 'FCO', 8),
(9, 'Verona', 'VRN', 9),
(10, 'Amsterdam', 'AMS', 10),
(11, 'Faro', 'FAO', 11),
(12, 'Lisbon', 'LIS', 12),
(13, 'Madeira Porto Santo', 'PXO', 13),
(14, 'Barcelona', 'BCN', 14),
(15, 'Menorca Mahon', 'MAH', 15),
(16, 'Valencia', 'VLC', 16),
(17, 'Basel', 'BSL', 17),
(18, 'Geneva', 'GVA', 18),
(19, 'Zurich', 'ZRH', 19),
(20, 'Aberdeen', 'ABZ', 20),
(21, 'Belfast International', 'BFS', 21),
(22, 'London Gatwick', 'LGW', 22);

-- --------------------------------------------------------

--
-- Table structure for table `Assistance_Type`
--

CREATE TABLE `Assistance_Type` (
  `Assistance_Type_ID` int(11) NOT NULL,
  `Assistance_Type_Code` varchar(255) NOT NULL,
  `Assistance_Type_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Assistance_Type`
--

INSERT INTO `Assistance_Type` (`Assistance_Type_ID`, `Assistance_Type_Code`, `Assistance_Type_Desc`) VALUES
(1, 'BLD1', 'I am blind or sight impared'),
(2, 'WCH1', 'I am a wheelchair user or I require wheelchair assistance at the airport or I am unable to walk long distances. OWN WHEELCHAIR = NO'),
(3, 'WCH2', 'I am a wheelchair user or I require wheelchair assistance at the airport or I am unable to walk long distances. OWN WHEELCHAIR = YES, MANUAL WHEELCHAIR'),
(4, 'WCH2', 'I am a wheelchair user or I require wheelchair assistance at the airport or I am unable to walk long distances. OWN WHEELCHAIR = YES, ELECTRIC WHEELCHAIR / MOBILITY AID'),
(5, 'GDD1', 'I am travelling with a regognised guide / assistance dog'),
(6, 'DEF1', 'I am deaf or significantly hearing impaired'),
(7, 'IDD1', 'I have an intellectual or developmental disability and I require assistance within the airport'),
(8, 'NTA1', 'I have a nut allergy');

-- --------------------------------------------------------

--
-- Table structure for table `Baggage_Category`
--

CREATE TABLE `Baggage_Category` (
  `Baggage_Category_ID` int(11) NOT NULL,
  `Baggage_Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Baggage_Category`
--

INSERT INTO `Baggage_Category` (`Baggage_Category_ID`, `Baggage_Category`) VALUES
(1, 'Hold'),
(2, 'Carry On'),
(3, 'Sports Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `Baggage_Type`
--

CREATE TABLE `Baggage_Type` (
  `Baggage_Type_ID` int(11) NOT NULL,
  `Baggage_Category` int(11) NOT NULL,
  `Baggage_Type` varchar(255) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Baggage_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Baggage_Type`
--

INSERT INTO `Baggage_Type` (`Baggage_Type_ID`, `Baggage_Category`, `Baggage_Type`, `Currency_ID`, `Baggage_Price`) VALUES
(1, 1, '15Kg', 1, '23.74'),
(2, 1, '23Kg', 1, '27.49'),
(3, 1, '26Kg', 1, '39.49'),
(4, 1, '29Kg', 1, '51.49'),
(5, 1, '32Kg', 1, '63.49'),
(6, 2, 'Cabin Bag', 1, '0.00'),
(7, 3, 'Bicycle', 1, '45.00'),
(8, 3, 'Canoe', 1, '45.00'),
(9, 3, 'Sporting Firearm', 1, '37.00'),
(10, 3, 'Golf Bag', 1, '37.00'),
(11, 3, 'Hang Glider', 1, '45.00'),
(12, 3, 'Other Small Sports Equipment', 1, '37.00'),
(13, 3, 'Skis and/or Boots', 1, '37.00'),
(14, 3, 'Snowboard', 1, '37.00'),
(15, 3, 'Windsurfing Board', 1, '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `Booking_ID` int(11) NOT NULL,
  `Booking_Date` date NOT NULL,
  `Booking_Time` time NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Payment_ID` int(11) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Booking_Total_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`Booking_ID`, `Booking_Date`, `Booking_Time`, `User_ID`, `Payment_ID`, `Currency_ID`, `Booking_Total_Price`) VALUES
(1, '2020-10-07', '15:02:16', 1, 2, 1, '153.00'),
(101, '2020-11-04', '18:39:44', 101, 101, 1, '669.42');

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`Country_ID`, `Country_Name`) VALUES
(1, 'France'),
(2, 'Germany'),
(3, 'Italy'),
(4, 'Netherlands'),
(5, 'Portugal'),
(6, 'Spain'),
(7, 'Switzerland'),
(8, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `Currency`
--

CREATE TABLE `Currency` (
  `Currency_ID` int(11) NOT NULL,
  `Currency_Name` varchar(255) NOT NULL,
  `Currency_Symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Currency`
--

INSERT INTO `Currency` (`Currency_ID`, `Currency_Name`, `Currency_Symbol`) VALUES
(1, 'Pound Sterling', '£'),
(2, 'Euro', '€'),
(3, 'Dollar (American)', '$'),
(4, 'Dollar (Australian)', '$');

-- --------------------------------------------------------

--
-- Table structure for table `Dial_Code`
--

CREATE TABLE `Dial_Code` (
  `Dial_Code_ID` int(11) NOT NULL,
  `Dial_Code` varchar(255) NOT NULL,
  `Country_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dial_Code`
--

INSERT INTO `Dial_Code` (`Dial_Code_ID`, `Dial_Code`, `Country_ID`) VALUES
(1, '+33', 1),
(2, '+49', 2),
(3, '+39', 3),
(4, '+31', 4),
(5, '+351', 5),
(6, '+34', 6),
(7, '+41', 7),
(8, '+44', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Fee_Booking`
--

CREATE TABLE `Fee_Booking` (
  `Fee_Booking_ID` int(11) NOT NULL,
  `Fee_Type_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Fee_Type`
--

CREATE TABLE `Fee_Type` (
  `Fee_Type_ID` int(11) NOT NULL,
  `Fee_Type_Name` varchar(255) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Fee_Type_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fee_Type`
--

INSERT INTO `Fee_Type` (`Fee_Type_ID`, `Fee_Type_Name`, `Currency_ID`, `Fee_Type_Price`) VALUES
(1, 'Administration', 1, '0.00'),
(2, 'Credit card transactions', 1, '0.00'),
(3, 'Debit card transactions', 1, '0.00'),
(4, 'Infant charge', 1, '25.00'),
(5, 'Group booking', 1, '15.00'),
(6, 'Government taxes', 1, '0.00'),
(7, 'Airport & security charges', 1, '0.00'),
(8, 'Fuel charge', 1, '0.00'),
(9, 'Cancellations within 24 hours of booking ONLINE', 1, '33.00'),
(10, 'Cancellations within 24 hours of booking CALL CENTRE', 1, '38.00'),
(11, 'Earlier return flight ONLINE', 1, '35.00'),
(12, 'Earlier return flight CALL CENTRE', 1, '0.00'),
(13, 'Spelling mistakes & title changes ONLINE', 1, '0.00'),
(14, 'Spelling mistakes & title changes CALL CENTRE', 1, '0.00'),
(15, 'Name change - more than 60 days before travel ONLINE', 1, '25.00'),
(16, 'Name change - more than 60 days before travel CALL CENTRE', 1, '30.00'),
(17, 'Name change - 60 days or less before travel ONLINE', 1, '50.00'),
(18, 'Name change - 60 days or less before travel CALL CENTRE', 1, '55.00'),
(19, 'Flight change - more than 14 days before travel ONLINE', 1, '0.00'),
(20, 'Flight change - more than 14 days before travel CALL CENTRE', 1, '5.00'),
(21, 'Flight change - 14 days or less before travel ONLINE', 1, '32.00'),
(22, 'Flight change - 14 days or less before travel CALL CENTRE', 1, '37.00'),
(23, 'Rescue fee CALL CENTRE', 1, '0.00'),
(24, 'Rescue fee AIRPORT', 1, '110.00'),
(25, 'Allocated seating - First row LOWER PRICE', 1, '12.99'),
(26, 'Allocated seating - First row UPPER PRICE', 1, '29.99'),
(27, 'Allocated seating - Up Front / Overwing LOWER PRICE', 1, '7.99'),
(28, 'Allocated seating - Up Front / Overwing UPPER PRICE', 1, '24.99'),
(29, 'Allocated seating - Other seats LOWER PRICE', 1, '1.99'),
(30, 'Allocated seating - Other seats UPPER PRICE', 1, '8.99');

-- --------------------------------------------------------

--
-- Table structure for table `Flight`
--

CREATE TABLE `Flight` (
  `Flight_ID` int(11) NOT NULL,
  `Route_ID` int(11) NOT NULL,
  `Departure_Date` date NOT NULL,
  `Departure_Time` time NOT NULL,
  `Arrival_Date` date NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Airplane_ID` int(11) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Flight_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Flight`
--

INSERT INTO `Flight` (`Flight_ID`, `Route_ID`, `Departure_Date`, `Departure_Time`, `Arrival_Date`, `Arrival_Time`, `Airplane_ID`, `Currency_ID`, `Flight_Price`) VALUES
(25, 1, '2020-10-01', '12:00:00', '2020-10-01', '14:00:00', 5, 1, '45.00'),
(26, 1, '2020-10-01', '15:00:00', '2020-10-01', '17:00:00', 7, 1, '55.00'),
(27, 2, '2020-10-01', '14:00:00', '2020-10-01', '16:00:00', 9, 1, '60.00'),
(28, 2, '2020-10-01', '17:00:00', '2020-10-01', '19:00:00', 4, 1, '70.00'),
(29, 3, '2020-10-28', '12:00:00', '2020-10-28', '15:00:00', 10, 1, '50.00'),
(30, 3, '2020-10-30', '16:00:00', '2020-10-30', '19:00:00', 2, 1, '60.00'),
(31, 4, '2020-10-28', '15:00:00', '2020-10-28', '18:00:00', 3, 1, '50.00'),
(32, 4, '2020-10-30', '19:00:00', '2020-10-30', '22:00:00', 1, 1, '80.00'),
(33, 5, '2020-11-03', '07:00:00', '2020-11-03', '08:00:00', 3, 1, '26.00'),
(34, 5, '2020-11-05', '21:00:00', '2020-11-05', '22:00:00', 9, 1, '57.00'),
(35, 6, '2020-11-03', '08:00:00', '2020-11-03', '09:00:00', 6, 1, '45.00'),
(36, 6, '2020-11-05', '22:00:00', '2020-11-05', '23:00:00', 7, 1, '46.00'),
(37, 7, '2020-12-01', '09:30:00', '2020-12-01', '12:30:00', 1, 1, '102.00'),
(38, 7, '2020-12-09', '12:00:00', '2020-12-09', '15:00:00', 8, 1, '100.00'),
(39, 8, '2020-12-01', '12:30:00', '2020-12-01', '15:30:00', 2, 1, '105.00'),
(40, 8, '2020-12-09', '15:00:00', '2020-12-09', '18:00:00', 10, 1, '110.00'),
(41, 9, '2020-11-27', '06:00:00', '2020-11-27', '10:00:00', 4, 1, '150.00'),
(42, 9, '2020-11-29', '15:00:00', '2020-11-29', '19:00:00', 9, 1, '120.00'),
(43, 10, '2020-11-27', '10:00:00', '2020-11-27', '14:00:00', 5, 1, '130.00'),
(44, 10, '2020-11-29', '19:00:00', '2020-11-29', '23:00:00', 8, 1, '125.00'),
(45, 11, '2020-12-17', '01:00:00', '2020-12-17', '05:00:00', 6, 1, '102.00'),
(46, 11, '2020-12-23', '06:00:00', '2020-12-23', '10:00:00', 10, 1, '130.00'),
(47, 12, '2020-12-17', '05:00:00', '2020-12-17', '09:00:00', 3, 1, '106.00'),
(48, 12, '2020-12-23', '10:00:00', '2020-12-23', '14:00:00', 9, 1, '145.00'),
(49, 13, '2021-06-03', '07:00:00', '2021-06-03', '10:00:00', 3, 1, '45.00'),
(50, 13, '2021-06-03', '09:00:00', '2021-06-03', '12:00:00', 7, 1, '55.00'),
(51, 13, '2021-06-03', '11:00:00', '2021-06-03', '14:00:00', 8, 1, '65.00'),
(52, 13, '2021-06-03', '13:00:00', '2021-06-03', '16:00:00', 9, 1, '89.00'),
(53, 13, '2021-06-03', '15:00:00', '2021-06-03', '18:00:00', 4, 1, '134.00'),
(54, 14, '2021-06-10', '09:00:00', '2021-06-10', '12:00:00', 2, 1, '36.00'),
(55, 14, '2021-06-10', '11:00:00', '2021-06-10', '14:00:00', 8, 1, '54.00'),
(56, 14, '2021-06-10', '13:00:00', '2021-06-10', '16:00:00', 9, 1, '76.00'),
(57, 14, '2021-06-10', '15:00:00', '2021-06-10', '18:00:00', 6, 1, '101.00'),
(58, 14, '2021-06-10', '17:00:00', '2021-06-10', '18:00:00', 5, 1, '156.00');

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `Invoice_ID` int(11) NOT NULL,
  `Invoice_Item_Desc` varchar(255) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Invoice_Item_Cost` decimal(12,2) NOT NULL,
  `Booking_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`Invoice_ID`, `Invoice_Item_Desc`, `Currency_ID`, `Invoice_Item_Cost`, `Booking_ID`) VALUES
(102, 'TICKET Adult', 1, '55.00', 101),
(103, 'TICKET Adult', 1, '55.00', 101),
(104, 'TICKET Adult', 1, '76.00', 101),
(105, 'TICKET Adult', 1, '76.00', 101),
(106, 'SEAT Extra Leg Room FRONT', 1, '21.99', 101),
(107, 'SEAT Standard FRONT', 1, '6.49', 101),
(108, 'SEAT Extra Leg Room WING', 1, '18.99', 101),
(109, 'SEAT Standard REAR', 1, '4.99', 101),
(110, 'BAGGAGE Bicycle', 1, '45.00', 101),
(111, 'BAGGAGE Bicycle', 1, '45.00', 101),
(112, 'BAGGAGE Bicycle', 1, '45.00', 101),
(113, 'BAGGAGE Bicycle', 1, '45.00', 101),
(114, 'BAGGAGE 26Kg Bag', 1, '39.99', 101),
(115, 'BAGGAGE 26Kg Bag', 1, '39.99', 101),
(116, 'BAGGAGE 26Kg Bag', 1, '39.99', 101),
(117, 'BAGGAGE 26Kg Bag', 1, '39.99', 101),
(118, 'BAGGAGE Carry On Bag', 1, '0.00', 101),
(119, 'BAGGAGE Carry On Bag', 1, '0.00', 101),
(120, 'BAGGAGE Carry On Bag', 1, '0.00', 101),
(121, 'BAGGAGE Carry On Bag', 1, '0.00', 101),
(122, 'VOUCHER Food and Drink', 1, '7.50', 101),
(123, 'VOUCHER Food and Drink', 1, '7.50', 101),
(124, 'EXTRA CHARGES Credit Card Transaction Fee', 1, '0.00', 101);

-- --------------------------------------------------------

--
-- Table structure for table `Name_Title`
--

CREATE TABLE `Name_Title` (
  `Name_Title_ID` int(11) NOT NULL,
  `Name_Title` varchar(255) NOT NULL,
  `Name_Title_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Name_Title`
--

INSERT INTO `Name_Title` (`Name_Title_ID`, `Name_Title`, `Name_Title_Desc`) VALUES
(1, 'Mr', 'For men, regardless of marital status, who do not have another professional or academic title.'),
(2, 'Miss', 'For girls, unmarried women and (in the UK) married women who continue to use their maiden name.'),
(3, 'Mrs', 'For married women who do not have another professional or academic title.'),
(4, 'Ms', 'For women, regardless of marital status or when marital status is unknown.['),
(5, 'Mx', 'A gender-neutral honorific for those who do not wish to specify their gender or do not consider themselves male or female.'),
(6, 'M', 'A gender-neutral honorific for those who do not wish to specify their gender or do not consider themselves male or female.');

-- --------------------------------------------------------

--
-- Table structure for table `Passenger`
--

CREATE TABLE `Passenger` (
  `Passenger_ID` int(11) NOT NULL,
  `Travel_Type_ID` int(11) NOT NULL,
  `Flight_ID` int(11) NOT NULL,
  `Title_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Travel_Age_ID` int(11) NOT NULL,
  `Person_Type_ID` int(11) NOT NULL,
  `Seat_ID` int(11) NOT NULL,
  `Travel_Insurance` tinyint(1) NOT NULL,
  `Hire_Car` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger`
--

INSERT INTO `Passenger` (`Passenger_ID`, `Travel_Type_ID`, `Flight_ID`, `Title_ID`, `First_Name`, `Last_Name`, `Travel_Age_ID`, `Person_Type_ID`, `Seat_ID`, `Travel_Insurance`, `Hire_Car`) VALUES
(1, 2, 25, 1, 'Peter', 'Hudson', 1, 1, 1, 1, 0),
(2, 2, 26, 1, 'Peter', 'Hudson', 1, 1, 3, 1, 0),
(101, 2, 50, 1, 'John', 'Barnes', 1, 1, 23, 1, 0),
(102, 2, 50, 1, 'Chris', 'McLaughlin', 1, 1, 30, 1, 0),
(103, 2, 56, 1, 'John', 'Barnes', 1, 1, 38, 1, 0),
(104, 2, 56, 1, 'Chris', 'McLaughlin', 1, 1, 39, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Assistance`
--

CREATE TABLE `Passenger_Assistance` (
  `Passenger_Assistance_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Assistance_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger_Assistance`
--

INSERT INTO `Passenger_Assistance` (`Passenger_Assistance_ID`, `Passenger_ID`, `Assistance_Type_ID`) VALUES
(1, 102, 6),
(2, 104, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Luggage`
--

CREATE TABLE `Passenger_Luggage` (
  `Passenger_Luggage_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Baggage_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger_Luggage`
--

INSERT INTO `Passenger_Luggage` (`Passenger_Luggage_ID`, `Passenger_ID`, `Baggage_Type_ID`) VALUES
(1, 1, 2),
(2, 1, 8),
(3, 2, 2),
(4, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Voucher`
--

CREATE TABLE `Passenger_Voucher` (
  `Passenger_Voucher_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Voucher_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger_Voucher`
--

INSERT INTO `Passenger_Voucher` (`Passenger_Voucher_ID`, `Passenger_ID`, `Voucher_Type_ID`) VALUES
(1, 101, 1),
(2, 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Type_ID` int(11) NOT NULL,
  `Voucher_Number` varchar(255) NOT NULL,
  `Card_Number` varbinary(255) NOT NULL,
  `Card_Holder_Name` varbinary(255) NOT NULL,
  `Expiry_Month` varchar(2) NOT NULL,
  `Expiry_Year` varchar(4) NOT NULL,
  `CVV_Number` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`Payment_ID`, `Payment_Type_ID`, `Voucher_Number`, `Card_Number`, `Card_Holder_Name`, `Expiry_Month`, `Expiry_Year`, `CVV_Number`) VALUES
(1, 2, '', 0x177d9b80f4d9bc7940e42d8660145087, 0xf22f5e243e8e548eca23652c8b432b7a, '02', '2022', 0xaf15239f2a4348548b4b08ae60d9dbf0),
(2, 3, '', 0x4cf12d19867643d690ab5f2a7c73f4cf, 0x315771c05b8e43920c84c994ad5bd3f63ae12ce2b02a58991fd345dc78285b04, '03', '2021', 0x214babe7aea2242cb0667030d54996d1),
(3, 1, '4639274004', '', 0xbb46d22e7f391a1d62a12804b029754d, '', '', ''),
(4, 1, '1837225367', '', 0xfcda1bf858a435afc6e32b73217e66f95b9ef5aca0f8e24b9cfde1a004188d83, '', '', ''),
(5, 4, '', 0xb6373bd6316733c27c9138c4462e150a, 0x7cbc7b590af84025f323ad0f150236ada9b774c75687a5f51d4c97faab7140bd, '05', '2023', 0xa62612d4f06d07f8f80d748f1ad84c23),
(6, 5, '', 0xe925ca87c087d1aad2eda421dd6e53d1, 0xa4328ae5ca7ac06d90776fb1759d028f, '09', '2022', 0xa14058ac3b5e15e12cde0d3c69f2b53a),
(7, 6, '', 0x296083115a96476565415b61ce1bf541, 0xe83f77e6d993fde62db0f77bcb02cef15b9ef5aca0f8e24b9cfde1a004188d83, '06', '2021', 0x975d7173517ae7f8d4f06ce4f95ceebd),
(8, 7, '', 0x60ae8f3ad438326769043198e58100b1, 0xb7f467ad241301a7607dcd6ee15d76c2a58d794e77d52a824213f068953f49e3, '09', '2022', 0xf71c804a8461e889bc013e979250c032),
(9, 8, '', 0xec9f32372abad1df9d8a7b5be67358d3, 0x507fe6b6d6e408a8f50fab67fe805798, '04', '2021', 0xa62612d4f06d07f8f80d748f1ad84c23),
(10, 4, '', 0x34b8b1eeb3c2769cae2c9b2b31b8818f, 0xa60c28f12be73ca3cfbee1ad54247ad34c09995d2c13a95633e05acd89ce1ffc, '04', '2022', 0x181aef07035cb1e8063f5f7c5a0efe33),
(101, 2, '', 0x918cb271efa0701e867955b8dd48145d, 0xaa1fac243ed14558eff5ed309c377311, '12', '2021', 0x5b8f31020d5713a0df0c2daa5fe80bcd);

-- --------------------------------------------------------

--
-- Table structure for table `Payment_Type`
--

CREATE TABLE `Payment_Type` (
  `Payment_Type_ID` int(11) NOT NULL,
  `Payment_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payment_Type`
--

INSERT INTO `Payment_Type` (`Payment_Type_ID`, `Payment_Type`) VALUES
(1, 'Voucher'),
(2, 'Visa'),
(3, 'Maestro'),
(4, 'Mastercard'),
(5, 'Amex'),
(6, 'UATP'),
(7, 'Diners Club'),
(8, 'Discover');

-- --------------------------------------------------------

--
-- Table structure for table `Person_Type`
--

CREATE TABLE `Person_Type` (
  `Person_Type_ID` int(11) NOT NULL,
  `Person_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person_Type`
--

INSERT INTO `Person_Type` (`Person_Type_ID`, `Person_Type`) VALUES
(1, 'Adult (16+)'),
(2, 'Child (2-15)'),
(3, 'Infant (<2)');

-- --------------------------------------------------------

--
-- Table structure for table `Route`
--

CREATE TABLE `Route` (
  `Route_ID` int(11) NOT NULL,
  `Departing_Airport_ID` int(11) NOT NULL,
  `Arrival_Airport_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Route`
--

INSERT INTO `Route` (`Route_ID`, `Departing_Airport_ID`, `Arrival_Airport_ID`) VALUES
(1, 21, 22),
(2, 22, 21),
(3, 21, 20),
(4, 20, 21),
(5, 21, 8),
(6, 8, 21),
(7, 22, 14),
(8, 14, 22),
(9, 22, 2),
(10, 2, 22),
(11, 9, 19),
(12, 19, 9),
(13, 21, 14),
(14, 14, 21);

-- --------------------------------------------------------

--
-- Table structure for table `Seat`
--

CREATE TABLE `Seat` (
  `Seat_ID` int(11) NOT NULL,
  `Seat_Type_ID` int(11) NOT NULL,
  `Seat_Row` varchar(255) NOT NULL,
  `Seat_Column` varchar(255) NOT NULL,
  `Seat_Booked` tinyint(1) NOT NULL,
  `Flight_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Seat`
--

INSERT INTO `Seat` (`Seat_ID`, `Seat_Type_ID`, `Seat_Row`, `Seat_Column`, `Seat_Booked`, `Flight_ID`) VALUES
(1, 5, '1', 'A', 0, 25),
(2, 1, '4', 'B', 0, 25),
(3, 3, '1', 'D', 0, 26),
(4, 4, '12', 'D', 0, 26),
(5, 2, '14', 'C', 0, 27),
(6, 5, '1', 'B', 0, 27),
(7, 1, '4', 'A', 0, 28),
(8, 2, '15', 'B', 0, 28),
(9, 2, '15', 'B', 0, 29),
(10, 4, '13', 'A', 0, 29),
(11, 3, '3', 'F', 0, 30),
(12, 5, '1', 'B', 0, 30),
(13, 3, '2', 'A', 0, 31),
(14, 2, '22', 'B', 0, 31),
(15, 4, '5', 'B', 0, 32),
(16, 3, '3', 'F', 0, 32),
(17, 2, '16', 'B', 0, 33),
(18, 5, '1', 'D', 0, 33),
(19, 4, '20', 'B', 0, 34),
(20, 5, '1', 'C', 0, 34),
(21, 2, '13', 'B', 0, 35),
(22, 5, '1', 'C', 0, 35),
(23, 3, '01', 'A', 0, 50),
(24, 3, '01', 'C', 0, 50),
(25, 3, '01', 'D', 0, 50),
(26, 4, '02', 'B', 1, 50),
(27, 4, '04', 'C', 0, 50),
(28, 4, '05', 'D', 1, 50),
(29, 1, '06', 'A', 0, 50),
(30, 1, '07', 'B', 0, 50),
(31, 1, '08', 'D', 0, 50),
(32, 2, '12', 'C', 1, 50),
(33, 2, '14', 'D', 0, 50),
(34, 2, '15', 'F', 1, 50),
(35, 5, '22', 'A', 0, 50),
(36, 5, '24', 'A', 0, 50),
(37, 5, '21', 'C', 0, 50),
(38, 4, '4', 'D', 0, 56),
(39, 2, '5', 'A', 0, 56);

-- --------------------------------------------------------

--
-- Table structure for table `Seat_Type`
--

CREATE TABLE `Seat_Type` (
  `Seat_Type_ID` int(11) NOT NULL,
  `Seat_Type` varchar(255) NOT NULL,
  `Seat_Desc` text NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Seat_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Seat_Type`
--

INSERT INTO `Seat_Type` (`Seat_Type_ID`, `Seat_Type`, `Seat_Desc`, `Currency_ID`, `Seat_Price`) VALUES
(1, 'Standard FRONT', 'Choose where you want to sit, window, middle, or aisle', 1, '6.49'),
(2, 'Standard REAR', 'Choose where you want to sit, window, middle, or aisle', 1, '4.99'),
(3, 'Extra Leg Room FRONT', '2 cabin bags, dedicated bag drop, Speedy boarding', 1, '21.99'),
(4, 'Extra Leg Room WING', '2 cabin bags, dedicated bag drop, Speedy boarding', 1, '18.99'),
(5, 'Up Front', '2 cabin bags, dedicated bag drop, Speedy boarding', 1, '17.99');

-- --------------------------------------------------------

--
-- Table structure for table `Travellers`
--

CREATE TABLE `Travellers` (
  `Travellers_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Travellers`
--

INSERT INTO `Travellers` (`Travellers_ID`, `Booking_ID`, `Passenger_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 101, 101),
(4, 101, 102),
(5, 101, 103),
(6, 101, 104);

-- --------------------------------------------------------

--
-- Table structure for table `Travel_Age`
--

CREATE TABLE `Travel_Age` (
  `Travel_Age_ID` int(11) NOT NULL,
  `Travel_Age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Travel_Age`
--

INSERT INTO `Travel_Age` (`Travel_Age_ID`, `Travel_Age`) VALUES
(1, '18+'),
(2, '17'),
(3, '16');

-- --------------------------------------------------------

--
-- Table structure for table `Travel_Type`
--

CREATE TABLE `Travel_Type` (
  `travel_Type_ID` int(11) NOT NULL,
  `Travel_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Travel_Type`
--

INSERT INTO `Travel_Type` (`travel_Type_ID`, `Travel_Type`) VALUES
(1, 'Business'),
(2, 'Leisure');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `User_ID` int(11) NOT NULL,
  `Title_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varbinary(255) NOT NULL,
  `Password` varbinary(255) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  `DialCode_ID` int(11) NOT NULL,
  `Telephone_Number` varchar(255) NOT NULL,
  `EJ_Plus_Number` varchar(255) NOT NULL,
  `Stay_Signed_In` tinyint(1) NOT NULL,
  `EJ_Offers` tinyint(1) NOT NULL,
  `Partner_Offers` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`User_ID`, `Title_ID`, `First_Name`, `Last_Name`, `Email`, `Password`, `Address_ID`, `DialCode_ID`, `Telephone_Number`, `EJ_Plus_Number`, `Stay_Signed_In`, `EJ_Offers`, `Partner_Offers`) VALUES
(1, 1, 'Peter', 'Hudson', 0x2b71a2eaa85d43580af29cc6e3c28a8d4d1c03bef77c0eb80340b64ac59463b8, 0xa25a35ce06cc6af1f8b7bd4782ea1592, 83, 8, '07083729493', '', 0, 0, 0),
(2, 1, 'Paddy', 'Campbell', 0x5961d7c456476cecf7cad90f6b300ab6eb04b90d7997aa2b1b0d9780b83fe851, 0x321ae7645ac57a11a9ff123e4f1ed393, 84, 8, '07285736258', '469372132', 1, 0, 1),
(3, 5, 'James', 'Lee', 0x1a4938afa59e833cb804a24bd9ee490f3ca2adf516fa30f9febb35a73c865a22, 0x9301cfd2028361aca92efadcbb7b697d, 85, 8, '07394837275', '463455234', 1, 1, 1),
(4, 2, 'Carol', 'Barnes', 0xeaf44ac499ea3d11b9fb896edd7c7e458a7eed835b5997e4cddb0c59fb296f43, 0xf7374fa3117b4eb300d3ef7ebeeb00d7, 86, 8, '07293757227', '049274932', 1, 0, 0),
(5, 3, 'Margaret', 'Hudson', 0x5ca80e86c0500a9471ffb3da8240cc591521f591ec980bc54ae0e0b68cc6cf68, 0xf7374fa3117b4eb300d3ef7ebeeb00d7, 87, 8, '07925563229', '', 1, 1, 1),
(6, 3, 'Jane', 'Smyth', 0x70529092d97874e5dd800e4a5f3a4fc8d399aa73a1d2f15b0e591eecbac90f82, 0x36f501a5fead93e1002d9a5f2afaf5ff, 88, 8, '07295837436', '937261958', 1, 0, 0),
(7, 5, 'Andrew', 'Jenkins', 0x2fa95ae606e8501a0a4219582749fdfae18c68ddac0929122cf3b26273fda88d, 0x28b951e93014a72b447856334d93e25e, 89, 8, '07291755993', '836406627', 1, 1, 1),
(8, 1, 'Jason', 'Andrews', 0xf44683f5a723a0c3c45deeb1c36745a0eee5ded49290c2a0cb5daaa5740ca65c, 0xaa14543f087153d9d027a951c49c0eea, 90, 8, '07302992732', '847593744', 1, 0, 1),
(9, 4, 'Jenny', 'Turner', 0xa503cd81b4cab05335084667af7ce79d9ad76d0b404ea673596e5e9cdddeeff9, 0x77c4563e4499694efda0c8f0e62ca85c, 91, 8, '07229584463', '384955678', 1, 1, 1),
(10, 2, 'Margaret', 'Connors', 0x627982d670e901b7d6a905c52f328828e18c68ddac0929122cf3b26273fda88d, 0xc7a29d8d57bdd1154add0c8272e129b8, 92, 8, '07284993345', '', 1, 1, 0),
(101, 1, 'John', 'Barnes', 0xba02e0960e1908e1e79cdff6c990573cd399aa73a1d2f15b0e591eecbac90f82, 0xcddeb8369a9ca8095f26e85ddd66ee7a, 101, 8, '07362553482', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Voucher_Type`
--

CREATE TABLE `Voucher_Type` (
  `Voucher_Type_ID` int(11) NOT NULL,
  `Voucher_Type` varchar(255) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `Voucher_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Voucher_Type`
--

INSERT INTO `Voucher_Type` (`Voucher_Type_ID`, `Voucher_Type`, `Currency_ID`, `Voucher_Price`) VALUES
(1, 'Food and Drink Voucher', 1, '6.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `FK_ADDRESS_Country_ID` (`Country_ID`);

--
-- Indexes for table `Airplane`
--
ALTER TABLE `Airplane`
  ADD PRIMARY KEY (`Airplane_ID`);

--
-- Indexes for table `Airport`
--
ALTER TABLE `Airport`
  ADD PRIMARY KEY (`Airport_ID`),
  ADD KEY `FK_AIRPORT_Address_ID` (`Address_ID`);

--
-- Indexes for table `Assistance_Type`
--
ALTER TABLE `Assistance_Type`
  ADD PRIMARY KEY (`Assistance_Type_ID`);

--
-- Indexes for table `Baggage_Category`
--
ALTER TABLE `Baggage_Category`
  ADD PRIMARY KEY (`Baggage_Category_ID`);

--
-- Indexes for table `Baggage_Type`
--
ALTER TABLE `Baggage_Type`
  ADD PRIMARY KEY (`Baggage_Type_ID`),
  ADD KEY `FK_BAGGAGE_TYPE_Baggage_Category` (`Baggage_Category`),
  ADD KEY `FK_BAGGAGE_TYPE_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `FK_BOOKING_User_ID` (`User_ID`),
  ADD KEY `FK_BOOKING_Payment_ID` (`Payment_ID`),
  ADD KEY `FK_BOOKING_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`Country_ID`);

--
-- Indexes for table `Currency`
--
ALTER TABLE `Currency`
  ADD PRIMARY KEY (`Currency_ID`);

--
-- Indexes for table `Dial_Code`
--
ALTER TABLE `Dial_Code`
  ADD PRIMARY KEY (`Dial_Code_ID`),
  ADD KEY `FK_DIAL_CODE_Country_ID` (`Country_ID`);

--
-- Indexes for table `Fee_Booking`
--
ALTER TABLE `Fee_Booking`
  ADD PRIMARY KEY (`Fee_Booking_ID`),
  ADD KEY `FK_FEE_BOOKING_Fee_Type_ID` (`Fee_Type_ID`),
  ADD KEY `FK_FEE_BOOKING_Booking_ID` (`Booking_ID`);

--
-- Indexes for table `Fee_Type`
--
ALTER TABLE `Fee_Type`
  ADD PRIMARY KEY (`Fee_Type_ID`),
  ADD KEY `FK_FEE_TYPE_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Flight`
--
ALTER TABLE `Flight`
  ADD PRIMARY KEY (`Flight_ID`),
  ADD KEY `FK_FLIGHT_Route_ID` (`Route_ID`),
  ADD KEY `FK_FLIGHT_Airplane_ID` (`Airplane_ID`),
  ADD KEY `FK_FLIGHT_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`Invoice_ID`),
  ADD KEY `FK_INVOICE_Booking_ID` (`Booking_ID`),
  ADD KEY `FK_INVOICE_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Name_Title`
--
ALTER TABLE `Name_Title`
  ADD PRIMARY KEY (`Name_Title_ID`);

--
-- Indexes for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD PRIMARY KEY (`Passenger_ID`),
  ADD KEY `FK_PASSENGER_Flight_ID` (`Flight_ID`),
  ADD KEY `FK_PASSENGER_Person_Type_ID` (`Person_Type_ID`),
  ADD KEY `FK_PASSENGER_Seat_ID` (`Seat_ID`),
  ADD KEY `FK_PASSENGER_Title_ID` (`Title_ID`),
  ADD KEY `FK_PASSENGER_Travel_Age_ID` (`Travel_Age_ID`),
  ADD KEY `FK_PASSENGER_Travel_Type_ID` (`Travel_Type_ID`);

--
-- Indexes for table `Passenger_Assistance`
--
ALTER TABLE `Passenger_Assistance`
  ADD PRIMARY KEY (`Passenger_Assistance_ID`),
  ADD KEY `FK_PASSENGER_ASSISTANCE_Passenger_ID` (`Passenger_ID`),
  ADD KEY `FK_PASSENGER_ASSISTANCE_Assistance_Type_ID` (`Assistance_Type_ID`);

--
-- Indexes for table `Passenger_Luggage`
--
ALTER TABLE `Passenger_Luggage`
  ADD PRIMARY KEY (`Passenger_Luggage_ID`),
  ADD KEY `FK_PASSENGER_LUGGAGE_Baggage_Type_ID` (`Baggage_Type_ID`),
  ADD KEY `FK_PASSENGER_LUGGAGE_Passenger_ID` (`Passenger_ID`);

--
-- Indexes for table `Passenger_Voucher`
--
ALTER TABLE `Passenger_Voucher`
  ADD PRIMARY KEY (`Passenger_Voucher_ID`),
  ADD KEY `FK_PASSENGER_VOUCHER_Passenger_ID` (`Passenger_ID`),
  ADD KEY `FK_PASSENGER_VOUCHER_Voucher_ID` (`Voucher_Type_ID`) USING BTREE;

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `FK-PAYMENT_Payment_Type_ID` (`Payment_Type_ID`);

--
-- Indexes for table `Payment_Type`
--
ALTER TABLE `Payment_Type`
  ADD PRIMARY KEY (`Payment_Type_ID`);

--
-- Indexes for table `Person_Type`
--
ALTER TABLE `Person_Type`
  ADD PRIMARY KEY (`Person_Type_ID`);

--
-- Indexes for table `Route`
--
ALTER TABLE `Route`
  ADD PRIMARY KEY (`Route_ID`),
  ADD KEY `FK_ROUTE_Departing_Airport_ID` (`Departing_Airport_ID`),
  ADD KEY `FK_ROUTE_Arrival_Airport_ID` (`Arrival_Airport_ID`);

--
-- Indexes for table `Seat`
--
ALTER TABLE `Seat`
  ADD PRIMARY KEY (`Seat_ID`),
  ADD KEY `FK_SEAT_Flight_ID` (`Flight_ID`),
  ADD KEY `FK_SEAT_Seat_Type_ID` (`Seat_Type_ID`);

--
-- Indexes for table `Seat_Type`
--
ALTER TABLE `Seat_Type`
  ADD PRIMARY KEY (`Seat_Type_ID`),
  ADD KEY `FK_SEAT_TYPE_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Travellers`
--
ALTER TABLE `Travellers`
  ADD PRIMARY KEY (`Travellers_ID`),
  ADD KEY `FK_TRAVELLERS_Booking_ID` (`Booking_ID`),
  ADD KEY `FK_TRAVELLERS_Passenger_ID` (`Passenger_ID`);

--
-- Indexes for table `Travel_Age`
--
ALTER TABLE `Travel_Age`
  ADD PRIMARY KEY (`Travel_Age_ID`);

--
-- Indexes for table `Travel_Type`
--
ALTER TABLE `Travel_Type`
  ADD PRIMARY KEY (`travel_Type_ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `FK_USER_Title_ID` (`Title_ID`),
  ADD KEY `FK_USER_Address_ID` (`Address_ID`),
  ADD KEY `FK_USER_Dial_Code_ID` (`DialCode_ID`);

--
-- Indexes for table `Voucher_Type`
--
ALTER TABLE `Voucher_Type`
  ADD PRIMARY KEY (`Voucher_Type_ID`),
  ADD KEY `FK_VOUCHER_TYPE_Currency_ID` (`Currency_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `Airplane`
--
ALTER TABLE `Airplane`
  MODIFY `Airplane_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Airport`
--
ALTER TABLE `Airport`
  MODIFY `Airport_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Assistance_Type`
--
ALTER TABLE `Assistance_Type`
  MODIFY `Assistance_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Baggage_Category`
--
ALTER TABLE `Baggage_Category`
  MODIFY `Baggage_Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Baggage_Type`
--
ALTER TABLE `Baggage_Type`
  MODIFY `Baggage_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Currency`
--
ALTER TABLE `Currency`
  MODIFY `Currency_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Dial_Code`
--
ALTER TABLE `Dial_Code`
  MODIFY `Dial_Code_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Fee_Booking`
--
ALTER TABLE `Fee_Booking`
  MODIFY `Fee_Booking_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Fee_Type`
--
ALTER TABLE `Fee_Type`
  MODIFY `Fee_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Flight`
--
ALTER TABLE `Flight`
  MODIFY `Flight_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `Invoice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `Name_Title`
--
ALTER TABLE `Name_Title`
  MODIFY `Name_Title_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Passenger`
--
ALTER TABLE `Passenger`
  MODIFY `Passenger_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `Passenger_Assistance`
--
ALTER TABLE `Passenger_Assistance`
  MODIFY `Passenger_Assistance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Passenger_Luggage`
--
ALTER TABLE `Passenger_Luggage`
  MODIFY `Passenger_Luggage_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Passenger_Voucher`
--
ALTER TABLE `Passenger_Voucher`
  MODIFY `Passenger_Voucher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `Payment_Type`
--
ALTER TABLE `Payment_Type`
  MODIFY `Payment_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Person_Type`
--
ALTER TABLE `Person_Type`
  MODIFY `Person_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Route`
--
ALTER TABLE `Route`
  MODIFY `Route_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Seat`
--
ALTER TABLE `Seat`
  MODIFY `Seat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `Seat_Type`
--
ALTER TABLE `Seat_Type`
  MODIFY `Seat_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Travellers`
--
ALTER TABLE `Travellers`
  MODIFY `Travellers_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Travel_Age`
--
ALTER TABLE `Travel_Age`
  MODIFY `Travel_Age_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Travel_Type`
--
ALTER TABLE `Travel_Type`
  MODIFY `travel_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `Voucher_Type`
--
ALTER TABLE `Voucher_Type`
  MODIFY `Voucher_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Address`
--
ALTER TABLE `Address`
  ADD CONSTRAINT `FK_ADDRESS_Country_ID` FOREIGN KEY (`Country_ID`) REFERENCES `Country` (`Country_ID`);

--
-- Constraints for table `Airport`
--
ALTER TABLE `Airport`
  ADD CONSTRAINT `FK_AIRPORT_Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`);

--
-- Constraints for table `Baggage_Type`
--
ALTER TABLE `Baggage_Type`
  ADD CONSTRAINT `FK_BAGGAGE_TYPE_Baggage_Category` FOREIGN KEY (`Baggage_Category`) REFERENCES `Baggage_Category` (`Baggage_Category_ID`),
  ADD CONSTRAINT `FK_BAGGAGE_TYPE_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `FK_BOOKING_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`),
  ADD CONSTRAINT `FK_BOOKING_Payment_ID` FOREIGN KEY (`Payment_ID`) REFERENCES `Payment` (`Payment_ID`),
  ADD CONSTRAINT `FK_BOOKING_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`);

--
-- Constraints for table `Dial_Code`
--
ALTER TABLE `Dial_Code`
  ADD CONSTRAINT `FK_DIAL_CODE_Country_ID` FOREIGN KEY (`Country_ID`) REFERENCES `Country` (`Country_ID`);

--
-- Constraints for table `Fee_Booking`
--
ALTER TABLE `Fee_Booking`
  ADD CONSTRAINT `FK_FEE_BOOKING_Booking_ID` FOREIGN KEY (`Booking_ID`) REFERENCES `Booking` (`Booking_ID`),
  ADD CONSTRAINT `FK_FEE_BOOKING_Fee_Type_ID` FOREIGN KEY (`Fee_Type_ID`) REFERENCES `Fee_Type` (`Fee_Type_ID`);

--
-- Constraints for table `Fee_Type`
--
ALTER TABLE `Fee_Type`
  ADD CONSTRAINT `FK_FEE_TYPE_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);

--
-- Constraints for table `Flight`
--
ALTER TABLE `Flight`
  ADD CONSTRAINT `FK_FLIGHT_Airplane_ID` FOREIGN KEY (`Airplane_ID`) REFERENCES `Airplane` (`Airplane_ID`),
  ADD CONSTRAINT `FK_FLIGHT_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`),
  ADD CONSTRAINT `FK_FLIGHT_Route_ID` FOREIGN KEY (`Route_ID`) REFERENCES `Route` (`Route_ID`);

--
-- Constraints for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD CONSTRAINT `FK_INVOICE_Booking_ID` FOREIGN KEY (`Booking_ID`) REFERENCES `Booking` (`Booking_ID`),
  ADD CONSTRAINT `FK_INVOICE_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);

--
-- Constraints for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD CONSTRAINT `FK_PASSENGER_Flight_ID` FOREIGN KEY (`Flight_ID`) REFERENCES `Flight` (`Flight_ID`),
  ADD CONSTRAINT `FK_PASSENGER_Person_Type_ID` FOREIGN KEY (`Person_Type_ID`) REFERENCES `Person_Type` (`Person_Type_ID`),
  ADD CONSTRAINT `FK_PASSENGER_Seat_ID` FOREIGN KEY (`Seat_ID`) REFERENCES `Seat` (`Seat_ID`),
  ADD CONSTRAINT `FK_PASSENGER_Title_ID` FOREIGN KEY (`Title_ID`) REFERENCES `Name_Title` (`Name_Title_ID`),
  ADD CONSTRAINT `FK_PASSENGER_Travel_Age_ID` FOREIGN KEY (`Travel_Age_ID`) REFERENCES `Travel_Age` (`Travel_Age_ID`),
  ADD CONSTRAINT `FK_PASSENGER_Travel_Type_ID` FOREIGN KEY (`Travel_Type_ID`) REFERENCES `Travel_Type` (`travel_Type_ID`);

--
-- Constraints for table `Passenger_Assistance`
--
ALTER TABLE `Passenger_Assistance`
  ADD CONSTRAINT `FK_PASSENGER_ASSISTANCE_Assistance_Type_ID` FOREIGN KEY (`Assistance_Type_ID`) REFERENCES `Assistance_Type` (`Assistance_Type_ID`),
  ADD CONSTRAINT `FK_PASSENGER_ASSISTANCE_Passenger_ID` FOREIGN KEY (`Passenger_ID`) REFERENCES `Passenger` (`Passenger_ID`);

--
-- Constraints for table `Passenger_Luggage`
--
ALTER TABLE `Passenger_Luggage`
  ADD CONSTRAINT `FK_PASSENGER_LUGGAGE_Baggage_Type_ID` FOREIGN KEY (`Baggage_Type_ID`) REFERENCES `Baggage_Type` (`Baggage_Type_ID`),
  ADD CONSTRAINT `FK_PASSENGER_LUGGAGE_Passenger_ID` FOREIGN KEY (`Passenger_ID`) REFERENCES `Passenger` (`Passenger_ID`);

--
-- Constraints for table `Passenger_Voucher`
--
ALTER TABLE `Passenger_Voucher`
  ADD CONSTRAINT `FK_PASSENGER_VOUCHER_Passenger_ID` FOREIGN KEY (`Passenger_ID`) REFERENCES `Passenger` (`Passenger_ID`),
  ADD CONSTRAINT `FK_PASSENGER_VOUCHER_Voucer_ID` FOREIGN KEY (`Voucher_Type_ID`) REFERENCES `Voucher_Type` (`Voucher_Type_ID`);

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `FK-PAYMENT_Payment_Type_ID` FOREIGN KEY (`Payment_Type_ID`) REFERENCES `Payment_Type` (`Payment_Type_ID`);

--
-- Constraints for table `Route`
--
ALTER TABLE `Route`
  ADD CONSTRAINT `FK_ROUTE_Arrival_Airport_ID` FOREIGN KEY (`Arrival_Airport_ID`) REFERENCES `Airport` (`Airport_ID`),
  ADD CONSTRAINT `FK_ROUTE_Departing_Airport_ID` FOREIGN KEY (`Departing_Airport_ID`) REFERENCES `Airport` (`Airport_ID`);

--
-- Constraints for table `Seat`
--
ALTER TABLE `Seat`
  ADD CONSTRAINT `FK_SEAT_Flight_ID` FOREIGN KEY (`Flight_ID`) REFERENCES `Flight` (`Flight_ID`),
  ADD CONSTRAINT `FK_SEAT_Seat_Type_ID` FOREIGN KEY (`Seat_Type_ID`) REFERENCES `Seat_Type` (`Seat_Type_ID`);

--
-- Constraints for table `Seat_Type`
--
ALTER TABLE `Seat_Type`
  ADD CONSTRAINT `FK_SEAT_TYPE_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);

--
-- Constraints for table `Travellers`
--
ALTER TABLE `Travellers`
  ADD CONSTRAINT `FK_TRAVELLERS_Booking_ID` FOREIGN KEY (`Booking_ID`) REFERENCES `Booking` (`Booking_ID`),
  ADD CONSTRAINT `FK_TRAVELLERS_Passenger_ID` FOREIGN KEY (`Passenger_ID`) REFERENCES `Passenger` (`Passenger_ID`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `FK_USER_Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`),
  ADD CONSTRAINT `FK_USER_Dial_Code_ID` FOREIGN KEY (`DialCode_ID`) REFERENCES `Dial_Code` (`Dial_Code_ID`),
  ADD CONSTRAINT `FK_USER_Title_ID` FOREIGN KEY (`Title_ID`) REFERENCES `Name_Title` (`Name_Title_ID`);

--
-- Constraints for table `Voucher_Type`
--
ALTER TABLE `Voucher_Type`
  ADD CONSTRAINT `FK_VOUCHER_TYPE_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
