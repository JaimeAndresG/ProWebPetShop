-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 22:47:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_admin`
--
CREATE DATABASE IF NOT EXISTS `db_admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_admin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(2, 'PetShops', 1, 'Administración de Django', 1, 'admin-interface/logo/Logo_Mascota-removebg-preview_55nJP7n_IHtc1V1.png', 1, '#B70000', '#FFFFFF', '#FFFFFF', '#FFFFFF', '#C9F0DD', '#89591B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#000000', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#FFFFFF', 1, 1, 1, 'code', 1, 0, 0, '#C0A4A4', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add estado', 8, 'add_estado'),
(30, 'Can change estado', 8, 'change_estado'),
(31, 'Can delete estado', 8, 'delete_estado'),
(32, 'Can view estado', 8, 'view_estado'),
(33, 'Can add tipo pago', 9, 'add_tipopago'),
(34, 'Can change tipo pago', 9, 'change_tipopago'),
(35, 'Can delete tipo pago', 9, 'delete_tipopago'),
(36, 'Can view tipo pago', 9, 'view_tipopago'),
(37, 'Can add tipo producto', 10, 'add_tipoproducto'),
(38, 'Can change tipo producto', 10, 'change_tipoproducto'),
(39, 'Can delete tipo producto', 10, 'delete_tipoproducto'),
(40, 'Can view tipo producto', 10, 'view_tipoproducto'),
(41, 'Can add usuario', 11, 'add_usuario'),
(42, 'Can change usuario', 11, 'change_usuario'),
(43, 'Can delete usuario', 11, 'delete_usuario'),
(44, 'Can view usuario', 11, 'view_usuario'),
(45, 'Can add producto', 12, 'add_producto'),
(46, 'Can change producto', 12, 'change_producto'),
(47, 'Can delete producto', 12, 'delete_producto'),
(48, 'Can view producto', 12, 'view_producto'),
(49, 'Can add carrito', 13, 'add_carrito'),
(50, 'Can change carrito', 13, 'change_carrito'),
(51, 'Can delete carrito', 13, 'delete_carrito'),
(52, 'Can view carrito', 13, 'view_carrito'),
(53, 'Can add perfil', 14, 'add_perfil'),
(54, 'Can change perfil', 14, 'change_perfil'),
(55, 'Can delete perfil', 14, 'delete_perfil'),
(56, 'Can view perfil', 14, 'view_perfil'),
(57, 'Can add sub', 14, 'add_sub'),
(58, 'Can change sub', 14, 'change_sub'),
(59, 'Can delete sub', 14, 'delete_sub'),
(60, 'Can view sub', 14, 'view_sub'),
(61, 'Can add seguimiento', 15, 'add_seguimiento'),
(62, 'Can change seguimiento', 15, 'change_seguimiento'),
(63, 'Can delete seguimiento', 15, 'delete_seguimiento'),
(64, 'Can view seguimiento', 15, 'view_seguimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$xhtjGWZuPtg44oM6pkwqrq$QpRYzhKj4+LBU0Kr4BcvFEHZlwpM5OWFBe89wuH5++o=', '2022-06-28 20:42:19.646689', 1, 'admin', '', '', 'jaim.gonzalez@duocuc.cl', 1, 1, '2022-05-30 16:17:09.678399'),
(3, 'pbkdf2_sha256$320000$KVD40hvRG2a2sVFui7z6V5$aJwbl3Ny1p9r1Y6scrkIMtRgQ4Fk7l8icK35utYEcJw=', NULL, 0, 'trevorzx95', 'jaime', 'gonzalez', 'jaime.22@gmail.com', 0, 1, '2022-05-30 16:20:30.555044'),
(5, 'pbkdf2_sha256$320000$CNA0c61nrum0RUrRZYKUps$fMcCz/ZXmT7PzuYqhfElHy0laBkugeb4wczlbY+omIQ=', '2022-06-22 20:42:49.170411', 0, 'Nachepe', 'nacho', 'castro', 'ig.castro@duocuc.cl', 0, 1, '2022-06-22 13:18:55.455760'),
(6, 'pbkdf2_sha256$320000$z35MY1K58gtDe6bw7Cg9lz$+mx9FaF+Rrqi+rVycY2++y2a9HHSH044uUDAqVCI5sc=', '2022-06-22 20:40:46.796745', 0, 'Nacho', 'nacho', 'castro', 'cgignacioa@gmail.com', 0, 1, '2022-06-22 20:40:41.168248'),
(7, 'pbkdf2_sha256$320000$Wdeo2Sn0jv1JlzXX3NPDc9$xYN41uSUjP4+JBu9ARycErLDjiA8528Rd/CQOCCOHTg=', '2022-06-26 22:34:29.824341', 0, 'nachio', 'nachio', 'castro', 'ignacio.castro.galvez@gmail.com', 0, 1, '2022-06-22 21:02:08.777528'),
(8, 'pbkdf2_sha256$320000$bav31m3fA5m62HeOiITKO3$ZpOJmRpx1mvyVTll1XAGJf4Ji59g0fwYG+7HGBc0HAQ=', '2022-06-25 23:20:29.254352', 0, 'trevorzx96', 'james', 'soto', 'soto@gmail.com', 0, 1, '2022-06-25 23:20:10.273182'),
(9, 'pbkdf2_sha256$320000$Kh5yAd1DnpdJXnT52FOW69$1843yb4YY+U+QPEJz+V5ZVwVF+uoZ2279iClSdP+tbo=', '2022-06-28 20:37:07.933272', 0, 'benjita14', 'benjita', 'antonio', 'benjitaantonio14@gmail.com', 0, 1, '2022-06-28 20:33:27.425141');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_carrito`
--

CREATE TABLE `db_carrito` (
  `codigo` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_estado`
--

CREATE TABLE `db_estado` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_producto`
--

CREATE TABLE `db_producto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_producto`
--

INSERT INTO `db_producto` (`codigo`, `nombre`, `marca`, `precio`, `descripcion`, `stock`, `imagen`, `created_at`, `updated_at`, `tipo_id`) VALUES
(1, 'Collar para mascotas', 'Generica', 5990, 'Collar Resistente', 20, 'productos/HONEY_COLLAR_DOG_001_LhuxvHi_gJu5SV3.jpg', '2022-06-28', '2022-06-28', 2),
(2, 'Pelotita Para perros', 'Generica', 3990, 'Linda pelota', 30, 'productos/pelotita_para_perros_bWQ31yH_phnNobs.png', '2022-06-28', '2022-06-28', 2),
(3, 'Comida para Gatos', 'Generica', 4990, 'Rica comida', 10, 'productos/Comida_para_gatos_uarVOcL_AkWEMl6.png', '2022-06-28', '2022-06-28', 1),
(4, 'Comida para perros', 'Generica', 4990, 'Rica comida', 18, 'productos/Comida_para_perros_WFPnTpA.png', '2022-06-28', '2022-06-28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_seguimiento`
--

CREATE TABLE `db_seguimiento` (
  `codigo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_sub`
--

CREATE TABLE `db_sub` (
  `email` varchar(254) NOT NULL,
  `sub` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_sub`
--

INSERT INTO `db_sub` (`email`, `sub`) VALUES
('cgignacioa@gmail.com', 1),
('ig.castro@duocuc.cl', 1),
('jaim.gonzalez@duocuc.cl', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_pago`
--

CREATE TABLE `db_tipo_pago` (
  `id` bigint(20) NOT NULL,
  `tipopago` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_tipo_producto`
--

CREATE TABLE `db_tipo_producto` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_tipo_producto`
--

INSERT INTO `db_tipo_producto` (`id`, `tipo`) VALUES
(1, 'Comidita'),
(2, 'Jugete bacan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_usuario`
--

CREATE TABLE `db_usuario` (
  `run` varchar(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `sub` tinyint(1) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_usuario`
--

INSERT INTO `db_usuario` (`run`, `nombre`, `apellido`, `email`, `contraseña`, `sub`, `direccion`, `imagen`) VALUES
('18740127', 'Ignacio', 'Castro', 'asd@asd.cl', 'asadqweasd', 0, 'csdfsdf', 'usuarios/grupo_2LNcg3V.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-30 17:14:34.375330', '192203435', '192203435', 1, '[{\"added\": {}}]', 11, 1),
(2, '2022-06-22 20:40:05.199887', '4', 'cliente95', 3, '', 5, 1),
(3, '2022-06-22 20:40:05.202878', '2', 'trevorzx', 3, '', 5, 1),
(4, '2022-06-22 22:34:05.329763', '18740127', '18740127', 1, '[{\"added\": {}}]', 11, 1),
(5, '2022-06-28 20:08:31.651185', '2', 'PetShops', 1, '[{\"added\": {}}]', 1, 1),
(6, '2022-06-28 20:08:42.641808', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 1, 1),
(7, '2022-06-28 20:08:53.631151', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 1, 1),
(8, '2022-06-28 20:09:00.792294', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 1, 1),
(9, '2022-06-28 20:09:09.234493', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(10, '2022-06-28 20:09:20.811195', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(11, '2022-06-28 20:09:27.119262', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(12, '2022-06-28 20:09:33.309033', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(13, '2022-06-28 20:09:43.267553', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Text color\"]}}]', 1, 1),
(14, '2022-06-28 20:37:38.729715', '1', 'Django', 3, '', 1, 1),
(15, '2022-06-28 20:38:43.696387', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background selected color\"]}}]', 1, 1),
(16, '2022-06-28 20:38:52.839964', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background selected color\"]}}]', 1, 1),
(17, '2022-06-28 20:39:07.227936', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(18, '2022-06-28 20:39:22.013780', '2', 'PetShops', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 1, 1),
(19, '2022-06-28 20:42:09.365701', '2', 'PetShops', 2, '[]', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(13, 'app', 'carrito'),
(8, 'app', 'estado'),
(12, 'app', 'producto'),
(15, 'app', 'seguimiento'),
(14, 'app', 'sub'),
(9, 'app', 'tipopago'),
(10, 'app', 'tipoproducto'),
(11, 'app', 'usuario'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-30 16:15:53.683433'),
(2, 'auth', '0001_initial', '2022-05-30 16:15:57.682244'),
(3, 'admin', '0001_initial', '2022-05-30 16:15:58.604751'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-30 16:15:58.620781'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-30 16:15:58.636226'),
(6, 'admin_interface', '0001_initial', '2022-05-30 16:15:58.745326'),
(7, 'admin_interface', '0002_add_related_modal', '2022-05-30 16:15:59.074211'),
(8, 'admin_interface', '0003_add_logo_color', '2022-05-30 16:15:59.238999'),
(9, 'admin_interface', '0004_rename_title_color', '2022-05-30 16:15:59.286541'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2022-05-30 16:15:59.380471'),
(11, 'admin_interface', '0006_bytes_to_str', '2022-05-30 16:15:59.465375'),
(12, 'admin_interface', '0007_add_favicon', '2022-05-30 16:15:59.564896'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-05-30 16:16:00.116556'),
(14, 'admin_interface', '0009_add_enviroment', '2022-05-30 16:16:00.456209'),
(15, 'admin_interface', '0010_add_localization', '2022-05-30 16:16:00.502434'),
(16, 'admin_interface', '0011_add_environment_options', '2022-05-30 16:16:00.831583'),
(17, 'admin_interface', '0012_update_verbose_names', '2022-05-30 16:16:00.864786'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2022-05-30 16:16:00.940567'),
(19, 'admin_interface', '0014_name_unique', '2022-05-30 16:16:00.980585'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2022-05-30 16:16:01.168620'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2022-05-30 16:16:01.257342'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2022-05-30 16:16:01.280651'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2022-05-30 16:16:01.409893'),
(24, 'admin_interface', '0019_add_form_sticky', '2022-05-30 16:16:01.631798'),
(25, 'admin_interface', '0020_module_selected_colors', '2022-05-30 16:16:01.814537'),
(26, 'admin_interface', '0021_file_extension_validator', '2022-05-30 16:16:01.845175'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-05-30 16:16:01.976079'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2022-05-30 16:16:02.078179'),
(29, 'admin_interface', '0024_remove_theme_css', '2022-05-30 16:16:02.128495'),
(30, 'app', '0001_initial', '2022-05-30 16:16:03.855688'),
(31, 'contenttypes', '0002_remove_content_type_name', '2022-05-30 16:16:04.155886'),
(32, 'auth', '0002_alter_permission_name_max_length', '2022-05-30 16:16:04.476203'),
(33, 'auth', '0003_alter_user_email_max_length', '2022-05-30 16:16:04.552602'),
(34, 'auth', '0004_alter_user_username_opts', '2022-05-30 16:16:04.581272'),
(35, 'auth', '0005_alter_user_last_login_null', '2022-05-30 16:16:04.795769'),
(36, 'auth', '0006_require_contenttypes_0002', '2022-05-30 16:16:04.834285'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2022-05-30 16:16:04.870118'),
(38, 'auth', '0008_alter_user_username_max_length', '2022-05-30 16:16:04.924040'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2022-05-30 16:16:05.010699'),
(40, 'auth', '0010_alter_group_name_max_length', '2022-05-30 16:16:05.088616'),
(41, 'auth', '0011_update_proxy_permissions', '2022-05-30 16:16:05.118740'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2022-05-30 16:16:05.177047'),
(43, 'sessions', '0001_initial', '2022-05-30 16:16:05.903542'),
(44, 'app', '0002_alter_usuario_table', '2022-05-30 17:12:24.729255'),
(45, 'app', '0003_carrito_cantidad', '2022-06-06 15:52:02.328158'),
(46, 'app', '0004_perfil', '2022-06-22 13:17:54.299879'),
(47, 'app', '0005_rename_perfil_sub_alter_sub_table', '2022-06-22 13:30:32.309282'),
(48, 'app', '0006_remove_sub_user_sub_mail', '2022-06-22 13:32:39.181870'),
(49, 'app', '0007_delete_sub', '2022-06-22 13:32:39.191372'),
(50, 'app', '0008_sub', '2022-06-22 13:32:51.813457'),
(51, 'app', '0009_rename_mail_sub_email', '2022-06-22 14:32:47.710687'),
(52, 'app', '0002_carrito_usuario', '2022-06-22 21:47:52.400782'),
(53, 'app', '0003_seguimiento', '2022-06-25 23:06:47.684181');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1vrlowdfc1v238xc6h49qhyk79977p3b', '.eJxVjDsOwyAQBe9CHSHwYntJmd5nQLt8gpMIJGNXUe4eIblI2jcz7y0cHXt2R4ubW4O4Ci0uvxuTf8bSQXhQuVfpa9m3lWVX5EmbXGqIr9vp_h1karnXdmK2yQa2YWCIidDqgTwBIKUJ5xlGbxDZgPYYTFKMymjNUSkDoxGfLwFLN9U:1o5bWR:Os4O28oT_WoG2PTbyi7toxnSHDati9JEhWgpLykadYM', '2022-07-10 23:18:31.696912'),
('5a1hghehbi1effec96xfwzq2lmgpbfx7', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o5FEZ:2OhPWLzJcEMQseoK9yIfK5ew2iByDwlJvQ3S5ZWvNUI', '2022-06-25 23:31:05.684781'),
('5acwy4a1crb9pupvjxha0fv2xxdjpxzj', '.eJxVjUsOwjAMRO-SNYrq9JO6S_acIXLiiIZPguoWgRB3p5VYwHbezJuXcrTMo1skTi6xGpRVu9_MUzjHvAE-UT4WHUqep-T1VtFfKvpQOF723-6fYCQZ13UgtsaSsR0TYU8AsY0QAACN7ww2xNgDBR-w475GaJoK2hoZo0cImzQvV3dPkmYSNcB6IlEklezi45ampxrq6v0B8P1E0Q:1o5aVL:-HsNHSaOyUTUo57ipqjWQ2aEnl1IYucWGX6tn_9u2dA', '2022-06-26 22:13:49.449167'),
('7lhuget4g7zdd4n5mqnz22xwirp6qqth', '.eJxVjDsOwyAQBe9CHSHwYntJmd5nQLt8gpMIJGNXUe4eIblI2jcz7y0cHXt2R4ubW4O4Ci0uvxuTf8bSQXhQuVfpa9m3lWVX5EmbXGqIr9vp_h1karnXdmK2yQa2YWCIidDqgTwBIKUJ5xlGbxDZgPYYTFKMymjNUSkDoxGfLwFLN9U:1o5FU5:MqOX9BdFDXF6ZdDqpit7mcOqY27F_o4s4Tc2-6iVm68', '2022-07-09 23:46:37.391080'),
('8o4zfnhskpnz82yyh4or7aahm4w9b60h', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o49DD:ATEkV2ka8nWkiORnPqZtVk7X7TqZehFx15BlAoNWIUM', '2022-06-22 22:53:09.831830'),
('bxgtp38hx5kix3t1wtxhornf5v5px37a', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o0mFl:Luq1upSdl3n145TIsP_wtzMOowVLCXeKMJGxELPNcms', '2022-06-13 15:45:51.999356'),
('d9szxpru3kwys0xyoy1sybgafep6aa7p', '.eJxVjUsOwjAMRO-SNYrq9JO6S_acIXLiiIZPguoWgRB3p5VYwHbezJuXcrTMo1skTi6xGpRVu9_MUzjHvAE-UT4WHUqep-T1VtFfKvpQOF723-6fYCQZ13UgtsaSsR0TYU8AsY0QAACN7ww2xNgDBR-w475GaJoK2hoZo0cImzQvV3dPkmYSNcB6IlEklezi45ampxrq6v0B8P1E0Q:1o5bUm:6h-8PsMWNzs2dBrjPFncMC2D2pjonGS3mFf1EaCGFjs', '2022-06-26 23:17:18.592449'),
('dzoht20lo0wif8lo1eqe3lcilyz85bw1', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o49C0:CdiDikXMk8g0s1POAXrw8Nqvn9Yi3q6L8CxVlq2Wyvc', '2022-06-22 22:51:54.999350'),
('eowmtxw1wgdlg57kemfm7ogfp89m9rgi', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o5aQ4:1YbkgGUAsKa_JbHcpz2RqQ8u1l9OSKXjCh_oQ70Za60', '2022-06-26 22:08:22.842183'),
('fp36v7bwoysbm9u4nm2jqjymp1ob8y7a', '.eJxVjUsOwjAMRO-SNYrq9JO6S_acIXLiiIZPguoWgRB3p5VYwHbezJuXcrTMo1skTi6xGpRVu9_MUzjHvAE-UT4WHUqep-T1VtFfKvpQOF723-6fYCQZ13UgtsaSsR0TYU8AsY0QAACN7ww2xNgDBR-w475GaJoK2hoZo0cImzQvV3dPkmYSNcB6IlEklezi45ampxrq6v0B8P1E0Q:1o5aY5:OhSnPScd7iBPFAI1dMLiO1dJ1PgXZ4VLxnj2OGwtmt0', '2022-06-26 22:16:39.708238'),
('ggv0a72dn9cmb5hibwn4dzzhxe3c6888', '.eJxVjEEOwiAQRe_C2hCHUmBcuu8ZyDBDpGogKe3KeHdt0oVu_3vvv1SkbS1x63mJs6iL8ur0uyXiR647kDvVW9Pc6rrMSe-KPmjXU5P8vB7u30GhXr41k3jjyXgnRBgIII8ZGADQJGfQkmAA4sToJAwI1p5hHFAwJwQW9f4A6zQ31A:1o4ClA:Qw5F9F9qwYUW9XW-pcICpoeFKBbmPs0fYqqWKx5NL7g', '2022-07-07 02:39:56.961111'),
('hkcj08z5iql886gd7s8o3909q5htwhbo', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o0mNZ:g6KIgGhft5Tha7M05LsD1HTBqLZNCtABFrFGCd8QwCA', '2022-06-13 15:53:55.074509'),
('lwi96oyubv075uf6402lnm5w6mfq2t0i', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o4972:8zbmd3EDGsdmPDOBrmPxy_cOASgU9MZgy_3RNS4fvjk', '2022-06-22 22:46:46.017403'),
('orjsx2espbjc1y8uncg61f6az2dauqo9', '.eJxVjUsOwjAMRO-SNYrq9JO6S_acIXLiiIZPguoWgRB3p5VYwHbezJuXcrTMo1skTi6xGpRVu9_MUzjHvAE-UT4WHUqep-T1VtFfKvpQOF723-6fYCQZ13UgtsaSsR0TYU8AsY0QAACN7ww2xNgDBR-w475GaJoK2hoZo0cImzQvV3dPkmYSNcB6IlEklezi45ampxrq6v0B8P1E0Q:1o5aT3:rvZAluUMQNj0H3XdXFW-Yz5rw1s9JauHu9KMV9rE_nY', '2022-06-26 22:11:27.059117'),
('qbofd0lp4x0t50v97i4pplo3s1dwht9a', '.eJxVjDsOwyAQBe9CHSHwYntJmd5nQLt8gpMIJGNXUe4eIblI2jcz7y0cHXt2R4ubW4O4Ci0uvxuTf8bSQXhQuVfpa9m3lWVX5EmbXGqIr9vp_h1karnXdmK2yQa2YWCIidDqgTwBIKUJ5xlGbxDZgPYYTFKMymjNUSkDoxGfLwFLN9U:1nviwe:zhqONa95Jc_Vqe2TfLoDRI-i7WA7fmRI2DXwT5lbNWY', '2022-06-13 17:12:44.795308'),
('rqyptpscpa8754kl8nzaibm0b5ylskto', '.eJxVjEEOwiAQRe_C2hCHUmBcuu8ZyDBDpGogKe3KeHdt0oVu_3vvv1SkbS1x63mJs6iL8ur0uyXiR647kDvVW9Pc6rrMSe-KPmjXU5P8vB7u30GhXr41k3jjyXgnRBgIII8ZGADQJGfQkmAA4sToJAwI1p5hHFAwJwQW9f4A6zQ31A:1o4sZb:jha3pgAYiVTo3KgNgsdjsvFGgEzkSv2hwMrkSG5j83M', '2022-07-08 23:18:47.519953'),
('wdu796oc7azq2h8y4ae2p3ocyxdivn8o', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o46dT:ybMqIfPrTyNbBfirGYZ5BHOWsNNE2hCAPJYat0IwEyQ', '2022-06-22 20:08:05.180187'),
('zl37sdcazfd9cpu6ckgxwfcd9hnjgipx', '.eJxVjcsOwiAURP-FtSEgtIUu3fsN5F4eFh9gelujMf67bdKFbufMnHkzB_M0uJni6HJgPZNs95sh-EssKwhnKKfKfS3TmJGvFb5R4sca4vWwdf8EA9Cwrm2LaJMNaMMeVUxgrNyDB6UMpNZ0nWq8Nga1kt4EnQQaoaXEKIRWjV6kZb65R6Y8AbFeLicUiXItLj7veXyxXonPFwc5RNI:1o0mMC:5GxR0ZxJlJ8CunwK7C8g-GOW6M8MmUi01BJZAC8M42c', '2022-06-13 15:52:30.593107');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `db_carrito`
--
ALTER TABLE `db_carrito`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `db_carrito_producto_id_f29eebf3_fk_db_producto_codigo` (`producto_id`);

--
-- Indices de la tabla `db_estado`
--
ALTER TABLE `db_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `db_producto_tipo_id_b9ba0546_fk_db_tipo_producto_id` (`tipo_id`);

--
-- Indices de la tabla `db_seguimiento`
--
ALTER TABLE `db_seguimiento`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `db_seguimiento_producto_id_1ef9ef8d_fk_db_producto_codigo` (`producto_id`);

--
-- Indices de la tabla `db_sub`
--
ALTER TABLE `db_sub`
  ADD UNIQUE KEY `db_sub_email_002c499b_uniq` (`email`);

--
-- Indices de la tabla `db_tipo_pago`
--
ALTER TABLE `db_tipo_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_tipo_producto`
--
ALTER TABLE `db_tipo_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_usuario`
--
ALTER TABLE `db_usuario`
  ADD PRIMARY KEY (`run`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_carrito`
--
ALTER TABLE `db_carrito`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `db_estado`
--
ALTER TABLE `db_estado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_seguimiento`
--
ALTER TABLE `db_seguimiento`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `db_tipo_pago`
--
ALTER TABLE `db_tipo_pago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_tipo_producto`
--
ALTER TABLE `db_tipo_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `db_carrito`
--
ALTER TABLE `db_carrito`
  ADD CONSTRAINT `db_carrito_producto_id_f29eebf3_fk_db_producto_codigo` FOREIGN KEY (`producto_id`) REFERENCES `db_producto` (`codigo`);

--
-- Filtros para la tabla `db_producto`
--
ALTER TABLE `db_producto`
  ADD CONSTRAINT `db_producto_tipo_id_b9ba0546_fk_db_tipo_producto_id` FOREIGN KEY (`tipo_id`) REFERENCES `db_tipo_producto` (`id`);

--
-- Filtros para la tabla `db_seguimiento`
--
ALTER TABLE `db_seguimiento`
  ADD CONSTRAINT `db_seguimiento_producto_id_1ef9ef8d_fk_db_producto_codigo` FOREIGN KEY (`producto_id`) REFERENCES `db_producto` (`codigo`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_admin\",\"table\":\"db_sub\"},{\"db\":\"db_admin\",\"table\":\"db_carrito\"},{\"db\":\"db_admin\",\"table\":\"db_usuario\"},{\"db\":\"db_admin\",\"table\":\"auth_user_user_permissions\"},{\"db\":\"db_admin\",\"table\":\"auth_user_groups\"},{\"db\":\"db_admin\",\"table\":\"auth_user\"},{\"db\":\"db_admin\",\"table\":\"auth_permission\"},{\"db\":\"db_admin\",\"table\":\"auth_group_permissions\"},{\"db\":\"db_admin\",\"table\":\"auth_group\"},{\"db\":\"db_admin\",\"table\":\"admin_interface_theme\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-28 20:46:43', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":246}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
