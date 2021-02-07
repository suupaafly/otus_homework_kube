FROM python:3.8-slim

WORKDIR /opt/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY ./simple_app .

ENTRYPOINT uvicorn main:app --host 0.0.0.0
