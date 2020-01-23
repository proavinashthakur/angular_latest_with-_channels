from channels.layers import get_channel_layer
from rest_framework.response import Response


def send_message():
    channel_layer = get_channel_layer()
    await channel_layer.send("room_3", {
        "type": "chat.message",
        "text": "Hello there!",
    })
