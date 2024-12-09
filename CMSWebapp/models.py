from django.db import models

class FacultyMaster(models.Model):
    fname = models.CharField(max_length=25)
    lname = models.CharField(max_length=25)
    emailid = models.CharField(max_length=50)
    contactno = models.BigIntegerField()
    DESIGNATION_CHOICES = (
        ('Principal','Principal'),
        ('Assistant Professor','Assistant Professor'),
        ('Associate Professor','Associate Professor'),
        ('Lecturer','Lecturer'),
    )
    designation = models.CharField(max_length=50,choices=DESIGNATION_CHOICES)
    DEPARTMENT_CHOICES = (
        ('BCA','BCA'),
    )
    department = models.CharField(max_length=50,choices=DEPARTMENT_CHOICES)
    address = models.CharField(max_length=100)
    CITY_CHOICES = (
        ('Ahmedabad','Ahmedabad'),
        ('Gandhinagar','Gandhinagar'),
        ('Rajkot','Rajkot'),
        ('Surat','Surat'),
    )
    city = models.CharField(max_length=25,choices=CITY_CHOICES)
    AREA_CHOICES = (
        ('Ghatlodia','Ghatlodia'),
        ('Ranip','Ranip'),
        ('Naranpura','Naranpura'),
        ('Chandlodia','Chandlodia'),
    )
    area = models.CharField(max_length=25,choices=AREA_CHOICES)
    facphoto = models.FileField(max_length=50)
    class Meta:
        db_table = "facultymaster"

class StudentMaster(models.Model):
    stid = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='SID')
    stdenno = models.BigIntegerField()
    stdfname = models.CharField(max_length=25)
    stdmname = models.CharField(max_length=25)
    stdlname = models.CharField(max_length=25)
    stdemailid = models.CharField(max_length=50)
    stdscontactno = models.BigIntegerField()
    stdpcontactno = models.BigIntegerField()
    SEMESTER_CHOICES = (
        ('1','1'),
        ('2','2'),
        ('3','3'),
        ('4','4'),
        ('5','5'),
        ('6','6'),
    )
    stdsemester = models.CharField(max_length=50,choices=SEMESTER_CHOICES)
    DEPARTMENT_CHOICES = (
        ('BCA','BCA'),
    )
    stddepartment = models.CharField(max_length=50,choices=DEPARTMENT_CHOICES)
    stdaddress = models.CharField(max_length=100)
    CITY_CHOICES = (
        ('Ahmedabad','Ahmedabad'),
        ('Gandhinagar','Gandhinagar'),
        ('Rajkot','Rajkot'),
        ('Surat','Surat'),
    )
    stdcity = models.CharField(max_length=25,choices=CITY_CHOICES)
    AREA_CHOICES = (
        ('Ghatlodia','Ghatlodia'),
        ('Ranip','Ranip'),
        ('Naranpura','Naranpura'),
        ('Chandlodia','Chandlodia'),
    )
    stdarea = models.CharField(max_length=25,choices=AREA_CHOICES)
    stdphoto = models.FileField(max_length=50)
    class Meta:
        db_table = "studentmaster"

class StudentAttendance(models.Model):
    statid = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='STATID')
    stdenno = models.BigIntegerField()
    stname = models.CharField(max_length=50)
    ATTENDENCE_CHOICES = (
        ('Absent','Absent'),
        ('Present','Present'),
    )
    atstatus = models.CharField(max_length=25,choices=ATTENDENCE_CHOICES)
    class Meta:
        db_table = "student"

class AttendanceMaster(models.Model):
    atid = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ATID')
    id = models.IntegerField()
    stdphoto = models.CharField(max_length=50)
    stdenno = models.CharField(max_length=25)
    stdname = models.CharField(max_length=100)
    stdsemester = models.IntegerField()
    atdate = models.CharField(max_length=25)
    STATUS_CHOICES = (
        ('Absent','Absent'),
        ('Present','Present')
    )
    atstatus = models.CharField(max_length=25,choices=STATUS_CHOICES)
    class Meta:
        db_table = "attendancemaster"

class MaterialMaster(models.Model):
    matid =models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='MATID')
    id = models.IntegerField()
    SEMESTER_CHOICES = (
        ('1','1'),
        ('2','2'),
        ('3','3'),
        ('4','4'),
        ('5','5'),
        ('6','6')
    )
    stdsemester=models.CharField(max_length=10,choices=SEMESTER_CHOICES)
    SUBJECT_CHOICES = (
        ('MATHS','MATHS'),
        ('DATA-BASE MANAGEMENT SYSTEM','DATA-BASE MANAGEMENT SYSTEM'),
        ('C PROGRAMMING','C PROGRAMMING'),
        ('FINANCIAL ACCOUNTING AND MANAGEMENT','FINANCIAL ACCOUNTING AND MANAGEMENT'),
        ('OPOL','OPOL'),
        ('BUSSINESS ECONOMICS','BUSSINESS ECONOMICS'),
        ('COMPUTER GRAPHICS','COMPUTER GRAPHICS'),
        ('OPERATING SYSTEM','OPERATING SYSTEM'),
        ('JAVA','JAVA'),
        ('COMPUTER NETWORKS','COMPUTER NETWORKS')
    )
    matsubj= models.CharField(max_length=50,choices=SUBJECT_CHOICES)
    matfile=models.FileField(max_length=50)
    class Meta:
        db_table = "materialmaster" 

class ResultMaster(models.Model):
    resultid =models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='RID')
    id = models.IntegerField()
    stdenno = models.BigIntegerField()
    stdname = models.CharField(max_length=100)
    stdsemester=models.CharField(max_length=25)
    SUBJECT_CHOICES = (
        ('c','c'),
        ('statistics','statistics'),
        ('english','english'),
        ('pc software','pc software'),
        ('maths','maths'),
        ('data-base management system','data-base management system'),
        ('c programing','c programing'),
        ('financial accounting and management','financial accounting and management'),
        ('opol','opol'),
        ('business economics','business economics'),
        ('computer graphics','computer graphics'),
        ('opreting system','opreting system'),
        ('java','java'),
        ('computer network','computer network')
    )
    subname = models.CharField(max_length=100,choices=SUBJECT_CHOICES)
    submarks = models.IntegerField()
    class Meta:
        db_table = "resultmaster"

class EventMaster(models.Model):
    eventid =models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='EID')
    evname = models.CharField(max_length=100)
    evdate = models.CharField(max_length=100)
    class Meta:
        db_table = "eventmaster"

class FeesMaster(models.Model):
    feid = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='FID')
    SEMESTER_CHOICES = (
        ('1','1'),
        ('2','2'),
        ('3','3'),
        ('4','4'),
        ('5','5'),
        ('6','6')
    )
    stdsemester=models.CharField(max_length=10,choices=SEMESTER_CHOICES)
    feamt = models.BigIntegerField()
    class Meta:
        db_table = "feesmaster"

class studentfeesmaster(models.Model):
    stfeid = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='STFEID')
    stdenno = models.BigIntegerField()
    stdname = models.CharField(max_length=100)
    SEMESTER_CHOICES = (
        ('1','1'),
        ('2','2'),
        ('3','3'),
        ('4','4'),
        ('5','5'),
        ('6','6')
    )
    stdsemester=models.CharField(max_length=10,choices=SEMESTER_CHOICES)
    feamt = models.BigIntegerField()
    class Meta:
        db_table = "studentfeesmaster"

