-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2020 at 12:43 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `Airplane`
--

CREATE TABLE `Airplane` (
  `Airplane_ID` int(11) NOT NULL,
  `Airplane_Model` varchar(255) NOT NULL,
  `Airplane_Capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `Assistance_Type`
--

CREATE TABLE `Assistance_Type` (
  `Assistance_Type_ID` int(11) NOT NULL,
  `Assistance_Type_Code` text NOT NULL,
  `Assistance_Type_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Baggage_Category`
--

CREATE TABLE `Baggage_Category` (
  `Baggage_Category_ID` int(11) NOT NULL,
  `Baggage_Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Total_Price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Currency`
--

CREATE TABLE `Currency` (
  `Currency_ID` int(11) NOT NULL,
  `Currency_Name` varchar(255) NOT NULL,
  `Currency_Symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Dial_Code`
--

CREATE TABLE `Dial_Code` (
  `Dial_Code_ID` int(11) NOT NULL,
  `Dial_Code` varchar(255) NOT NULL,
  `Country_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `Name_Title`
--

CREATE TABLE `Name_Title` (
  `Name_Title_ID` int(11) NOT NULL,
  `Name_Title` varchar(255) NOT NULL,
  `Name_Title_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Travel_Insurance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Assistance`
--

CREATE TABLE `Passenger_Assistance` (
  `Passenger_Assistance_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Assistance_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Luggage`
--

CREATE TABLE `Passenger_Luggage` (
  `Passenger_Luggage_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Baggage_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Passenger_Voucher`
--

CREATE TABLE `Passenger_Voucher` (
  `Passenger_Voucher_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Voucher_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Type_ID` int(11) NOT NULL,
  `Card_Number` varbinary(255) NOT NULL,
  `Card_Holder_Name` varbinary(255) NOT NULL,
  `Expiry_Month` varchar(2) NOT NULL,
  `Expiry_Year` varchar(4) NOT NULL,
  `CVV_Number` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Payment_Type`
--

CREATE TABLE `Payment_Type` (
  `Payment_Type_ID` int(11) NOT NULL,
  `Payment_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Person_Type`
--

CREATE TABLE `Person_Type` (
  `Person_Type_ID` int(11) NOT NULL,
  `Person_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Route`
--

CREATE TABLE `Route` (
  `Route_ID` int(11) NOT NULL,
  `Departing_Airport_ID` int(11) NOT NULL,
  `Arrival_Airport_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `Travellers`
--

CREATE TABLE `Travellers` (
  `Travellers_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Travel_Age`
--

CREATE TABLE `Travel_Age` (
  `Travel_Age_ID` int(11) NOT NULL,
  `Travel_Age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Travel_Type`
--

CREATE TABLE `Travel_Type` (
  `travel_Type_ID` int(11) NOT NULL,
  `Travel_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Airplane`
--
ALTER TABLE `Airplane`
  MODIFY `Airplane_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Airport`
--
ALTER TABLE `Airport`
  MODIFY `Airport_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Assistance_Type`
--
ALTER TABLE `Assistance_Type`
  MODIFY `Assistance_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Baggage_Category`
--
ALTER TABLE `Baggage_Category`
  MODIFY `Baggage_Category_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Baggage_Type`
--
ALTER TABLE `Baggage_Type`
  MODIFY `Baggage_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Currency`
--
ALTER TABLE `Currency`
  MODIFY `Currency_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Dial_Code`
--
ALTER TABLE `Dial_Code`
  MODIFY `Dial_Code_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Fee_Booking`
--
ALTER TABLE `Fee_Booking`
  MODIFY `Fee_Booking_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Fee_Type`
--
ALTER TABLE `Fee_Type`
  MODIFY `Fee_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Flight`
--
ALTER TABLE `Flight`
  MODIFY `Flight_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `Invoice_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Name_Title`
--
ALTER TABLE `Name_Title`
  MODIFY `Name_Title_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Passenger`
--
ALTER TABLE `Passenger`
  MODIFY `Passenger_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Passenger_Assistance`
--
ALTER TABLE `Passenger_Assistance`
  MODIFY `Passenger_Assistance_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Passenger_Luggage`
--
ALTER TABLE `Passenger_Luggage`
  MODIFY `Passenger_Luggage_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Passenger_Voucher`
--
ALTER TABLE `Passenger_Voucher`
  MODIFY `Passenger_Voucher_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Payment_Type`
--
ALTER TABLE `Payment_Type`
  MODIFY `Payment_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Person_Type`
--
ALTER TABLE `Person_Type`
  MODIFY `Person_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Route`
--
ALTER TABLE `Route`
  MODIFY `Route_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Seat`
--
ALTER TABLE `Seat`
  MODIFY `Seat_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Seat_Type`
--
ALTER TABLE `Seat_Type`
  MODIFY `Seat_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Travellers`
--
ALTER TABLE `Travellers`
  MODIFY `Travellers_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Travel_Age`
--
ALTER TABLE `Travel_Age`
  MODIFY `Travel_Age_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Travel_Type`
--
ALTER TABLE `Travel_Type`
  MODIFY `travel_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Voucher_Type`
--
ALTER TABLE `Voucher_Type`
  MODIFY `Voucher_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

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
