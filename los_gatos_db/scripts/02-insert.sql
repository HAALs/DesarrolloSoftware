USE los_gatos_db;

INSERT INTO  proveedor(nombre_proveedor) VALUES('Coca-Cola-Company');
INSERT INTO  proveedor(nombre_proveedor) VALUES('CCU');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Ideal');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Nestle');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Soprole');
INSERT INTO  proveedor(nombre_proveedor) VALUES('Otro');


INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Bebidas');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Vinos');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Cervezas');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Espumantes');
INSERT INTO tipo_producto(nombre_tipo_producto) VALUES('Otros');


INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Bebidas Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Bebidas CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Cervezas Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Cervezas CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Vinos Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Vinos CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Espumantes Coca-Cola');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Espumantes CCU');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Snacks');
INSERT INTO sub_tipo_producto(nombre_sub_tipo_producto) VALUES('Dulces');

INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-2L','80','2000','Con-Gas', 'https://unimarc.vtexassets.com/arquivos/ids/235259/000000000000118159-UN-01.png?v=638276387703400000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-3L','80','2800','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/234057/000000000000123813-UN-01.jpg?v=638223576292330000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Sin-Azucar-2L','80','2000','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/299369a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Sin-Azucar-3L','80','2800','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/234290/000000000000175598-UN-01.jpg?v=638237429730070000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Light-2L','80','2000','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/299257a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Coca-Cola-Light-3L','80','2800','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/3899a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-2L','80','2000','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/299493a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-3L','80','2800','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/5879a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-Zero-2L','80','2000','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/312635a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Sprite-Zero-3L','80','2800','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/228897/000000000000750074-UN-01.jpg?v=637975705357730000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-2L','80','2000','Con-Gas','https://images.lider.cl/wmtcl?source=url[file:/productos/299519a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-3L','80','2800','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/204621/000000000000128060-UN-01.jpg?v=637405720076800000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-Zero-2L','80','2000','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/235258/000000000000988478-UN-01.png?v=638276385186270000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Fanta-Zero-3L','80','2800','Con-Gas','https://unimarc.vtexassets.com/arquivos/ids/204673/000000000000750075-UN-01.jpg?v=637405775473800000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Manzana-1.6L','50','1000','Jugo','https://unimarc.vtexassets.com/arquivos/ids/204663/000000000000526124-UN-01.jpg?v=637405766084330000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Pera-1.6L','50','1000','Jugo','https://jumbo.vtexassets.com/arquivos/ids/435873-1000-1000?width=1000&height=1000&aspect=true','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Limonada-1.6L','50','1000','Jugo','https://unimarc.vtexassets.com/arquivos/ids/204665/000000000000526126-UN-01.jpg?v=637405768178270000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Aquarius-Uva-1.6L','50','1000','Jugo','https://unimarc.vtexassets.com/arquivos/ids/196477/000000000000604402-UN-01.jpg?v=637273390753830000','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Frozen-Blast-1L','80','1350','Isotonica','https://jumbo.vtexassets.com/arquivos/ids/642684-1000-1000?width=1000&height=1000&aspect=true','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Rojo-1L','80','1350','Isotonica','https://jumbo.vtexassets.com/arquivos/ids/682344-1000-1000?width=1000&height=1000&aspect=true','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Powerade-Naranja-1L','80','1350','Isotonica','https://images.lider.cl/wmtcl?source=url[file:/productos/1375112a.jpg]&scale=size[2000x2000]&sink','1','1','1');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Cabernet-Sauvignon-750ML','80','4990','Cabernet-Sauvignon','https://images.lider.cl/wmtcl?source=url[file:/productos/4523a.jpg]&scale=size[2000x2000]&sink','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Carmenere-750ML','80','4990','Carmenere','https://images.lider.cl/wmtcl?source=url[file:/productos/821916a.jpg]&scale=size[2000x2000]&sink','1','2','5');
INSERT INTO productos(nombre_producto, stock, precio, caracteristica, imagen, id_proveedor, id_tipo_producto, id_sub_tipo_producto) VALUES('Medalla-Real-Merlot-750ML','80','4990','Merlot','https://images.lider.cl/wmtcl?source=url[file:/productos/821920a.jpg]&scale=size[2000x2000]&sink','1','2','5');



INSERT INTO django_content_type (app_label, model) VALUES('admin', 'logentry');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'group');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'permission');
INSERT INTO django_content_type (app_label, model) VALUES('auth', 'user');
INSERT INTO django_content_type (app_label, model) VALUES('contenttypes', 'contenttype');
INSERT INTO django_content_type (app_label, model) VALUES('sessions', 'session');

INSERT INTO django_migrations (app, name, applied) VALUES('contenttypes', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0001_initial', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0002_logentry_remove_auto_add', now());
INSERT INTO django_migrations (app, name, applied) VALUES('admin', '0003_logentry_add_action_flag_choices', now());
INSERT INTO django_migrations (app, name, applied) VALUES('contenttypes', '0002_remove_content_type_name', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0002_alter_permission_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0003_alter_user_email_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0004_alter_user_username_opts', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0005_alter_user_last_login_null', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0006_require_contenttypes_0002', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0007_alter_validators_add_error_messages', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0008_alter_user_username_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0009_alter_user_last_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0010_alter_group_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0011_update_proxy_permissions', now());
INSERT INTO django_migrations (app, name, applied) VALUES('auth', '0012_alter_user_first_name_max_length', now());
INSERT INTO django_migrations (app, name, applied) VALUES('sessions', '0001_initial', now());


INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view log entry', 1, 'view_logentry');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add permission', 2, 'add_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change permission', 2, 'change_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view permission', 2, 'view_permission');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add group', 3, 'add_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change group',	3, 'change_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete group',	3, 'delete_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view group', 3, 'view_group');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add user', 4, 'add_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change user', 4, 'change_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete user', 4, 'delete_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view user', 4, 'view_user');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view content type', 5, 'view_contenttype');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can add session',	6, 'add_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can change session', 6, 'change_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can delete session', 6, 'delete_session');
INSERT INTO auth_permission (name, content_type_id, codename) VALUES('Can view session', 6, 'view_session');

INSERT INTO auth_user (password,last_login,is_superuser,username,first_name,last_name,email,is_staff,is_active,date_joined) VALUES ('pbkdf2_sha256$600000$7UUDnFgYdXhuda95cmu7v0$WCmF8Vkjqin16DM+mdk3gGnMDcvFKVVtS79sbrBNr74=',NULL,1,'admin','','','admin@example.cl',1,1, now());