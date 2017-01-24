FROM node:7.4.0

RUN wget https://github.com/scrapy/scrapy/archive/1.3.zip 

RUN echo 'deb http://security.debian.org/debian-security wheezy/updates main' | tee /etc/apt/sources.list.d/unzip.list

RUN apt-get update

RUN apt-get install -y python-pip python-dev build-essential unzip

RUN pip install scrapy==1.3
RUN pip install scrapyd==1.1.0

RUN mkdir /app

WORKDIR /app

COPY block.js /app/

EXPOSE 8080
CMD [ "node", "block.js" ]
