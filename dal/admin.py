from django.contrib import admin
from dal import models


# Register your models here.


class UserAdmin(admin.ModelAdmin):
    list_display = ('username', 'password','email','name','classname','create_time','phone')

admin.site.register(models.UserInfo, UserAdmin)


class SubjectAdmin(admin.ModelAdmin):
    list_display = ('teacher', 'subject_title','introduction','time','startime')

admin.site.register(models.Subject, SubjectAdmin)

class ClassNamesAdmin(admin.ModelAdmin):
    list_display = ('class_name','time')

admin.site.register(models.ClassNames, ClassNamesAdmin)


class TecInfoAdmin(admin.ModelAdmin):
    list_display = ('username','name','password','sex','experience','style','phone')

admin.site.register(models.TecInfo,TecInfoAdmin)

