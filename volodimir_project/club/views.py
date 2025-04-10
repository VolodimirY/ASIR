from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from .models import Member
from .forms import MemberForm


def member(request):
  mymembers = Member.objects.all().values()
  template = loader.get_template('member_grid.html')
  context = {
	'mymembers': mymembers
  }
  return HttpResponse(template.render(context, request))

def member_new(request):
    if request.method == "POST":
        form = MemberForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('member')
    else:
        form = MemberForm()

    return render(request, 'member_form.html', {'title': 'Nuevo Miembro', 'form': form})  
def member_edit(request, id):
  mymember = Member.objects.get(member_id = id)
  if request.method == 'POST':
    myform = MemberForm(request.POST)
    if myform.is_valid():
      mymember.full_name = myform.cleaned_data['full_name']
      mymember.phone = myform.cleaned_data['phone']
      mymember.birth_date = myform.cleaned_data['birth_date']
      mymember.category = myform.cleaned_data['category']
      mymember.province_id = myform.cleaned_data['province_id']
      mymember.save()
      return HttpResponseRedirect('/club/member')
  else:
    template = loader.get_template('member_form.html')
    initial_dict = {
      'full_name': mymember.full_name, 
	  'phone': mymember.phone,
	  'birth_date': mymember.birth_date,
	  'category': mymember.category,
	  'province_id': mymember.province_id
    }
    context = {
      'title': 'Edit member ' + str(id),
	  'form': MemberForm(initial = initial_dict)
    }  
    return HttpResponse(template.render(context, request))

def member_delete(request, id):
    mymember = Member.objects.get(member_id=id)
    mymember.delete()
    return redirect('member')