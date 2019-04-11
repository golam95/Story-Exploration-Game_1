-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2018 at 01:13 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `story_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_story` text NOT NULL,
  `location_a` varchar(100) NOT NULL,
  `location_b` varchar(100) NOT NULL,
  `location_c` varchar(100) NOT NULL,
  `location_d` varchar(100) NOT NULL,
  `location_track` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_story`, `location_a`, `location_b`, `location_c`, `location_d`, `location_track`) VALUES
(1, 'My name is khan. What I have done.', 'A', 'B', 'C', '\r\nd', 'd'),
(2, 'My name is B. What I have done.', 'AA', 'BB', 'CC', 'DD', 'DD');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
CREATE TABLE IF NOT EXISTS `progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT 'Not Available',
  `complete` varchar(50) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `name`, `complete`, `type`) VALUES
(12, 'Imran', '0', 'Character: Story 2 > Modules');

-- --------------------------------------------------------

--
-- Table structure for table `st_character`
--

DROP TABLE IF EXISTS `st_character`;
CREATE TABLE IF NOT EXISTS `st_character` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_story` varchar(450) NOT NULL,
  `ch_a` varchar(100) NOT NULL,
  `ch_b` varchar(100) NOT NULL,
  `ch_c` varchar(100) NOT NULL,
  `ch_d` varchar(100) NOT NULL,
  `ch_track` varchar(100) NOT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_character`
--

INSERT INTO `st_character` (`ch_id`, `ch_story`, `ch_a`, `ch_b`, `ch_c`, `ch_d`, `ch_track`) VALUES
(1, 'Kazi Nazrul Islam is the national poet of Bangladesh who is especially recognized as a Bidrohi \r\nKobi (rebel poet) around the country. Nazrul is a famous poet, musician and philosopher of\r\nBangladesh.\r\nDo you:', 'National poet (Dukhu Mian)', 'National poet (Kazi Nazrul Islam)', 'both', 'None of them', '1'),
(2, 'Kazi Nazrul Islam was born on 24 May 1899 in Churuila, Burdwan, Bengal Presidency \r\n(West Bengal) to Kazi Faqeer Ahmed and Zahida Khatun. He was born in a well-known Muslim\r\nfamily and Nazrul’s father was Imam.\r\nDo you:', 'Born in 24 May 1899', 'Born in 24 May 1895', 'both', 'None of them', '2'),
(3, 'In 1910 Dukhu Mian returned to school. He studied for some time at the Raniganj Searsole Raj School  \r\nand then at Mathrun High English School (subsequently, Nabinchandra Institution), where the \r\npoet  kumudranjan mallik was headmaster.Unfortunately, Nazrul again had to leave school for\r\n financial reasons. After leaving Mathrun he is believed to have joined a group of kaviyals. \r\nDo You:', 'Nazrul returned school 1910', 'Dukhu Mian returned school 1920', 'both', 'None of them', '3'),
(4, 'While working at the tea stall, Nazrul became acquainted with Rafizullah, a police inspector of\r\nAsansol, who succeeded in persuading the young man to return to school. In 1914 Nazrul got \r\nadmitted to class VII of Darirampur School at Trishal in mymensingh.\r\nDo You:', 'Nazrul admitted to class VII', 'Dukhu Mian admitted to class VII', 'both', 'None of them', '4'),
(5, 'Nazrul joined the 49 Bengal Regiment and was posted to Karachi. His life in the army lasted \r\nabout two years and a half from the close of 1917 to March-April 1920. During this time, from\r\nan ordinary soldier he rose to havildar (battalion quartermaster).\r\nDo You:', 'Kazi Nazrul Islam joined Regiment ', 'Dukhu Mian joined Regiment ', 'both', 'None of them', '5'),
(6, 'During his stay in the army, Nazrul learnt Persian from the regiment\'s Punjabi moulvi, practised \r\nmusic with other musical-minded soldiers to the accompaniment of local and foreign instruments \r\nand at the same time pursued literary activities in both prose and poetry.\r\nDo You:', 'Kazi Nazrul join army ', 'Dukhu Mian join army', 'both', 'None of them', '6'),
(7, 'Nazrul\'s stories and poems written at Karachi cantonment were published in different journals:\r\n his first prose writing \'Baunduler Atmakahini\' (saogat, May 1919), first published poem \'Mukti\' \r\n(bangiya mussalman sahitya patrika, July 1919).\r\nDo You: ', '\'Mukti\' is poem', '\'Mukti\' is not poem', 'both', 'None of them', '7'),
(8, 'During his stay at Karachi, Nazrul subscribed to various literary journals published from Kolkata\r\n: Prabasi, Bharatbarsa, Bharati, Manasi, Marmavani, sabujpatra, Saogat and Bangiya \r\nMussalman Sahitya Patrika.\r\nDo You: ', 'Nazrul stay karachi', 'Dukhu Mian stay karachi', 'both', 'None of them', '8'),
(9, 'During his stay at Karachi, Nazrul had books by Rabindranath and sharat chandra chattopadhyay\r\nas well as writings of the Persian poet Hafiz. In fact, it was at Karachi cantonment that Nazrul\'s\r\nliterary activities truly began.\r\nDo You: ', 'Nazrul had books by Rabindranath', 'Dukhu Mian had books by Rabindranath', 'both', 'None of them', '9'),
(10, 'At the end of the First World War, Nazrul returned to Bengal and began the career of a \r\nlitterateur-journalist in Kolkata. His first accommodation was at the office of the bangiya\r\nmussalman sahitya samiti at 32 College Street, where he roomed with muzaffar ahmed, an \r\nofficial of the organisation.\r\nDo You:', 'Nazrul returned to Bengal', 'Dukhu Mian returned to Bengal', 'both', 'None of them', '10');

-- --------------------------------------------------------

--
-- Table structure for table `st_character1`
--

DROP TABLE IF EXISTS `st_character1`;
CREATE TABLE IF NOT EXISTS `st_character1` (
  `ch1_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch1_story` varchar(400) NOT NULL,
  `ch1_a` varchar(100) NOT NULL,
  `ch1_b` varchar(100) NOT NULL,
  `ch1_c` varchar(100) NOT NULL,
  `ch1_d` varchar(100) NOT NULL,
  `ch1_track` varchar(100) NOT NULL,
  PRIMARY KEY (`ch1_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_character1`
--

INSERT INTO `st_character1` (`ch1_id`, `ch1_story`, `ch1_a`, `ch1_b`, `ch1_c`, `ch1_d`, `ch1_track`) VALUES
(1, 'Rahman, Bangabandhu Sheikh Mujibur (1920-1975) Father of the nation and first president of \r\nBangladesh (26 March 1971 to 11 January 1972). Sheikh Mujibur Rahman was born on 17 March\r\n1920 in the village Tungipara under Gopalganj subdivision in the district of Faridpur.\r\nDo You:- ', 'Bangabandhu first president of Bangladesh', 'Bangabandhu is not first president of Bangladesh', 'None', 'Rahman first president of Bangladesh', '1'),
(2, 'Bangabandhu Sheikh Mujibur Rahman father Sheikh Lutfar Rahman was a serestadar in the\r\ncivil court of Gopalganj. Mujib, the third among six brothers and sisters, had his primary  \r\neducation in the local Gimadanga School. \r\nDo You:-', 'His father name is Sheikh Lutfar Rahman', 'His father name is not Sheikh Lutfar Rahman', 'None', 'Need help', '2'),
(3, 'Bangabandhu Sheikh Mujibur Rahman early education suffered for about four years due to eye\r\n problems. He passed his Matriculation from Gopalganj Missionary School in 1942, Intermediate\r\n of Arts from Calcutta Islamia College in 1944 and BA from the same college in 1947.\r\n Do You:- ', ' Bangabandhu complete BA in 1947', ' Bangabandhu complete BA in 1948', ' Bangabandhu complete BA in 1949', 'None of then', '3'),
(4, ' Mujib showed the potential of leadership since his school life. While a student of Gopalganj \r\nMissionary School, AK Fazlul Huq, the then Chief Minister of Bengal, came to visit the school \r\n(1938). \r\nDo You:-', 'Bangabandhu student of Gopalganj Missionary School', 'Bangabandhu student of Gopalganj Missionary College', 'Bangabandhu student of Gopalganj Missionary University', 'None of them', '4'),
(5, 'While a student in Islamia College he was elected general secretary of the College Students \r\nUnion in 1946. He was an activist of the Bengal Provincial Muslim League and a member of the \r\nAll India Muslim League Council from 1943 onwards. In politics he had been a fervent follower \r\nof hs suhrawardy.\r\nDo You:-', 'His college name is Islamia', 'His college name is Dhaka', 'His college name is Bangla', 'None of them', '5'),
(6, 'During the general elections of 1946, Sheikh Mujib was deputed by the Muslim League to work \r\nfor the party candidates in the Faridpur district. After partition (1947), he got himself admitted \r\ninto the University of Dhaka to study law but was unable to complete it. \r\nDo You:-', 'His university name is Dhaka', 'His university name is Rajshi', 'His university name is Comila', 'None of them', '6'),
(7, 'Sheikh Mujib was one of the first among the language movement detainees (11 March 1948). \r\nHis address on 21 September 1955 in the Pakistan Constituent Assembly on the question of \r\nBangla language is noteworthy. Claiming the right to speak in his mother tongue, Sheikh \r\nMujibur Rahman said:\r\nDo You:-', 'Bangabandhu is the first language movement detainees', 'Bangabandhu is not the first language movement detainees', 'Need help', 'None of them', '7'),
(8, ' We want to speak in Bengali here, whether we know any other language or not it matters little \r\nfor us. If we feel that we can express ourselves in Bengali we will speak always in Bengali even \r\nthough we can speak in English also. If that is not allowed, we will leave the House, but Bengali \r\nshould be allowed in this house; that is our stand.\r\nDo You:-', 'Bangladesh peopls mother tounge is Bangla', 'Bangladesh peopls mother tounge is English', 'Bangladesh peopls mother tounge is Arabic', 'None of them', '8'),
(9, 'In another address (25 August 1955) what Sheikh Mujib said in the Constituent Assembly in \r\nprotest against the change of nomenclature of the province from East Bengal to East Pakistan \r\nis equally pertinent.\r\nDo You:-', 'Sheikh Mujib said in the Constituent Assembly', 'Rahaman said in the Constituent Assembly', ' Need help', ' None of them', '9'),
(10, '\' Sir, you will see that they want to place the word \'East Pakistan\' instead of \'East Bengal\'. \r\nWe have demanded so many times that you should use [East] Bengal instead of [East] Pakistan. \r\nThe word \'Bengal\' has a history, has a tradition of its own....\'\r\nDo You:-', 'The word \'Bengal\' has a history', 'The word \'English\' has a history', 'The word \'Arabic\' has a history', 'None of them', '10');

-- --------------------------------------------------------

--
-- Table structure for table `st_location`
--

DROP TABLE IF EXISTS `st_location`;
CREATE TABLE IF NOT EXISTS `st_location` (
  `lo_id` int(11) NOT NULL AUTO_INCREMENT,
  `lo_story` varchar(400) NOT NULL,
  `lo_a` varchar(100) NOT NULL,
  `lo_b` varchar(100) NOT NULL,
  `lo_c` varchar(100) NOT NULL,
  `lo_d` varchar(100) NOT NULL,
  `lo_track` varchar(100) NOT NULL,
  PRIMARY KEY (`lo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_location`
--

INSERT INTO `st_location` (`lo_id`, `lo_story`, `lo_a`, `lo_b`, `lo_c`, `lo_d`, `lo_track`) VALUES
(1, 'Sundarban is the biggest mangrove forest in the world. Sundarban is in South West part of \r\nBangladesh, in the district of greater Khulna. India shares a bit of the forest with Bangladesh.\r\nThe total area is about 38,000 square kilo meters. Sundarban is a large block of littoral forests.\r\nDo you:-', 'Sundarban is in South West part of Bangladesh', 'Sundarban is in North West part of Bangladesh', 'Sundarban is in East West part of Bangladesh', 'None', '1'),
(2, 'The beauty lies in its unique natural surrounding. The Sundarbans are a part of the world\'s\r\n largest delta formed by the rivers Ganges, Brahmaputra and Meghna. Thousands of meandering\r\n streams, creeks, rivers and estuaries have enhanced its charm. \r\nDo you:-', 'Some meandering include Sundarban', 'Many meandering include Sundarban', 'Both', 'None of them', '2'),
(3, 'Sundarban is the natural habitat of the world’s famous Royal Bengal Tiger, spotted deer, \r\ncrocodiles, jungle fowl, wild boar, lizards and many more. Migratory flock of Siberian ducks \r\nflying over thousands of sail boats loaded with timber, Golpata, fuel wood, honey, shell and fish\r\nfurther add to the serene natural beauty of the Sundarban.\r\nDo you:-', 'Royal Bengal Tiger is an animal of Sundarban', 'Spotted deer is an animal of Sundarban', 'Crocodiles  is an animal of Sundarban', 'All of them', '3'),
(4, 'The Sundarban Reserved Forest (SRF), occupying an area of around 6,017 square kilometres or \r\n600,000 hectares, represents 51 percent of the total reserved forest area of Bangladesh and as \r\nsuch forms a rich and diverse ecosystem with potential for sustainable natural resource \r\nmanagement.\r\nDo you:-', 'Sundarban Reserved Forest', 'Sundarban not a reserved Forest', 'None', 'Both', '4'),
(5, 'The main tourist point is Hiron Point (Nilkamal) for watching tiger, deer, monkey, crocodiles, \r\nbirds and natural beauty. Katka is for watching deer, tiger, crocodiles, varieties of birds and \r\nmonkey. \r\nDo you:-', 'tourist point is Hiron Point', 'tourist point is Hera Point', 'None', 'tourist point is Hironi Point', '5'),
(6, 'Morning and evening symphony of wild fowls. Vast expanse of grassy meadows running from \r\nKatka to Kachikhali (Tiger Point) provide opportunities for wild tracking. Tin Kona Island for \r\ntiger and deer. Dublar Char (Island) for fishermen.  It is a beautiful island where herds of \r\nspotted deer are often seen to graze.\r\nDo you:-', 'Sundarban has deer,Tiger etc', 'Sundarban has no animal', 'Sundarban has no tree', 'None of them', '6'),
(7, 'The vegetation is largely of mangrove type and encompasses a variety of plants including trees, \r\nshrubs, grasses, epiphytes, and lianas. Being mostly evergreen, they possess more or less similar\r\nphysiological and structural adaptations. \r\nDo you:-', 'Sundarbon is the largest mangrove forest', 'Sundarbon is the small mangrove forest', 'None of them', 'Both', '7'),
(8, 'Sundorbon is the largest mangrove forest in the world.The forest stretches over Bangladesh and\r\nIndia but Bangladesh has large portion of it.The areaof sundorbon in our country is6017sq km,\r\nappoxiomately 4% of the total area.\r\nDo you:-', 'Sundarbon is the largest mangrove forest', 'Sundarbon is the small mangrove forest', 'None of them', 'Both', '8'),
(9, 'The sundorbon is stand on the southwest reagon in Bangladesh .sundri,garan goalpata is the tree \r\nof sundorbon.sundirbon covers 40% of the forest in Bangladesh.Royalbengal tiger,mankey,deer \r\nis the miin animal of sundorbon . \r\nDo you:-', 'Sundirbon covers 40% of the forest in Bangladesh', 'Sundirbon covers 50% of the forest in Bangladesh', 'Sundirbon covers 400% of the forest in Bangladesh', 'Sundirbon covers 60% of the forest in Bangladesh', '9'),
(10, 'Royalbengaltiger is famous for alll over the world.The impact of the sundorbon on the \r\nBangladesh is mainfald.It has it\'s impact on the economy,environment,and biodiversity Most of \r\nthe people of the southwest reagon depend on    sundorbon directly or indircetly.\r\nDo you:-', 'Most of the people of the southwest reagon depend on Sundorbon', 'Most of the people of the west reagon depend on Sundorbon', 'Most of the people of the East reagon depend on Sundorbon', 'Most of the people of the North reagon depend on Sundorbon', '10');

-- --------------------------------------------------------

--
-- Table structure for table `st_location1`
--

DROP TABLE IF EXISTS `st_location1`;
CREATE TABLE IF NOT EXISTS `st_location1` (
  `lo1_id` int(11) NOT NULL AUTO_INCREMENT,
  `lo1_story` varchar(400) NOT NULL,
  `lo1_a` varchar(100) NOT NULL,
  `lo1_b` varchar(100) NOT NULL,
  `lo1_c` varchar(100) NOT NULL,
  `lo1_d` varchar(100) NOT NULL,
  `lo1_track` varchar(100) NOT NULL,
  PRIMARY KEY (`lo1_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_location1`
--

INSERT INTO `st_location1` (`lo1_id`, `lo1_story`, `lo1_a`, `lo1_b`, `lo1_c`, `lo1_d`, `lo1_track`) VALUES
(1, 'Cox’s Bazar is a District under Chittagong Division, which is famous for its longest unbroken \r\nsandy sea beach. It is located 150 km south of the industrial port- Chittagong. Cox’s Bazar is \r\nconsidered as having the longest sea beach in the world, with a total of 121 kilometer long. \r\nDo you:-\r\n', 'Cox’s Bazar is a largest sea beach', 'Cox’s Bazar is not largest sea beach', 'Jaflong is a largest sea beach', 'None of them', '1'),
(2, ' The name Cox’s Bazar was derived from its founder, Captain Cox. He founded the very \r\nattractive beach in 1798. Then the Cox’s Bazar beach started only as a small port and health \r\nresort.\r\nDo you:-', 'Captain Cox founded Cox\'s bazar', 'Captain dox founded Cox\'s bazar', 'None of them', 'Captain fox founded Cox\'s bazar', '2'),
(3, 'Though the beach is considered to be the longest beach in the world, it has been the least \r\ncrowded among the other beaches. Here, visitors can enjoy the relaxing breeze of the Bay of \r\nBengal Sea and the peacefulness of the place. \r\nDo you:-', 'Cox\'s bazar longest beach', 'Cox\'s bazar middle beach', 'Cox\'s bazar small beach', 'None of them', '3'),
(4, 'The Cox’s bazar beach certainly has the finest leisure it can offer to each of its visitors. People\r\ncan take a timely stroll along the lengthened stretch of the beach and enjoy the view of the \r\namazing seascape. Visitors can also enjoy water sport activities like scuba diving, surfing, and\r\ntry some boat rides.\r\nDo you:-', 'people visit at cox\'s bazar', 'people enjoy at cox\'s bazar', 'Both', 'None of them', '4'),
(5, 'There are also other wonderful places to see around the Cox’s beach bazar. One of these is the\r\nbeautiful Himchari waterfall, located 18 kilometer south of Cox’s Bazar sea beach.\r\nDo you:-', 'Cox\'s bazar have Himchari waterfall', 'Cox\'s bazar have no Himchari waterfall', 'Both', 'None of them', '5'),
(6, 'This is the most visited place in the district, with its beautiful refreshing green hills and the \r\nwonderful water fall, where visitors can bathe and swim apart from the sea itself.\r\nDo you:-', 'people enjoy green hills at cox\'s bazar', 'people enjoy wonderfull water fall at cox\'s bazar ', 'None of them', 'Both', '6'),
(7, 'Another attraction is the Moheshkhali Island near the Cox’s beach bazar coast. The island can \r\nbe reached via speedboat. Here, visitors can view the breath-taking view of the island. With the \r\nbright green color of its mangrove forest that will surely amaze everyone who come to see the \r\nplace. This is definitely the next best thing to explore after one’s beach trip.\r\nDo you:-', 'Moheshkhali  is a Island', 'Moheshkhali is a Beach', 'None of them', 'Both', '7'),
(8, 'Cox’s Beach Bazar really is the place best recommended for people who seeks for serene, \r\nsoberness and relaxing vacation. Every Cox’s Beach Bazar trip will surely please and satisfy \r\neveryone who visits here.\r\nDo you:-', 'people satisfy to visit Cox\'s bazar', 'people feel boring to visit Cox\'s bazar', 'Both', 'None of them', '8'),
(9, 'Laboni beach is the longest and main beach of Cox’s Bazar. It is the closest sea beach to the \r\ntown. At here a traveler can easily enjoy the scenic beauty of Bay of Bengal Sea. Its a place for \r\nenjoyment, many people come here around the year including the foreigners.\r\nDo you:-', 'Labon is one kind of beach  ', 'Jaflong is one kind of beach', 'Both', 'None of them', '9'),
(10, 'You can enjoy sunbathe, surfing, jogging, cycling and swimming in this beach. It is best place \r\nfor swimming and relaxation. Not only in day time, you can enjoy beauty of sea at night from \r\nthis beach as it is totally safe place for tourist. The beach is well appreciated during sunsets and \r\nsunrise, where people can witness the sea as it changes its colors twice in a day. \r\nDo you:-', 'people surfing, jogging at cox\'s bazar', 'cox\'s bazar is best plac for swimming', 'people enjoy beauty of cox\'s bazar', 'All of them', '10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
