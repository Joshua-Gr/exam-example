FROM python:slim

WORKDIR /software

COPY . .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get clean && \
    pip install --upgrade pip poetry && \
    poetry install

CMD [ "poetry", "run", "start" ]