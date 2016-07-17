from django.conf.urls import include, url
from .api import urls as api_urls
from . import views

urlpatterns = [

    url(r'^api/', include(api_urls)),
    url(r'^i/(?P<id>.*)$', views.view),
]
