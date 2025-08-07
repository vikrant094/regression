FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt install awscli -y

RUN  apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "app.py"]