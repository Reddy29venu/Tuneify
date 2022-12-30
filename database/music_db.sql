SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Party', 'Heat up the dance floor', 'party.jpg', '2022-12-25 08:26:53'),
(2, 'Romantic', 'Come fall in love', 'romantic.webp', '2022-12-25 08:29:13'),
(3, 'Emotional', 'connect with anger/sadness/fear', 'emotional.jpg', '2022-12-25 08:59:17'),
(4, 'Melody', 'relaxes your mind and body', 'melody.jpg', '2022-12-25 08:59:17');




CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 'Playlist 1', 'workout', 'workout.jpg', '2022-12-25 08:52:36'),
(2, 2, 'Playlist 2', 'Evening walk', 'evening_walk.jpg', '2022-12-25 08:58:35'),
(3, 2, 'My Playlist', 'Sample', 'sample.jpg', '2022-12-25 08:59:23');




CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(1, 6, 1, '2022-12-25 08:52:51'),
(2, 2, 2, '2022-12-25 08:58:44'),
(3, 3, 2, '2022-12-25 08:59:46'),
(4, 3, 1, '2022-12-25 08:59:46');




CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `stars` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `stars`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(1, 1, 1, 'Besharam Rang', 'Shah rukh khan & Deepika padukone', 'Film:Pathaan', 'Besharam_Rang.mp3', 'Besharam_rang.jpg', 2022-12-25),
(2, 1, 1, 'Jhoome Jo Pathaan', 'Shah rukh khan & Deepika padukone', 'Film:Pathaan', 'Jhoome_Jo_Pathaan.mp3', 'Jhoome_Jo_Pathaan
.jpg', 2022-12-25),
(3, 1, 2, 'Mehabooba', 'Yash & Srinidhi shetty', 'Film:KGF Chapter2', 'Mehabooba.mp3', 'Mehabooba
.jpg', 2022-12-25),
(4, 1, 3, 'Bekhayali', 'Shahid Kapoor & Kiara Advani', 'Film:Kabir Singh', 'Bekhayali.mp3', 'Bekhayali
.webp', 2022-12-25),
(5, 1, 4, 'Munjaane Manjalli', 'Kichcha Sudeep', 'Film: Just Maaht Maathal', 'Munjaane_Manjalli.mp3', 'Munjaane_Manjalli
.jpg', 2022-12-25);




CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', '', 'Male', '1234567890', '', 'abhi@admin.com', '4a509ef56b0eca500f4139fe7aec74de', 1, 'yash.jpg', '2022-12-25 16:50:06'),
(2, 'abhi', ' ', 'Male', '0987654321', '', 'abhi@gmail.com', '4a509ef56b0eca500f4139fe7aec74de', 2, 'yash.jpg', '2022-12-25 08:54:15');


ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

