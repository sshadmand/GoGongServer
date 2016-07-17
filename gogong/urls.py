from django.conf.urls import include, url
from django.contrib import admin
from gogong.v1 import urls as v1_urls

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^v1/', include(v1_urls)),
]
