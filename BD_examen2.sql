/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.22-MariaDB : Database - examen2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examen2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `examen2`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(8,'2022_03_10_012600_create_empleados_table',1),
(13,'2019_12_14_000001_create_personal_access_tokens_table',2),
(14,'2022_03_10_012747_create_ventas_table',2),
(15,'2022_03_10_231201_create_productos_table',2),
(16,'2022_03_11_031904_create_sessions_table',2),
(17,'2022_03_19_211613_create_tienda_table',2);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('LZUxWl0OiLJX1E14qzFQ3rfcOgPY2tJYCRuC9ab9',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjBobTJyamdvQnQ5YWNiQWhPWGZsRFpyY2MxSkJPQlBZWHpKb082aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=',1647900760);

/*Table structure for table `tb_productos` */

DROP TABLE IF EXISTS `tb_productos`;

CREATE TABLE `tb_productos` (
  `id_producto` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` int(11) NOT NULL,
  `costo` decimal(8,2) NOT NULL,
  `id_tienda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_productos` */

insert  into `tb_productos`(`id_producto`,`nombre_producto`,`clave`,`costo`,`id_tienda`,`created_at`,`updated_at`) values 
(1,'Azùcar',2147483647,30.00,'1',NULL,NULL),
(2,'Sal',2147483647,25.00,'1',NULL,NULL),
(3,'Arroz',2147483647,20.00,'1',NULL,NULL),
(4,'Harina',2147483647,25.00,'1',NULL,NULL),
(5,'Fideos',2147483647,15.00,'1',NULL,NULL),
(6,'Leche',2147483647,25.00,'1',NULL,NULL),
(7,'Aceite',2147483647,35.00,'1',NULL,NULL),
(8,'Condimentos',2147483647,25.00,'1',NULL,NULL),
(9,'Salsa Picante',2147483647,25.00,'1',NULL,NULL),
(10,'Salsa de Tomate',2147483647,35.00,'1',NULL,NULL),
(11,'Huevos',2147483647,45.00,'2',NULL,NULL),
(12,'Levadura',2147483647,35.00,'2',NULL,NULL),
(13,'Pan',2147483647,25.00,'2',NULL,NULL),
(14,'Carne',2147483647,45.00,'2',NULL,NULL),
(15,'Yogurt',2147483647,35.00,'2',NULL,NULL),
(16,'Mantequilla',2147483647,25.00,'2',NULL,NULL),
(17,'Gatellas',2147483647,35.00,'2',NULL,NULL),
(18,'Verduras',2147483647,27.00,'2',NULL,NULL),
(19,'Jabon blanco',2147483647,45.00,'2',NULL,NULL),
(20,'Jabon en polvo',2147483647,75.00,'2',NULL,NULL),
(21,'Detergente',2147483647,85.00,'3',NULL,NULL),
(22,'Desinfectante',2147483647,45.00,'3',NULL,NULL),
(23,'Suavizante',2147483647,85.00,'3',NULL,NULL),
(24,'Cloro',2147483647,35.00,'3',NULL,NULL),
(25,'Esponja',2147483647,25.00,'3',NULL,NULL),
(26,'Bolsas de Basura',2147483647,15.00,'3',NULL,NULL),
(27,'Guantes de plastico',2147483647,34.00,'3',NULL,NULL),
(28,'Franelas',2147483647,35.00,'3',NULL,NULL),
(29,'Jabon de Baño',227292732,40.00,'3',NULL,NULL),
(30,'Pasta Dental',2147483647,45.00,'3',NULL,NULL),
(31,'Cepillo de Dientes',2147483647,45.00,'4',NULL,NULL),
(32,'Hilo dental',2147483647,35.00,'4',NULL,NULL),
(33,'Hilo dental',2147483647,35.00,'4',NULL,NULL),
(34,'Toallitas Humedas',2147483647,14.05,'4',NULL,NULL),
(35,'Crema Corporal',2147483647,75.00,'4',NULL,NULL),
(36,'Desodorantes',2147483647,75.00,'4',NULL,NULL),
(37,'Papel Higienico',2147483647,70.00,'4',NULL,NULL),
(38,'Shampoo',2147483647,175.00,'4',NULL,NULL),
(39,'Acondicionador',2147483647,130.00,'4',NULL,NULL),
(40,'Agua Oxigenada',2147483647,25.00,'4',NULL,NULL),
(41,'Gasas',2147483647,25.00,'5',NULL,NULL),
(42,'Adhesivo de Tela',2147483647,25.00,'5',NULL,NULL),
(43,'Banditas',2147483647,25.00,'5',NULL,NULL),
(44,'Fosforos',2147483647,50.00,'5',NULL,NULL),
(45,'Velas',2147483647,25.00,'5',NULL,NULL),
(46,'Bombillas',2147483647,25.00,'5',NULL,NULL),
(47,'Cinta Adhesiva',2147483647,25.00,'5',NULL,NULL),
(48,'Papas',221909838,17.00,'5',NULL,NULL),
(49,'Refrescos',2147483647,15.00,'5',NULL,NULL),
(50,'Jugos',2147483647,15.00,'5',NULL,NULL),
(51,'',0,0.00,'',NULL,NULL);

/*Table structure for table `tb_tienda` */

DROP TABLE IF EXISTS `tb_tienda`;

CREATE TABLE `tb_tienda` (
  `id_tienda` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tienda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tienda`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_tienda` */

insert  into `tb_tienda`(`id_tienda`,`nombre_tienda`,`created_at`,`updated_at`) values 
(1,'Neto',NULL,NULL),
(2,'3B',NULL,NULL),
(3,'Garis',NULL,NULL),
(4,'Oxxo',NULL,NULL),
(5,'Walmart',NULL,NULL);

/*Table structure for table `tb_ventas` */

DROP TABLE IF EXISTS `tb_ventas`;

CREATE TABLE `tb_ventas` (
  `id_venta` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tienda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_ventas` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
