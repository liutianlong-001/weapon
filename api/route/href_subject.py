import os

from rest_framework.views import APIView
from django.shortcuts import render



class Subject(APIView):
    def get(self,request):
        return render(request, "pro-subject.html")

class line(APIView):
    def get(self,request):
        return render(request, "line.html")

class tree(APIView):
    def get(self,request):
        os.system(r'C:\Users\weapon\Downloads\xray_1.9.4高级社区版\super-xray-1.1-system-jre.exe')
        return render(request, "linexary.html")

class forest(APIView):
    def get(self,request):
        os.system(r'C:\Users\weapon\Downloads\goby-win-x64-2.3.0-Community\goby-win-x64-2.3.0\Goby.exe')
        return render(request, "linegoby.html")

class linehref(APIView):
    def get(self,request):
        return render(request, "linehref.html")