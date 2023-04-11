from django.contrib import admin

# Register your models here.
from .models import Report
from .models import Grievance
admin.site.register(Report)
admin.site.register(Grievance)