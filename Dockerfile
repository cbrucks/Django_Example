FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

ENV APP_SECRET_KEY e+s73ys3opsywt+ywh=f^bh1t2(&qobtw9#!+!^7!h9wl$pro5
ENV APP_DEBUG True

ENV DB_NAME postgres
ENV DB_USER postgres
ENV DB_HOST db
ENV DB_PORT 5432
