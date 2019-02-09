FROM python:2.7

MAINTAINER Ryan

RUN mkdir /anki
WORKDIR /anki
RUN easy_install AnkiServer

COPY production.ini /anki/
EXPOSE 27701
CMD ["ankiserverctl.py", "start"]