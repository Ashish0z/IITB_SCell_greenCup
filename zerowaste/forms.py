from django import forms
from .models import Report,Grievance
import os
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Submit, Row, Column, ButtonHolder
import datetime
# from phonenumber_field.formfields import PhoneNumberField
from django.contrib.gis import forms
# from django.utils.translation import ugettext_lazy as _
from django.utils.translation import gettext_lazy as _
from django.core.exceptions import ValidationError
from datetime import timedelta
# import pandas as pd
# import numpy as np
import xlrd
import csv

class GarbageSegForm(forms.ModelForm):
    
    coll_date = forms.DateField(label = _(u'Date'),required=True,widget=forms.TextInput(attrs={'type': 'date'}),initial=datetime.date.today)
    zone_id = forms.IntegerField(widget=forms.HiddenInput(),required=False)
    zone_name = forms.CharField(max_length=100)
    kitchen_waste_in_kg = forms.FloatField(label='kitchen waste in kg')  # Field renamed to remove unsuitable characters.
    burnable_waste_in_kg = forms.FloatField(label='burnable waste in kg')  # Field renamed to remove unsuitable characters.
    landfill_inside_house = forms.FloatField(label='landfill inside house')  # Field renamed to remove unsuitable characters.
    landfill_surrounding = forms.FloatField(label='landfill surrounding')  # Field renamed to remove unsuitable characters.
    recyclable_waste = forms.FloatField(label='recyclable waste')  # Field renamed to remove unsuitable characters.

    # def clean(self):
    #     my_date = self.cleaned_data['date']
    #     today = datetime.date.today()
    #     yesterday = today - timedelta(days = 1)
        # my_time = self.cleaned_data['my_time']
        # my_date_time = (my_date + ' ' + my_time + ':00')
        # my_date_time = datetime.strptime(my_date_time, '%m/%d/%Y %H:%M:%S')
        # console.log(date.today())
        # if my_date > datetime.date.today():
        #     raise forms.ValidationError('Future Dates are not allowed.!!')
        

    class Meta:

        model = Report
        fields = '__all__'
        # exclude = ['zone_id','reason_late_entry']

class GrievanceForm(forms.ModelForm):
    YESNO_CHOICES = ((0, 'No'), (1, 'Yes'))
    name= forms.CharField(label = _(u'Name'))
    email = forms.CharField(label = _(u'email'))
    mobile = forms.IntegerField(label = _(u'mobile'))
    grievance = forms.CharField(widget=forms.Textarea(attrs={"rows":15, "cols":50}),label = _(u'grievance'))
    grievance_no = forms.CharField(widget=forms.HiddenInput(),label = _(u'grievance no'))


    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        
    class Meta:
        model = Grievance
        fields = '__all__'
        exclude = ['latitude','longitude','id','audio_src','img_src']
        widgets = {'selectzones': forms.HiddenInput(),'selectlanes':forms.HiddenInput()}
