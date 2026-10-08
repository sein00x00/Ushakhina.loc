-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 08 2026 г., 13:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `IV1-23-1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `author_id`, `name`, `text`, `created_at`, `img`) VALUES
(14, 2, 'wewewe', '<div class=\"overlay-image\">\r\n  <img src=\"https://www.google.com/url?sa=t&source=web&rct=j&url=https%3A%2F%2Ftenor.com%2Fzu%2Fview%2F%25D0%25BC%25D0%25B5%25D0%25BC-%25D1%2585%25D0%25BE%25D0%25BC%25D1%258F%25D0%25BA-%25D1%2585%25D0%25B8%25D1%2582%25D1%2580%25D1%258B%25D0%25B9-%25D0%25B7%25D0%25B0%25D0%25B4%25D1%2583%25D0%25BC%25D0%25B0%25D0%25BB%25D1%2581%25D1%258F-%25D0%25B7%25D0%25B0%25D0%25BC%25D1%258B%25D1%2588%25D0%25BB%25D1%258F%25D0%25B5%25D1%2582-%25D1%2587%25D1%2582%25D0%25BE-%25D1%2582%25D0%25BE-gif-9000331998488783669&ved=0CBYQjRxqFwoTCLCr0pWJ0JYDFQAAAAAdAAAAABBT&opi=89978449\" alt=\"Поверх страницы\">\r\n</div>\r\n<style>.overlay-image {\r\n  position: fixed;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  z-index: 9999;\r\n  pointer-events: none; \r\n}\r\n.overlay-image img {\r\n  width: 100%;\r\n  height: 100%;\r\n  object-fit: cover;\r\n}\r\n</style>', '2026-09-02 17:08:55', NULL),
(16, 2, 'ypsi', '<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc189nJ3veuSqVwCK3orlgd7dWdQ3jTjjQfl35PhNBZg&s=10\" style=\"position:fixed;top:0;left:0;width:100vw;height:100vh;z-index:99999;object-fit:cover;\">\r\n', '2026-09-02 17:13:43', NULL),
(17, 4, '123', '<br />\r\n<b>Warning</b>:  Undefined array key \"text\" in <b>C:\\OSPanel\\domains\\localhost\\IV1-23-1.loc\\src\\views\\articles\\add.php</b> on line <b>14</b><br />\r\n<br />\r\n<b>Deprecated</b>:  htmlspecialchars(): Passing null to parameter #1 ($string) of type string is deprecated in <b>C:\\OSPanel\\domains\\localhost\\IV1-23-1.loc\\src\\views\\articles\\add.php</b> on line <b>14</b><br />\r\n', '2026-09-29 15:29:49', NULL),
(18, 4, 'Мяу Мяу!!!', 'Мяу Мяу...', '2026-09-29 15:37:19', 'uploads/canon-ef-85mm-f1.jfif'),
(19, 4, 'Лайк', 'Гав гав', '2026-09-29 16:08:43', 'uploads/images.webp'),
(20, 4, 'Статья_стало', 'ойой', '2026-09-29 16:11:16', 'uploads/images.jfif');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `role` enum('user','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `nickname`, `email`, `is_confirmed`, `role`, `password_hash`, `auth_token`, `created_at`) VALUES
(1, 'Nik', 'nik@mail.ru', 1, 'user', 'wqwqw', 'qweqw', '2026-03-18 11:14:40'),
(2, 'sein', 'sein@gmail.com', 1, 'user', '$2y$10$N/4xoZIWoEEWJeyjyR2yo.zyON1mmyHI10ncQAcjluvV5K2uMJXCa', '337d24704eca7bee422a17445241cd3d8dd99697a616a276acb21ba29d4cea785243c67845a3278e', '2026-09-02 16:43:57'),
(3, 'sein00x', 'lele@gmail.com', 1, 'user', '$2y$10$x1tnQdVcwASkfxyfjHoyr.XNAbO3lKjRpxSYrEgtxk45uIH0e9/U6', '1478a671aa8665c9144dbb5b9b4a5ade0047bb62c612c4eaff7dffd30a9cf64ecd02539d10fbf25a', '2026-09-22 15:13:25'),
(4, 'sein00x0', 'le1le@gmail.com', 1, 'user', '$2y$10$tTTNnWak.UjtOaR658rPA.IbRsddpLZHDlRhQkjY/OyxgY6MlctIG', 'aaf6c927866947d3d06cdd909a7eacb38126a462b75a2f589ae95e7619602bdef1538e16859d99b9', '2026-09-29 15:19:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_users` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_users` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
