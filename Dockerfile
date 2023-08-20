FROM python:slim

WORKDIR /software

COPY . .

RUN pip install --upgrade pip poetry && \
    poetry install

CMD [ "poetry", "run", "start" ]