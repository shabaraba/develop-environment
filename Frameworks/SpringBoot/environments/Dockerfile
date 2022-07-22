FROM openjdk:11-slim

ARG TZ=Asia/Tokyo

RUN apt-get update -y && apt-get upgrade -y

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get install -y zlib1g-dev mariadb-client vim libzip-dev curl zip unzip maven

RUN curl -s "https://get.sdkman.io" | bash \
    && chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"

RUN source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install springboot


WORKDIR /var/www/html
