

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `kmc bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'kiran', 'bhanu', 100, '2022-06-17 18:58:27'),
(2, 'kiran', 'bhanu', 100, '2022-06-17 19:00:31'),
(3, 'bhanu', 'nithish', 4000, '2022-06-17 19:01:32'),
(4, 'kiran', 'nithish', 4000, '2022-06-17 19:06:15'),
(5, 'vikram', 'bhanu', 400, '2022-06-17 19:28:24'),
(6, 'vikram', 'bhanu', 400, '2022-06-17 19:30:31'),
(7, 'vikram', 'bhanu', 100, '2022-06-17 19:31:22'),
(8, 'Santhanam', 'Amar', 470, '2022-06-17 07:39:58'),
(9, 'Amar', 'kiran', 400, '2022-06-17 09:37:08'),
(10, 'kiran', 'Amar', 500, '2022-06-17 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'bhanu', 'bhans@gmail.com', 53400),
(2654, 'Amar', 'amar@gmail.com', 49070),
(3624, 'vikram', 'vikram@gmail.com', 60000),
(4542, 'Anirudh', 'anirudh@gmail.com', 65700),
(5345, 'kiran', 'kiran@gmail.com', 15000),
(5465, 'Arjun', 'arjun@gmail.com', 23400),
(6554, 'nithish', 'nithish@gmail.com', 10000),
(7875, 'Santhanam', 'santa@gmail.com', 86570),
(8877, 'Siraj', 'miyan@gmail.com', 70000),
(9245, 'sundar', 'washi@gmail.com', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;
