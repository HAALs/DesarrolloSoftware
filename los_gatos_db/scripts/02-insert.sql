USE los_gatos_db;

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