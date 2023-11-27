from django.db import models
from datetime import datetime
from django.contrib.auth.models import AbstractUser

class AuthGroup(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    id = models.BigAutoField(primary_key=True)
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField(default=datetime.now)

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    id = models.BigAutoField(primary_key=True)
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.BigAutoField(primary_key=True)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Productos(models.Model):
    id_producto = models.BigAutoField(primary_key=True)
    nombre_producto = models.CharField(max_length=150)
    stock = models.BigIntegerField()
    precio = models.BigIntegerField()
    caracteristica = models.CharField(max_length=150)
    imagen = models.TextField()
    id_proveedor = models.ForeignKey('Proveedor', models.DO_NOTHING, db_column='id_proveedor', blank=True, null=True)
    id_tipo_producto = models.ForeignKey('TipoProducto', models.DO_NOTHING, db_column='id_tipo_producto', blank=True, null=True)
    id_sub_tipo_producto = models.ForeignKey('SubTipoProducto', models.DO_NOTHING, db_column='id_sub_tipo_producto', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'productos'
        unique_together = (('id_proveedor', 'id_tipo_producto', 'id_sub_tipo_producto'),)


class Proveedor(models.Model):
    id_proveedor = models.BigAutoField(primary_key=True)
    nombre_proveedor = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'proveedor'


class SubTipoProducto(models.Model):
    id_sub_tipo_producto = models.BigAutoField(primary_key=True)
    nombre_sub_tipo_producto = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'sub_tipo_producto'


class TipoProducto(models.Model):
    id_tipo_producto = models.BigAutoField(primary_key=True)
    nombre_tipo_producto = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'tipo_producto'

#class Carts(models.Model):
#    id = models.BigAutoField(primary_key=True)
#    user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)
#    product = models.ForeignKey('Product', models.DO_NOTHING, db_column='product_code', blank=True, null=True)      
#    quantity = models.BigIntegerField(blank=True, null=True)
#    date_add = models.DateTimeField(blank=True, null=True)
#
#    def total(self, price):
#        return round(self.quantity*price)
#    class Meta:
#        managed = False
#        db_table = 'carts'
