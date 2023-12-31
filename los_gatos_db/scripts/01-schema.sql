USE los_gatos_db;

CREATE TABLE proveedor (
  id_proveedor bigint(11) NOT NULL AUTO_INCREMENT,
  nombre_proveedor varchar(150) NOT NULL,
  PRIMARY KEY (id_proveedor),
  UNIQUE KEY nombre_proveedor (nombre_proveedor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE tipo_producto (
  id_tipo_producto bigint(11) NOT NULL AUTO_INCREMENT,
  nombre_tipo_producto varchar(150) NOT NULL,
  PRIMARY KEY (id_tipo_producto),
  UNIQUE KEY nombre_tipo_producto (nombre_tipo_producto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE sub_tipo_producto (
  id_sub_tipo_producto bigint(11) NOT NULL AUTO_INCREMENT,
  nombre_sub_tipo_producto varchar(150) NOT NULL,
  PRIMARY KEY (id_sub_tipo_producto),
  UNIQUE KEY nombre_sub_tipo_producto (nombre_sub_tipo_producto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE productos (
  id_producto bigint(11) NOT NULL AUTO_INCREMENT,
  nombre_producto varchar(150) NOT NULL,
  stock bigint(3) NOT NULL,
  precio bigint(7) NOT NULL,
  caracteristica varchar(150) NOT NULL,
  imagen text NOT NULL,
  id_proveedor bigint(11),
  id_tipo_producto bigint(11),
  id_sub_tipo_producto bigint(11),
  PRIMARY KEY (id_producto),
  CONSTRAINT `productos_id_tipo_producto_2f476e4b_fk_id_proveedor` FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor),
  CONSTRAINT `productos_id_proveedor_3f586e4b_fk_id_tipo_producto` FOREIGN KEY (id_tipo_producto) REFERENCES tipo_producto (id_tipo_producto),
  CONSTRAINT `productos_id_sub_tipo_producto_3f576e9a_fk_id_sub_tipo_producto` FOREIGN KEY (id_sub_tipo_producto) REFERENCES sub_tipo_producto (id_sub_tipo_producto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*
--create table carts(
	--id bigint PRIMARY KEY,
	--user_id bigint,
	--product_code bigint,	
  --quantity bigint,
	--date_add timestamp,
   	--CONSTRAINT fk_carts_auth_user_id
    	--FOREIGN KEY(user_id) 
	 	--REFERENCES auth_user(id),
   	--CONSTRAINT fk_carts_product_id
    	--FOREIGN KEY(product_code) 
	 	--REFERENCES productos(id_producto)	); */


CREATE TABLE `auth_group` (
 id bigint(11) NOT NULL AUTO_INCREMENT,
 name varchar(150) NOT NULL,
 PRIMARY KEY (id),
 UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `django_content_type` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `auth_user` (
  id bigint(11) NOT NULL AUTO_INCREMENT,
  password varchar(128) NOT NULL,
  last_login datetime(6) DEFAULT NULL,
  is_superuser tinyint(1) NOT NULL,
  username varchar(150) NOT NULL,
  first_name varchar(150) NOT NULL,
  last_name varchar(150) NOT NULL,
  email varchar(254) NOT NULL,
  is_staff tinyint(1) NOT NULL,
  is_active tinyint(1) NOT NULL,
  date_joined datetime(6) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `django_migrations` (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  app varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  applied datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `django_session` (
  session_key varchar(40) NOT NULL,
  session_data longtext NOT NULL,
  expire_date datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `auth_permission` (
  id bigint(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  content_type_id bigint(11) NOT NULL,
  codename varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `auth_group_permissions` (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  group_id bigint(11) NOT NULL,
  permission_id bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `auth_user_groups` (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  user_id bigint(11) NOT NULL,
  group_id bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL,
  `permission_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `django_admin_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` bigint(11) DEFAULT NULL,
  `user_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


