FROM python:latest

RUN apt-get update && apt-get install --yes make vim git

RUN mkdir -p /usr/src/cave
WORKDIR /usr/src/cave

RUN pip install --upgrade pip

COPY . /usr/src/cave

RUN pip install -r requirements.txt
