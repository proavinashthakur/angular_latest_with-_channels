from django.urls import path
from . import views
urlpatterns = [
    path("add-data", views.add_data, name="add-data"),
    path("get-continents", views.get_continents, name="get-continents"),
    path("get-countries/<int:conti_id>", views.get_countries, name="get_countries"),
    path("get-cities/<int:cities_id>", views.get_cities, name="get_cities"),
    path("get-cities-data", views.get_cities_data, name="get_cities_data"),
    path("add-city", views.add_city, name="ad_city"),

]
