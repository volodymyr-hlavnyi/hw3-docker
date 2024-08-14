#FROM python:3.11
FROM python:3.9.19-slim

ENV PYTHONUNBUFFERED=1

RUN apt update && apt upgrade -y

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install --requirement requirements.txt

COPY ./app.py ./app.py

CMD ["python", "./app.py"]