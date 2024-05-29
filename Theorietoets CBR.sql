-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 29 mei 2024 om 14:42
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theorietoetscbr`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `theorietoetscbr`
--

CREATE TABLE `theorietoetscbr` (
  `id` int(11) NOT NULL,
  `vraag` text NOT NULL,
  `optieA` text NOT NULL,
  `optieB` text NOT NULL,
  `optieC` text NOT NULL,
  `correct_antwoord` char(1) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `theorietoetscbr`
--

INSERT INTO `theorietoetscbr` (`id`, `vraag`, `optieA`, `optieB`, `optieC`, `correct_antwoord`, `img`) VALUES
(1, 'Wat is de maximale toegestane snelheid binnen de bebouwde kom, tenzij anders aangegeven?', '30 km/u', '50 km/u', '70 km/u', 'B', 'https://verkeersregels.vvn.nl/sites/default/files/styles/situation_full/public/2023-10/VVN-010.jpg?itok=_KgUJJa2'),
(2, 'Wat is de minimale snelheid op een autosnelweg?', '50 km/u', '60 km/u', '80 km/u', 'B', 'https://images0.persgroep.net/rcs/tdclbpQiKIvoMkfRovvTxEU_2PQ/diocontent/228133500/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.8'),
(3, 'Wat betekent een doorgetrokken streep in het midden van de weg?', 'Je mag de streep alleen overschrijden om in te halen', 'Je mag de streep niet overschrijden', 'Je mag de streep overschrijden als er geen tegenliggers zijn', 'B', 'https://voorbereidrijles.nl/wp-content/uploads/2014/08/80-kmh.jpg'),
(4, 'Wat is de volgorde van voorrang bij een kruispunt zonder verkeerslichten en zonder borden?', 'Rechtdoorgaand verkeer op dezelfde weg gaat voor', 'Verkeer van rechts gaat voor', 'Verkeer van links gaat voor', 'B', 'https://rijlesspecialist.nl/wp-content/uploads/2019/02/theorie-vraag-week-7.jpg'),
(5, 'Wat moet je doen als je een rood verkeerslicht ziet?', 'Stoppen, behalve als je rechtdoor gaat', 'Stoppen en wachten tot het licht groen is', 'Langzaam rijden en doorgaan als er geen verkeer is', 'B', 'https://rijbewijshulp.nl/wp-content/uploads/2022/11/Rond-verkeerslicht.jpg'),
(6, 'Wat betekent een rond blauw bord met een witte pijl naar rechts?', 'Verplicht rechts afslaan', 'Rechts inhalen toegestaan', 'Voorwaarschuwing voor eenrichtingsweg', 'A', 'https://images.trafficsupply.nl/imgsrc/900/900/i-118830-cb6/verkeersbord-rvv-d04-verplichte-rijrichting-rechtdoor.png'),
(7, 'Wat betekent een driehoekig bord met een rode rand en een zwarte X in het midden?', 'Voorrangskruispunt', 'Onverplicht kruispunt', 'Gevaarlijke kruising', 'A', 'https://www.bordenoefenen.nl/cdn/b/j8.svg'),
(8, 'Wat betekent een vierkant blauw bord met een witte P?', 'Parkeerverbod', 'Parkeerplaats', 'Privéterrein', 'B', 'https://www.parkeerbord.nl/wp-content/uploads/2023/01/bord-blauwe-P.jpg.webp'),
(9, 'Wat betekent een rechthoekig blauw bord met een witte verticale lijn?', 'Einde parkeerzone', 'Begin van een autosnelweg', 'Begin van een eenrichtingsweg', 'B', 'https://msrverhuur.nl/wp-content/uploads/2019/02/04BP0020.jpg'),
(10, 'Wat betekent een rond rood bord met een witte horizontale streep?', 'Verboden in te rijden', 'Gebod om rechtdoor te gaan', 'Maximumsnelheid 50 km/u', 'A', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Nederlands_verkeersbord_C2.svg/640px-Nederlands_verkeersbord_C2.svg.png'),
(11, 'Wat doe je als je een voetganger op een zebrapad ziet?', 'Doorrijden als je haast hebt', 'Stoppen en de voetganger voor laten gaan', 'Toeteren om te waarschuwen', 'B', 'https://images0.persgroep.net/rcs/zar3PgJKX669uM47hQM7FdDnNbc/diocontent/214725945/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.8'),
(12, 'Hoe reageer je als je op een smalle weg een tegenligger tegenkomt?', 'Gas geven en snel passeren', 'Uitwijken naar rechts en eventueel stoppen', 'De weg blokkeren tot de tegenligger omkeert', 'B', 'https://itheorie.nl/assets/images/hazard_perception/167657169-ecb72861-b5b3-4a36-a188-55c6b674ad32.jpg'),
(13, 'Wat is de veiligste manier om een bocht te nemen?', 'Snel de bocht insturen en remmen', 'Vóór de bocht snelheid verminderen en rustig door de bocht sturen', 'Accelereren in de bocht', 'B', 'https://i0.wp.com/www.moto-maestro.nl/wp-content/uploads/2020/03/new-image-Decreasing-Radius-Corner-Graphic_opt.jpg?fit=400%2C363&ssl=1'),
(14, 'Wat doe je als je een fietsende schoolklas op de weg ziet?', 'Inhalen met hoge snelheid', 'Langzaam rijden en voldoende afstand houden', 'Stoppen en wachten tot ze voorbij zijn', 'B', 'https://repo.allesoversport.nl/cache/image/file_8163_m1681392565_1200,630.jpg'),
(15, 'Hoe ver mag je van een kruispunt parkeren?', 'Minimaal 5 meter', 'Minimaal 10 meter', 'Minimaal 15 meter', 'A', 'https://www.lessenbijleendert.nl/media/W1siZiIsIjIwMTUvMDMvMjQvMTJfNDZfMTdfNzY3X2tydWlzcHVudF9uaWV0X2Jsb2trZXJlbl9uaWV0X2hpbmRlcmVuLmpwZyJdXQ/kruispunt%20niet%20blokkeren%2C%20niet%20hinderen.jpg?sha=5b89523cb083783a'),
(16, 'Wat is de belangrijkste oorzaak van ongevallen in het verkeer?', 'Slechte weersomstandigheden', 'Menselijk gedrag', 'Technische defecten aan het voertuig', 'B', 'https://media-01.imu.nl/storage/sapadvocaten.nl/3188/wp/letselverkeersongevallen-1.jpg'),
(17, 'Wat moet je doen als je merkt dat je vermoeid raakt tijdens het rijden?', 'Koffie drinken en doorgaan', 'Een veilige plek zoeken om te rusten', 'Het raam openen voor frisse lucht', 'B', 'https://image.gezondheid.be/XTRA/123-man-auto-moe-ongeval-05-15.png'),
(18, 'Wat is de veiligste manier om een kind in een auto te vervoeren?', 'Op schoot houden', 'In een kinderzitje vastmaken', 'Op de achterbank zonder gordel', 'B', 'https://verkeersregels.vvn.nl/sites/default/files/styles/situation_full/public/2019-10/art58a.jpg?itok=vPgAyIxe'),
(19, 'Hoe kun je het beste reageren op agressief rijgedrag van een andere bestuurder?', 'Terugtoeteren en sneller rijden', 'Rustig blijven en afstand houden', 'De bestuurder inhalen en de weg versperren', 'B', 'https://img.static-rmg.be/a/view/q75/w2000/h1333/4754621/verkeersagressie2-jpg.jpg'),
(20, 'Wat moet je doen als je bij een ongeval betrokken raakt?', 'De plaats van het ongeval verlaten', 'De hulpdiensten bellen en wachten op instructies', 'Alleen verder rijden als je voertuig nog in staat is om te rijden', 'B', 'https://content.wijkopenautos.nl/static/car_images/wat-te-doen-bij-auto-ongeluk.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `theorietoetscbr`
--
ALTER TABLE `theorietoetscbr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `theorietoetscbr`
--
ALTER TABLE `theorietoetscbr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
