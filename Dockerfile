FROM docker.int.cybraics.com/node:9.3

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN set -x \
    && npm install vue-language-server -g

ENTRYPOINT [ "vls" ]
