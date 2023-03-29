import os

from rest_framework.views import APIView
from django.shortcuts import render



class FileUpdate(APIView):
    def get(self,request):
        return render(request, "file-update.html")

class ScreenShow(APIView):
    def get(self,request):
        os.system(r'"C:\Program Files\Colasoft\CSNAS\Csnas.exe"')
        return render(request, "lineline.html")