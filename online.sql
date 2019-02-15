-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2019 г., 19:50
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `online`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_title`) VALUES
(1, 'Спорт'),
(2, 'Культура'),
(3, 'Политика'),
(4, 'Наука'),
(5, 'Финансы');

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `id` int(10) UNSIGNED NOT NULL,
  `lecture_id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `lecture_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Материал', '<h3>Что такое сайт?</h3>\r\n    <p>Это несколько связанных между собой страниц с текстом, картинками и всем остальным, что бывает в интернете. Браузер скачал эту статью в виде страницы на языке HTML и считал специальные разметки — наборы букв и символов, преобразовав их в нечто более симпатичное, чем просто текст. Поэтому вы видите аккуратно отформатированный текст с фоном, картинками, ссылками, кнопками и так далее</p>\r\n\r\n    <h3>Где хранятся файлы сайта</h3>\r\n    <p>Точно также как и у вас на компьютере, эти файлы не могут висеть в воздухе. Интернет не является чем-то абстрактным, это всего лишь много устройств, объединенных в сеть. Поэтому, для файлов любого сайта необходимо место. Обычно, файлы сайтов размещаются на веб-серверах</p>\r\n\r\n    <h3>Что такое веб-сервер</h3>\r\n    <p>\r\n        <i>Веб-сервер — сервер, принимающий запросы от клиентов, обычно веб-браузеров, и выдающий им ответы, как правило, вместе с HTML-страницей, изображением, файлом, медиа-потоком или другими данными.</i>\r\n    </p>\r\n    <p>Простыми словами веб-сервер - это большой компьютер, который работает непрерывно. Он принимает запросы от любого браузера и выдает HTML содержимое запрашиваемой страницы.</p>\r\n    <p class=\"text-center\"><img src=\"/img/server.jpg\"></p>\r\n    <p>Как правило, для размещения одного или нескольких небольших сайтов -  нужен только кусочек сервера. Есть много специальных компаний, которые предоставляют часть сервера для размещения файлов сайта. Такие компании называются <i>Хостинг-провайдерами</i>, а место под файлы, вместе со всеми необходимыми программами, нужными для работы сайта, называется <i>хостинг</i>. </p>\r\n\r\n\r\n    <h3>Адрес сайта или доменное имя</h3>\r\n    <p>Даже если у вас есть файлы сайта и они лежат где-то, этого недостаточно. Чтобы люди могли видеть всю прелесть, спрятанную в этих файлах, им нужно показать где эта информация находится, точно также, как вы указываете своим друзьям адрес вашего дома, чтобы они могли его найти.</p>\r\n    <p>Например, it-club-centre.com — это адрес данного сайта. Занимаются назначением адресов для всех сайтов в сети специальные компании – регистраторы. А сами адреса называются доменами или доменными именами. Мы можем купить себе любое, свободное на данный момент, доменное имя.</p>\r\n\r\n    <br>\r\n    <p><b>Давайте закрепим этот материал простой аналогией с жильем. Вы и всё что у вас есть дома – это внутреннее содержимое вашего сайта. Вам необходимо где-то жить, в квартире или доме – вашему сайту тоже нужно где-то жить, это хостинг. Чтобы вас найти, нужен адрес вашей квартиры – чтобы найти ваш сайт, нужно знать ее доменное имя. Структура объединения домов и квартир - это город, для сайта - веб-сервер</b></p>\r\n\r\n\r\n    <h3>Браузеры</h3>\r\n    <p>Браузер, Веб-обозреватель, Web browser — специальная программа, предназначенная для просмотра веб-сайтов</p>\r\n    <p>Более простым языком Браузер — это программа, которая у вас открыта в данный момент и с помощью которой вы имеете возможность сейчас читать данный материал. То есть браузер является проводником между всемирной сетью Интернет и пользователем. Именно он позволяет получать доступ ко всему множеству доступной в Интернете информации.</p>\r\n    <h4>Современные браузеры</h4>\r\n    <ul>\r\n        <li>Google Chrome</li>\r\n        <li>Mozilla Firefox</li>\r\n        <li>Internet Explorer</li>\r\n        <li>Opera</li>\r\n        <li>Apple Safari</li>\r\n    </ul>\r\n    <p class=\"text-center\"><img src=\"/img/browsers.jpg\"></p>', NULL, NULL),
(2, 1, 'Домашнее задание', ' <ol>\r\n        <li>Необходимо ознакомиться с материалом данной <a href=\"http://it-club-centre.com/lecture/1/content\">лекции</a></li>\r\n        <li>Необходимо установить программу FileZilla, если она ещё не установлена на Ваш компьютер</li>\r\n        <li>Необходимо установить соединения с сервером через программу FileZilla, доступы к серверу были отправлены на Вашу почту. Описание как выполнить соединение с сервером с помощью программы FileZilla можно прочесть по <a href=\"http://it-club-centre.com/articles/filezilla-settings\">ссылке</a> </li>\r\n\r\n    </ol>', NULL, NULL),
(3, 1, 'Полезные ссылки', '<h3>Домены</h3>\r\n    <p>Проверка домена на SprintHost — <a href=\"http://sprinthost.ru/whois.html\" target=\"_blank\">sprinthost.ru/whois.html</a></p>\r\n    <p>Проверка домена на RegRu — <a href=\"http://reg.ru\" target=\"_blank\">reg.ru</a></p>\r\n    <p>Проверка домена на TimeWeb — <a href=\"http://timeweb.com/ru/services/domain_registration/\" target=\"_blank\">timeweb.com/ru/services/domain_registration/</a></p>\r\n    <p>Интересно знать - <a href=\"https://tjournal.ru/flood/47697-15-most-expensive-domains\" target=\"_blank\">Самые дорогие домены в истории</a></p>\r\n\r\n    <h3>Сервисы для проверки ip-адресов</h3>\r\n    <p><a href=\"https://2ip.ru/lookup/\" target=\"_blank\">Проверить ip адрес сайта</a></p>\r\n    <p><a href=\"https://2ip.ru/\" target=\"_blank\">Проверить ip адрес Вашей сети</a></p>\r\n    <p><a href=\"\" target=\"_blank\"></a></p>\r\n\r\n\r\n    <h3>Установка необходимых программ</h3>\r\n    <p><a href=\"https://filezilla.ru/get/\" target=_blank>FileZilla</a> — бесплатный FTP клиент </p>\r\n    <p><a href=\"https://www.sublimetext.com/3\" target=_blank>Sublime Text 3</a> — текстовый редактор</p>\r\n    <p><a href=\"https://drive.google.com/file/d/1LvcfS5y_L9h0e54OtTcNwqAq8lFtvkC6/view?usp=sharing\" target=_blank>OpenServer</a> — локальный сервер</p>', NULL, NULL),
(4, 6, 'Домашнее задание', ' <ol>\r\n        <li>Необходимо ознакомиться с материалом данной <a href=\"http://it-club-centre.com/lecture/6/content\">лекции</a></li>\r\n        <li>Необходимо установить программу FileZilla, если она ещё не установлена на Ваш компьютер</li>\r\n        <li>Необходимо установить соединения с сервером через программу FileZilla, доступы к серверу были отправлены на Вашу почту. Описание как выполнить соединение с сервером с помощью программы FileZilla можно прочесть по <a href=\"http://it-club-centre.com/articles/filezilla-settings\">ссылке</a> </li>\r\n\r\n    </ol>', NULL, NULL),
(5, 2, 'Этапы создания сайта\r\n', '<ol> 	<li> 		<b>Определение целей веб-сайта</b> 		<p>На данном этапе необходимо определить для чего нужен сайт, какие задачи он должен решать. </p> 		<p>После определения целей сайта нужно представить <i>аудиторию сайта</i>, кто будет посещать сайт: ученики, студенты или люди преклонного возраста</p> 		<p>Определение и как можно более подробное описание аудитории сайта дает возможность разработать правильный дизайн для проекта, а также выбрать правильное направление для написания текстов. Очень важно говорить с аудиторией на понятном ей языке. И это требование в разы важнее в Интернете, чем в реальной жизни, т.к. в онлайне вас и вашего конкурента разделяет только клик мыши.</p> 	</li>  	<li><b>Создание дизайн-макета веб-сайта</b> 		<p>После определения целей сайта, а также кто будет посещать сайт - необходимо нарисовать картинку-дизайн как будет выглядеть сайт.</p> 	</li>  	<li><b>Верстка сайта</b> 		<p>После того, как утвердили дизайн сайта - за дело принимается верстальщик, это тот человек, который переводит дизайн-макет на язык разметки HTML </p> 	</li>  	<li><b>Наполнение сайта информацией</b> 		<p>На этом этапе информация, которую мы хотим донести до аудитории, размещается на сайте и становится доступной для просмотра.</p> 	</li>  	<li><b>Расположение сайта в сети Интернет</b> 		<p>Данный этап необязательно выполняется после проведения всех вышеперечисленных работ. Он может проводиться параллельно с любым из этапов. Он заключается в том, что файлы сайта располагаются на хостинге.</p> 	</li>  	<li><b>Тестирование сайта</b> 		<p>Этот этап можно осуществить как до, так и после размещения сайта на хостинге. На этом этапе выявляются все ошибки и недочеты в программировании и написании текстов</p> 	</li>  </ol>', NULL, NULL),
(6, 2, 'Теги', '<p>Чтобы браузер при отображении документа понимал, что имеет дело не с простым текстом, а с языком разметки html для этого и применяются теги.</p>\r\n<p><i>Теги</i> - это своего рода команды для браузера, которые \"говорят\" как и где отобразить информацию, изображение, ссылку или какой-то другой элемент</p>\r\n<p>Синтаксис написания тегов:</p>\r\n<p>\r\n	<img src=\'/img/tag.jpg\'>\r\n</p>\r\n<p>Парные теги состоят из двух частей - открывающий и закрывающий тег. Разрешается в один тег вкладывать другие теги </p>\r\n<p><b>Теги можно писать как прописными, так и строчными символами</b>. Любые теги, а также их атрибуты нечувствительны к регистру, поэтому вы можете сами выбирать, как писать. Но, рекомендуется писать в одном стиле на протяжении всего сайта. </p>\r\n<p><b>Неизвестные теги</b>. Если какой-либо тег будет написан неправильно, то браузер его проигнорирует и отобразит текст так, будто неизвестного тега не было в коде</p>\r\n<p></p>\r\n<p></p>', NULL, NULL),
(7, 2, 'Структура html-кода', '<p>Если открыть любую веб-страницу, то она будет содержать в себе типичный набор элементов, которые не меняются от вида и целей сайта. Ниже приведен пример кода простого документа, содержащего основные теги.</p>\r\n<p class=\"text-center\"><img src=\'/img/html-code-1.jpg\'></p>\r\n<p>Разберем каждый элемент по отдельности</p>\r\n <p class=\"ex\">&lt;!DOCTYPE html &gt;</p>\r\n <p>Данный элемент предназначен для указания типа текущего документа. Это необходимо для браузера, чтоб он понимал как правильно считывать html теги. </p>\r\n <p>Сам HTML существует в нескольких версиях. Чтобы браузер «не путался» и понимал, согласно какому стандарту отображать веб-страницу и необходимо в первой строке кода задавать DOCTYPE.</p>\r\n\r\n <hr>\r\n\r\n  <p class=\"ex\">&lt;html&gt;</p>\r\n  <p>Тег <i>&lt;html&gt;</i> определяет начало HTML-файла, внутри него хранится заголовок (<i>&lt;head&gt;</i>) и тело документа (<i>&lt;body&gt;</i>).</p>\r\n   <hr>\r\n\r\n   <p class=\"ex\">&lt;head&gt;</p>\r\n   <p>Заголовок документа, как еще называют блок <i>&lt;head&gt;</i>, может содержать текст и теги, но содержимое этого раздела не показывается напрямую на странице. Данный раздел нужен для написания правил для поисковиков, а также для хранения описания страницы сайта, подключение стилей</p>\r\n\r\n    <hr>\r\n\r\n   <p class=\"ex\">&lt;title&gt;Пример веб-страницы&lt;/title&gt;</p>\r\n\r\n   <p>Тег <i>&lt;title&gt;</i> определяет заголовок веб-страницы, его вы можете найти на вкладке в браузере</p>\r\n\r\n   <hr>\r\n   <p class=\"ex\">&lt;body&gt;</p>\r\n   <p>Тело документа <i>&lt;body&gt;</i> предназначено для размещения тегов и содержательной части веб-страницы.</p>\r\n\r\n', NULL, NULL),
(8, 2, 'Домашнее задание', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `content_links`
--

CREATE TABLE `content_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lecture_id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED DEFAULT NULL,
  `content_links_id` int(10) UNSIGNED DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_links`
--

INSERT INTO `content_links` (`id`, `name`, `lecture_id`, `content_id`, `content_links_id`, `icon_class`, `created_at`, `updated_at`) VALUES
(1, 'Материал', 1, 1, NULL, 'fa-file-alt', NULL, NULL),
(2, 'Домашнее задание', 1, 2, NULL, 'fa-tasks', NULL, NULL),
(3, 'Полезные ссылки', 1, 3, NULL, 'fa-link', NULL, NULL),
(5, 'Материал', 6, NULL, NULL, 'fa-file-alt', NULL, NULL),
(6, 'Домашнее задание', 6, 4, NULL, 'fa-tasks', NULL, NULL),
(7, 'Полезные ссылки', 6, 3, NULL, 'fa-link', NULL, NULL),
(8, 'Что такое сайт', 6, 1, 5, NULL, NULL, NULL),
(9, 'Материал', 2, NULL, NULL, 'fa-file-alt', NULL, NULL),
(10, 'Этапы создания сайта', 2, 5, 9, 'fa-file-alt', NULL, NULL),
(11, 'html-теги', 2, 6, 9, NULL, NULL, NULL),
(12, 'Структура html-кода', 2, 7, 9, NULL, NULL, NULL),
(13, 'Домашнее задание', 2, 8, NULL, 'fa-tasks', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`, `start_date`, `created_at`, `updated_at`) VALUES
(1, 'Основы сайтостроения. HTML, CSS. Первая группа', '2019-02-02 02:11:47', '2019-02-02 00:11:47', '2019-02-02 00:11:47'),
(3, 'Основы сайтостроения. HTML, CSS. Вторая группа', '2019-02-02 02:11:47', '2019-02-02 00:11:47', '2019-02-02 00:11:47');

-- --------------------------------------------------------

--
-- Структура таблицы `courses_users`
--

CREATE TABLE `courses_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` tinyint(3) UNSIGNED NOT NULL,
  `course_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `courses_users`
--

INSERT INTO `courses_users` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(3, 6, 1, NULL, NULL),
(4, 7, 1, NULL, NULL),
(5, 8, 1, NULL, NULL),
(6, 9, 1, NULL, NULL),
(7, 10, 1, NULL, NULL),
(8, 11, 1, NULL, NULL),
(9, 12, 1, NULL, NULL),
(10, 14, 1, NULL, NULL),
(11, 13, 1, NULL, NULL),
(12, 15, 1, NULL, NULL),
(13, 16, 1, NULL, NULL),
(14, 17, 1, NULL, NULL),
(15, 18, 1, NULL, NULL),
(16, 19, 1, NULL, NULL),
(17, 20, 1, NULL, NULL),
(18, 21, 1, NULL, NULL),
(19, 22, 1, NULL, NULL),
(20, 23, 1, NULL, NULL),
(21, 5, 1, NULL, NULL),
(22, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `lectures`
--

CREATE TABLE `lectures` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` text NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL COMMENT '1-active,2-disable,3-active_by_date',
  `action_date` datetime DEFAULT NULL COMMENT 'дата лекции',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lectures`
--

INSERT INTO `lectures` (`id`, `theme`, `course_id`, `status`, `action_date`, `created_at`, `updated_at`) VALUES
(1, 'Вводное занятие. Рассположение сайта в сети Интернет', 1, 1, '2019-02-03 14:53:03', NULL, NULL),
(2, 'Начинаем создавать сайт', 1, 1, '2019-02-10 04:47:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, ' Изучение основных тэгов для оформления текста', 1, 2, '2019-02-17 04:47:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Блочная верстка сайта', 1, 2, '2019-02-24 04:47:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Вводное занятие. Рассположение сайта в сети Интернет', 3, 1, '2019-02-02 14:53:03', NULL, NULL),
(7, 'Начинаем создавать сайт', 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название операции',
  `user_id` varchar(40) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_26_215411_create_roles_table', 1),
(4, '2017_11_27_145718_create_statuses_user_table', 1),
(5, '2017_12_04_125846_create_logs_table', 1),
(6, '2019_02_02_003936_create_courses_table', 1),
(7, '2019_02_02_020213_create_courses_users_table', 1),
(9, '2019_02_02_120751_create_lectures_table', 2),
(10, '2019_02_09_223208_create_content_links_table', 3),
(11, '2019_02_09_223502_create_content_table', 4),
(13, '2019_02_09_223954_create_breadcrumbs_table', 5),
(14, '2019_02_10_092128_edit_users_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `publication` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('draft','published') DEFAULT NULL,
  `category` enum('sport','culture','politics','science','finances') DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `author` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `publication`, `status`, `category`, `content`, `author`) VALUES
(1, 'Важная новость', '2019-02-15 08:55:02', 'draft', 'science', 'Сегодня пятница, а завтра будет суббота...', 'Я'),
(21, 'a', '2019-02-14 22:00:00', 'draft', NULL, 'sadfsafsadf', ''),
(22, 'a', '2019-02-15 22:00:00', 'draft', NULL, 'sadfsafsadf', ''),
(23, 'f', '2019-02-14 22:00:00', 'published', NULL, 'f', 'f'),
(24, 'f', '2019-02-14 22:00:00', 'published', 'sport', 'f', 'f');

-- --------------------------------------------------------

--
-- Структура таблицы `news2`
--

CREATE TABLE `news2` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `publication` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('draft','published') DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `content` varchar(1000) NOT NULL,
  `author` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news2`
--

INSERT INTO `news2` (`id`, `title`, `publication`, `status`, `category_id`, `content`, `author`) VALUES
(1, 'Новоть', '2019-02-15 15:54:24', 'draft', 1, 'Просто новость', 'я');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT 'Название роли',
  `name_translit` varchar(250) DEFAULT NULL COMMENT 'Название роли в транслите',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `name_translit`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', 'admin', '2019-02-02 02:11:46', '2019-02-02 02:11:46'),
(2, 'Учитель', 'teacher', '2019-02-02 02:11:46', '2019-02-02 02:11:46'),
(3, 'Ученик', 'pupil', '2019-02-02 02:11:46', '2019-02-02 02:11:46');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses_user`
--

CREATE TABLE `statuses_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `statuses_user`
--

INSERT INTO `statuses_user` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Активный', '2019-02-02 02:11:46', '2019-02-02 02:11:46'),
(2, 'Не подтвржденный', '2019-02-02 02:11:46', '2019-02-02 02:11:46'),
(3, 'Заблокированный', '2019-02-02 02:11:46', '2019-02-02 02:11:46');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fio` varchar(100) DEFAULT NULL,
  `login` varchar(150) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL COMMENT 'Телефон',
  `password` varchar(100) DEFAULT NULL,
  `role_id` smallint(6) NOT NULL,
  `statuses_user_id` varchar(40) DEFAULT NULL COMMENT 'связка с таблицей statuses_user',
  `last_enter_date` datetime DEFAULT NULL COMMENT 'дата входа',
  `interests` text,
  `domain` varchar(255) DEFAULT NULL,
  `ftp_login` varchar(255) DEFAULT NULL,
  `ftp_pass` varchar(255) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip адрес последнего входа',
  `registration_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fio`, `login`, `email`, `phone`, `password`, `role_id`, `statuses_user_id`, `last_enter_date`, `interests`, `domain`, `ftp_login`, `ftp_pass`, `ip`, `registration_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', 'admin', 'admin@admin.ru', NULL, '$2y$10$RcL53lr6OZJ8EpBWOFoAj.Aib9783ZEdpvgV1gNITlO7//MBpzE3O', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:50', '2019-02-03 08:20:50'),
(2, '2222', 'pupil', 'pupil@pupil.ru', 'sdfsdfsdf', '$2y$10$QLVB4QBw2xw3Ne578ZeU9.YGqEJqLdL06YmfMP5DX9kJeeLerXVgy', 3, '1', '2019-02-10 09:04:18', NULL, NULL, NULL, NULL, NULL, NULL, 'hn54ze7RyI4BgQ9G0AQ7twhMmQWQ16t1jUEAVDybFahuExd0is0Hw3N4qYnZ', '2019-02-03 08:20:50', '2019-02-10 09:50:34'),
(3, 'Ученик', 'teacher', 'teacher@teacher.ru', NULL, '$2y$10$YZueN.yhSXRLf085PVYPu.etEC18.LBHD.4NMWS/irTFI9LScJemq', 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:50', '2019-02-03 08:20:50'),
(4, 'Задорожняя Варя', 'ituser_1', 'pupil@pupil.ru', NULL, '$2y$10$5t.lfZJ9Q0KzC6LHrQS/JuXo.TpMUjxHcwvRNIzRuUkYPdTga6/X6', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:50', '2019-02-03 08:20:50'),
(5, 'Ускова Ангелина', 'ituser_2', 'pupil@pupil.ru', NULL, '$2y$10$OLA5qztHHW34t9XUaHHhJOUL2WsC.YC5ZZ9E2oUdM5NHDVhnn9L8.', 3, '1', '2019-02-09 07:08:24', NULL, NULL, NULL, NULL, NULL, NULL, 'KdFtoKCiiBu9k3HTOhCJGv9dGZ2kcPZck3RgtBgJoNLA1iD7Tpw7k8rVQMtG', '2019-02-03 08:20:50', '2019-02-09 07:08:24'),
(6, 'Клоков', 'ituser_3', 'pupil@pupil.ru', NULL, '$2y$10$QeRzrs.lENeJt.zw9ygoiubhK/1xDSIi4XnMZTZvInsVYJPFDvMO2', 3, '1', '2019-02-07 17:54:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:50', '2019-02-07 17:54:07'),
(7, 'Рябов Илья', 'ituser_4', 'pupil@pupil.ru', NULL, '$2y$10$5KfIIgiiaLc7ix.U/Jwkdu6sSH1.F.ZrH5/jZsQeMBMAfqThsDHla', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:50', '2019-02-03 08:20:50'),
(8, 'Романенко Настя', 'ituser_5', 'pupil@pupil.ru', NULL, '$2y$10$Ynf.O9NXZdAkW8Roslr4V.6kSX7qx286HRdea4XdD3OVItjcxMQmO', 3, '1', '2019-02-07 14:28:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-07 14:28:50'),
(9, 'Михаил', 'ituser_6', 'pupil@pupil.ru', NULL, '$2y$10$izS1QpChtuv28YLSjXVdoObEBRuffQYmdLIGl.VvQyqr14RsBUdjq', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(10, 'Ушаков', 'ituser_7', 'pupil@pupil.ru', NULL, '$2y$10$Ai/aglQQs/2koscPftdx/.CTOeOytnS/daJgoeSY28hs3BW0XYD3.', 3, '1', '2019-02-08 16:06:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-08 16:06:49'),
(11, 'Левакова', 'ituser_8', 'pupil@pupil.ru', NULL, '$2y$10$wnFZYRfKL3tGo8jRw3tOHOFM2CEvfZuFNr/kXnea2rtj0lY6o0n36', 3, '1', '2019-02-05 08:40:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-05 08:40:11'),
(12, 'Левит', 'ituser_9', 'pupil@pupil.ru', NULL, '$2y$10$Fvd9CvNC46zBodPf1nCFZeJjuj.q6b0CokOu7nl55vcBWjl0p4ydi', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(13, 'Александренков', 'ituser_10', 'pupil@pupil.ru', NULL, '$2y$10$le2PgxSeokQngNgMCspuF.MslhaMXXWgRJQell2F6UH/MR1qch2Qm', 3, '1', '2019-02-06 14:42:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-06 14:42:50'),
(14, 'Щекотихин', 'ituser_11', 'pupil@pupil.ru', NULL, '$2y$10$/Q/b0JPOJyGt/Loa77SGa.JIHchFILupZV31QRSYc0N3MFsPJOeVy', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(15, 'Шарабан Алина', 'ituser_12', 'pupil@pupil.ru', NULL, '$2y$10$UgjyMc5ppDHHA..R5yRRNOyEV344a8OH5.bxUD.cyTvqT800FSW0.', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(16, 'Губарев Роман', 'ituser_13', 'pupil@pupil.ru', NULL, '$2y$10$dRMrY60QSpuG3jKaepY7QeDjkSoHHTeKJyhO7VDsJCc1i9n/eVpNe', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(17, 'Чумачок', 'ituser_14', 'pupil@pupil.ru', NULL, '$2y$10$pgvhEhkNQNckemHScJa68OuyqP3VtG6Q54HGkhNkAobFZrMcOW5R2', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:51', '2019-02-03 08:20:51'),
(18, 'Филатов', 'ituser_15', 'pupil@pupil.ru', NULL, '$2y$10$ZZdHkxF7x.SMr6zPBy9.W.PPpIBIANse2xt5Dv6PGifqaGXi1dMlm', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52'),
(19, 'Задорожний', 'ituser_16', 'pupil@pupil.ru', NULL, '$2y$10$kjdoEwkqww/7frXnIPq.a.YTVzYcS64AUlDuaOqV4IBNhkLx/BP2e', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52'),
(20, 'Литвинов', 'ituser_17', 'pupil@pupil.ru', NULL, '$2y$10$MFPr7kzKojqIjVIhOxDpf.stlrMVQkd/ubtyAgZN.woQ8A/A3L8vO', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52'),
(21, 'Ученик', 'user_18', 'pupil@pupil.ru', NULL, '$2y$10$e3.pm3Ue4/s8jfvcZ5cDeeL/HluFONw2KKK6DMP9I1fgsnAAqEIRC', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52'),
(22, 'Ученик', 'user_19', 'pupil@pupil.ru', NULL, '$2y$10$x2MVx/qihH6eECxxcGoBvOByS..CO2NIMXaRTSs4zfeDQtCaqwvru', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52'),
(23, 'Ученик', 'user_20', 'pupil@pupil.ru', NULL, '$2y$10$SfyNnzRhCZ99ybq8Pa28Q.hVStqb3Y1SftUGWr0CtKuMzMw6f0SNy', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-03 08:20:52', '2019-02-03 08:20:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content_links`
--
ALTER TABLE `content_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news2`
--
ALTER TABLE `news2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statuses_user`
--
ALTER TABLE `statuses_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `content_links`
--
ALTER TABLE `content_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `courses_users`
--
ALTER TABLE `courses_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `news2`
--
ALTER TABLE `news2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `statuses_user`
--
ALTER TABLE `statuses_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news2`
--
ALTER TABLE `news2`
  ADD CONSTRAINT `news2_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
