from django.urls import path
from . import views

urlpatterns =  [
  path('member/', views.member, name = 'member'),
  path('member/new', views.member_new, name = 'member_new'),
  path('member/edit/<int:id>', views.member_edit, name = 'member_edit'),
  path('member/delete/<int:id>/', views.member_delete, name='member_delete')
]
