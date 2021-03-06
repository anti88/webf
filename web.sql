-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 12. Jan 2016 um 15:45
-- Server-Version: 10.0.21-MariaDB
-- PHP-Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `web`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `course`
--

CREATE TABLE `course` (
  `course_pk` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `lector_id` int(11) DEFAULT NULL,
  `end` varchar(50) NOT NULL,
  `begin` varchar(50) NOT NULL,
  `description_en` varchar(500) DEFAULT NULL,
  `requirements` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `course`
--

INSERT INTO `course` (`course_pk`, `title`, `description`, `lector_id`, `end`, `begin`, `description_en`, `requirements`) VALUES
(1, 'WEBF', 'Gängige Webframeworks aus der Java Welt', 169, '05.01.2016', '01.01.2016', 'Usual web frameworks in JAVA', 'Programmierkenntnisse in rotzigen Java, Webservices'),
(8, 'CBAS', 'Grundlegende Eigenschaften der Programmiersprache C', 169, '06.01.2016', '05.01.2016', 'Basics in C-99', 'keine'),
(11, 'TestTitel', 'Nur ein Test', NULL, '05.01.2016', '05.01.2016', 'asdf', 'asdf'),
(15, 'CROSS', 'Crossplatform heislbesn', NULL, '20.01.2016', '05.01.2016', 'asdf', 'safd'),
(21, 'Test', 'Das ist nur ein Testkurs', NULL, '27.01.2016', '02.01.2016', 'This is only a course for testing', 'na goa kane'),
(22, 'SAUD', 'Softwaare-Architektur und Design', NULL, '19.01.2016', '05.01.2016', 'gibts kane', 'nix');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE `person` (
  `person_pk` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(128) DEFAULT NULL,
  `lastname` varchar(128) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`person_pk`, `username`, `password`, `firstname`, `lastname`, `birthday`, `role_id`) VALUES
(1, 'anti88', 'am', 'Andreas', 'Moik', '1988-04-13', 1),
(2, 'pa14l014', 'am', 'Andreas', 'Moik', '1988-04-13', 3),
(3, 'pa14l013', 'sf', 'Stefan', 'Forster', '1987-01-31', 3),
(169, 'moik', 'am', 'Andreas', 'Moik', '1988-04-13', 2),
(170, 'TestLektor', 'tl', 'Test', 'Lektor', '2016-01-31', 2),
(171, 'heislbesn', 'ah', 'heisl', 'besn', '2016-01-25', 2),
(173, 'pa14l010', 'az', 'Alexander', 'Zulechner', '2016-01-18', 3),
(176, 'pa14l011', 'mb', 'Margerite', 'Bardeau', '2016-01-11', 3),
(177, 'pa14l004', 'bb', 'Bernhard', 'Böck', '2016-01-11', 3),
(178, 'pa14l006', 'jc', 'Johndrick', 'Calupas', '2016-01-10', 3),
(179, 'pa14l012', 'bk', 'Barbara', 'Krautgartner', '2016-01-11', 3),
(180, 'pa14l003', 'rm', 'Rebecca Anna', 'Moritz', '2016-01-03', 3),
(181, 'pa14l008', 'rm', 'Raphael', 'Moser', '2016-01-11', 3),
(182, 'pa14l002', 'pp', 'Patrick', 'Pöchhacker', '2016-01-03', 3),
(183, 'pa14l009', 'mz', 'Manfred', 'Zlamala', '2016-01-11', 3),
(184, 'pa14l010', 'az', 'Alexander', 'Zulechner', '2016-01-12', 3),
(185, 'pa14l005', 'lg', 'Linda', 'Grubits', '2016-01-04', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_course_membership`
--

CREATE TABLE `person_course_membership` (
  `person_fk` int(11) NOT NULL,
  `course_fk` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `person_course_membership`
--

INSERT INTO `person_course_membership` (`person_fk`, `course_fk`, `note`) VALUES
(2, 1, 1),
(2, 8, 1),
(2, 11, 3),
(3, 1, 0),
(3, 8, 0),
(3, 11, 0),
(3, 15, 0),
(173, 1, 0),
(173, 8, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE `role` (
  `title` varchar(32) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `role`
--

INSERT INTO `role` (`title`, `role_id`) VALUES
('ERROR', 0),
('ADMIN', 1),
('Lektor', 2),
('Student', 3);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_pk`),
  ADD KEY `course_ibfk_1` (`lector_id`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_pk`),
  ADD KEY `role_id` (`role_id`);

--
-- Indizes für die Tabelle `person_course_membership`
--
ALTER TABLE `person_course_membership`
  ADD PRIMARY KEY (`person_fk`,`course_fk`),
  ADD KEY `person_fk` (`person_fk`),
  ADD KEY `course_fk` (`course_fk`);

--
-- Indizes für die Tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `course`
--
ALTER TABLE `course`
  MODIFY `course_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `person_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT für Tabelle `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`lector_id`) REFERENCES `person` (`person_pk`);

--
-- Constraints der Tabelle `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_role_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Constraints der Tabelle `person_course_membership`
--
ALTER TABLE `person_course_membership`
  ADD CONSTRAINT `person_course_membership_ibfk_1` FOREIGN KEY (`person_fk`) REFERENCES `person` (`person_pk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_course_membership_ibfk_2` FOREIGN KEY (`course_fk`) REFERENCES `course` (`course_pk`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
