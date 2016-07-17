from django.http import JsonResponse, HttpResponse
from PIL import Image

def view(request, id):
    if request.method == "GET":
        try:
            with open("/tmp/%s" % id, "rb") as f:
                return HttpResponse(f.read(), content_type="image/jpeg")
        except IOError:
            red = Image.new('RGBA', (1, 1), (255,0,0,0))
            response = HttpResponse(content_type="image/jpeg")
            red.save(response, "JPEG")
            return response