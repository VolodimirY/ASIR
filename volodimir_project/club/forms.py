from django import forms
from .models import Member

class MemberForm(forms.Form):
  full_name = forms.CharField(label = "Full name", max_length = 30)
  phone = forms.IntegerField(label = "Phone number")
  birth_date = forms.DateField(label = "Birth date")
  category = forms.CharField(label = "Category", max_length = 30)
  province_id = forms.IntegerField(label = "Province")

class MemberForm(forms.ModelForm):
    class Meta:
        model = Member
        fields = ['full_name', 'phone', 'birth_date', 'category', 'province_id']