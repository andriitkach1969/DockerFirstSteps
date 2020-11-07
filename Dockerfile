FROM python:3.8

RUN mkdir -p /usr/srs/app
WORKDIR /usr/srs/app

COPY . /usr/srs/app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]