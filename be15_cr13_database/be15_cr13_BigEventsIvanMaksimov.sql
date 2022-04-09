-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 08:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr13_bigeventsivanmaksimov`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_bigeventsivanmaksimov` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_bigeventsivanmaksimov`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` int(5) NOT NULL,
  `city` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `time`, `description`, `picture`, `capacity`, `email`, `phone`, `address`, `zip`, `city`, `url`, `type`) VALUES
(1, 'Easter market at Schönbrunn Palace', '2022-04-02', '09:00:00', 'From April 2nd to 19th, more than 70 huts lure visitors daily from 10 a.m. to 6.30 p.m. with a colorful range of handicrafts, Easter gift ideas and culinary delicacies. A colorful eggshell seating landscape in front of a baroque backdrop invites you to linger and enjoy.  Every Saturday, Sunday and Easter Monday, lively live music can be heard in the courtyard in front of the castle when jazz and swing ensembles spread the sounds of spring and a dancing mood on the square in front of the Easter bunny workshop.  Market mascot Roberta Huhn is also full of anticipation for Easter. The funny fowl on stilts has come up with amusing games, great puzzles and exciting tasks for the children. The hands-on rally starts at Roberta\'s little house, which invites the young market guests to play around the clock with a giant memory, four-in-a-row and an Easter hidden object.  Physical exertion and muscle strength are required for the Hof-Karussell. Not only children have fun on the nostalgic furniture and carriage elements! To drive it, you have to pedal hard.  On Holy Saturday, the Easter market becomes the setting for the big Easter bunny quiz. Small Easter surprises await the children.', 'newwwwwww-625039d8ccbc4.jpg', 2500, 'easter@mail.com', '+123456789', 'Stollenstrasse 63', 1100, 'Wien', 'www.eastermarket.com', 'Easter'),
(2, 'Craft Village at Badeschiff Vienna', '2022-04-08', '16:00:00', 'After all this time, the Badeschiff has finally opened its doors to welcome the warmer season in grand style. What better way to celebrate the occasion than with a drink or a good glass of cold beer. At this weekend’s Craft Village Festival event, you can enjoy craft brewed local beer along with some poolside action – if the weather permits. There will also be DJs playing and a fun corn hole tournament to win lots of great prizes.  We’re kicking off the festival and pool season! 🍻⛱️ As part of the sun deck opening of the Badeschiff, we are hosting a small but fine beer festival in the heart of Vienna with well-known friends of the beer scene. Enjoy a large selection of the finest beers, with free admission!', '1-625039ea0ad41.jpg', 1200, 'event@mail.com', '+123456789', 'Franz-Josefs-Kai', 1200, 'Vienna', 'www.events.com', 'Festival'),
(4, 'Silent Disco at WUK', '2022-04-09', '23:00:00', 'For those who are already familiar with this concept, there is no wonder this event is so popular. House, Electro, Charts & HipHop or Alternative, Oldies & Classics – it’s totally up to you. Choose your channel and dance to the music in your headphones. Make the most of your night and have fun in an unusual but interesting and fun way! Come and dance to one of the two-channel available and enjoy a night full of music at WUK Vienna.', '2-62503fa2bbf72.jpg', 200, 'info@events.at', '+43 664 14825', 'Währinger Straße 22', 1140, 'Vienna', 'www.events.com', 'Party'),
(5, 'Spring PET Festival', '2022-04-09', '14:00:00', 'Instead of the popular punch stand, this year, the association “Tierhilfe mit Herz” (Animal Aid with a Heart) has decided for the first time, due to several postponements, to organize a SPRING FESTIVAL to help raise some money to help pets who require it. Plenty of great things has been prepared. To mention a couple: an open-air bar with drink specials and cocktails will be set up on the premises. Buffet by Pozi’s will be serving the most delicious food you can imagine. You´ll be even able to buy some of the homemade items and animal accessories at the little easter flea market which will also be a part of the festival. Come by for a chat, find out about the association Tierhilfe mit Herz, shop for some homemade items and enjoy a cosy day/afternoon/evening with like-minded people and friends. Come and celebrate the spring awakening at this year´s Spring PET Festival.', '3-62505ef889b29.jpg', 200, 'event@mail.com', '+43 123456789', 'Eßlinger Hauptstraße 125', 1220, 'Vienna', 'www.events.com', 'Festival'),
(6, 'Circus Farm Fantasy', '2022-04-09', '23:00:00', 'Our first party in the new year will go down on April 9th, 2022. And this time, you will be transported into the Austrian countryside! Imagine a perfectly preserved organic and cruelty-free party where bears, goats and pigs dance with puppies and chicks! On 4 different dancefloors we will serve international DJs, Gogo Dancers, Drag Queens… and the infamous CIRCUS darkroom will be hopefully making a comeback as well! Let’s go on a journey to a fantasy farm, complete with hot cowboys, cute animals and yodelling drag queens. Climate change is real hennies! So let’s use one of our very last chances to experience a truly natural countryside landscape and polka the night away!', '4-62506014030d3.jpg', 120, 'event@mail.com', '+43 123456789', 'Baumgasse 80', 1200, 'Vienna', 'www.events.com', 'Party'),
(7, 'Disco Fever Vienna', '2022-04-09', '21:00:00', 'Don’t stop me now! On Saturday, April 9th, Hall E in the MuseumQuartier will be transformed into the biggest disco parlour in the country and provide you with the best 70s disco classics, the coolest hits of the 80s and the most iconic 90s! What´s more, you´ll be able to watch the original videos on our special Disco Fever cinema screen. You can also expect there to be lots of confetti on the dance floor to provide the right mood for the evening. So, mark yourself a spot in your event calendar and make sure you´ll visit this amazing Disco party, brought to you by the ERSTE group bank with the collaboration of FUSION EVENTS. Get under the disco ball and move your body to the rhythm of the best disco hits of the 20th century. Tickets can be purchased online through oeticket or sparkasse.at.', '5-6250614c3e599.jpg', 2000, 'event@mail.com', '+43 123456789', 'Museumsplatz 1', 1100, 'Vienna', 'www.events.com', 'Party'),
(8, 'Vienna Heels Presents Brinn Nicole', '2022-04-24', '00:00:00', 'Vienna Heels proudly presents: a 3h Pumpfidence Masterclass by Brinn Nicole from Los Angeles! We’re flying out the one and only @lovebrinnnicole to come train YOU in Vienna on Monday, April 25th 2022 from 7-10pm. You better drop everything right now and go get one of our VERY LIMITED tickets because trust me: this opportunity doesn’t come every day!  Brinn has been incredibly influential in the heels dance industry for over a decade, and it is now her first time ever coming to teach in Austria. What an honour! She will dedicate 3 connective hours of quality training with you, making sure that it’ll be suitable to ALL LEVELS. Creating in-depth memories for life that you don’t want to miss out on.  If you don’t know, Brinn Nicole is a renowned dancer, choreographer and dance teacher based in Los Angeles. In 2013, she birthed her legendary high heels class called @pumpfidence, which started out at world-famous Millennium Dance Complex, LA. Back then, she was one of the first choreographers to introduce this new way of dancing in a heel that we now all love – a true visionary. Over the last 10 years she has truly built longevity for herself, a very respectable career and has inspired and mentored thousands of dancers all over the world because of her profound knowledge in heels mastery.', '6-6250629f01aaf.jpg', 1500, 'event@mail.com', '+43 123456789', 'Endresstraße 18', 1150, 'Vienna', 'www.events.com', 'Dance'),
(9, 'Tünde Jakab Concert', '2022-04-21', '20:00:00', 'Concert flautist Tünde Jakab is forging a new path in her music career. The new pop production is a celebration and emancipation of femininity, marking the rebirth of an artist who has simultaneously undergone a metamorphosis and showcased her newfound voice as a singer and songwriter. The brand-new show sparkles with a live band, pumping pop beats, heartfelt ballads and string quartet that bring out Tuende’s skills as a musician – both with catchy flute motifs and her dashing vocal performance.', '7-625063898d4e1.jpg', 1900, 'event@mail.com', '+43 123456789', 'Spittelberggasse 10', 1070, 'Vienna', 'www.events.com', 'Concert'),
(10, 'Mikhail Pletnev Klavierabend concert', '2022-04-21', '19:30:00', 'This April renowned Russian pianist conductor and composer Mikhail Pletnev will perform an engaging programme of solo piano music at the world famous Golden Hall of the Musikverein in Vienna.  In this rare appearance the esteemed maestro will perform a series of works by some of the most distinguished historical European composers as well as a contemporary work.  Beginning with J.S. Bach’s English Suite No. 3 in G minor the pianist will then move to a work by Brahms the 3 Intermezzi Op. 117. To close the first half of the performance Pletnev will present a performance of Alexey Shor’s Piano Sonata arranged by the pianist himself. Following a short intermission the pianist will return to perform several works by the renowned Czech composer Antonín Dvořák.  This performance is presented by CMDI Group with the support of the European Foundation for Support of Culture.', '8-625064d980c91.jpg', 200, 'event@mail.com', '+43 123456789', 'Musikvereinsplatz', 1010, 'Vienna', 'www.events.com', 'Concert'),
(11, 'Jeremy Pascal Vienna', '2022-04-30', '19:30:00', 'The alter ego of a close-knit group of friends, Jeremy Pascal is an idea, not an individual. They are a band making music that re-lives the defining moments of their past through creative actions in the present, all the while guided by visions of an imagined Future . Not being tied down to telling the stories of a single individual, they experience young adulthood as a collective consciousness, both in how they live and the music they make.', '9-625065c37a916.jpg', 4000, 'event@mail.com', '+43 123456789', 'Arena Wien, Baumgasse', 1180, 'Vienna', 'www.events.com', 'Concert'),
(12, 'Behave at U4', '2022-04-12', '22:00:00', '♫ Sometimes, all I think about is you Late nights in the middle of “April” Heat waves been faking me out Can’t make you happier now ♫ …… your favourite party taking place every Saturday on Schoenbrunner Strasse 22 called BEHAVE! is back! Every Saturday at U4! Do you like to dance to RnB & Hip Hop, #retro and Charts as well as the best House music? Then join us on the dance floor…. we even have 2 of them! The entry to the club is only for people over 18!  Main floor: DJ One Clubfloor: tba  ✪ NEW INTERIOR DESIGN ✪ ✪ BERLIN AIR ✪ ✪ NEW DRINKS ✪ ✪ 2 FLOORS ✪ ✪ COCKTAILS only € 5 until midnight ✪', '10-6250675de623e.jpg', 200, 'event@mail.com', '+43 123456789', 'U4, Schönbrunner Strasse', 1120, 'Vienna', 'www.events.com', 'Party'),
(13, 'Danube Island Festival', '2017-06-24', '15:00:00', 'The largest European open-air festival will be happening this year! After the year 2020 which was a very difficult year for the music and performing arts scene in Vienna, the planning of the Danube Island Festival 2022 is supposed to be a promising ray of hope in these difficult times.  Prepare to have fun, listen to the music of various genres, discover new artists. Musical numbers, cabaret performances, pop-ups and activities for children, all of this is being prepared for you as of right now….More colorful, more diverse, more interactive and more inclusive will be the 39th Danube Island Festival, which will take place again in 2022 as usual on the last weekend of June. Just in time for the start of summer, the Danube Island will become a venue for 3 days with international and national stars for music, culture, sports and enjoyment – for all generations with free admission.', '11-62506895bab20.jpg', 5000, 'event@mail.com', '+43 123456789', 'Danube Island', 1200, 'Vienna', 'www.events.com', 'Festival'),
(14, 'Forward Festival Vienna', '2022-10-06', '12:00:00', 'The Forward Festival stands for interesting talks and personal interaction with the most renowned minds from the fields of design, creativity and communication, who reveal their experiences, personal success and learnings to the audience. To share thoughts, ideas and inspiration. To keep on moving. To grow together again. Imagine you will be able to see all that at this year’s festival for creativity, design and communication. Forward Festival will return to Vienna on October 6th – 7th 2022 presenting nothing less than a firework of creativity. 2 days, more than 20 speakers, hands-on workshops and exciting side events promise encounters of creativity!', '12-6250695f10738.jpg', 300, 'event@mail.com', '+43 123456789', 'Gartenbaukino', 1010, 'Vienna', 'www.events.com', 'Festival'),
(15, 'Easter Markets in Vienna', '2020-04-11', '10:00:00', 'At the Altwiener Ostermarkt taking place in Freyung, a beautiful old square in the old town, this year once again, Europe’s largest egg mountain can be spotted with around 40,000 painted Easter eggs. In addition, there will be numerous Easter specialities from Easter pinze to baked Easter lamb, arts and crafts, floristry and, for the little ones, an Easter craft workshop and a Punch and Judy stage available. The musical entertainment at this Easter market will start daily from 4.30 pm.  The other Easter market which is very popular is the Ostermarkt Am Hof. There you can experience the true dedication to the Easter traditions with its artfully decorated eggs and flower arrangements and also beautiful handicrafts and down-to-earth culinary delights offered to all visitors. Enjoy not only the wide range of exhibitors at this Easter market, but also the flair of Vienna’s city centre at Ostermarkt am Hof.', '13-62506aa23c9d4.jpg', 2000, 'event@mail.com', '+43 123456789', 'Schönbrunn, Kalvarienbergfest, Ostermarkt Am Hof', 1000, 'Vienna', 'www.events.com', 'Easter'),
(16, 'Opera La Traviata', '2022-05-04', '19:00:00', 'Romantic opera in three acts in Italian language with Slovak and English subtitles. The title roles will be played by Adriana Kučerová as Violetta Valéry, Pavol Bršlík (23 March) Ondrej Šaling (26 March) as Alfredo Germont and Filip Tůma as his father Giorgio.  🎻 Performers: soloists, orchestra and choir of the Slovak National Theatre Opera, conducted by Robert Jindra  Romantic opera in three acts in Italian language with Slovak subtitles. The novel The Lady with the Camellias by Alexandre Dumas the Younger strongly influenced Giuseppe Verdi, who was always looking for subjects with dramatic plots and interesting characters for his operas. The result is the immortal opera La traviata, full of limpid and moving music, in which the world of Italian bel canto is beautifully blended with strong emotional expression. The new production of the operatic evergreen is being prepared by the SND Opera with a stellar soloist cast under the baton of conductor Robert Jindra and an attractive scenic concept by the Italian team led by Roberto Catalano. It tells the story of the bewitched courtesan Violetta, who, seriously ill with tuberculosis, finds true love in the person of the loving Alfredo.', '14-62506bd6aa14e.jpg', 600, 'event@mail.com', '+43 123456789', 'Raffaelgasse 25', 1200, 'Vienna', 'www.events.com', 'Opera'),
(17, 'Dua Lipa Concert', '2022-06-11', '20:00:00', 'Her latest album Future Nostalgia surpassed 294 million streams in just the first week and exceeded 6 billion streams among all songs. Dua Lipa holds the record for the most streamed album in one day by a British artist and is the world’s most listened-to British artist on Spotify and the most listened-to artist on the platform in general. Come and listen to this talented artist – now you do have chance to do so in Vienna.', '15-62506ccfae9be.jpg', 1200, 'event@mail.com', '+43 123456789', 'Wahringer Strasse 54', 1500, 'Vienna', 'www.events.com', 'Concert'),
(18, 'LPCA concert 2022', '2022-05-11', '16:00:00', 'Please make sure that you take into account any requirements for attending events related to the corona pandemic on the day of the concert. These can be found at www.lpca.at and are updated regularly.  Information on how to get here can be found here: https://www.expedithalle.at/lage/  If you are arriving by car, please note that there are only limited parking spaces in the vicinity of the Expedithalle (short-term parking zone). There are other parking options near the Expedithalle in the following public garages:', '16-6251285d19e28.jpg', 750, 'event@mail.com', '+43 123456789', 'Absberggasse 27', 1100, 'Vienna', 'www.events.com', 'Concert'),
(19, 'Begin your Tai Chi journey', '2022-04-10', '17:00:00', 'Movement is the key to maintaining mental and physical health.  This series does seasonal training to help you develop a wide range of skills which will enhance both your health and your practice. We practices basic Tai Chi skills as posting, walking, breathing, stretching, energy work, bone tapping and hand movements.  Even outwardly simple movement when practiced correctly promote organ health, lower body strength and mental focus.  Enjoy learning at home through our online lessons.', '17-625129d881dac.jpg', 50, 'event@mail.com', '+43 123456789', 'Ottakringer Platz 1', 1170, 'Vienna', 'www.events.com', 'Learning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
