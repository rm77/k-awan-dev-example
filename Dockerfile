FROM python:3.11-alpine
RUN apk update && mkdir -p /app
ADD app.py /app/
ADD requirements.txt /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD flask run --host=0.0.0.0
