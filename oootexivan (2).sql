-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 14 2025 г., 13:04
-- Версия сервера: 5.7.39-log
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oootexivan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id_task` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `namess` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id_task`, `title`, `description`, `start_date`, `end_date`, `namess`, `id_status`) VALUES
(2, 'Информация', NULL, '2025-11-05', NULL, 'Иванов Иван Алексарович', 4),
(3, 'Информация', NULL, '2025-11-05', NULL, 'Глушков глеб Сергеевич', 4),
(4, 'Код программа ', NULL, '2025-11-14', NULL, 'Глеб Глушков Сергеевич', 4),
(7, '1', NULL, '2025-11-06', NULL, '1', 4),
(8, '3', NULL, '2025-11-07', NULL, '3', 4),
(9, '222', NULL, '2025-11-28', NULL, '222', 4),
(10, '222', NULL, '2025-11-28', NULL, '222', 4),
(11, '222', NULL, '2025-11-28', NULL, '222', 4),
(12, '222', NULL, '2025-11-28', NULL, '222', 4),
(13, 'Код программа ', NULL, '2026-01-07', NULL, 'Алексадр Тихоненко ', 4),
(14, 'Информация', NULL, '2025-12-05', NULL, 'Алексадр Тихоненко ', 4),
(15, 'Код программа ', NULL, '2025-11-26', NULL, 'Глеб Глушков Сергеевич', 4),
(16, 'Информация', NULL, '2025-11-08', NULL, 'Алексадр Тихоненко ', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id_status` int(11) NOT NULL,
  `namee` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_statuses`
--

INSERT INTO `task_statuses` (`id_status`, `namee`) VALUES
(1, 'Посрочно'),
(2, 'В работа '),
(3, 'Закончить уволить'),
(4, 'Завершить');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'сотрудниками'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_users`, `name`, `email`, `password`, `role`) VALUES
(1, 'ivan', 'avtoloma2033@yandex.ru', '091202Aa', 'руководителями'),
(4, '222', 'dasha@mail.ru', '091202Aa', 'сотрудниками');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `id_status` (`id_status`);

--
-- Индексы таблицы `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id_status`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `id_status` FOREIGN KEY (`id_status`) REFERENCES `task_statuses` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
