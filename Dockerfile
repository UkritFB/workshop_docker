FROM python:3.6-alpine

ADD . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN pip install Flask
RUN pip install flask-cors

EXPOSE 5000
CMD ["python","app.py"]

