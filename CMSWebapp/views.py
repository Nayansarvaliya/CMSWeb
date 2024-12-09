from django.shortcuts import render
from CMSWebapp.models import FacultyMaster,StudentMaster,AttendanceMaster,MaterialMaster,ResultMaster,EventMaster,FeesMaster,studentfeesmaster
from CMSWebapp.forms import FacultyMasterForm,StudentMasterForm,AttendanceMasterForm,MaterialMasterForm,ResultMasterForm,EventMasterForm,FeesMasterForm,StudentfeesmasterForm

def index(request):
    return render(request,"index.html")

def about(request):
    return render(request,"about.html")

def contact(request):
    return render(request,"contact.html")

def courses(request):
    return render(request,"courses.html")

def userlogin(request):
    return render(request,"login.html")

def useradmin(request):
    return render(request,"useradmin/index.html")

def adminhome(request):
    return render(request,"useradmin/adminhome.html")

def facultyform(request):
    return render(request,"useradmin/facultyform.html")

def addfaculty(request):
    if request.method == "POST":
        facform = FacultyMasterForm(request.POST,request.FILES)
        if facform.is_valid():
            handle_upload_file(request.FILES['facphoto'])
            facform.save()
            return render(request,"useradmin/facultyform.html")
        else:
            return render(request,"useradmin/facultyform.html")
    return render(request,"useradmin/facultyform.html")

def addstudent(request):        
    return render(request,"userfaculty/addstudent.html")

def savestudent(request):
    if request.method == "POST":
        print(request.POST["stdenno"])
        stdform = StudentMasterForm(request.POST,request.FILES)
        if stdform.is_valid():
            handle_upload_file(request.FILES['stdphoto'])
            print("Saved")
            stdform.save()
            return render(request,"userfaculty/addstudent.html")
        else:
            print("Not Save")
            return render(request,"userfaculty/addstudent.html")
    else:
        return render(request,'userfaculty/addstudent.html')
    
def savematerial(request):
    print(request.POST["stdsemester"])
    if request.method == "POST":
        matform = MaterialMasterForm(request.POST,request.FILES)
        if matform.is_valid():
            print("Saved")
            handle_upload_file(request.FILES['matfile'])
            matform.save()
            return render(request,"userfaculty/addmaterial.html")
        else:
            print("Not Save")
            return render(request,"userfaculty/addmaterial.html")

def handle_upload_file(f):
    with open('CMSWebapp/static/images/'+f.name,'wb+') as desitination:
        for chunk in f.chunks():
            desitination.write(chunk)

def facultytbl(request):
    allfaculty = FacultyMaster.objects.all()
    return render(request,"useradmin/facultytbl.html",{'allfaculty':allfaculty})


def facultylogin(request):
    email = request.POST["emailid"]
    psw = request.POST["contactno"]
    if request.method == "POST":
        facultyobj = FacultyMaster.objects.filter(emailid=email,contactno=psw)
        if facultyobj:
            obj = FacultyMaster.objects.get(emailid=email)
            request.session["facultyid"] = obj.id
            request.session["facultyfname"] = obj.fname
            request.session["facultylname"] = obj.lname
            request.session["facultyemail"] = obj.emailid
            return render(request,"userfaculty/facultyhome.html")
        else:
            return render(request,"login.html")
    else:
        return render(request,"login.html")

def facultyhome(request):
    email = request.session.get("facultyemail")
    obj = FacultyMaster.objects.get(emailid=email)
    if obj:
        request.session["facultyfname"] = obj.fname
        request.session["facultylname"] = obj.lname
        request.session["facultyemail"] = obj.emailid
        return render(request,"userfaculty/facultyhome.html")
    
def facultyprofile(request):
    facemail = request.session.get("facultyemail")
    facobj = FacultyMaster.objects.get(emailid = facemail)
    return render(request,"userfaculty/facultyprofilehome.html",{'facobj':facobj})


def studentlogin(request):
    eno = request.POST["stdenno"]
    psw = request.POST["stdscontactno"]
    if request.method == "POST":
        facultyobj = StudentMaster.objects.filter(stdenno=eno,stdscontactno=psw)
        if facultyobj:
            obj = StudentMaster.objects.get(stdenno=eno)
            request.session["studentid"] = obj.stid
            request.session["studentfname"] = obj.stdfname
            request.session["studentlname"] = obj.stdlname
            request.session["studentemail"] = obj.stdemailid
            request.session["stdenno"] = obj.stdenno
            return render(request,"userstudent/studenthome.html")
        else:
            return render(request,"login.html")
    else:
        return render(request,"login.html")
    
def studenthome(request):
    email = request.session.get("studentemail")
    obj = StudentMaster.objects.get(stdemailid=email)
    if obj:
        request.session["studentid"] = obj.stid
        request.session["studentfname"] = obj.stdfname
        request.session["studentlname"] = obj.stdlname
        request.session["studentemail"] = obj.stdemailid
        request.session["stdenno"] = obj.stdenno
        return render(request,"userstudent/studenthome.html")

def studentprofile(request):
    stdemail = request.session.get("studentemail")
    stdobj = StudentMaster.objects.get(stdemailid = stdemail)
    return render(request,"userstudent/studentprofilehome.html",{'stdobj':stdobj})

def takeattendance(request):
    sem = 1
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/takeattendance.html",{'allstudent':allstudent})

def takeattendancethree(request):
    sem = 3
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/takeattendance.html",{'allstudent':allstudent})

def takeattendancefive(request):
    sem = 5
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/takeattendance.html",{'allstudent':allstudent})

def saveattendence(request):
    print(request.POST["id"])
    print(request.POST["stdphoto"])
    print(request.POST["stdenno"])
    print(request.POST["stdname"])
    print(request.POST["stdsemester"])
    print(request.POST["atdate"])
    print(request.POST["atstatus"])

    if request.method == "POST":
        AttForm = AttendanceMasterForm(request.POST)
        if AttForm.is_valid():
            AttForm.save()
            return render(request,"userfaculty/facultyhome.html")
        else:
            print("Not Save")
            return render(request,"userfaculty/facultyhome.html")
    else:
        print("Code Note Work")
        return render(request,"userfaculty/facultyhome.html")


def addmaterial(request):
    return render(request,"userfaculty/addmaterial.html")

def viewstudent(request):
    allstudent = StudentMaster.objects.all()
    return render(request,"userfaculty/viewstudent.html",{'allstudent':allstudent})


def facultylogout(request):
    return render(request,"login.html")

def studentlogout(request):
    return render(request,"login.html")

def viewattendance(request):
    stid = request.session.get("stdenno")
    print(stid)
    stobj = AttendanceMaster.objects.filter(stdenno = stid)
    return render(request,"userstudent/viewattendance.html",{'stobj':stobj})

def viewmaterial(request):
    studentid = request.session.get("studentid")
    stdsem = StudentMaster.objects.get(stid=studentid)
    ssem = stdsem.stdsemester
    matobj = MaterialMaster.objects.filter(stdsemester=ssem)
    return render(request,"userstudent/viewmaterial.html",{'matobj':matobj})

def addresult(request):
    sem = 1
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/addresult.html",{'allstudent':allstudent})

def addresultsem1(request):
    sem = 1
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/addresult.html",{'allstudent':allstudent})

def addresultsem3(request):
    sem = 3
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/addresult.html",{'allstudent':allstudent})

def addresultsem5(request):
    sem = 5
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/addresult.html",{'allstudent':allstudent})


def saveresult(request):
    if request.method == "POST":
        ResForm = ResultMasterForm(request.POST)
        if ResForm.is_valid():
            ResForm.save()
            sem = 1
            allstudent = StudentMaster.objects.filter(stdsemester=sem)
            return render(request,"userfaculty/addresult.html",{'allstudent':allstudent})
        else:
            print("Not Save")
            return render(request,"userfaculty/facultyhome.html")
    else:
        print("Code Note Work")
        return render(request,"userfaculty/facultyhome.html")

def viewresult1(request):
    # sem = 1
    # allstudent = ResultMaster.objects.filter(stdsemester=sem)
    allstudent = ResultMaster.objects.all()
    return render(request,"userfaculty/viewresult.html",{'allstudent':allstudent})

def viewresultsem1(request):
    sem = 1
    allstudent = StudentMaster.objects.filter(stdsemester=sem)
    return render(request,"userfaculty/viewresult.html",{'allstudent':allstudent})

def gallery(request):
    return render(request,"gallery.html")

def viewstudentresult(request):
    enrollment = request.session.get("stdenno")
    stresult = ResultMaster.objects.filter(stdenno=enrollment)
    return render(request,"userstudent/viewstudentresult.html",{'stresult':stresult})

def editfaculty(request,id):
    singlefaculty = FacultyMaster.objects.get(id=id)
    return render(request,"useradmin/editfaculty.html",{'singlefaculty':singlefaculty})

def studenttbl(request):
    allstudent = StudentMaster.objects.all()
    return render(request,"useradmin/allstudenttbl.html",{'allstudent':allstudent})

def materialtbl(request):
    allmaterial = MaterialMaster.objects.all()
    return render(request,"useradmin/allmaterialtbl.html",{'allmaterial':allmaterial})

def attendancetbl(request):
    allattendance = AttendanceMaster.objects.all()
    return render(request,"useradmin/allattendancetbl.html",{'allattendance':allattendance})

def examtbl(request):
    allexam = ResultMaster.objects.all()
    return render(request,"useradmin/allexamtbl.html",{'allexam':allexam})

def addevents(request):
    return render(request,"userfaculty/addevents.html")

def saveevent(request):
    if request.method == "POST":
        print(request.POST["evname"])
        eventform = EventMasterForm(request.POST)
        if eventform.is_valid():
            print("Saved")
            eventform.save()
            return render(request,"userfaculty/addevents.html")
        else:
            print("Not Save")
            return render(request,"userfaculty/addevents.html")
    else:
        return render(request,'userfaculty/addevents.html')
    
def viewevents(request):
    allevent = EventMaster.objects.all()
    return render(request,"userfaculty/viewevents.html",{'allevent':allevent})

def viewevent(request):
    evid = request.session.get("evname")
    print(evid)
    evobj = EventMaster.objects.all()
    return render(request,"userstudent/viewevent.html",{'evobj':evobj})


def eventtbl(request):
    allevent = EventMaster.objects.all()
    return render(request,"useradmin/alleventtbl.html",{'allevent':allevent})

def feesform(request):
    return render(request,"useradmin/feesform.html")

def addfees(request):
    if request.method == "POST":
        feesform = FeesMasterForm(request.POST)
        if feesform.is_valid():
            feesform.save()
            return render(request,"useradmin/feesform.html")
        else:
            return render(request,"useradmin/feesform.html")
        
def viewfees(request):
   feeid = request.session.get("stdsemester")
   print(feeid)
   feobj = FeesMaster.objects.filter(stdsemester = feeid)
   return render(request,"userstudent/viewfees.html",{'feobj':feobj})


def feestbl(request):
    allfees = FeesMaster.objects.all()
    return render(request,"useradmin/allfeestbl.html",{'allfees':allfees})

def feesreceipt(request):
    return render(request,"useradmin/feesreceipt.html")

def sutdentsearch(request):
    if request.method == "POST":
        eno = request.POST["eno"]
        sem = request.POST["stdsemester"]
        stresult = StudentMaster.objects.get(stdenno=eno)
        stsem = FeesMaster.objects.get(stdsemester=sem)
        return render(request,"useradmin/sutdentsearch.html",{'stresult':stresult,'stsem':stsem})
    
def studentfeereceipt(request):
    if request.method == "POST":
        feesrec = StudentfeesmasterForm(request.POST)
        if feesrec.is_valid():
            feesrec.save()
            return render(request,"useradmin/feesreceipt.html")
        else:
            return render(request,"useradmin/feesreceipt.html")

def stfeesreceipt(request):
    enno = request.session.get("stdenno")
    recobj = studentfeesmaster.objects.get(stdenno=enno)
    return render(request,"userstudent/stfeesreceipt.html",{'recobj':recobj})

def updatefaculty(request):
    emid = request.POST["emailid"]
    empupdate = FacultyMaster.objects.get(emailid=emid)
    form = FacultyMasterForm(request.POST,instance=empupdate)
    if form.is_valid():
        form.save()
        allfaculty = FacultyMaster.objects.all()
        return render(request,"useradmin/facultytbl.html",{'allfaculty':allfaculty})
    else:
        return render(request,"useradmin/facultytbl.html")
    
def deletfaculty(request,id):
    delfaculty = FacultyMaster.objects.get(id=id)
    delfaculty.delete()
    allfaculty = FacultyMaster.objects.all()
    return render(request,"useradmin/facultytbl.html",{'allfaculty':allfaculty})