-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 29 mei 2024 om 13:20
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TheorieToetsCBR`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TheorieToetsCBR`
--

CREATE TABLE `TheorieToetsCBR` (
  `id` int(11) NOT NULL,
  `vraag` text NOT NULL,
  `optieA` text NOT NULL,
  `optieB` text NOT NULL,
  `optieC` text NOT NULL,
  `correct_antwoord` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `TheorieToetsCBR`
--

INSERT INTO `TheorieToetsCBR` (`id`, `vraag`, `optieA`, `optieB`, `optieC`, `correct_antwoord`) VALUES
(1, 'Wat is de maximale toegestane snelheid binnen de bebouwde kom, tenzij anders aangegeven?', '30 km/u', '50 km/u', '70 km/u', 'B'),
(2, 'Wat is de minimale snelheid op een autosnelweg?', '50 km/u', '60 km/u', '80 km/u', 'B'),
(3, 'Wat betekent een doorgetrokken streep in het midden van de weg?', 'Je mag de streep alleen overschrijden om in te halen', 'Je mag de streep niet overschrijden', 'Je mag de streep overschrijden als er geen tegenliggers zijn', 'B'),
(4, 'Wat is de volgorde van voorrang bij een kruispunt zonder verkeerslichten en zonder borden?', 'Rechtdoorgaand verkeer op dezelfde weg gaat voor', 'Verkeer van rechts gaat voor', 'Verkeer van links gaat voor', 'B'),
(5, 'Wat moet je doen als je een rood verkeerslicht ziet?', 'Stoppen, behalve als je rechtdoor gaat', 'Stoppen en wachten tot het licht groen is', 'Langzaam rijden en doorgaan als er geen verkeer is', 'B'),
(6, 'Wat betekent een rond blauw bord met een witte pijl naar rechts?', 'Verplicht rechts afslaan', 'Rechts inhalen toegestaan', 'Voorwaarschuwing voor eenrichtingsweg', 'A'),
(7, 'Wat betekent een driehoekig bord met een rode rand en een zwarte X in het midden?', 'Voorrangskruispunt', 'Onverplicht kruispunt', 'Gevaarlijke kruising', 'A'),
(8, 'Wat betekent een vierkant blauw bord met een witte P?', 'Parkeerverbod', 'Parkeerplaats', 'Privéterrein', 'B'),
(9, 'Wat betekent een rechthoekig blauw bord met een witte verticale lijn?', 'Einde parkeerzone', 'Begin van een autosnelweg', 'Begin van een eenrichtingsweg', 'B'),
(10, 'Wat betekent een rond rood bord met een witte horizontale streep?', 'Verboden in te rijden', 'Gebod om rechtdoor te gaan', 'Maximumsnelheid 50 km/u', 'A'),
(11, 'Wat doe je als je een voetganger op een zebrapad ziet?', 'Doorrijden als je haast hebt', 'Stoppen en de voetganger voor laten gaan', 'Toeteren om te waarschuwen', 'B'),
(12, 'Hoe reageer je als je op een smalle weg een tegenligger tegenkomt?', 'Gas geven en snel passeren', 'Uitwijken naar rechts en eventueel stoppen', 'De weg blokkeren tot de tegenligger omkeert', 'B'),
(13, 'Wat is de veiligste manier om een bocht te nemen?', 'Snel de bocht insturen en remmen', 'Vóór de bocht snelheid verminderen en rustig door de bocht sturen', 'Accelereren in de bocht', 'B'),
(14, 'Wat doe je als je een fietsende schoolklas op de weg ziet?', 'Inhalen met hoge snelheid', 'Langzaam rijden en voldoende afstand houden', 'Stoppen en wachten tot ze voorbij zijn', 'B'),
(15, 'Hoe ver mag je van een kruispunt parkeren?', 'Minimaal 5 meter', 'Minimaal 10 meter', 'Minimaal 15 meter', 'A'),
(16, 'Wat is de belangrijkste oorzaak van ongevallen in het verkeer?', 'Slechte weersomstandigheden', 'Menselijk gedrag', 'Technische defecten aan het voertuig', 'B'),
(17, 'Wat moet je doen als je merkt dat je vermoeid raakt tijdens het rijden?', 'Koffie drinken en doorgaan', 'Een veilige plek zoeken om te rusten', 'Het raam openen voor frisse lucht', 'B'),
(18, 'Wat is de veiligste manier om een kind in een auto te vervoeren?', 'Op schoot houden', 'In een kinderzitje vastmaken', 'Op de achterbank zonder gordel', 'B'),
(19, 'Hoe kun je het beste reageren op agressief rijgedrag van een andere bestuurder?', 'Terugtoeteren en sneller rijden', 'Rustig blijven en afstand houden', 'De bestuurder inhalen en de weg versperren', 'B'),
(20, 'Wat moet je doen als je bij een ongeval betrokken raakt?', 'De plaats van het ongeval verlaten', 'De hulpdiensten bellen en wachten op instructies', 'Alleen verder rijden als je voertuig nog in staat is om te rijden', 'B');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `TheorieToetsCBR`
--
ALTER TABLE `TheorieToetsCBR`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `TheorieToetsCBR`
--
ALTER TABLE `TheorieToetsCBR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
