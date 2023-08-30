FROM python:3.10-alpine

COPY requirements.txt /app/requirements.txt

RUN pip install --upgrade pip --no-cache-dir && \
    pip install -r /app/requirements.txt --no-cache-dir && \
    apk update && \
    apk add --no-cache chromium chromium-chromedriver && \
    rm -f /app/requirements.txt

COPY sadc.py /app/sadc.py

VOLUME /downloads
WORKDIR /downloads

ENTRYPOINT ["python3", "/app/sadc.py"]
