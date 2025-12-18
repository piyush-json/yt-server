FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    wget \
    xz-utils \
    unzip \
    nscd \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz \
    && tar -xf ffmpeg-release-amd64-static.tar.xz \
    && cd ffmpeg-*-amd64-static \
    && cp ffmpeg /usr/local/bin/ \
    && cp ffprobe /usr/local/bin/ \
    && chmod +x /usr/local/bin/ffmpeg \
    && chmod +x /usr/local/bin/ffprobe \
    && cd / \
    && rm -rf /tmp/ffmpeg*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# App code
COPY . .
RUN chmod +x /app/start.sh

EXPOSE 5000

CMD ["/app/start.sh"]
