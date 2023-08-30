FROM python:3.10-alpine

COPY requirements.txt /app/requirements.txt

RUN apk update && \
    apk add --no-cache chromium chromium-chromedriver gcc g++ libc-dev && \
    pip install --upgrade pip --no-cache-dir && \
    pip install -r /app/requirements.txt --no-cache-dir && \
    rm -f /app/requirements.txt

COPY sadc.py /app/sadc.py

VOLUME /downloads
WORKDIR /downloads

ENTRYPOINT ["python3", "/app/sadc.py"]
