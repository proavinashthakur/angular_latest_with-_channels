from rest_framework import serializers
from users.models import User
from rest_framework.authtoken.models import Token


class SignInSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('id', 'first_name', 'last_name', 'email',  'phone')
