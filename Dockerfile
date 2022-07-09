FROM debian:latest

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask

COPY . /myweb
WORKDIR /myweb
EXPOSE 8080
CMD ["python3","main.py"]


