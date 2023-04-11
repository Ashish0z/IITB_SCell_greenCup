from django.urls import path,include
from django.urls import re_path
from . import views
from django.conf import settings
from django.conf.urls.static import static

# from visits.models import Visits
urlpatterns = [
    path('',views.HomePage, name = 'homepage'),
    path('garbage_seg/', views.GarbageSeg,name='garbage_seg'),
    path('show/',views.show, name='show'),  
    path('graphs/',views.Graphs, name='graphs'),  
    path('grievance/',views.Grievance, name = 'grievance'),
    path('green_cup/',views.GreenCup, name = 'green_cup'),
    path('green_cup_heatmap', views.GreenCupMap, name='green_cup_heatmap'),
    path('edit/<int:id>', views.edit),  
    #path('update/<int:id>', views.update),  
    path('delete/<int:id>', views.destroy),  
   
]



# if settings.DEBUG:
#     urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 