FROM python:3.12-rc-bookworm

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

LABEL "com.example.vendor"="Big Star Collectibles"
LABEL version="1.0"
LABEL description="Big Star Collectibles Website - Containerized"

CMD ["flask", "run", "--host=0.0.0.0"]