FROM python:3.6
MAINTAINER jameel
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt && mkdir /data
EXPOSE 8080
VOLUME [ "/data" ]
ENV app=python
CMD ["python", "app.py"]