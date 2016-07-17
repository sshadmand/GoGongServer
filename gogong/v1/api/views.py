from django.http import JsonResponse, HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.conf import settings

import uuid
import os.path

BASE_URL = "%s/v1" % settings.BASE_API_URL

@csrf_exempt
def upload(request):
    response = HttpResponse("GET Not in available.")
    if request.method == "POST":
        r = {}
        try:
            f = request.FILES.get("file")
            new_filename = "%s%s" % (uuid.uuid4(), os.path.splitext(f.name)[1])
            destination = open('/tmp/%s' % new_filename, 'wb+')
            for chunk in f.chunks():
                destination.write(chunk)
            destination.close()

            r = {
                "url": "%s/i/%s" % (BASE_URL, new_filename)
            }
        except Exception as ex:
            print(ex)
        response = JsonResponse(r)
    return response

