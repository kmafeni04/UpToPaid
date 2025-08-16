FROM ubuntu:latest

WORKDIR /setup

ARG PGDATABASE
ARG PGPORT
ARG PGUSER
ARG PGPASSWORD
ARG PGHOST
ARG MAILER_USERNAME
ARG MAILER_PASSWORD

RUN apt-get update

RUN apt-get install -y build-essential git gcc gdb openssl libssl-dev libpq-dev

RUN apt-get clean

RUN git clone https://github.com/edubart/nelua-lang.git && \
    cd nelua-lang && \
    make && \
    make install

RUN git clone https://github.com/kmafeni04/nlpm && \
    cd nlpm && \
    chmod +x nlpm

ENV PATH="$PATH:/setup/nlpm"

WORKDIR /app

COPY . .

RUN nlpm install

RUN nlpm run nelua nelt-compile-all.nelua

EXPOSE 8080

CMD ["nlpm", "run", "--", "nelua", "--cflags=-I/usr/include/postgresql/", "-r", "app.nelua", "-DPROD"]
