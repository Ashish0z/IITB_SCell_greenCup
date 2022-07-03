# Create your views here.
from django.shortcuts import render,redirect,HttpResponse,HttpResponseRedirect
from .forms import GarbageSegForm,GrievanceForm
from .models import Report
from django.contrib.staticfiles.storage import staticfiles_storage
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.utils.translation import gettext_lazy as _

import pandas as pd
import psycopg2
import matplotlib.pyplot as plt
from sqlalchemy import create_engine

import plotly.express as px
from plotly.offline import plot

import plotly.graph_objects as og
import numpy


def HomePage(request):
        # print(main)
        # analytics = initialize_analyticsreporting()
        # response = get_report(analytics)
        # print(response)
        # recd_response = print_response(response)
        # print(recd_response)
        
        # context ={
        #     'Visitor_count':recd_response
        # }

        return render(request,"HomePage.html")

def GarbageSeg(request):
        form = GarbageSegForm()
        if request.method == 'POST':
                form = GarbageSegForm(request.POST)
        if form.is_valid():
            zoneName = form.cleaned_data['zone_name']
            collDate = form.cleaned_data['coll_date']
            if zoneName =="none":
                messages.warning(request, _(u'Please select Zone'))
            if  Report.objects.filter(coll_date=collDate, zone_name=zoneName).exists():
                messages.warning(request, _(u'Data already exists'))
                
            instance = form.save(commit=False)
            instance.save()
            messages.success(request, _(u'Your data is saved for {} dated {}').format(zoneName,collDate))
            return HttpResponseRedirect(request.path_info)

        else:
                form = GarbageSegForm()

        return render(request, 'GarbageSeg.html', {'form': form})
        # return render(request,"GarbageSeg.html")
def show(request):
    datas= Report.objects.all().order_by('-coll_date')
    context = {
        'datas':datas,
        # 'Visitor_count': recd_response
    }
    
    # return render(request,'show_data.html',{'datas':datas})
    return render(request,'show_data.html',context)

def destroy(request, id):  
    data = Report.objects.get(id=id)  
    data.delete()  
    return redirect("/show/") 

def edit(request, id):  
    data = Report.objects.get(id=id)
    # docdata  = doctor.objects.get(id=id)  
    print(data.coll_date)
    context = {
        'data':data,
        #'Visitor_count': recd_response
    }
    # return render(request,'edit.html', {'data':data}) 
    return render(request,'edit.html',context) 

def update(request, id):
    # print(id)
    data = Report.objects.get(id=id) 
    print(data) 
    form = Report(request.POST, instance = data)  
    print(form)
    if form.is_valid(): 
        print("success") 
        form.save()  
        return redirect("/show/")  
    else:
        print("fail")
    
    context = {
        'data':data,
        #'Visitor_count': recd_response
    }

def Graphs(request):
    df = pd.read_excel('/home/ubuntu/Documents/Diet-Diversity/Nutri-infotainment survey (Part 1) (Responses).xlsx',0)
    df.head(2)
   
    names = ['White colour', 'Orange colour', 'No Ration card']
    fig = px.pie(df, names=names, title ='Ration card Holders')
    fig.update_traces(
        textposition = 'inside',
        textinfo = 'percent+label'
    )
    fig.update_layout(
        title_font_size = 42
    )
    plot_div = plot(fig, output_type='div')
     
    return render(request,'graphs.html', context={'plot_div': plot_div})
    

def Grievance(request):

    url = staticfiles_storage.path('hostel.csv')
    url2 = staticfiles_storage.path('hotel_supervisors.csv')
    form = GrievanceForm(request.POST or None)
    if request.method == 'POST':
        form = GrievanceForm(request.POST or None)
        
        if form.is_valid():
            latitude = request.POST.get('latitude')
            longitude = request.POST.get('longitude')
            cd = form.cleaned_data
            name = form.cleaned_data['name']
            mobile = form.cleaned_data['mobile']
            selectzones = form.cleaned_data['selectzones']
            
            selectlanes = form.cleaned_data['selectlanes']
            grievance = form.cleaned_data['grievance']
            grievance_no = form.cleaned_data['grievance_no']
            #df = pd.read_csv('zones_lanes.csv', delimiter=',')
            # User list comprehension to create a list of lists from Dataframe rows
            #row_wise_csv = [list(row) for row in df.values]
            with open(url, "r") as file:

                lines = file.readlines()

                row_wise_csv = [[value for value in line.split(",")] for line in lines]

        
            list_zones_true = row_wise_csv[1]
            list_zones_true = list_zones_true[1:]
            list_zones_true_2 =[]
            for element in list_zones_true:
                list_zones_true_2.append(element.strip('\n'))
        
        
            print(list_zones_true_2)

            ind  =  list_zones_true_2.index(selectzones)
            print(ind)
            with open(url2) as csvfile:
                rows = csv.reader(csvfile)
                column_wise_csv = list(zip(*rows))
            
            column_zones = column_wise_csv[1]
            column_zones = column_zones[1:]
            cell_zones = ""
            ind = ind+1
            i=-1
            flag = -1
            for cell in column_zones:
                i = i+1
                cell_zones = cell
                
                
                my_list = cell_zones.split(",")
                print(my_list)
                for num in my_list:
                    num = num.strip()
                    curr_num = int(num)
                    
                    if (ind == curr_num) :
                        print("here")
                        flag = i
                        break
                
            supervisor_name = column_wise_csv[0]
            supervisor_name = supervisor_name[1:]
            supervisor_name_curr = supervisor_name[flag]
            print(supervisor_name_curr)


            supervisor_email = column_wise_csv[2]
            supervisor_email = supervisor_email[1:]
            supervisor_email_curr = supervisor_email[flag]
            print(supervisor_email_curr)
           
            print("Grievance is "+cd['grievance'])
            print("email is "+ cd['email'])
            from_email = form.cleaned_data['email']
            message_mail = 'Senders Name -  '+ name + "\n" + 'Senders Mobile - '+ str(mobile) + "\n" + 'Senders Email Id - ' +from_email + "\n"  + 'Grievance for Zone - ' +selectzones + "\n" + 'Grievance of lane - ' +selectlanes + "\n"+ 'Grievance Number - '+grievance_no +"\n"+ 'Grievance Received - '+ grievance
            # message_mail = 'Senders Name -  '+ name + "\n" + 'Senders Mobile - '+ str(mobile) + "\n" + 'Senders Email Id - ' +from_email + "\n" 
            # + 'Is collecting food waste once a day enough? - '+ fw_once + "\n"
            # + 'Would you like to collect food waste twice a day enough? - '+ str(fw_twice) + "\n"
            # + 'Do you have container for food waste? - '+ str(fw_container) + "\n"
            # + 'Do you have container for dry waste? - '+ str(dw_container) + "\n"
            # + 'Do you have container for menstrual waste? - '+ str(mw_container) + "\n"
            # + 'Do you have container for e-waste waste? - '+ str(ew_container) + "\n"
            # + 'Feedback Received - '+ feedback

            # print(latitude)
            # print(request.POST.get('lat'))
            print(from_email)
            print(request.POST)
            form.save()
            

            #con = get_connection('django.core.mail.backends.console.EmailBackend')
            con = get_connection('django.core.mail.backends.smtp.EmailBackend')
            # if (send_mail('Feedback (SWK)', cd['feedback'],cd.get('email', 'noreply@example.com'),
            #     ['monikapatira@gmail.com'],connection=con)):
            to_emails = ['karu1098@gmail.com', 'sms.swk@gmail.com']
            to_emails.append(supervisor_email_curr)

            print(to_emails)

            if(send_mail('Grievance received for swk.communitygis.net', message_mail,from_email,to_emails,fail_silently=False,)):
            
            # if(send_mail('Feedback (SWK)', message_mail,from_email,['monikapatira@gmail.com'],fail_silently=False,)):
                print("message sent")
            else :
                console.log(message_mail)
                print("Failure")

            messages.success(request, 'Your grievance is saved and email is sent. Your Greivance no. is '+grievance_no) 
            return HttpResponseRedirect(request.path_info)
        else:
           
            cd = form.cleaned_data
            print(cd)
            print(form.errors)
            messages.warning(request, 'Please check your form')
            form_class = GrievanceForm
    #        return render(request,"grievance_form.html",context)

            return render(request, 'grievance_form.html',{'form': GrievanceForm})
    else: 
        form_class = GrievanceForm
       

        return render(request, "grievance_form.html", {'form': form_class})


