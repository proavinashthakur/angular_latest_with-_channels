from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view
from rest_framework.response import Response
from users.models import User
from django.contrib.auth import authenticate
from .serializers import SignInSerializer


@api_view(['POST'])
def signin(request):

    try:
        user = authenticate(request, username=request.data['phone'], password=request.data['password'])
        token, _ = Token.objects.get_or_create(user=user)
        users = []
        # user_data = User.objects.get(phone)
        all_users = User.objects.all()
        for user in all_users:
            users.append({'id':user.id, "name":user.first_name+" "+user.last_name})
        serializer  = SignInSerializer(user)
        data = serializer.data
        data['token'] = token.key
        data['users'] = users
        return Response({"status":True, "data":data })
    except:
        return Response({"status":False, "msg":"Wrong Credentials"})
