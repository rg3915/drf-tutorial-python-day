from django.conf.urls import url
from myproject.core import views

urlpatterns = [
    url(r'^persons/$', views.PersonList.as_view()),
    url(r'^persons/(?P<pk>[0-9]+)/$', views.PersonDetail.as_view()),
]
