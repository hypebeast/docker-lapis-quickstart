FROM openresty/openresty:xenial

MAINTAINER Sebastian Ruml <sebastian@sebastianruml.name>

RUN apt-get install -y libssl-dev
RUN /usr/local/openresty/luajit/bin/luarocks install lapis

RUN mkdir /app
WORKDIR /app

ENV LAPIS_OPENRESTY "/usr/local/openresty/bin/openresty"

VOLUME /app

EXPOSE 8080 80

ENTRYPOINT ["/usr/local/openresty/luajit/bin/lapis"]

CMD ["server", "development"]
