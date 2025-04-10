from django.db import models

class Member(models.Model):
    CATEGORY_CHOICES = [
        ('junior', 'Junior'),
        ('senior', 'Senior'),
        ('infant', 'Infant'),
        ('adult', 'Adult'),
    ]

    member_id = models.BigAutoField(primary_key=True)
    full_name = models.CharField(max_length=30)
    phone = models.BigIntegerField()
    birth_date = models.DateField()
    category = models.CharField(max_length=30, choices=CATEGORY_CHOICES)
    province_id = models.BigIntegerField()

class Province(models.Model):
  province_id = models.BigAutoField(primary_key = True)
  pro_name = models.CharField(max_length = 30)
  