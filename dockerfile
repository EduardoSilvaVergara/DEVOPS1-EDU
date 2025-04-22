#Construir imagen de dockers
FROM python:3.12-slim
WORKDIR /app
COPY web /app/
COPY requerimientos.txt /app/
RUN pip install -r requerimientos.txt
EXPOSE 8000
RUN cd /app/web
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#docker build -t proyectoweb-1 .
#docker run -itd -p 80:8000 --name serverDjango proyectoweb-1