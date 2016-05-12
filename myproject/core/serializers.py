# serializers.py
from django.contrib.auth.models import User
from rest_framework import serializers
from myproject.core.models import Person


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('url', 'username', 'email')


class PersonSerializer(serializers.ModelSerializer):

    class Meta:
        model = Person
        fields = ('pk', 'first_name', 'last_name',
                  'email', 'active', 'created')
