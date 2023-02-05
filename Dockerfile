# syntax=docker/dockerfile:1
FROM python:3.11-slim-buster
WORKDIR /app
ENV PYTHONPATH ./src
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 7080
CMD uvicorn src.main:app --reload --host 0.0.0.0 --port 7080 
