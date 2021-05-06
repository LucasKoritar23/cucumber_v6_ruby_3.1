FROM ruby:3.0.1-alpine
COPY . /obiwan
COPY . /obiwan
WORKDIR /obiwan
RUN apk update
RUN apk add build-base \
    curl \
    curl-dev \
    libcurl \
    libpq \
    libxml2-dev \
    libxslt-dev \
    openjdk8 \
    postgresql-dev \ 
    ruby-nokogiri --no-cache \
    vim \
    bash
RUN apk add --no-cache py-pip
RUN apk add pkgconfig imagemagick6 imagemagick6-dev imagemagick6-libs
RUN apk --no-cache add msttcorefonts-installer fontconfig && update-ms-fonts && fc-cache -f

RUN pip install awscli

RUN wget https://github.com/allure-framework/allure2/releases/download/2.13.9/allure-2.13.9.tgz
RUN tar -zxvf allure-2.13.9.tgz -C /opt/
RUN ln -s /opt/allure-2.13.9/bin/allure /usr/bin/allure

RUN apk add --no-cache tzdata
ENV TZ America/Sao_Paulo

RUN gem install bundler
RUN bundle install
RUN chmod 777 -R /obiwan