from django.urls import URLPattern, path, include

import training.views

urlpatterns = [
    path('', training.views.index)
]