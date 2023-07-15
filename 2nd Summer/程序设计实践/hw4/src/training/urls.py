from django.urls import path, include
import training.views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path('', training.views.homepage),
    path('start/', training.views.start),
    path('results/', training.views.results),
    path('details/<int:item_id>', training.views.details),
    path('submit-post/', training.views.submit_post),
]

urlpatterns += staticfiles_urlpatterns()
