from django.contrib import admin
from django.urls import path
from CMSWebapp import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index,name='index'),
    path('about',views.about,name='about'),
    path('contact',views.contact,name='contact'),
    path('courses',views.courses,name='courses'),
    path('userlogin',views.userlogin,name='userlogin'),
    path('useradmin/',views.useradmin,name='useradmin'),
    path('adminhome',views.adminhome,name='adminhome'),
    path('facultyform',views.facultyform,name='facultyform'),
    path('facultytbl',views.facultytbl,name='facultytbl'),
    path('addfaculty',views.addfaculty,name='addfaculty'),
    path('facultylogin',views.facultylogin,name='facultylogin'),
    path('facultyprofile',views.facultyprofile,name='facultyprofile'),
    path('addstudent',views.addstudent,name='addstudent'),
    path('takeattendance',views.takeattendance,name='takeattendance'),
    path('takeattendancethree',views.takeattendancethree,name='takeattendancethree'),
    path('takeattendancefive',views.takeattendancefive,name='takeattendancefive'),
    path('saveattendence',views.saveattendence,name='saveattendence'),
    path('addmaterial',views.addmaterial,name='addmaterial'),
    path('savestudent',views.savestudent,name='savestudent'),
    path('viewstudent',views.viewstudent,name='viewstudent'),
    path('facultyhome',views.facultyhome,name='facultyhome'),
    path('studenthome',views.studenthome,name='studenthome'),
    path('studentlogin',views.studentlogin,name='studentlogin'),
    path('studentprofile',views.studentprofile,name='studentprofile'),
    path('facultylogout',views.facultylogout,name='facultylogout'),
    path('studentlogout',views.studentlogout,name='studentlogout'),
    path('viewattendance',views.viewattendance,name='viewattendance'),
    path('savematerial',views.savematerial,name='savematerial'),
    path('viewmaterial',views.viewmaterial,name='viewmaterial'),
    path('addresult',views.addresult,name='addresult'),
    path('addresultsem1',views.addresultsem1,name='addresultsem1'),
    path('addresultsem3',views.addresultsem3,name='addresultsem3'),
    path('addresultsem5',views.addresultsem5,name='addresultsem5'),
    path('viewresult1',views.viewresult1,name='viewresult1'),
    path('saveresult',views.saveresult,name='saveresult'),
    path('gallery',views.gallery,name='gallery'),
    path('viewstudentresult',views.viewstudentresult,name='viewstudentresult'),
    path('editfaculty/<int:id>',views.editfaculty,name='editfaculty'),
    path('studenttbl',views.studenttbl,name='studenttbl'),
    path('materialtbl',views.materialtbl,name='materialtbl'),
    path('attendancetbl',views.attendancetbl,name='attendancetbl'),
    path('examtbl',views.examtbl,name='examtbl'),
    path('addevents',views.addevents,name='addevents'),
    path('saveevent',views.saveevent,name='saveevent'),
    path('viewevents',views.viewevents,name='viewevents'),
    path('viewevent',views.viewevent,name='viewevent'),
    path('feesform',views.feesform,name='feesform'),
    path('eventtbl',views.eventtbl,name='eventtbl'),
    path('addfees',views.addfees,name='addfees'),
    path('viewfees',views.viewfees,name='viewfees'),
    path('feestbl',views.feestbl,name='feestbl'),
    path('feesreceipt',views.feesreceipt,name='feesreceipt'),
    path('sutdentsearch',views.sutdentsearch,name='sutdentsearch'),
    path('studentfeereceipt',views.studentfeereceipt,name='studentfeereceipt'),
    path('stfeesreceipt',views.stfeesreceipt,name='stfeesreceipt'),
    path('updatefaculty',views.updatefaculty,name='updatefaculty'),
    path('deletfaculty/<int:id>',views.deletfaculty,name='deletfaculty'),
    ]


