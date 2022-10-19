FROM ubuntu

RUN apt update && apt install nmap -y && apt install netdiscover -y && apt install sudo -y

WORKDIR /app

COPY . /app

CMD ["bash" ,"info.sh"]
