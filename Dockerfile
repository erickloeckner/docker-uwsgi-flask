FROM python:3.7-slim-buster

WORKDIR /usr/src/app
COPY hello_world.py .

RUN apt-get update && \
    apt-get -y install gcc nginx supervisor

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/sites-enabled/default
COPY nginx_flask.conf /etc/nginx/conf.d/
COPY uwsgi.ini /usr/src/app
COPY supervisord.conf /etc/

RUN pip install flask
RUN pip install uwsgi

CMD ["/usr/bin/supervisord"]
