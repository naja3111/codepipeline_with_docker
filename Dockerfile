FROM ubuntu:xenial

LABEL maintainer="Ubuntu Docker Maintainer - NajaMohamed - naja3111@stthomas.edu"

EXPOSE 8080

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN mkdir app

COPY app/site.py app/site.py
COPY app/requirements.txt app/requirements.txt

WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["site.py"]
