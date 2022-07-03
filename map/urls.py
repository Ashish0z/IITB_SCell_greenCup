from django.urls import path
from django.urls import re_path
from . import views

urlpatterns = [
    path('',views.Map, name = 'iitb_map'),
]

