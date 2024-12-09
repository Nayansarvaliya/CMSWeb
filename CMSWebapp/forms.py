from django import forms
from CMSWebapp.models import FacultyMaster,StudentMaster,AttendanceMaster,MaterialMaster,ResultMaster,EventMaster,FeesMaster,studentfeesmaster

class FacultyMasterForm(forms.ModelForm):
    class Meta:
        model = FacultyMaster
        fields = "__all__"

class StudentMasterForm(forms.ModelForm):
    class Meta:
        model = StudentMaster
        fields = "__all__"

class AttendanceMasterForm(forms.ModelForm):
    class Meta:
        model = AttendanceMaster
        fields = "__all__"

class MaterialMasterForm(forms.ModelForm):
    class Meta:
        model = MaterialMaster
        fields = "__all__"

class ResultMasterForm(forms.ModelForm):
    class Meta:
        model = ResultMaster
        fields = "__all__"
 
class EventMasterForm(forms.ModelForm):
    class Meta:
        model = EventMaster
        fields = "__all__"

class FeesMasterForm(forms.ModelForm):
    class Meta:
        model = FeesMaster
        fields = "__all__"

class StudentfeesmasterForm(forms.ModelForm):
    class Meta:
        model = studentfeesmaster
        fields = "__all__"