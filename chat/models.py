from django.db import models
from users.models import User
# Create your models here.


class Messages(models.Model):
    send_by = models.ForeignKey(User, on_delete=models.CASCADE, related_name="send_by")
    send_to = models.ForeignKey(User, on_delete=models.CASCADE, related_name="send_to")
    msg = models.CharField(max_length = 1000)
    created = models.DateTimeField(auto_now_add = True)