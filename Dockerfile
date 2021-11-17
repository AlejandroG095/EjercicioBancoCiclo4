FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /users
WORKDIR /users
ADD . /users/
RUN pip install -r requirements.txt
EXPOSE 8080
CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:$PORT
#imagen de entorno de python 3
#variable de entorno
#creacion de la carpeta users
#nos pasamos a la carpeta users
#agregar toda la info del proyecto al dockerfile para luego copiarlo en users
#instalar todas la dependencias 
#exponemos el puerto 
#corremos la aplicacion de la misma manera que lo hacemos en la app en el puerto por defecto 0.0.0.0:$PORT